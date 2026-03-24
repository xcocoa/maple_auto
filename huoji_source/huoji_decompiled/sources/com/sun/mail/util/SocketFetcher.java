package com.sun.mail.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.channels.SocketChannel;
import java.nio.charset.StandardCharsets;
import java.security.AccessController;
import java.security.GeneralSecurityException;
import java.security.PrivilegedAction;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.SocketFactory;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.apache.commons.io.IOUtils;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class SocketFetcher {
    private static MailLogger logger = new MailLogger(SocketFetcher.class, "socket", "DEBUG SocketFetcher", PropUtil.getBooleanSystemProperty("mail.socket.debug", false), System.out);

    private SocketFetcher() {
    }

    private static void checkServerIdentity(String str, SSLSocket sSLSocket) throws IOException {
        try {
            Certificate[] peerCertificates = sSLSocket.getSession().getPeerCertificates();
            if (peerCertificates != null && peerCertificates.length > 0 && (peerCertificates[0] instanceof X509Certificate)) {
                if (matchCert(str, (X509Certificate) peerCertificates[0])) {
                    return;
                }
            }
            sSLSocket.close();
            throw new IOException("Can't verify identity of server: ".concat(String.valueOf(str)));
        } catch (SSLPeerUnverifiedException e) {
            sSLSocket.close();
            IOException iOException = new IOException("Can't verify identity of server: ".concat(String.valueOf(str)));
            iOException.initCause(e);
            throw iOException;
        }
    }

    private static IOException cleanupAndThrow(Socket socket, IOException iOException) {
        try {
            socket.close();
        } catch (Throwable th) {
            if (!isRecoverable(th)) {
                th.addSuppressed(iOException);
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new RuntimeException("unexpected exception", th);
            }
            iOException.addSuppressed(th);
        }
        return iOException;
    }

    private static void configureSSLSocket(Socket socket, String str, Properties properties, String str2, SocketFactory socketFactory) throws IOException {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            String property = properties.getProperty(str2 + ".ssl.protocols", null);
            if (property != null) {
                sSLSocket.setEnabledProtocols(stringArray(property));
            } else {
                String[] enabledProtocols = sSLSocket.getEnabledProtocols();
                if (logger.isLoggable(Level.FINER)) {
                    logger.finer("SSL enabled protocols before " + Arrays.asList(enabledProtocols));
                }
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < enabledProtocols.length; i++) {
                    if (enabledProtocols[i] != null && !enabledProtocols[i].startsWith("SSL")) {
                        arrayList.add(enabledProtocols[i]);
                    }
                }
                sSLSocket.setEnabledProtocols((String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            String property2 = properties.getProperty(str2 + ".ssl.ciphersuites", null);
            if (property2 != null) {
                sSLSocket.setEnabledCipherSuites(stringArray(property2));
            }
            if (logger.isLoggable(Level.FINER)) {
                logger.finer("SSL enabled protocols after " + Arrays.asList(sSLSocket.getEnabledProtocols()));
                logger.finer("SSL enabled ciphers after " + Arrays.asList(sSLSocket.getEnabledCipherSuites()));
            }
            sSLSocket.startHandshake();
            if (PropUtil.getBooleanProperty(properties, str2 + ".ssl.checkserveridentity", false)) {
                checkServerIdentity(str, sSLSocket);
            }
            if ((socketFactory instanceof MailSSLSocketFactory) && !((MailSSLSocketFactory) socketFactory).isServerTrusted(str, sSLSocket)) {
                throw cleanupAndThrow(sSLSocket, new IOException("Server is not trusted: ".concat(String.valueOf(str))));
            }
        }
    }

    private static Socket createSocket(InetAddress inetAddress, int i, String str, int i2, int i3, int i4, Properties properties, String str2, SocketFactory socketFactory, boolean z) throws IOException {
        String property;
        String str3;
        int intProperty;
        String str4;
        int i5;
        int i6;
        Socket socketCreateSocket;
        String str5;
        SSLSocketFactory sSLSocketFactory;
        int i7;
        String str6;
        int i8;
        int i9;
        SocketFactory socketFactory2 = socketFactory;
        if (logger.isLoggable(Level.FINEST)) {
            logger.finest("create socket: prefix " + str2 + ", localaddr " + inetAddress + ", localport " + i + ", host " + str + ", port " + i2 + ", connection timeout " + i3 + ", timeout " + i4 + ", socket factory " + socketFactory2 + ", useSSL " + z);
        }
        String property2 = properties.getProperty(str2 + ".proxy.host", null);
        String property3 = properties.getProperty(str2 + ".proxy.user", null);
        String property4 = properties.getProperty(str2 + ".proxy.password", null);
        int i10 = 1080;
        if (property2 != null) {
            int iIndexOf = property2.indexOf(58);
            if (iIndexOf >= 0) {
                try {
                    i9 = Integer.parseInt(property2.substring(iIndexOf + 1));
                    i8 = 0;
                } catch (NumberFormatException unused) {
                    i8 = 0;
                    i9 = 80;
                }
                property2 = property2.substring(i8, iIndexOf);
                i7 = i9;
            } else {
                i7 = 80;
            }
            int intProperty2 = PropUtil.getIntProperty(properties, str2 + ".proxy.port", i7);
            String str7 = "Using web proxy host, port: " + property2 + ", " + intProperty2;
            if (logger.isLoggable(Level.FINER)) {
                str6 = str7;
                logger.finer("web proxy host " + property2 + ", port " + intProperty2);
                if (property3 != null) {
                    MailLogger mailLogger = logger;
                    StringBuilder sb = new StringBuilder("web proxy user ");
                    sb.append(property3);
                    sb.append(", password ");
                    sb.append(property4 == null ? "<null>" : "<non-null>");
                    mailLogger.finer(sb.toString());
                }
            } else {
                str6 = str7;
            }
            str3 = property2;
            str4 = str6;
            intProperty = 1080;
            property = null;
            i5 = intProperty2;
        } else {
            property = properties.getProperty(str2 + ".socks.host", null);
            if (property != null) {
                int iIndexOf2 = property.indexOf(58);
                if (iIndexOf2 >= 0) {
                    try {
                        i10 = Integer.parseInt(property.substring(iIndexOf2 + 1));
                    } catch (NumberFormatException unused2) {
                    }
                    property = property.substring(0, iIndexOf2);
                    i6 = i10;
                } else {
                    i6 = 1080;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                str3 = property2;
                sb2.append(".socks.port");
                intProperty = PropUtil.getIntProperty(properties, sb2.toString(), i6);
                String str8 = "Using SOCKS host, port: " + property + ", " + intProperty;
                if (logger.isLoggable(Level.FINER)) {
                    str4 = str8;
                    logger.finer("socks host " + property + ", port " + intProperty);
                } else {
                    str4 = str8;
                }
            } else {
                str3 = property2;
                intProperty = 1080;
                str4 = null;
            }
            i5 = 80;
        }
        Socket socketCreateSocket2 = (socketFactory2 == null || (socketFactory2 instanceof SSLSocketFactory)) ? null : socketFactory.createSocket();
        if (socketCreateSocket2 == null) {
            if (property != null) {
                socketCreateSocket2 = new Socket(new Proxy(Proxy.Type.SOCKS, new InetSocketAddress(property, intProperty)));
            } else {
                if (PropUtil.getBooleanProperty(properties, str2 + ".usesocketchannels", false)) {
                    logger.finer("using SocketChannels");
                    socketCreateSocket2 = SocketChannel.open().socket();
                } else {
                    socketCreateSocket2 = new Socket();
                }
            }
        }
        if (i4 >= 0) {
            if (logger.isLoggable(Level.FINEST)) {
                logger.finest("set socket read timeout ".concat(String.valueOf(i4)));
            }
            socketCreateSocket2.setSoTimeout(i4);
        }
        int intProperty3 = PropUtil.getIntProperty(properties, str2 + ".writetimeout", -1);
        if (intProperty3 != -1) {
            if (logger.isLoggable(Level.FINEST)) {
                logger.finest("set socket write timeout ".concat(String.valueOf(intProperty3)));
            }
            socketCreateSocket = new WriteTimeoutSocket(socketCreateSocket2, intProperty3);
        } else {
            socketCreateSocket = socketCreateSocket2;
        }
        if (inetAddress != null) {
            socketCreateSocket.bind(new InetSocketAddress(inetAddress, i));
        }
        try {
            logger.finest("connecting...");
        } catch (IOException e) {
            e = e;
        }
        try {
            if (str3 != null) {
                proxyConnect(socketCreateSocket, str3, i5, property3, property4, str, i2, i3);
                str5 = str;
            } else if (i3 >= 0) {
                str5 = str;
                socketCreateSocket.connect(new InetSocketAddress(str5, i2), i3);
            } else {
                str5 = str;
                socketCreateSocket.connect(new InetSocketAddress(str5, i2));
            }
            logger.finest("success!");
            if ((z || (socketFactory2 instanceof SSLSocketFactory)) && !(socketCreateSocket instanceof SSLSocket)) {
                String property5 = properties.getProperty(str2 + ".ssl.trust");
                if (property5 != null) {
                    try {
                        MailSSLSocketFactory mailSSLSocketFactory = new MailSSLSocketFactory();
                        if (property5.equals(Marker.ANY_MARKER)) {
                            mailSSLSocketFactory.setTrustAllHosts(true);
                        } else {
                            mailSSLSocketFactory.setTrustedHosts(property5.split("\\s+"));
                        }
                        sSLSocketFactory = mailSSLSocketFactory;
                    } catch (GeneralSecurityException e2) {
                        IOException iOException = new IOException("Can't create MailSSLSocketFactory");
                        iOException.initCause(e2);
                        throw iOException;
                    }
                } else {
                    sSLSocketFactory = socketFactory2 instanceof SSLSocketFactory ? (SSLSocketFactory) socketFactory2 : (SSLSocketFactory) SSLSocketFactory.getDefault();
                }
                socketCreateSocket = sSLSocketFactory.createSocket(socketCreateSocket, str5, i2, true);
                socketFactory2 = sSLSocketFactory;
            }
            configureSSLSocket(socketCreateSocket, str5, properties, str2, socketFactory2);
            return socketCreateSocket;
        } catch (IOException e3) {
            e = e3;
            IOException iOException2 = e;
            logger.log(Level.FINEST, "connection failed", (Throwable) iOException2);
            throw new SocketConnectException(str4, iOException2, str, i2, i3);
        }
    }

    private static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: com.sun.mail.util.SocketFetcher.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                try {
                    return Thread.currentThread().getContextClassLoader();
                } catch (SecurityException unused) {
                    return null;
                }
            }
        });
    }

    public static Socket getSocket(String str, int i, Properties properties, String str2) throws IOException {
        return getSocket(str, i, properties, str2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0216  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Socket getSocket(String str, int i, Properties properties, String str2, boolean z) throws IOException {
        int i2;
        SocketFactory socketFactory;
        String str3;
        int i3;
        Socket socket;
        int i4;
        Exception e;
        Exception exc;
        int i5;
        String str4 = str2;
        if (logger.isLoggable(Level.FINER)) {
            MailLogger mailLogger = logger;
            StringBuilder sb = new StringBuilder("getSocket, host ");
            sb.append(str);
            sb.append(", port ");
            i2 = i;
            sb.append(i2);
            sb.append(", prefix ");
            sb.append(str4);
            sb.append(", useSSL ");
            sb.append(z);
            mailLogger.finer(sb.toString());
        } else {
            i2 = i;
        }
        if (str4 == null) {
            str4 = "socket";
        }
        String str5 = str4;
        Properties properties2 = properties == null ? new Properties() : properties;
        int intProperty = PropUtil.getIntProperty(properties2, str5 + ".connectiontimeout", -1);
        Socket socketCreateSocket = null;
        String property = properties2.getProperty(str5 + ".localaddress", null);
        InetAddress byName = property != null ? InetAddress.getByName(property) : null;
        int intProperty2 = PropUtil.getIntProperty(properties2, str5 + ".localport", 0);
        boolean booleanProperty = PropUtil.getBooleanProperty(properties2, str5 + ".socketFactory.fallback", true);
        String strConcat = "unknown socket factory";
        int intProperty3 = PropUtil.getIntProperty(properties2, str5 + ".timeout", -1);
        if (z) {
            try {
                try {
                    Object obj = properties2.get(str5 + ".ssl.socketFactory");
                    if (obj instanceof SocketFactory) {
                        socketFactory = (SocketFactory) obj;
                        strConcat = "SSL socket factory instance ".concat(String.valueOf(socketFactory));
                    } else {
                        socketFactory = null;
                    }
                    if (socketFactory == null) {
                        String property2 = properties2.getProperty(str5 + ".ssl.socketFactory.class");
                        SocketFactory socketFactory2 = getSocketFactory(property2);
                        strConcat = "SSL socket factory class ".concat(String.valueOf(property2));
                        socketFactory = socketFactory2;
                    }
                    str3 = ".ssl.socketFactory.port";
                } catch (Exception e2) {
                    e = e2;
                    i3 = intProperty3;
                    socket = null;
                    i4 = -1;
                    if (!booleanProperty) {
                        if (e instanceof InvocationTargetException) {
                            Throwable targetException = ((InvocationTargetException) e).getTargetException();
                            exc = targetException instanceof Exception ? (Exception) targetException : e;
                        }
                        if (exc instanceof IOException) {
                            throw ((IOException) exc);
                        }
                        throw new SocketConnectException("Using ".concat(String.valueOf(strConcat)), exc, str, i4, intProperty);
                    }
                    socketCreateSocket = socket;
                    if (socketCreateSocket != null) {
                    }
                }
            } catch (SocketTimeoutException e3) {
                throw e3;
            }
        } else {
            socketFactory = null;
            str3 = null;
        }
        if (socketFactory == null) {
            Object obj2 = properties2.get(str5 + ".socketFactory");
            if (obj2 instanceof SocketFactory) {
                socketFactory = (SocketFactory) obj2;
                strConcat = "socket factory instance ".concat(String.valueOf(socketFactory));
            }
            if (socketFactory == null) {
                String property3 = properties2.getProperty(str5 + ".socketFactory.class");
                SocketFactory socketFactory3 = getSocketFactory(property3);
                strConcat = "socket factory class ".concat(String.valueOf(property3));
                socketFactory = socketFactory3;
            }
            str3 = ".socketFactory.port";
        }
        SocketFactory socketFactory4 = socketFactory;
        String str6 = strConcat;
        if (socketFactory4 != null) {
            try {
                int intProperty4 = PropUtil.getIntProperty(properties2, str5 + str3, -1);
                i5 = intProperty4 == -1 ? i2 : intProperty4;
                i3 = intProperty3;
                socket = null;
            } catch (Exception e4) {
                e = e4;
                i3 = intProperty3;
                socket = null;
                strConcat = str6;
                i4 = -1;
                if (!booleanProperty) {
                }
            }
            try {
                socketCreateSocket = createSocket(byName, intProperty2, str, i5, intProperty, intProperty3, properties2, str5, socketFactory4, z);
            } catch (Exception e5) {
                e = e5;
                strConcat = str6;
                i4 = i5;
                if (!booleanProperty) {
                }
            }
        } else {
            i3 = intProperty3;
        }
        if (socketCreateSocket != null) {
            return createSocket(byName, intProperty2, str, i, intProperty, i3, properties2, str5, null, z);
        }
        int i6 = i3;
        if (i6 < 0) {
            return socketCreateSocket;
        }
        if (logger.isLoggable(Level.FINEST)) {
            logger.finest("set socket read timeout ".concat(String.valueOf(i6)));
        }
        socketCreateSocket.setSoTimeout(i6);
        return socketCreateSocket;
    }

    private static SocketFactory getSocketFactory(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        ClassLoader contextClassLoader = getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                cls = Class.forName(str, false, contextClassLoader);
            } catch (ClassNotFoundException unused) {
            }
        }
        if (cls == null) {
            cls = Class.forName(str);
        }
        return (SocketFactory) cls.getMethod("getDefault", new Class[0]).invoke(new Object(), new Object[0]);
    }

    private static boolean isRecoverable(Throwable th) {
        return (th instanceof Exception) || (th instanceof LinkageError);
    }

    private static boolean matchCert(String str, X509Certificate x509Certificate) {
        MailLogger mailLogger = logger;
        Level level = Level.FINER;
        if (mailLogger.isLoggable(level)) {
            logger.finer("matchCert server " + str + ", cert " + x509Certificate);
        }
        try {
            Class<?> cls = Class.forName("sun.security.util.HostnameChecker");
            Object objInvoke = cls.getMethod("getInstance", Byte.TYPE).invoke(new Object(), (byte) 2);
            if (logger.isLoggable(level)) {
                logger.finer("using sun.security.util.HostnameChecker");
            }
            try {
                cls.getMethod("match", String.class, X509Certificate.class).invoke(objInvoke, str, x509Certificate);
                return true;
            } catch (InvocationTargetException e) {
                logger.log(Level.FINER, "HostnameChecker FAIL", (Throwable) e);
                return false;
            }
        } catch (Exception e2) {
            logger.log(Level.FINER, "NO sun.security.util.HostnameChecker", (Throwable) e2);
            try {
                Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
                if (subjectAlternativeNames != null) {
                    boolean z = false;
                    for (List<?> list : subjectAlternativeNames) {
                        if (((Integer) list.get(0)).intValue() == 2) {
                            String str2 = (String) list.get(1);
                            if (logger.isLoggable(Level.FINER)) {
                                logger.finer("found name: ".concat(String.valueOf(str2)));
                            }
                            if (matchServer(str, str2)) {
                                return true;
                            }
                            z = true;
                        }
                    }
                    if (z) {
                        return false;
                    }
                }
            } catch (CertificateParsingException unused) {
            }
            Matcher matcher = Pattern.compile("CN=([^,]*)").matcher(x509Certificate.getSubjectX500Principal().getName());
            return matcher.find() && matchServer(str, matcher.group(1).trim());
        }
    }

    private static boolean matchServer(String str, String str2) {
        int length;
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("match server " + str + " with " + str2);
        }
        if (!str2.startsWith("*.")) {
            return str.equalsIgnoreCase(str2);
        }
        String strSubstring = str2.substring(2);
        return strSubstring.length() != 0 && (length = str.length() - strSubstring.length()) > 0 && str.charAt(length + (-1)) == '.' && str.regionMatches(true, length, strSubstring, 0, strSubstring.length());
    }

    private static void proxyConnect(Socket socket, String str, int i, String str2, String str3, String str4, int i2, int i3) throws IOException {
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("connecting through proxy " + str + ":" + i + " to " + str4 + ":" + i2);
        }
        if (i3 >= 0) {
            socket.connect(new InetSocketAddress(str, i), i3);
        } else {
            socket.connect(new InetSocketAddress(str, i));
        }
        PrintStream printStream = new PrintStream(socket.getOutputStream(), false, StandardCharsets.UTF_8.name());
        StringBuilder sb = new StringBuilder();
        sb.append("CONNECT ");
        sb.append(str4);
        sb.append(":");
        sb.append(i2);
        sb.append(" HTTP/1.1\r\n");
        sb.append("Host: ");
        sb.append(str4);
        sb.append(":");
        sb.append(i2);
        sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        if (str2 != null && str3 != null) {
            String str5 = new String(BASE64EncoderStream.encode((str2 + ':' + str3).getBytes(StandardCharsets.UTF_8)), StandardCharsets.US_ASCII);
            sb.append("Proxy-Authorization: Basic ");
            sb.append(str5);
            sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
        sb.append("Proxy-Connection: keep-alive\r\n\r\n");
        printStream.print(sb.toString());
        printStream.flush();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
        boolean z = true;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.length() == 0) {
                return;
            }
            logger.finest(line);
            if (z) {
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                stringTokenizer.nextToken();
                if (!stringTokenizer.nextToken().equals("200")) {
                    try {
                        socket.close();
                    } catch (IOException unused) {
                    }
                    ConnectException connectException = new ConnectException("connection through proxy " + str + ":" + i + " to " + str4 + ":" + i2 + " failed: " + line);
                    logger.log(Level.FINE, "connect failed", (Throwable) connectException);
                    throw connectException;
                }
                z = false;
            }
        }
    }

    @Deprecated
    public static Socket startTLS(Socket socket) throws IOException {
        return startTLS(socket, new Properties(), "socket");
    }

    public static Socket startTLS(Socket socket, String str, Properties properties, String str2) throws IOException {
        SocketFactory socketFactory;
        int port = socket.getPort();
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("startTLS host " + str + ", port " + port);
        }
        String strConcat = "unknown socket factory";
        try {
            Object obj = properties.get(str2 + ".ssl.socketFactory");
            SSLSocketFactory sSLSocketFactory = null;
            sSLSocketFactory = null;
            if (obj instanceof SocketFactory) {
                socketFactory = (SocketFactory) obj;
                strConcat = "SSL socket factory instance ".concat(String.valueOf(socketFactory));
            } else {
                socketFactory = null;
            }
            if (socketFactory == null) {
                String property = properties.getProperty(str2 + ".ssl.socketFactory.class");
                SocketFactory socketFactory2 = getSocketFactory(property);
                strConcat = "SSL socket factory class ".concat(String.valueOf(property));
                socketFactory = socketFactory2;
            }
            if (socketFactory != null && (socketFactory instanceof SSLSocketFactory)) {
                sSLSocketFactory = (SSLSocketFactory) socketFactory;
            }
            if (sSLSocketFactory == null) {
                Object obj2 = properties.get(str2 + ".socketFactory");
                if (obj2 instanceof SocketFactory) {
                    socketFactory = (SocketFactory) obj2;
                    strConcat = "socket factory instance ".concat(String.valueOf(socketFactory));
                }
                if (socketFactory == null) {
                    String property2 = properties.getProperty(str2 + ".socketFactory.class");
                    SocketFactory socketFactory3 = getSocketFactory(property2);
                    strConcat = "socket factory class ".concat(String.valueOf(property2));
                    socketFactory = socketFactory3;
                }
                if (socketFactory != null && (socketFactory instanceof SSLSocketFactory)) {
                    sSLSocketFactory = (SSLSocketFactory) socketFactory;
                }
            }
            SSLSocketFactory sSLSocketFactory2 = sSLSocketFactory;
            if (sSLSocketFactory == null) {
                String property3 = properties.getProperty(str2 + ".ssl.trust");
                if (property3 != null) {
                    try {
                        MailSSLSocketFactory mailSSLSocketFactory = new MailSSLSocketFactory();
                        if (property3.equals(Marker.ANY_MARKER)) {
                            mailSSLSocketFactory.setTrustAllHosts(true);
                        } else {
                            mailSSLSocketFactory.setTrustedHosts(property3.split("\\s+"));
                        }
                        sSLSocketFactory2 = mailSSLSocketFactory;
                    } catch (GeneralSecurityException e) {
                        IOException iOException = new IOException("Can't create MailSSLSocketFactory");
                        iOException.initCause(e);
                        throw iOException;
                    }
                } else {
                    sSLSocketFactory2 = (SSLSocketFactory) SSLSocketFactory.getDefault();
                }
            }
            Socket socketCreateSocket = sSLSocketFactory2.createSocket(socket, str, port, true);
            configureSSLSocket(socketCreateSocket, str, properties, str2, sSLSocketFactory2);
            return socketCreateSocket;
        } catch (Exception e2) {
            e = e2;
            if (e instanceof InvocationTargetException) {
                Throwable targetException = ((InvocationTargetException) e).getTargetException();
                if (targetException instanceof Exception) {
                    e = (Exception) targetException;
                }
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            IOException iOException2 = new IOException("Exception in startTLS using " + strConcat + ": host, port: " + str + ", " + port + "; Exception: " + e);
            iOException2.initCause(e);
            throw iOException2;
        }
    }

    @Deprecated
    public static Socket startTLS(Socket socket, Properties properties, String str) throws IOException {
        return startTLS(socket, socket.getInetAddress().getHostName(), properties, str);
    }

    private static String[] stringArray(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
