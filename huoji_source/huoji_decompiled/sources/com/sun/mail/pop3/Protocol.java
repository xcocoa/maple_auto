package com.sun.mail.pop3;

import com.sun.mail.auth.Ntlm;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.MailLogger;
import com.sun.mail.util.PropUtil;
import com.sun.mail.util.SharedByteArrayOutputStream;
import com.sun.mail.util.SocketFetcher;
import com.sun.mail.util.TraceInputStream;
import com.sun.mail.util.TraceOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class Protocol {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String CRLF = "\r\n";
    private static final int POP3_PORT = 110;
    private static final int SLOP = 128;
    private static char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private String apopChallenge;
    private String defaultAuthenticationMechanisms;
    private String host;
    private BufferedReader input;
    private String localHostName;
    private MailLogger logger;
    private boolean noauthdebug;
    private PrintWriter output;
    private boolean pipelining;
    private String prefix;
    private Properties props;
    private Socket socket;
    private TraceInputStream traceInput;
    private MailLogger traceLogger;
    private TraceOutputStream traceOutput;
    private boolean traceSuspended;
    private Map<String, String> capabilities = null;
    private Map<String, Authenticator> authenticators = new HashMap();

    public abstract class Authenticator {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean enabled;
        private final String mech;
        public Response resp;

        public Authenticator(Protocol protocol, String str) {
            this(str, true);
        }

        public Authenticator(String str, boolean z) {
            this.mech = str.toUpperCase(Locale.ENGLISH);
            this.enabled = z;
        }

        public boolean authenticate(String str, String str2, String str3, String str4) throws IOException {
            String str5;
            str5 = "succeeded";
            try {
                try {
                    String initialResponse = getInitialResponse(str, str2, str3, str4);
                    if (Protocol.this.noauthdebug && Protocol.this.isTracing()) {
                        Protocol.this.logger.fine("AUTH " + this.mech + " command trace suppressed");
                        Protocol.this.suspendTracing();
                    }
                    runAuthenticationCommand("AUTH " + this.mech, initialResponse);
                    if (this.resp.cont) {
                        doAuth(str, str2, str3, str4);
                    }
                    if (Protocol.this.noauthdebug && Protocol.this.isTracing()) {
                        MailLogger mailLogger = Protocol.this.logger;
                        StringBuilder sb = new StringBuilder("AUTH ");
                        sb.append(this.mech);
                        sb.append(o4.OooO00o.OooO0Oo);
                        sb.append(this.resp.ok ? "succeeded" : "failed");
                        mailLogger.fine(sb.toString());
                    }
                    Protocol.this.resumeTracing();
                    if (this.resp.ok) {
                        return true;
                    }
                    Protocol.this.close();
                    String str6 = this.resp.data;
                    throw new EOFException(str6 != null ? str6 : "authentication failed");
                } catch (Throwable th) {
                    if (Protocol.this.noauthdebug && Protocol.this.isTracing()) {
                        MailLogger mailLogger2 = Protocol.this.logger;
                        StringBuilder sb2 = new StringBuilder("AUTH ");
                        sb2.append(this.mech);
                        sb2.append(o4.OooO00o.OooO0Oo);
                        if (!this.resp.ok) {
                            str5 = "failed";
                        }
                        sb2.append(str5);
                        mailLogger2.fine(sb2.toString());
                    }
                    Protocol.this.resumeTracing();
                    if (this.resp.ok) {
                        throw th;
                    }
                    Protocol.this.close();
                    String str7 = this.resp.data;
                    throw new EOFException(str7 != null ? str7 : "authentication failed");
                }
            } catch (IOException e) {
                Protocol.this.logger.log(Level.FINE, "AUTH " + this.mech + " failed", (Throwable) e);
                if (Protocol.this.noauthdebug && Protocol.this.isTracing()) {
                    MailLogger mailLogger3 = Protocol.this.logger;
                    StringBuilder sb3 = new StringBuilder("AUTH ");
                    sb3.append(this.mech);
                    sb3.append(o4.OooO00o.OooO0Oo);
                    str5 = this.resp.ok ? "succeeded" : "failed";
                    sb3.append(str5);
                    mailLogger3.fine(sb3.toString());
                }
                Protocol.this.resumeTracing();
                if (!this.resp.ok) {
                    Protocol.this.close();
                    String str8 = this.resp.data;
                    throw new EOFException(str8 != null ? str8 : "authentication failed");
                }
                return true;
            } catch (Throwable th2) {
                Protocol.this.logger.log(Level.FINE, "AUTH " + this.mech + " failed", (Throwable) th2);
                if (Protocol.this.noauthdebug && Protocol.this.isTracing()) {
                    MailLogger mailLogger4 = Protocol.this.logger;
                    StringBuilder sb4 = new StringBuilder("AUTH ");
                    sb4.append(this.mech);
                    sb4.append(o4.OooO00o.OooO0Oo);
                    str5 = this.resp.ok ? "succeeded" : "failed";
                    sb4.append(str5);
                    mailLogger4.fine(sb4.toString());
                }
                Protocol.this.resumeTracing();
                if (!this.resp.ok) {
                    Protocol.this.close();
                    if (th2 instanceof Error) {
                        throw th2;
                    }
                    if (!(th2 instanceof Exception)) {
                        String str9 = this.resp.data;
                        throw new EOFException(str9 != null ? str9 : "authentication failed");
                    }
                    String str10 = this.resp.data;
                    EOFException eOFException = new EOFException(str10 != null ? str10 : "authentication failed");
                    eOFException.initCause(th2);
                    throw eOFException;
                }
                return true;
            }
        }

        public abstract void doAuth(String str, String str2, String str3, String str4) throws IOException;

        public boolean enabled() {
            return this.enabled;
        }

        public String getInitialResponse(String str, String str2, String str3, String str4) throws IOException {
            return null;
        }

        public String getMechanism() {
            return this.mech;
        }

        public void runAuthenticationCommand(String str, String str2) throws IOException {
            Response responseSimpleCommand;
            if (Protocol.this.logger.isLoggable(Level.FINE)) {
                Protocol.this.logger.fine(str + " using one line authentication format");
            }
            if (str2 != null) {
                Protocol protocol = Protocol.this;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(o4.OooO00o.OooO0Oo);
                if (str2.length() == 0) {
                    str2 = "=";
                }
                sb.append(str2);
                responseSimpleCommand = protocol.simpleCommand(sb.toString());
            } else {
                responseSimpleCommand = Protocol.this.simpleCommand(str);
            }
            this.resp = responseSimpleCommand;
        }
    }

    public class LoginAuthenticator extends Authenticator {
        public LoginAuthenticator() {
            super(Protocol.this, "LOGIN");
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public boolean authenticate(String str, String str2, String str3, String str4) throws IOException {
            String strLogin = Protocol.this.login(str3, str4);
            if (strLogin == null) {
                return true;
            }
            throw new EOFException(strLogin);
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public void doAuth(String str, String str2, String str3, String str4) throws IOException {
            throw new EOFException("LOGIN asked for more");
        }
    }

    public class NtlmAuthenticator extends Authenticator {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        private Ntlm ntlm;

        public NtlmAuthenticator() {
            super(Protocol.this, "NTLM");
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public void doAuth(String str, String str2, String str3, String str4) throws IOException {
            this.resp = Protocol.this.simpleCommand(this.ntlm.generateType3Msg(this.resp.data.substring(4).trim()));
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public String getInitialResponse(String str, String str2, String str3, String str4) throws IOException {
            this.ntlm = new Ntlm(Protocol.this.props.getProperty(Protocol.this.prefix + ".auth.ntlm.domain"), Protocol.this.getLocalHost(), str3, str4, Protocol.this.logger);
            return this.ntlm.generateType1Msg(PropUtil.getIntProperty(Protocol.this.props, Protocol.this.prefix + ".auth.ntlm.flags", 0), PropUtil.getBooleanProperty(Protocol.this.props, Protocol.this.prefix + ".auth.ntlm.v2", true));
        }
    }

    public class OAuth2Authenticator extends Authenticator {
        public OAuth2Authenticator() {
            super("XOAUTH2", false);
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public void doAuth(String str, String str2, String str3, String str4) throws IOException {
            String str5 = this.resp.data;
            throw new EOFException("OAUTH2 authentication failed: ".concat(str5 != null ? new String(BASE64DecoderStream.decode(str5.getBytes(StandardCharsets.UTF_8)), StandardCharsets.UTF_8) : ""));
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public String getInitialResponse(String str, String str2, String str3, String str4) throws IOException {
            return ASCIIUtility.toString(BASE64EncoderStream.encode(("user=" + str3 + "\u0001auth=Bearer " + str4 + "\u0001\u0001").getBytes(StandardCharsets.UTF_8)));
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public void runAuthenticationCommand(String str, String str2) throws IOException {
            Protocol protocol = Protocol.this;
            if (!protocol.getBoolProp(protocol.props, Protocol.this.prefix + ".auth.xoauth2.two.line.authentication.format")) {
                super.runAuthenticationCommand(str, str2);
                return;
            }
            if (Protocol.this.logger.isLoggable(Level.FINE)) {
                Protocol.this.logger.fine(str + " using two line authentication format");
            }
            Protocol protocol2 = Protocol.this;
            if (str2.length() == 0) {
                str2 = "=";
            }
            this.resp = protocol2.twoLinesCommand(str, str2);
        }
    }

    public class PlainAuthenticator extends Authenticator {
        public PlainAuthenticator() {
            super(Protocol.this, "PLAIN");
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public void doAuth(String str, String str2, String str3, String str4) throws IOException {
            throw new EOFException("PLAIN asked for more");
        }

        @Override // com.sun.mail.pop3.Protocol.Authenticator
        public String getInitialResponse(String str, String str2, String str3, String str4) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BASE64EncoderStream bASE64EncoderStream = new BASE64EncoderStream(byteArrayOutputStream, Integer.MAX_VALUE);
            if (str2 != null) {
                bASE64EncoderStream.write(str2.getBytes(StandardCharsets.UTF_8));
            }
            bASE64EncoderStream.write(0);
            bASE64EncoderStream.write(str3.getBytes(StandardCharsets.UTF_8));
            bASE64EncoderStream.write(0);
            bASE64EncoderStream.write(str4.getBytes(StandardCharsets.UTF_8));
            bASE64EncoderStream.flush();
            return ASCIIUtility.toString(byteArrayOutputStream.toByteArray());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Protocol(String str, int i, MailLogger mailLogger, Properties properties, String str2, boolean z) throws IOException {
        boolean z3;
        String str3;
        this.apopChallenge = null;
        this.noauthdebug = true;
        this.host = str;
        this.props = properties;
        this.prefix = str2;
        this.logger = mailLogger;
        this.traceLogger = mailLogger.getSubLogger("protocol", null);
        this.noauthdebug = !PropUtil.getBooleanProperty(properties, "mail.debug.auth", false);
        boolean boolProp = getBoolProp(properties, str2 + ".apop.enable");
        boolean boolProp2 = getBoolProp(properties, str2 + ".disablecapa");
        i = i == -1 ? 110 : i;
        try {
            Level level = Level.FINE;
            if (mailLogger.isLoggable(level)) {
                mailLogger.fine("connecting to host \"" + str + "\", port " + i + ", isSSL " + z);
            }
            this.socket = SocketFetcher.getSocket(str, i, properties, str2, z);
            initStreams();
            Response responseSimpleCommand = simpleCommand(null);
            if (!responseSimpleCommand.ok) {
                throw cleanupAndThrow(this.socket, new IOException("Connect failed"));
            }
            if (boolProp && (str3 = responseSimpleCommand.data) != null) {
                int iIndexOf = str3.indexOf(60);
                int iIndexOf2 = responseSimpleCommand.data.indexOf(62, iIndexOf);
                if (iIndexOf != -1 && iIndexOf2 != -1) {
                    this.apopChallenge = responseSimpleCommand.data.substring(iIndexOf, iIndexOf2 + 1);
                }
                mailLogger.log(level, "APOP challenge: {0}", this.apopChallenge);
            }
            if (!boolProp2) {
                setCapabilities(capa());
            }
            if (!hasCapability("PIPELINING")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(".pipelining");
                z3 = PropUtil.getBooleanProperty(properties, sb.toString(), false);
            }
            this.pipelining = z3;
            if (z3) {
                mailLogger.config("PIPELINING enabled");
            }
            Authenticator[] authenticatorArr = {new LoginAuthenticator(), new PlainAuthenticator(), new NtlmAuthenticator(), new OAuth2Authenticator()};
            StringBuilder sb2 = new StringBuilder();
            for (int i2 = 0; i2 < 4; i2++) {
                this.authenticators.put(authenticatorArr[i2].getMechanism(), authenticatorArr[i2]);
                sb2.append(authenticatorArr[i2].getMechanism());
                sb2.append(' ');
            }
            this.defaultAuthenticationMechanisms = sb2.toString();
        } catch (IOException e) {
            throw cleanupAndThrow(this.socket, e);
        }
    }

    private void batchCommandContinue(String str) {
    }

    private void batchCommandEnd() {
    }

    private void batchCommandStart(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean getBoolProp(Properties properties, String str) {
        boolean booleanProperty;
        booleanProperty = PropUtil.getBooleanProperty(properties, str, false);
        if (this.logger.isLoggable(Level.CONFIG)) {
            this.logger.config(str + ": " + booleanProperty);
        }
        return booleanProperty;
    }

    private String getDigest(String str) {
        try {
            return toHex(MessageDigest.getInstance("MD5").digest((this.apopChallenge + str).getBytes("iso-8859-1")));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized String getLocalHost() {
        Socket socket;
        try {
            String str = this.localHostName;
            if (str == null || str.length() == 0) {
                InetAddress localHost = InetAddress.getLocalHost();
                String canonicalHostName = localHost.getCanonicalHostName();
                this.localHostName = canonicalHostName;
                if (canonicalHostName == null) {
                    this.localHostName = "[" + localHost.getHostAddress() + "]";
                }
            }
        } catch (UnknownHostException unused) {
        }
        String str2 = this.localHostName;
        if ((str2 == null || str2.length() <= 0) && (socket = this.socket) != null && socket.isBound()) {
            InetAddress localAddress = this.socket.getLocalAddress();
            String canonicalHostName2 = localAddress.getCanonicalHostName();
            this.localHostName = canonicalHostName2;
            if (canonicalHostName2 == null) {
                this.localHostName = "[" + localAddress.getHostAddress() + "]";
            }
        }
        return this.localHostName;
    }

    private void initStreams() throws IOException {
        boolean booleanProperty = PropUtil.getBooleanProperty(this.props, "mail.debug.quote", false);
        TraceInputStream traceInputStream = new TraceInputStream(this.socket.getInputStream(), this.traceLogger);
        this.traceInput = traceInputStream;
        traceInputStream.setQuote(booleanProperty);
        TraceOutputStream traceOutputStream = new TraceOutputStream(this.socket.getOutputStream(), this.traceLogger);
        this.traceOutput = traceOutputStream;
        traceOutputStream.setQuote(booleanProperty);
        this.input = new BufferedReader(new InputStreamReader(this.traceInput, "iso-8859-1"));
        this.output = new PrintWriter(new BufferedWriter(new OutputStreamWriter(this.traceOutput, "iso-8859-1")));
    }

    private static boolean isRecoverable(Throwable th) {
        return (th instanceof Exception) || (th instanceof LinkageError);
    }

    private void issueCommand(String str) throws IOException {
        if (this.socket == null) {
            throw new IOException("Folder is closed");
        }
        if (str != null) {
            this.output.print(str + "\r\n");
            this.output.flush();
        }
    }

    private Response multilineCommand(String str, int i) throws IOException {
        multilineCommandStart(str);
        issueCommand(str);
        Response response = readResponse();
        if (!response.ok) {
            multilineCommandEnd();
            return response;
        }
        response.bytes = readMultilineResponse(i);
        multilineCommandEnd();
        return response;
    }

    private void multilineCommandEnd() {
    }

    private void multilineCommandStart(String str) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        r2 = r3.input.read();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private InputStream readMultilineResponse(int i) throws IOException {
        int i2;
        SharedByteArrayOutputStream sharedByteArrayOutputStream = new SharedByteArrayOutputStream(i);
        int i3 = 10;
        while (true) {
            try {
                i2 = this.input.read();
                if (i2 < 0) {
                    break;
                }
                if (i3 == 10 && i2 == 46) {
                    i3 = this.input.read();
                    if (i3 == 13) {
                        break;
                    }
                } else {
                    i3 = i2;
                }
                sharedByteArrayOutputStream.write(i3);
            } catch (InterruptedIOException e) {
                try {
                    this.socket.close();
                } catch (IOException unused) {
                }
                throw e;
            }
        }
        if (i2 >= 0) {
            return sharedByteArrayOutputStream.toStream();
        }
        throw new EOFException("EOF on socket");
    }

    private Response readResponse() throws IOException {
        try {
            String line = this.input.readLine();
            if (line == null) {
                this.traceLogger.finest("<EOF>");
                throw new EOFException("EOF on socket");
            }
            Response response = new Response();
            if (line.startsWith("+OK")) {
                response.ok = true;
            } else if (line.startsWith("+ ")) {
                response.ok = true;
                response.cont = true;
            } else {
                if (!line.startsWith("-ERR")) {
                    throw new IOException("Unexpected response: ".concat(String.valueOf(line)));
                }
                response.ok = false;
            }
            int iIndexOf = line.indexOf(32);
            if (iIndexOf >= 0) {
                response.data = line.substring(iIndexOf + 1);
            }
            return response;
        } catch (InterruptedIOException e) {
            try {
                this.socket.close();
            } catch (IOException unused) {
            }
            throw new EOFException(e.getMessage());
        } catch (SocketException e2) {
            try {
                this.socket.close();
            } catch (IOException unused2) {
            }
            throw new EOFException(e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeTracing() {
        if (this.traceLogger.isLoggable(Level.FINEST)) {
            this.traceInput.setTrace(true);
            this.traceOutput.setTrace(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response simpleCommand(String str) throws IOException {
        simpleCommandStart(str);
        issueCommand(str);
        Response response = readResponse();
        simpleCommandEnd();
        return response;
    }

    private void simpleCommandEnd() {
    }

    private void simpleCommandStart(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void suspendTracing() {
        if (this.traceLogger.isLoggable(Level.FINEST)) {
            this.traceInput.setTrace(false);
            this.traceOutput.setTrace(false);
        }
    }

    private static String toHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            int i3 = i + 1;
            char[] cArr2 = digits;
            cArr[i] = cArr2[i2 >> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response twoLinesCommand(String str, String str2) throws IOException {
        String str3 = str + o4.OooO00o.OooO0Oo + str2;
        batchCommandStart(str3);
        simpleCommand(str);
        batchCommandContinue(str3);
        Response responseSimpleCommand = simpleCommand(str2);
        batchCommandEnd();
        return responseSimpleCommand;
    }

    public synchronized String authenticate(String str, String str2, String str3, String str4, String str5) {
        Authenticator authenticator = this.authenticators.get(str.toUpperCase(Locale.ENGLISH));
        if (authenticator == null) {
            return "No such authentication mechanism: ".concat(String.valueOf(str));
        }
        try {
            if (authenticator.authenticate(str2, str3, str4, str5)) {
                return null;
            }
            return "login failed";
        } catch (IOException e) {
            return e.getMessage();
        }
    }

    public synchronized InputStream capa() throws IOException {
        Response responseMultilineCommand = multilineCommand("CAPA", 128);
        if (!responseMultilineCommand.ok) {
            return null;
        }
        return responseMultilineCommand.bytes;
    }

    public void close() {
        try {
            Socket socket = this.socket;
            if (socket != null) {
                socket.close();
            }
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.socket = null;
            this.input = null;
            this.output = null;
            throw th;
        }
        this.socket = null;
        this.input = null;
        this.output = null;
    }

    public synchronized boolean dele(int i) throws IOException {
        return simpleCommand("DELE ".concat(String.valueOf(i))).ok;
    }

    public void finalize() throws Throwable {
        try {
            if (this.socket != null) {
                quit();
            }
        } finally {
            super.finalize();
        }
    }

    public synchronized Map<String, String> getCapabilities() {
        return this.capabilities;
    }

    public String getDefaultMechanisms() {
        return this.defaultAuthenticationMechanisms;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean hasCapability(String str) {
        boolean z;
        Map<String, String> map = this.capabilities;
        if (map != null) {
            z = map.containsKey(str.toUpperCase(Locale.ENGLISH));
        }
        return z;
    }

    public boolean isMechanismEnabled(String str) {
        Authenticator authenticator = this.authenticators.get(str.toUpperCase(Locale.ENGLISH));
        return authenticator != null && authenticator.enabled();
    }

    public synchronized boolean isSSL() {
        return this.socket instanceof SSLSocket;
    }

    public boolean isTracing() {
        return this.traceLogger.isLoggable(Level.FINEST);
    }

    public synchronized int list(int i) throws IOException {
        int i2;
        Response responseSimpleCommand = simpleCommand("LIST ".concat(String.valueOf(i)));
        i2 = -1;
        if (responseSimpleCommand.ok && responseSimpleCommand.data != null) {
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(responseSimpleCommand.data);
                stringTokenizer.nextToken();
                i2 = Integer.parseInt(stringTokenizer.nextToken());
            } catch (RuntimeException unused) {
            }
        }
        return i2;
    }

    public synchronized InputStream list() throws IOException {
        return multilineCommand("LIST", 128).bytes;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00db A[Catch: all -> 0x00ec, TryCatch #1 {all -> 0x00ec, blocks: (B:9:0x000e, B:11:0x0012, B:13:0x0018, B:14:0x0022, B:16:0x0027, B:18:0x002d, B:21:0x0033, B:22:0x0049, B:45:0x00bb, B:47:0x00bf, B:49:0x00c5, B:53:0x00d4, B:54:0x00d7, B:56:0x00db, B:24:0x0050, B:26:0x0078, B:30:0x007f, B:34:0x008a, B:35:0x0092, B:37:0x00a4, B:44:0x00b0), top: B:73:0x000e, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e7 A[Catch: all -> 0x00f1, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:60:0x00e2, B:63:0x00e7, B:31:0x0085, B:41:0x00ab, B:67:0x00ed, B:68:0x00f0, B:9:0x000e, B:11:0x0012, B:13:0x0018, B:14:0x0022, B:16:0x0027, B:18:0x002d, B:21:0x0033, B:22:0x0049, B:45:0x00bb, B:47:0x00bf, B:49:0x00c5, B:53:0x00d4, B:54:0x00d7, B:56:0x00db, B:24:0x0050, B:26:0x0078, B:30:0x007f, B:34:0x008a, B:35:0x0092, B:37:0x00a4, B:44:0x00b0), top: B:72:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized String login(String str, String str2) throws IOException {
        String strConcat;
        Response response;
        boolean z = this.pipelining && (this.socket instanceof SSLSocket);
        try {
            if (this.noauthdebug && isTracing()) {
                this.logger.fine("authentication command trace suppressed");
                suspendTracing();
            }
            String digest = this.apopChallenge != null ? getDigest(str2) : null;
            if (this.apopChallenge != null && digest != null) {
                strConcat = "APOP " + str + o4.OooO00o.OooO0Oo + digest;
            } else {
                if (z) {
                    String strConcat2 = "USER ".concat(String.valueOf(str));
                    batchCommandStart(strConcat2);
                    issueCommand(strConcat2);
                    String strConcat3 = "PASS ".concat(String.valueOf(str2));
                    batchCommandContinue(strConcat3);
                    issueCommand(strConcat3);
                    Response response2 = readResponse();
                    if (!response2.ok) {
                        String str3 = response2.data;
                        if (str3 == null) {
                            str3 = "USER command failed";
                        }
                        readResponse();
                        batchCommandEnd();
                        return str3;
                    }
                    response = readResponse();
                    batchCommandEnd();
                    if (this.noauthdebug && isTracing()) {
                        this.logger.log(Level.FINE, "authentication command {0}", !response.ok ? "succeeded" : "failed");
                    }
                    if (!response.ok) {
                        return null;
                    }
                    String str4 = response.data;
                    if (str4 == null) {
                        str4 = "login failed";
                    }
                    return str4;
                }
                Response responseSimpleCommand = simpleCommand("USER ".concat(String.valueOf(str)));
                if (!responseSimpleCommand.ok) {
                    String str5 = responseSimpleCommand.data;
                    if (str5 == null) {
                        str5 = "USER command failed";
                    }
                    return str5;
                }
                strConcat = "PASS ".concat(String.valueOf(str2));
            }
            response = simpleCommand(strConcat);
            if (this.noauthdebug) {
                this.logger.log(Level.FINE, "authentication command {0}", !response.ok ? "succeeded" : "failed");
            }
            if (!response.ok) {
            }
        } finally {
            resumeTracing();
        }
    }

    public synchronized boolean noop() throws IOException {
        return simpleCommand("NOOP").ok;
    }

    public synchronized boolean quit() throws IOException {
        try {
        } finally {
            close();
        }
        return simpleCommand("QUIT").ok;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized InputStream retr(int i, int i2) throws IOException {
        boolean z;
        Response response;
        if (i2 == 0) {
            try {
                z = this.pipelining;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            String strConcat = "LIST ".concat(String.valueOf(i));
            batchCommandStart(strConcat);
            issueCommand(strConcat);
            String strConcat2 = "RETR ".concat(String.valueOf(i));
            batchCommandContinue(strConcat2);
            issueCommand(strConcat2);
            Response response2 = readResponse();
            if (response2.ok && response2.data != null) {
                try {
                    StringTokenizer stringTokenizer = new StringTokenizer(response2.data);
                    stringTokenizer.nextToken();
                    int i3 = Integer.parseInt(stringTokenizer.nextToken());
                    if (i3 > 1073741824 || i3 < 0) {
                        i2 = 0;
                    } else {
                        try {
                            if (this.logger.isLoggable(Level.FINE)) {
                                this.logger.fine("pipeline message size ".concat(String.valueOf(i3)));
                            }
                            i2 = i3 + 128;
                        } catch (RuntimeException unused) {
                            i2 = i3;
                        }
                    }
                } catch (RuntimeException unused2) {
                }
            }
            response = readResponse();
            if (response.ok) {
                response.bytes = readMultilineResponse(i2 + 128);
            }
            batchCommandEnd();
        } else {
            String strConcat3 = "RETR ".concat(String.valueOf(i));
            multilineCommandStart(strConcat3);
            issueCommand(strConcat3);
            response = readResponse();
            if (!response.ok) {
                multilineCommandEnd();
                return null;
            }
            if (i2 <= 0 && response.data != null) {
                try {
                    StringTokenizer stringTokenizer2 = new StringTokenizer(response.data);
                    String strNextToken = stringTokenizer2.nextToken();
                    if (stringTokenizer2.nextToken().equals("octets")) {
                        i2 = Integer.parseInt(strNextToken);
                        if (i2 > 1073741824 || i2 < 0) {
                            i2 = 0;
                        } else {
                            if (this.logger.isLoggable(Level.FINE)) {
                                this.logger.fine("guessing message size: ".concat(String.valueOf(i2)));
                            }
                            i2 += 128;
                        }
                    }
                } catch (RuntimeException unused3) {
                }
            }
            response.bytes = readMultilineResponse(i2);
            multilineCommandEnd();
        }
        if (response.ok && i2 > 0 && this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("got message size " + response.bytes.available());
        }
        return response.bytes;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        r2 = r5.input.read();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean retr(int i, OutputStream outputStream) throws IOException {
        int i2;
        boolean z;
        MailLogger mailLogger;
        Level level;
        String strConcat = "RETR ".concat(String.valueOf(i));
        multilineCommandStart(strConcat);
        issueCommand(strConcat);
        if (readResponse().ok) {
            Throwable e = null;
            int i3 = 10;
            while (true) {
                try {
                    i2 = this.input.read();
                    if (i2 < 0) {
                        break;
                    }
                    if (i3 == 10 && i2 == 46) {
                        i3 = this.input.read();
                        if (i3 == 13) {
                            break;
                        }
                    } else {
                        i3 = i2;
                    }
                    if (e == null) {
                        try {
                            outputStream.write(i3);
                        } catch (IOException e2) {
                            e = e2;
                            mailLogger = this.logger;
                            level = Level.FINE;
                            mailLogger.log(level, "exception while streaming", e);
                        } catch (RuntimeException e3) {
                            e = e3;
                            mailLogger = this.logger;
                            level = Level.FINE;
                            mailLogger.log(level, "exception while streaming", e);
                        }
                    }
                } catch (InterruptedIOException e4) {
                    try {
                        this.socket.close();
                    } catch (IOException unused) {
                    }
                    throw e4;
                }
            }
            if (i2 < 0) {
                throw new EOFException("EOF on socket");
            }
            if (e != null) {
                if (e instanceof IOException) {
                    throw ((IOException) e);
                }
                if (e instanceof RuntimeException) {
                    throw ((RuntimeException) e);
                }
            }
            multilineCommandEnd();
            z = true;
        } else {
            multilineCommandEnd();
            z = false;
        }
        return z;
    }

    public synchronized boolean rset() throws IOException {
        return simpleCommand("RSET").ok;
    }

    public synchronized void setCapabilities(InputStream inputStream) {
        BufferedReader bufferedReader = null;
        if (inputStream == null) {
            this.capabilities = null;
            return;
        }
        this.capabilities = new HashMap(10);
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "us-ascii"));
        } catch (UnsupportedEncodingException unused) {
        }
        while (true) {
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        try {
                            inputStream.close();
                            return;
                        } catch (IOException unused2) {
                            return;
                        }
                    } else {
                        int iIndexOf = line.indexOf(32);
                        this.capabilities.put((iIndexOf > 0 ? line.substring(0, iIndexOf) : line).toUpperCase(Locale.ENGLISH), line);
                    }
                } catch (IOException unused3) {
                    return;
                }
            } catch (IOException unused4) {
                inputStream.close();
                return;
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException unused5) {
                }
                throw th;
            }
        }
    }

    public synchronized Status stat() throws IOException {
        Status status;
        Response responseSimpleCommand = simpleCommand("STAT");
        status = new Status();
        if (!responseSimpleCommand.ok) {
            throw new IOException("STAT command failed: " + responseSimpleCommand.data);
        }
        if (responseSimpleCommand.data != null) {
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(responseSimpleCommand.data);
                status.total = Integer.parseInt(stringTokenizer.nextToken());
                status.size = Integer.parseInt(stringTokenizer.nextToken());
            } catch (RuntimeException unused) {
            }
        }
        return status;
    }

    public synchronized boolean stls() throws IOException {
        if (this.socket instanceof SSLSocket) {
            return true;
        }
        Response responseSimpleCommand = simpleCommand("STLS");
        if (responseSimpleCommand.ok) {
            try {
                this.socket = SocketFetcher.startTLS(this.socket, this.host, this.props, this.prefix);
                initStreams();
            } catch (IOException e) {
                try {
                    this.socket.close();
                    this.socket = null;
                    this.input = null;
                    this.output = null;
                    IOException iOException = new IOException("Could not convert socket to TLS");
                    iOException.initCause(e);
                    throw iOException;
                } catch (Throwable th) {
                    this.socket = null;
                    this.input = null;
                    this.output = null;
                    throw th;
                }
            }
        }
        return responseSimpleCommand.ok;
    }

    public synchronized boolean supportsAuthentication(String str) {
        if (str.equals("LOGIN")) {
            return true;
        }
        Map<String, String> map = this.capabilities;
        if (map == null) {
            return false;
        }
        String str2 = map.get("SASL");
        if (str2 == null) {
            return false;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str2);
        while (stringTokenizer.hasMoreTokens()) {
            if (stringTokenizer.nextToken().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean supportsMechanism(String str) {
        return this.authenticators.containsKey(str.toUpperCase(Locale.ENGLISH));
    }

    public synchronized InputStream top(int i, int i2) throws IOException {
        return multilineCommand("TOP " + i + o4.OooO00o.OooO0Oo + i2, 0).bytes;
    }

    public synchronized String uidl(int i) throws IOException {
        Response responseSimpleCommand = simpleCommand("UIDL ".concat(String.valueOf(i)));
        if (!responseSimpleCommand.ok) {
            return null;
        }
        int iIndexOf = responseSimpleCommand.data.indexOf(32);
        if (iIndexOf <= 0) {
            return null;
        }
        return responseSimpleCommand.data.substring(iIndexOf + 1);
    }

    public synchronized boolean uidl(String[] strArr) throws IOException {
        int i;
        Response responseMultilineCommand = multilineCommand("UIDL", strArr.length * 15);
        if (!responseMultilineCommand.ok) {
            return false;
        }
        LineInputStream lineInputStream = new LineInputStream(responseMultilineCommand.bytes);
        while (true) {
            String line = lineInputStream.readLine();
            if (line != null) {
                int iIndexOf = line.indexOf(32);
                if (iIndexOf > 0 && iIndexOf < line.length() && (i = Integer.parseInt(line.substring(0, iIndexOf))) > 0 && i <= strArr.length) {
                    strArr[i - 1] = line.substring(iIndexOf + 1);
                }
            } else {
                try {
                    break;
                } catch (IOException unused) {
                }
            }
        }
        responseMultilineCommand.bytes.close();
        return true;
    }
}
