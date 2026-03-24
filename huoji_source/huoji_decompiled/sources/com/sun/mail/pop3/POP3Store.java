package com.sun.mail.pop3;

import com.sun.mail.util.MailConnectException;
import com.sun.mail.util.MailLogger;
import com.sun.mail.util.PropUtil;
import com.sun.mail.util.SocketConnectException;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;
import javax.mail.AuthenticationFailedException;
import javax.mail.Folder;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.URLName;

/* JADX INFO: loaded from: classes2.dex */
public class POP3Store extends Store {
    public volatile boolean cacheWriteTo;
    private Map<String, String> capabilities;
    private int defaultPort;
    public volatile boolean disableTop;
    public volatile File fileCacheDir;
    public volatile boolean finalizeCleanClose;
    public volatile boolean forgetTopHeaders;
    private String host;
    private boolean isSSL;
    public volatile boolean keepMessageContent;
    private MailLogger logger;
    public volatile Constructor<?> messageConstructor;
    private String name;
    private String passwd;
    private Protocol port;
    private int portNum;
    private POP3Folder portOwner;
    private boolean requireStartTLS;
    public volatile boolean rsetBeforeQuit;
    public volatile boolean supportsUidl;
    public volatile boolean useFileCache;
    private boolean useStartTLS;
    private String user;
    private boolean usingSSL;

    public POP3Store(Session session, URLName uRLName) {
        this(session, uRLName, "pop3", false);
    }

    public POP3Store(Session session, URLName uRLName, String str, boolean z) {
        Class<?> cls;
        super(session, uRLName);
        this.name = "pop3";
        this.defaultPort = 110;
        this.isSSL = false;
        this.port = null;
        this.portOwner = null;
        this.host = null;
        this.portNum = -1;
        this.user = null;
        this.passwd = null;
        this.useStartTLS = false;
        this.requireStartTLS = false;
        this.usingSSL = false;
        this.messageConstructor = null;
        this.rsetBeforeQuit = false;
        this.disableTop = false;
        this.forgetTopHeaders = false;
        this.supportsUidl = true;
        this.cacheWriteTo = false;
        this.useFileCache = false;
        this.fileCacheDir = null;
        this.keepMessageContent = false;
        this.finalizeCleanClose = false;
        str = uRLName != null ? uRLName.getProtocol() : str;
        this.name = str;
        this.logger = new MailLogger(getClass(), "DEBUG POP3", session.getDebug(), session.getDebugOut());
        if (!z) {
            z = PropUtil.getBooleanProperty(session.getProperties(), "mail." + str + ".ssl.enable", false);
        }
        this.defaultPort = z ? 995 : 110;
        this.isSSL = z;
        this.rsetBeforeQuit = getBoolProp("rsetbeforequit");
        this.disableTop = getBoolProp("disabletop");
        this.forgetTopHeaders = getBoolProp("forgettopheaders");
        this.cacheWriteTo = getBoolProp("cachewriteto");
        this.useFileCache = getBoolProp("filecache.enable");
        String property = session.getProperty("mail." + str + ".filecache.dir");
        if (property != null && this.logger.isLoggable(Level.CONFIG)) {
            this.logger.config("mail." + str + ".filecache.dir: " + property);
        }
        if (property != null) {
            this.fileCacheDir = new File(property);
        }
        this.keepMessageContent = getBoolProp("keepmessagecontent");
        this.useStartTLS = getBoolProp("starttls.enable");
        this.requireStartTLS = getBoolProp("starttls.required");
        this.finalizeCleanClose = getBoolProp("finalizecleanclose");
        String property2 = session.getProperty("mail." + str + ".message.class");
        if (property2 != null) {
            this.logger.log(Level.CONFIG, "message class: {0}", property2);
            try {
                try {
                    cls = Class.forName(property2, false, getClass().getClassLoader());
                } catch (ClassNotFoundException unused) {
                    cls = Class.forName(property2);
                }
                this.messageConstructor = cls.getConstructor(Folder.class, Integer.TYPE);
            } catch (Exception e) {
                this.logger.log(Level.CONFIG, "failed to load message class", (Throwable) e);
            }
        }
    }

    private boolean authenticate(Protocol protocol, String str, String str2) throws MessagingException {
        boolean z;
        MailLogger mailLogger;
        Level level;
        String str3;
        String property = this.session.getProperty("mail." + this.name + ".auth.mechanisms");
        if (property == null) {
            property = protocol.getDefaultMechanisms();
            z = true;
        } else {
            z = false;
        }
        String property2 = this.session.getProperty("mail." + this.name + ".sasl.authorizationid");
        String str4 = property2 == null ? str : property2;
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("Attempt to authenticate using mechanisms: ".concat(String.valueOf(property)));
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property);
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            Locale locale = Locale.ENGLISH;
            String upperCase = strNextToken.toUpperCase(locale);
            if (!protocol.supportsMechanism(upperCase)) {
                mailLogger = this.logger;
                level = Level.FINE;
                str3 = "no authenticator for mechanism {0}";
            } else {
                if (protocol.supportsAuthentication(upperCase)) {
                    if (z) {
                        String str5 = "mail." + this.name + ".auth." + upperCase.toLowerCase(locale) + ".disable";
                        if (PropUtil.getBooleanProperty(this.session.getProperties(), str5, !protocol.isMechanismEnabled(upperCase))) {
                            if (this.logger.isLoggable(Level.FINE)) {
                                this.logger.fine("mechanism " + upperCase + " disabled by property: " + str5);
                            }
                        }
                    }
                    this.logger.log(Level.FINE, "Using mechanism {0}", upperCase);
                    String strAuthenticate = protocol.authenticate(upperCase, this.host, str4, str, str2);
                    if (strAuthenticate == null) {
                        return true;
                    }
                    throw new AuthenticationFailedException(strAuthenticate);
                }
                mailLogger = this.logger;
                level = Level.FINE;
                str3 = "mechanism {0} not supported by server";
            }
            mailLogger.log(level, str3, upperCase);
        }
        throw new AuthenticationFailedException("No authentication mechanisms supported by both server and client");
    }

    private void checkConnected() throws MessagingException {
        if (!super.isConnected()) {
            throw new MessagingException("Not connected");
        }
    }

    private static IOException cleanupAndThrow(Protocol protocol, IOException iOException) {
        try {
            protocol.quit();
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

    private final synchronized boolean getBoolProp(String str) {
        boolean booleanProperty;
        String str2 = "mail." + this.name + "." + str;
        booleanProperty = PropUtil.getBooleanProperty(this.session.getProperties(), str2, false);
        if (this.logger.isLoggable(Level.CONFIG)) {
            this.logger.config(str2 + ": " + booleanProperty);
        }
        return booleanProperty;
    }

    private static boolean isRecoverable(Throwable th) {
        return (th instanceof Exception) || (th instanceof LinkageError);
    }

    public Map<String, String> capabilities() throws MessagingException {
        Map<String, String> map;
        synchronized (this) {
            map = this.capabilities;
        }
        return map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
    }

    @Override // javax.mail.Service, java.lang.AutoCloseable
    public synchronized void close() throws MessagingException {
        close(false);
    }

    public synchronized void close(boolean z) throws MessagingException {
        try {
            try {
                Protocol protocol = this.port;
                if (protocol != null) {
                    if (z) {
                        protocol.close();
                    } else {
                        protocol.quit();
                    }
                }
            } finally {
                this.port = null;
                super.close();
            }
        } catch (IOException unused) {
        }
    }

    public synchronized void closePort(POP3Folder pOP3Folder) {
        if (this.portOwner == pOP3Folder) {
            this.port = null;
            this.portOwner = null;
        }
    }

    @Override // javax.mail.Service
    public void finalize() throws Throwable {
        try {
            if (this.port != null) {
                close(!this.finalizeCleanClose);
            }
        } finally {
            super.finalize();
        }
    }

    @Override // javax.mail.Store
    public Folder getDefaultFolder() throws MessagingException {
        checkConnected();
        return new DefaultFolder(this);
    }

    @Override // javax.mail.Store
    public Folder getFolder(String str) throws MessagingException {
        checkConnected();
        return new POP3Folder(this, str);
    }

    @Override // javax.mail.Store
    public Folder getFolder(URLName uRLName) throws MessagingException {
        checkConnected();
        return new POP3Folder(this, uRLName.getFile());
    }

    public synchronized Protocol getPort(POP3Folder pOP3Folder) throws IOException {
        Map<String, String> map;
        Protocol protocol = this.port;
        if (protocol != null && this.portOwner == null) {
            this.portOwner = pOP3Folder;
            return protocol;
        }
        Protocol protocol2 = new Protocol(this.host, this.portNum, this.logger, this.session.getProperties(), "mail." + this.name, this.isSSL);
        if (this.useStartTLS || this.requireStartTLS) {
            if (protocol2.hasCapability("STLS")) {
                if (protocol2.stls()) {
                    protocol2.setCapabilities(protocol2.capa());
                } else if (this.requireStartTLS) {
                    this.logger.fine("STLS required but failed");
                    throw cleanupAndThrow(protocol2, new EOFException("STLS required but failed"));
                }
            } else if (this.requireStartTLS) {
                this.logger.fine("STLS required but not supported");
                throw cleanupAndThrow(protocol2, new EOFException("STLS required but not supported"));
            }
        }
        this.capabilities = protocol2.getCapabilities();
        this.usingSSL = protocol2.isSSL();
        boolean z = true;
        if (!this.disableTop && (map = this.capabilities) != null && !map.containsKey("TOP")) {
            this.disableTop = true;
            this.logger.fine("server doesn't support TOP, disabling it");
        }
        Map<String, String> map2 = this.capabilities;
        if (map2 != null && !map2.containsKey("UIDL")) {
            z = false;
        }
        this.supportsUidl = z;
        try {
            try {
                if (!authenticate(protocol2, this.user, this.passwd)) {
                    throw cleanupAndThrow(protocol2, new EOFException("login failed"));
                }
                if (this.port == null && pOP3Folder != null) {
                    this.port = protocol2;
                    this.portOwner = pOP3Folder;
                }
                if (this.portOwner == null) {
                    this.portOwner = pOP3Folder;
                }
                return protocol2;
            } catch (Exception e) {
                throw cleanupAndThrow(protocol2, new EOFException(e.getMessage()));
            }
        } catch (EOFException e2) {
            throw cleanupAndThrow(protocol2, e2);
        }
    }

    @Override // javax.mail.Service
    public synchronized Session getSession() {
        return this.session;
    }

    @Override // javax.mail.Service
    public synchronized boolean isConnected() {
        if (!super.isConnected()) {
            return false;
        }
        try {
            try {
                Protocol protocol = this.port;
                if (protocol == null) {
                    this.port = getPort(null);
                } else if (!protocol.noop()) {
                    throw new IOException("NOOP failed");
                }
                return true;
            } catch (IOException unused) {
                super.close();
                return false;
            }
        } catch (MessagingException unused2) {
            return false;
        }
    }

    public synchronized boolean isSSL() {
        return this.usingSSL;
    }

    @Override // javax.mail.Service
    public synchronized boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        boolean z;
        if (str == null || str3 == null || str2 == null) {
            z = false;
        } else {
            if (i == -1) {
                try {
                    i = PropUtil.getIntProperty(this.session.getProperties(), "mail." + this.name + ".port", -1);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i == -1) {
                i = this.defaultPort;
            }
            this.host = str;
            this.portNum = i;
            this.user = str2;
            this.passwd = str3;
            try {
                this.port = getPort(null);
                z = true;
            } catch (SocketConnectException e) {
                throw new MailConnectException(e);
            } catch (EOFException e2) {
                throw new AuthenticationFailedException(e2.getMessage());
            } catch (IOException e3) {
                throw new MessagingException("Connect failed", e3);
            }
        }
        return z;
    }
}
