package com.sun.mail.imap;

import com.sun.mail.iap.BadCommandException;
import com.sun.mail.iap.CommandFailedException;
import com.sun.mail.iap.ConnectionException;
import com.sun.mail.iap.Protocol;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.Response;
import com.sun.mail.iap.ResponseHandler;
import com.sun.mail.imap.protocol.IMAPProtocol;
import com.sun.mail.imap.protocol.IMAPReferralException;
import com.sun.mail.imap.protocol.ListInfo;
import com.sun.mail.imap.protocol.Namespaces;
import com.sun.mail.util.MailConnectException;
import com.sun.mail.util.MailLogger;
import com.sun.mail.util.PropUtil;
import com.sun.mail.util.SocketConnectException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import java.util.logging.Level;
import javax.mail.AuthenticationFailedException;
import javax.mail.Folder;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Quota;
import javax.mail.QuotaAwareStore;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.StoreClosedException;
import javax.mail.URLName;

/* JADX INFO: loaded from: classes2.dex */
public class IMAPStore extends Store implements ResponseHandler, QuotaAwareStore {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String ID_ADDRESS = "address";
    public static final String ID_ARGUMENTS = "arguments";
    public static final String ID_COMMAND = "command";
    public static final String ID_DATE = "date";
    public static final String ID_ENVIRONMENT = "environment";
    public static final String ID_NAME = "name";
    public static final String ID_OS = "os";
    public static final String ID_OS_VERSION = "os-version";
    public static final String ID_SUPPORT_URL = "support-url";
    public static final String ID_VENDOR = "vendor";
    public static final String ID_VERSION = "version";
    public static final int RESPONSE = 1000;
    private final int appendBufferSize;
    public String authorizationID;
    private final int blksize;
    private boolean closeFoldersOnStoreFailure;
    private volatile boolean connectionFailed;
    private final Object connectionFailedLock;
    private boolean debugpassword;
    private boolean debugusername;
    public final int defaultPort;
    private boolean enableCompress;
    private boolean enableImapEvents;
    private boolean enableResponseEvents;
    private boolean enableSASL;
    private boolean enableStartTLS;
    private boolean finalizeCleanClose;
    private volatile Constructor<?> folderConstructor;
    private volatile Constructor<?> folderConstructorLI;
    private volatile boolean forceClose;
    private boolean forcePasswordRefresh;
    private String guid;
    public String host;
    private boolean ignoreSize;
    public final boolean isSSL;
    public MailLogger logger;
    private boolean messageCacheDebug;
    private final int minIdleTime;
    public final String name;
    private Namespaces namespaces;
    private ResponseHandler nonStoreResponseHandler;
    public String password;
    private boolean peek;
    private final ConnectionPool pool;
    private volatile int port;
    public String proxyAuthUser;
    private boolean requireStartTLS;
    private String[] saslMechanisms;
    public String saslRealm;
    private final int statusCacheTimeout;
    private boolean throwSearchException;
    public String user;
    private boolean usingSSL;

    public static class ConnectionPool {
        private static final int ABORTING = 2;
        private static final int IDLE = 1;
        private static final int RUNNING = 0;
        private final long clientTimeoutInterval;
        private Vector<IMAPFolder> folders;
        private IMAPProtocol idleProtocol;
        private final MailLogger logger;
        private final int poolSize;
        private final long pruningInterval;
        private final boolean separateStoreConnection;
        private final long serverTimeoutInterval;
        private Vector<IMAPProtocol> authenticatedConnections = new Vector<>();
        private boolean storeConnectionInUse = false;
        private int idleState = 0;
        private long lastTimePruned = System.currentTimeMillis();

        public ConnectionPool(String str, MailLogger mailLogger, Session session) {
            Properties properties = session.getProperties();
            MailLogger subLogger = mailLogger.getSubLogger("connectionpool", "DEBUG IMAP CP", PropUtil.getBooleanProperty(properties, "mail." + str + ".connectionpool.debug", false));
            this.logger = subLogger;
            int intProperty = PropUtil.getIntProperty(properties, "mail." + str + ".connectionpoolsize", -1);
            if (intProperty > 0) {
                this.poolSize = intProperty;
                if (subLogger.isLoggable(Level.CONFIG)) {
                    subLogger.config("mail.imap.connectionpoolsize: " + intProperty);
                }
            } else {
                this.poolSize = 1;
            }
            int intProperty2 = PropUtil.getIntProperty(properties, "mail." + str + ".connectionpooltimeout", -1);
            if (intProperty2 > 0) {
                long j = intProperty2;
                this.clientTimeoutInterval = j;
                if (subLogger.isLoggable(Level.CONFIG)) {
                    subLogger.config("mail.imap.connectionpooltimeout: " + j);
                }
            } else {
                this.clientTimeoutInterval = 45000L;
            }
            int intProperty3 = PropUtil.getIntProperty(properties, "mail." + str + ".servertimeout", -1);
            if (intProperty3 > 0) {
                long j2 = intProperty3;
                this.serverTimeoutInterval = j2;
                if (subLogger.isLoggable(Level.CONFIG)) {
                    subLogger.config("mail.imap.servertimeout: " + j2);
                }
            } else {
                this.serverTimeoutInterval = 1800000L;
            }
            int intProperty4 = PropUtil.getIntProperty(properties, "mail." + str + ".pruninginterval", -1);
            if (intProperty4 > 0) {
                long j3 = intProperty4;
                this.pruningInterval = j3;
                if (subLogger.isLoggable(Level.CONFIG)) {
                    subLogger.config("mail.imap.pruninginterval: " + j3);
                }
            } else {
                this.pruningInterval = 60000L;
            }
            boolean booleanProperty = PropUtil.getBooleanProperty(properties, "mail." + str + ".separatestoreconnection", false);
            this.separateStoreConnection = booleanProperty;
            if (booleanProperty) {
                subLogger.config("dedicate a store connection");
            }
        }
    }

    public IMAPStore(Session session, URLName uRLName) {
        this(session, uRLName, "imap", false);
    }

    public IMAPStore(Session session, URLName uRLName, String str, boolean z) {
        Class<?> cls;
        super(session, uRLName);
        this.port = -1;
        this.enableStartTLS = false;
        this.requireStartTLS = false;
        this.usingSSL = false;
        this.enableSASL = false;
        this.forcePasswordRefresh = false;
        this.enableResponseEvents = false;
        this.enableImapEvents = false;
        this.throwSearchException = false;
        this.peek = false;
        this.closeFoldersOnStoreFailure = true;
        this.enableCompress = false;
        this.finalizeCleanClose = false;
        this.connectionFailed = false;
        this.forceClose = false;
        this.connectionFailedLock = new Object();
        this.folderConstructor = null;
        this.folderConstructorLI = null;
        this.nonStoreResponseHandler = new ResponseHandler() { // from class: com.sun.mail.imap.IMAPStore.1
            @Override // com.sun.mail.iap.ResponseHandler
            public void handleResponse(Response response) {
                if (response.isOK() || response.isNO() || response.isBAD() || response.isBYE()) {
                    IMAPStore.this.handleResponseCode(response);
                }
                if (response.isBYE()) {
                    IMAPStore.this.logger.fine("IMAPStore non-store connection dead");
                }
            }
        };
        Properties properties = session.getProperties();
        str = uRLName != null ? uRLName.getProtocol() : str;
        this.name = str;
        if (!z) {
            z = PropUtil.getBooleanProperty(properties, "mail." + str + ".ssl.enable", false);
        }
        this.defaultPort = z ? 993 : 143;
        this.isSSL = z;
        this.debug = session.getDebug();
        this.debugusername = PropUtil.getBooleanProperty(properties, "mail.debug.auth.username", true);
        this.debugpassword = PropUtil.getBooleanProperty(properties, "mail.debug.auth.password", false);
        this.logger = new MailLogger(getClass(), "DEBUG " + str.toUpperCase(Locale.ENGLISH), session.getDebug(), session.getDebugOut());
        if (PropUtil.getBooleanProperty(properties, "mail." + str + ".partialfetch", true)) {
            int intProperty = PropUtil.getIntProperty(properties, "mail." + str + ".fetchsize", 16384);
            this.blksize = intProperty;
            if (this.logger.isLoggable(Level.CONFIG)) {
                this.logger.config("mail.imap.fetchsize: " + intProperty);
            }
        } else {
            this.blksize = -1;
            this.logger.config("mail.imap.partialfetch: false");
        }
        this.ignoreSize = PropUtil.getBooleanProperty(properties, "mail." + str + ".ignorebodystructuresize", false);
        MailLogger mailLogger = this.logger;
        Level level = Level.CONFIG;
        if (mailLogger.isLoggable(level)) {
            this.logger.config("mail.imap.ignorebodystructuresize: " + this.ignoreSize);
        }
        int intProperty2 = PropUtil.getIntProperty(properties, "mail." + str + ".statuscachetimeout", 1000);
        this.statusCacheTimeout = intProperty2;
        if (this.logger.isLoggable(level)) {
            this.logger.config("mail.imap.statuscachetimeout: " + intProperty2);
        }
        int intProperty3 = PropUtil.getIntProperty(properties, "mail." + str + ".appendbuffersize", -1);
        this.appendBufferSize = intProperty3;
        if (this.logger.isLoggable(level)) {
            this.logger.config("mail.imap.appendbuffersize: " + intProperty3);
        }
        int intProperty4 = PropUtil.getIntProperty(properties, "mail." + str + ".minidletime", 10);
        this.minIdleTime = intProperty4;
        if (this.logger.isLoggable(level)) {
            this.logger.config("mail.imap.minidletime: " + intProperty4);
        }
        String property = session.getProperty("mail." + str + ".proxyauth.user");
        if (property != null) {
            this.proxyAuthUser = property;
            if (this.logger.isLoggable(level)) {
                this.logger.config("mail.imap.proxyauth.user: " + this.proxyAuthUser);
            }
        }
        boolean booleanProperty = PropUtil.getBooleanProperty(properties, "mail." + str + ".starttls.enable", false);
        this.enableStartTLS = booleanProperty;
        if (booleanProperty) {
            this.logger.config("enable STARTTLS");
        }
        boolean booleanProperty2 = PropUtil.getBooleanProperty(properties, "mail." + str + ".starttls.required", false);
        this.requireStartTLS = booleanProperty2;
        if (booleanProperty2) {
            this.logger.config("require STARTTLS");
        }
        boolean booleanProperty3 = PropUtil.getBooleanProperty(properties, "mail." + str + ".sasl.enable", false);
        this.enableSASL = booleanProperty3;
        if (booleanProperty3) {
            this.logger.config("enable SASL");
        }
        if (this.enableSASL) {
            String property2 = session.getProperty("mail." + str + ".sasl.mechanisms");
            if (property2 != null && property2.length() > 0) {
                if (this.logger.isLoggable(level)) {
                    this.logger.config("SASL mechanisms allowed: ".concat(String.valueOf(property2)));
                }
                ArrayList arrayList = new ArrayList(5);
                StringTokenizer stringTokenizer = new StringTokenizer(property2, " ,");
                while (stringTokenizer.hasMoreTokens()) {
                    String strNextToken = stringTokenizer.nextToken();
                    if (strNextToken.length() > 0) {
                        arrayList.add(strNextToken);
                    }
                }
                String[] strArr = new String[arrayList.size()];
                this.saslMechanisms = strArr;
                arrayList.toArray(strArr);
            }
        }
        String property3 = session.getProperty("mail." + str + ".sasl.authorizationid");
        if (property3 != null) {
            this.authorizationID = property3;
            this.logger.log(Level.CONFIG, "mail.imap.sasl.authorizationid: {0}", property3);
        }
        String property4 = session.getProperty("mail." + str + ".sasl.realm");
        if (property4 != null) {
            this.saslRealm = property4;
            this.logger.log(Level.CONFIG, "mail.imap.sasl.realm: {0}", property4);
        }
        boolean booleanProperty4 = PropUtil.getBooleanProperty(properties, "mail." + str + ".forcepasswordrefresh", false);
        this.forcePasswordRefresh = booleanProperty4;
        if (booleanProperty4) {
            this.logger.config("enable forcePasswordRefresh");
        }
        boolean booleanProperty5 = PropUtil.getBooleanProperty(properties, "mail." + str + ".enableresponseevents", false);
        this.enableResponseEvents = booleanProperty5;
        if (booleanProperty5) {
            this.logger.config("enable IMAP response events");
        }
        boolean booleanProperty6 = PropUtil.getBooleanProperty(properties, "mail." + str + ".enableimapevents", false);
        this.enableImapEvents = booleanProperty6;
        if (booleanProperty6) {
            this.logger.config("enable IMAP IDLE events");
        }
        this.messageCacheDebug = PropUtil.getBooleanProperty(properties, "mail." + str + ".messagecache.debug", false);
        String property5 = session.getProperty("mail." + str + ".yahoo.guid");
        this.guid = property5;
        if (property5 != null) {
            this.logger.log(Level.CONFIG, "mail.imap.yahoo.guid: {0}", property5);
        }
        boolean booleanProperty7 = PropUtil.getBooleanProperty(properties, "mail." + str + ".throwsearchexception", false);
        this.throwSearchException = booleanProperty7;
        if (booleanProperty7) {
            this.logger.config("throw SearchException");
        }
        boolean booleanProperty8 = PropUtil.getBooleanProperty(properties, "mail." + str + ".peek", false);
        this.peek = booleanProperty8;
        if (booleanProperty8) {
            this.logger.config("peek");
        }
        boolean booleanProperty9 = PropUtil.getBooleanProperty(properties, "mail." + str + ".closefoldersonstorefailure", true);
        this.closeFoldersOnStoreFailure = booleanProperty9;
        if (booleanProperty9) {
            this.logger.config("closeFoldersOnStoreFailure");
        }
        boolean booleanProperty10 = PropUtil.getBooleanProperty(properties, "mail." + str + ".compress.enable", false);
        this.enableCompress = booleanProperty10;
        if (booleanProperty10) {
            this.logger.config("enable COMPRESS");
        }
        boolean booleanProperty11 = PropUtil.getBooleanProperty(properties, "mail." + str + ".finalizecleanclose", false);
        this.finalizeCleanClose = booleanProperty11;
        if (booleanProperty11) {
            this.logger.config("close connection cleanly in finalize");
        }
        String property6 = session.getProperty("mail." + str + ".folder.class");
        if (property6 != null) {
            this.logger.log(Level.CONFIG, "IMAP: folder class: {0}", property6);
            try {
                try {
                    cls = Class.forName(property6, false, getClass().getClassLoader());
                } catch (ClassNotFoundException unused) {
                    cls = Class.forName(property6);
                }
                this.folderConstructor = cls.getConstructor(String.class, Character.TYPE, IMAPStore.class, Boolean.class);
                this.folderConstructorLI = cls.getConstructor(ListInfo.class, IMAPStore.class);
            } catch (Exception e) {
                this.logger.log(Level.CONFIG, "IMAP: failed to load folder class", (Throwable) e);
            }
        }
        this.pool = new ConnectionPool(str, this.logger, session);
    }

    private void authenticate(IMAPProtocol iMAPProtocol, String str, String str2, String str3) throws ProtocolException {
        MailLogger mailLogger;
        Level level;
        String str4;
        String property = this.session.getProperty("mail." + this.name + ".auth.mechanisms");
        if (property == null) {
            property = "PLAIN LOGIN NTLM XOAUTH2";
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property);
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            Locale locale = Locale.ENGLISH;
            String upperCase = strNextToken.toUpperCase(locale);
            if (property == "PLAIN LOGIN NTLM XOAUTH2") {
                String str5 = "mail." + this.name + ".auth." + upperCase.toLowerCase(locale) + ".disable";
                if (PropUtil.getBooleanProperty(this.session.getProperties(), str5, upperCase.equals("XOAUTH2"))) {
                    if (this.logger.isLoggable(Level.FINE)) {
                        this.logger.fine("mechanism " + upperCase + " disabled by property: " + str5);
                    }
                }
            }
            if (!iMAPProtocol.hasCapability("AUTH=".concat(String.valueOf(upperCase))) && (!upperCase.equals("LOGIN") || !iMAPProtocol.hasCapability("AUTH-LOGIN"))) {
                mailLogger = this.logger;
                level = Level.FINE;
                str4 = "mechanism {0} not supported by server";
            } else {
                if (upperCase.equals("PLAIN")) {
                    iMAPProtocol.authplain(str, str2, str3);
                    return;
                }
                if (upperCase.equals("LOGIN")) {
                    iMAPProtocol.authlogin(str2, str3);
                    return;
                }
                if (upperCase.equals("NTLM")) {
                    iMAPProtocol.authntlm(str, str2, str3);
                    return;
                } else if (upperCase.equals("XOAUTH2")) {
                    iMAPProtocol.authoauth2(str2, str3);
                    return;
                } else {
                    mailLogger = this.logger;
                    level = Level.FINE;
                    str4 = "no authenticator for mechanism {0}";
                }
            }
            mailLogger.log(level, str4, upperCase);
        }
        if (iMAPProtocol.hasCapability("LOGINDISABLED")) {
            throw new ProtocolException("No login methods supported!");
        }
        iMAPProtocol.login(str2, str3);
    }

    private void checkConnected() {
        if (!super.isConnected()) {
            throw new IllegalStateException("Not connected");
        }
    }

    private synchronized void cleanup() {
        boolean z;
        if (!super.isConnected()) {
            this.logger.fine("IMAPStore cleanup, not connected");
            return;
        }
        synchronized (this.connectionFailedLock) {
            z = this.forceClose;
            this.forceClose = false;
            this.connectionFailed = false;
        }
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("IMAPStore cleanup, force ".concat(String.valueOf(z)));
        }
        if (!z || this.closeFoldersOnStoreFailure) {
            closeAllFolders(z);
        }
        emptyConnectionPool(z);
        try {
            super.close();
        } catch (MessagingException unused) {
        }
        this.logger.fine("IMAPStore cleanup done");
    }

    private void closeAllFolders(boolean z) {
        boolean z3;
        Vector vector = null;
        while (true) {
            synchronized (this.pool) {
                if (this.pool.folders != null) {
                    vector = this.pool.folders;
                    this.pool.folders = null;
                    z3 = false;
                } else {
                    z3 = true;
                }
            }
            if (z3) {
                return;
            }
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                IMAPFolder iMAPFolder = (IMAPFolder) vector.get(i);
                if (z) {
                    try {
                        this.logger.fine("force folder to close");
                        iMAPFolder.forceClose();
                    } catch (IllegalStateException | MessagingException unused) {
                    }
                } else {
                    this.logger.fine("close folder");
                    iMAPFolder.close(false);
                }
            }
        }
    }

    private void emptyConnectionPool(boolean z) {
        synchronized (this.pool) {
            for (int size = this.pool.authenticatedConnections.size() - 1; size >= 0; size--) {
                try {
                    IMAPProtocol iMAPProtocol = (IMAPProtocol) this.pool.authenticatedConnections.elementAt(size);
                    iMAPProtocol.removeResponseHandler(this);
                    if (z) {
                        iMAPProtocol.disconnect();
                    } else {
                        iMAPProtocol.logout();
                    }
                } catch (ProtocolException unused) {
                }
            }
            this.pool.authenticatedConnections.removeAllElements();
        }
        this.pool.logger.fine("removed all authenticated connections from pool");
    }

    private synchronized Namespaces getNamespaces() throws MessagingException {
        checkConnected();
        IMAPProtocol storeProtocol = null;
        try {
            if (this.namespaces == null) {
                try {
                    storeProtocol = getStoreProtocol();
                    this.namespaces = storeProtocol.namespace();
                } catch (BadCommandException unused) {
                } catch (ConnectionException e) {
                    throw new StoreClosedException(this, e.getMessage());
                } catch (ProtocolException e2) {
                    throw new MessagingException(e2.getMessage(), e2);
                }
            }
        } finally {
            releaseStoreProtocol(storeProtocol);
        }
        return this.namespaces;
    }

    private IMAPProtocol getStoreProtocol() throws ProtocolException {
        IMAPProtocol iMAPProtocolNewIMAPProtocol = null;
        while (iMAPProtocolNewIMAPProtocol == null) {
            synchronized (this.pool) {
                waitIfIdle();
                if (this.pool.authenticatedConnections.isEmpty()) {
                    this.pool.logger.fine("getStoreProtocol() - no connections in the pool, creating a new one");
                    try {
                        if (this.forcePasswordRefresh) {
                            refreshPassword();
                        }
                        iMAPProtocolNewIMAPProtocol = newIMAPProtocol(this.host, this.port);
                        login(iMAPProtocolNewIMAPProtocol, this.user, this.password);
                    } catch (Exception unused) {
                        if (iMAPProtocolNewIMAPProtocol != null) {
                            try {
                                iMAPProtocolNewIMAPProtocol.logout();
                            } catch (Exception unused2) {
                            }
                        }
                        iMAPProtocolNewIMAPProtocol = null;
                    }
                    if (iMAPProtocolNewIMAPProtocol == null) {
                        throw new ConnectionException("failed to create new store connection");
                    }
                    iMAPProtocolNewIMAPProtocol.addResponseHandler(this);
                    this.pool.authenticatedConnections.addElement(iMAPProtocolNewIMAPProtocol);
                } else {
                    if (this.pool.logger.isLoggable(Level.FINE)) {
                        this.pool.logger.fine("getStoreProtocol() - connection available -- size: " + this.pool.authenticatedConnections.size());
                    }
                    iMAPProtocolNewIMAPProtocol = (IMAPProtocol) this.pool.authenticatedConnections.firstElement();
                    String str = this.proxyAuthUser;
                    if (str != null && !str.equals(iMAPProtocolNewIMAPProtocol.getProxyAuthUser()) && iMAPProtocolNewIMAPProtocol.hasCapability("X-UNAUTHENTICATE")) {
                        iMAPProtocolNewIMAPProtocol.unauthenticate();
                        login(iMAPProtocolNewIMAPProtocol, this.user, this.password);
                    }
                }
                if (this.pool.storeConnectionInUse) {
                    try {
                        this.pool.wait();
                        iMAPProtocolNewIMAPProtocol = null;
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new ProtocolException("Interrupted getStoreProtocol", e);
                    }
                } else {
                    this.pool.storeConnectionInUse = true;
                    this.pool.logger.fine("getStoreProtocol() -- storeConnectionInUse");
                }
                timeoutConnections();
            }
        }
        return iMAPProtocolNewIMAPProtocol;
    }

    private void login(IMAPProtocol iMAPProtocol, String str, String str2) throws ProtocolException {
        if ((this.enableStartTLS || this.requireStartTLS) && !iMAPProtocol.isSSL()) {
            if (iMAPProtocol.hasCapability("STARTTLS")) {
                iMAPProtocol.startTLS();
                iMAPProtocol.capability();
            } else if (this.requireStartTLS) {
                this.logger.fine("STARTTLS required but not supported by server");
                throw new ProtocolException("STARTTLS required but not supported by server");
            }
        }
        if (iMAPProtocol.isAuthenticated()) {
            return;
        }
        preLogin(iMAPProtocol);
        if (this.guid != null) {
            HashMap map = new HashMap();
            map.put("GUID", this.guid);
            iMAPProtocol.id(map);
        }
        iMAPProtocol.getCapabilities().put("__PRELOGIN__", "");
        String str3 = this.authorizationID;
        if (str3 == null && (str3 = this.proxyAuthUser) == null) {
            str3 = null;
        }
        if (this.enableSASL) {
            try {
                iMAPProtocol.sasllogin(this.saslMechanisms, this.saslRealm, str3, str, str2);
                if (!iMAPProtocol.isAuthenticated()) {
                    throw new CommandFailedException("SASL authentication failed");
                }
            } catch (UnsupportedOperationException unused) {
            }
        }
        if (!iMAPProtocol.isAuthenticated()) {
            authenticate(iMAPProtocol, str3, str, str2);
        }
        String str4 = this.proxyAuthUser;
        if (str4 != null) {
            iMAPProtocol.proxyauth(str4);
        }
        if (iMAPProtocol.hasCapability("__PRELOGIN__")) {
            try {
                iMAPProtocol.capability();
            } catch (ConnectionException e) {
                throw e;
            } catch (ProtocolException unused2) {
            }
        }
        if (this.enableCompress && iMAPProtocol.hasCapability("COMPRESS=DEFLATE")) {
            iMAPProtocol.compress();
        }
        if (iMAPProtocol.hasCapability("UTF8=ACCEPT") || iMAPProtocol.hasCapability("UTF8=ONLY")) {
            iMAPProtocol.enable("UTF8=ACCEPT");
        }
    }

    private Folder[] namespaceToFolders(Namespaces.Namespace[] namespaceArr, String str) {
        int length = namespaceArr.length;
        Folder[] folderArr = new Folder[length];
        for (int i = 0; i < length; i++) {
            String strSubstring = namespaceArr[i].prefix;
            if (str == null) {
                int length2 = strSubstring.length();
                if (length2 > 0) {
                    int i2 = length2 - 1;
                    if (strSubstring.charAt(i2) == namespaceArr[i].delimiter) {
                        strSubstring = strSubstring.substring(0, i2);
                    }
                }
            } else {
                strSubstring = strSubstring + str;
            }
            folderArr[i] = newIMAPFolder(strSubstring, namespaceArr[i].delimiter, Boolean.valueOf(str == null));
        }
        return folderArr;
    }

    private void refreshPassword() {
        InetAddress byName;
        if (this.logger.isLoggable(Level.FINE)) {
            this.logger.fine("refresh password, user: " + traceUser(this.user));
        }
        try {
            byName = InetAddress.getByName(this.host);
        } catch (UnknownHostException unused) {
            byName = null;
        }
        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = this.session.requestPasswordAuthentication(byName, this.port, this.name, null, this.user);
        if (passwordAuthenticationRequestPasswordAuthentication != null) {
            this.user = passwordAuthenticationRequestPasswordAuthentication.getUserName();
            this.password = passwordAuthenticationRequestPasswordAuthentication.getPassword();
        }
    }

    private void releaseStoreProtocol(IMAPProtocol iMAPProtocol) {
        boolean z;
        if (iMAPProtocol == null) {
            cleanup();
            return;
        }
        synchronized (this.connectionFailedLock) {
            z = this.connectionFailed;
            this.connectionFailed = false;
        }
        synchronized (this.pool) {
            this.pool.storeConnectionInUse = false;
            this.pool.notifyAll();
            this.pool.logger.fine("releaseStoreProtocol()");
            timeoutConnections();
        }
        if (z) {
            cleanup();
        }
    }

    private void timeoutConnections() {
        synchronized (this.pool) {
            if (System.currentTimeMillis() - this.pool.lastTimePruned > this.pool.pruningInterval && this.pool.authenticatedConnections.size() > 1) {
                if (this.pool.logger.isLoggable(Level.FINE)) {
                    this.pool.logger.fine("checking for connections to prune: " + (System.currentTimeMillis() - this.pool.lastTimePruned));
                    this.pool.logger.fine("clientTimeoutInterval: " + this.pool.clientTimeoutInterval);
                }
                for (int size = this.pool.authenticatedConnections.size() - 1; size > 0; size--) {
                    IMAPProtocol iMAPProtocol = (IMAPProtocol) this.pool.authenticatedConnections.elementAt(size);
                    if (this.pool.logger.isLoggable(Level.FINE)) {
                        this.pool.logger.fine("protocol last used: " + (System.currentTimeMillis() - iMAPProtocol.getTimestamp()));
                    }
                    if (System.currentTimeMillis() - iMAPProtocol.getTimestamp() > this.pool.clientTimeoutInterval) {
                        this.pool.logger.fine("authenticated connection timed out, logging out the connection");
                        iMAPProtocol.removeResponseHandler(this);
                        this.pool.authenticatedConnections.removeElementAt(size);
                        try {
                            iMAPProtocol.logout();
                        } catch (ProtocolException unused) {
                        }
                    }
                }
                this.pool.lastTimePruned = System.currentTimeMillis();
            }
        }
    }

    private String tracePassword(String str) {
        return this.debugpassword ? str : str == null ? "<null>" : "<non-null>";
    }

    private String traceUser(String str) {
        return this.debugusername ? str : "<user name suppressed>";
    }

    private void waitIfIdle() throws ProtocolException {
        while (this.pool.idleState != 0) {
            if (this.pool.idleState == 1) {
                this.pool.idleProtocol.idleAbort();
                this.pool.idleState = 2;
            }
            try {
                this.pool.wait();
            } catch (InterruptedException e) {
                throw new ProtocolException("Interrupted waitIfIdle", e);
            }
        }
    }

    public boolean allowReadOnlySelect() {
        return PropUtil.getBooleanProperty(this.session.getProperties(), "mail." + this.name + ".allowreadonlyselect", false);
    }

    @Override // javax.mail.Service, java.lang.AutoCloseable
    public synchronized void close() throws MessagingException {
        cleanup();
        closeAllFolders(true);
        emptyConnectionPool(true);
    }

    @Override // javax.mail.Service
    public void finalize() throws Throwable {
        if (!this.finalizeCleanClose) {
            synchronized (this.connectionFailedLock) {
                this.connectionFailed = true;
                this.forceClose = true;
            }
            this.closeFoldersOnStoreFailure = true;
        }
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public int getAppendBufferSize() {
        return this.appendBufferSize;
    }

    public MailLogger getConnectionPoolLogger() {
        return this.pool.logger;
    }

    @Override // javax.mail.Store
    public synchronized Folder getDefaultFolder() throws MessagingException {
        checkConnected();
        return new DefaultFolder(this);
    }

    public int getFetchBlockSize() {
        return this.blksize;
    }

    @Override // javax.mail.Store
    public synchronized Folder getFolder(String str) throws MessagingException {
        checkConnected();
        return newIMAPFolder(str, IMAPFolder.UNKNOWN_SEPARATOR);
    }

    @Override // javax.mail.Store
    public synchronized Folder getFolder(URLName uRLName) throws MessagingException {
        checkConnected();
        return newIMAPFolder(uRLName.getFile(), IMAPFolder.UNKNOWN_SEPARATOR);
    }

    public IMAPProtocol getFolderStoreProtocol() throws ProtocolException {
        IMAPProtocol storeProtocol = getStoreProtocol();
        storeProtocol.removeResponseHandler(this);
        storeProtocol.addResponseHandler(this.nonStoreResponseHandler);
        return storeProtocol;
    }

    public boolean getMessageCacheDebug() {
        return this.messageCacheDebug;
    }

    public int getMinIdleTime() {
        return this.minIdleTime;
    }

    public boolean getPeek() {
        return this.peek;
    }

    @Override // javax.mail.Store
    public Folder[] getPersonalNamespaces() throws MessagingException {
        Namespaces.Namespace[] namespaceArr;
        Namespaces namespaces = getNamespaces();
        return (namespaces == null || (namespaceArr = namespaces.personal) == null) ? super.getPersonalNamespaces() : namespaceToFolders(namespaceArr, null);
    }

    public IMAPProtocol getProtocol(IMAPFolder iMAPFolder) throws MessagingException {
        while (true) {
            IMAPProtocol iMAPProtocolNewIMAPProtocol = null;
            while (iMAPProtocolNewIMAPProtocol == null) {
                synchronized (this.pool) {
                    if (this.pool.authenticatedConnections.isEmpty() || (this.pool.authenticatedConnections.size() == 1 && (this.pool.separateStoreConnection || this.pool.storeConnectionInUse))) {
                        this.logger.fine("no connections in the pool, creating a new one");
                        try {
                            if (this.forcePasswordRefresh) {
                                refreshPassword();
                            }
                            iMAPProtocolNewIMAPProtocol = newIMAPProtocol(this.host, this.port);
                            iMAPProtocolNewIMAPProtocol.addResponseHandler(this.nonStoreResponseHandler);
                            login(iMAPProtocolNewIMAPProtocol, this.user, this.password);
                            iMAPProtocolNewIMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
                        } catch (Exception unused) {
                            if (iMAPProtocolNewIMAPProtocol != null) {
                                try {
                                    iMAPProtocolNewIMAPProtocol.disconnect();
                                } catch (Exception unused2) {
                                }
                            }
                            iMAPProtocolNewIMAPProtocol = null;
                        }
                        if (iMAPProtocolNewIMAPProtocol == null) {
                            throw new MessagingException("connection failure");
                        }
                    } else {
                        if (this.logger.isLoggable(Level.FINE)) {
                            this.logger.fine("connection available -- size: " + this.pool.authenticatedConnections.size());
                        }
                        iMAPProtocolNewIMAPProtocol = (IMAPProtocol) this.pool.authenticatedConnections.lastElement();
                        this.pool.authenticatedConnections.removeElement(iMAPProtocolNewIMAPProtocol);
                        if (System.currentTimeMillis() - iMAPProtocolNewIMAPProtocol.getTimestamp() > this.pool.serverTimeoutInterval) {
                            try {
                                iMAPProtocolNewIMAPProtocol.removeResponseHandler(this);
                                iMAPProtocolNewIMAPProtocol.addResponseHandler(this.nonStoreResponseHandler);
                                iMAPProtocolNewIMAPProtocol.noop();
                                iMAPProtocolNewIMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
                                iMAPProtocolNewIMAPProtocol.addResponseHandler(this);
                            } catch (ProtocolException unused3) {
                                iMAPProtocolNewIMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
                                iMAPProtocolNewIMAPProtocol.disconnect();
                            }
                        }
                        String str = this.proxyAuthUser;
                        if (str != null && !str.equals(iMAPProtocolNewIMAPProtocol.getProxyAuthUser()) && iMAPProtocolNewIMAPProtocol.hasCapability("X-UNAUTHENTICATE")) {
                            try {
                                try {
                                    iMAPProtocolNewIMAPProtocol.removeResponseHandler(this);
                                    iMAPProtocolNewIMAPProtocol.addResponseHandler(this.nonStoreResponseHandler);
                                    iMAPProtocolNewIMAPProtocol.unauthenticate();
                                    login(iMAPProtocolNewIMAPProtocol, this.user, this.password);
                                    iMAPProtocolNewIMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
                                    iMAPProtocolNewIMAPProtocol.addResponseHandler(this);
                                } catch (RuntimeException unused4) {
                                }
                            } catch (ProtocolException unused5) {
                                iMAPProtocolNewIMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
                                iMAPProtocolNewIMAPProtocol.disconnect();
                            }
                        }
                        iMAPProtocolNewIMAPProtocol.removeResponseHandler(this);
                    }
                    timeoutConnections();
                    if (iMAPFolder != null) {
                        if (this.pool.folders == null) {
                            this.pool.folders = new Vector();
                        }
                        this.pool.folders.addElement(iMAPFolder);
                    }
                }
            }
            return iMAPProtocolNewIMAPProtocol;
        }
    }

    public String getProxyAuthUser() {
        return this.proxyAuthUser;
    }

    @Override // javax.mail.QuotaAwareStore
    public synchronized Quota[] getQuota(String str) throws MessagingException {
        IMAPProtocol storeProtocol;
        checkConnected();
        storeProtocol = null;
        try {
            try {
                try {
                    try {
                        storeProtocol = getStoreProtocol();
                    } catch (BadCommandException e) {
                        throw new MessagingException("QUOTA not supported", e);
                    }
                } catch (ConnectionException e2) {
                    throw new StoreClosedException(this, e2.getMessage());
                }
            } catch (ProtocolException e3) {
                throw new MessagingException(e3.getMessage(), e3);
            }
        } finally {
            releaseStoreProtocol(storeProtocol);
        }
        return storeProtocol.getQuotaRoot(str);
    }

    @Override // javax.mail.Service
    public Session getSession() {
        return this.session;
    }

    @Override // javax.mail.Store
    public Folder[] getSharedNamespaces() throws MessagingException {
        Namespaces.Namespace[] namespaceArr;
        Namespaces namespaces = getNamespaces();
        return (namespaces == null || (namespaceArr = namespaces.shared) == null) ? super.getSharedNamespaces() : namespaceToFolders(namespaceArr, null);
    }

    public int getStatusCacheTimeout() {
        return this.statusCacheTimeout;
    }

    @Override // javax.mail.Store
    public Folder[] getUserNamespaces(String str) throws MessagingException {
        Namespaces.Namespace[] namespaceArr;
        Namespaces namespaces = getNamespaces();
        return (namespaces == null || (namespaceArr = namespaces.otherUsers) == null) ? super.getUserNamespaces(str) : namespaceToFolders(namespaceArr, str);
    }

    @Override // com.sun.mail.iap.ResponseHandler
    public void handleResponse(Response response) {
        if (response.isOK() || response.isNO() || response.isBAD() || response.isBYE()) {
            handleResponseCode(response);
        }
        if (response.isBYE()) {
            this.logger.fine("IMAPStore connection dead");
            synchronized (this.connectionFailedLock) {
                this.connectionFailed = true;
                if (response.isSynthetic()) {
                    this.forceClose = true;
                }
            }
        }
    }

    public void handleResponseCode(Response response) {
        if (this.enableResponseEvents) {
            notifyStoreListeners(1000, response.toString());
        }
        String rest = response.getRest();
        boolean z = false;
        if (rest.startsWith("[")) {
            int iIndexOf = rest.indexOf(93);
            if (iIndexOf > 0 && rest.substring(0, iIndexOf + 1).equalsIgnoreCase("[ALERT]")) {
                z = true;
            }
            rest = rest.substring(iIndexOf + 1).trim();
        }
        if (z) {
            notifyStoreListeners(1, rest);
        } else {
            if (!response.isUnTagged() || rest.length() <= 0) {
                return;
            }
            notifyStoreListeners(2, rest);
        }
    }

    public synchronized boolean hasCapability(String str) throws MessagingException {
        IMAPProtocol storeProtocol;
        storeProtocol = null;
        try {
            try {
                storeProtocol = getStoreProtocol();
            } catch (ProtocolException e) {
                throw new MessagingException(e.getMessage(), e);
            }
        } finally {
            releaseStoreProtocol(storeProtocol);
        }
        return storeProtocol.hasCapability(str);
    }

    public boolean hasSeparateStoreConnection() {
        return this.pool.separateStoreConnection;
    }

    public synchronized Map<String, String> id(Map<String, String> map) throws MessagingException {
        IMAPProtocol storeProtocol;
        checkConnected();
        storeProtocol = null;
        try {
            try {
                try {
                    try {
                        storeProtocol = getStoreProtocol();
                    } catch (BadCommandException e) {
                        throw new MessagingException("ID not supported", e);
                    }
                } catch (ConnectionException e2) {
                    throw new StoreClosedException(this, e2.getMessage());
                }
            } catch (ProtocolException e3) {
                throw new MessagingException(e3.getMessage(), e3);
            }
        } finally {
            releaseStoreProtocol(storeProtocol);
        }
        return storeProtocol.id(map);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:54:0x0096
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public void idle() throws javax.mail.MessagingException {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.imap.IMAPStore.idle():void");
    }

    public boolean ignoreBodyStructureSize() {
        return this.ignoreSize;
    }

    @Override // javax.mail.Service
    public synchronized boolean isConnected() {
        if (!super.isConnected()) {
            return false;
        }
        IMAPProtocol storeProtocol = null;
        try {
            storeProtocol = getStoreProtocol();
            storeProtocol.noop();
        } catch (ProtocolException unused) {
        } catch (Throwable th) {
            releaseStoreProtocol(storeProtocol);
            throw th;
        }
        releaseStoreProtocol(storeProtocol);
        return super.isConnected();
    }

    public boolean isConnectionPoolFull() {
        boolean z;
        synchronized (this.pool) {
            if (this.pool.logger.isLoggable(Level.FINE)) {
                this.pool.logger.fine("connection pool current size: " + this.pool.authenticatedConnections.size() + "   pool size: " + this.pool.poolSize);
            }
            z = this.pool.authenticatedConnections.size() >= this.pool.poolSize;
        }
        return z;
    }

    public synchronized boolean isSSL() {
        return this.usingSSL;
    }

    public IMAPFolder newIMAPFolder(ListInfo listInfo) {
        IMAPFolder iMAPFolder;
        if (this.folderConstructorLI != null) {
            try {
                iMAPFolder = (IMAPFolder) this.folderConstructorLI.newInstance(listInfo, this);
            } catch (Exception e) {
                this.logger.log(Level.FINE, "exception creating IMAPFolder class LI", (Throwable) e);
                iMAPFolder = null;
            }
        } else {
            iMAPFolder = null;
        }
        return iMAPFolder == null ? new IMAPFolder(listInfo, this) : iMAPFolder;
    }

    public IMAPFolder newIMAPFolder(String str, char c) {
        return newIMAPFolder(str, c, null);
    }

    public IMAPFolder newIMAPFolder(String str, char c, Boolean bool) {
        IMAPFolder iMAPFolder;
        if (this.folderConstructor != null) {
            try {
                iMAPFolder = (IMAPFolder) this.folderConstructor.newInstance(str, Character.valueOf(c), this, bool);
            } catch (Exception e) {
                this.logger.log(Level.FINE, "exception creating IMAPFolder class", (Throwable) e);
                iMAPFolder = null;
            }
        } else {
            iMAPFolder = null;
        }
        return iMAPFolder == null ? new IMAPFolder(str, c, this, bool) : iMAPFolder;
    }

    public IMAPProtocol newIMAPProtocol(String str, int i) throws ProtocolException, IOException {
        return new IMAPProtocol(this.name, str, i, this.session.getProperties(), this.isSSL, this.logger);
    }

    public void preLogin(IMAPProtocol iMAPProtocol) throws ProtocolException {
    }

    @Override // javax.mail.Service
    public synchronized boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        boolean z;
        boolean zIsEmpty;
        Protocol protocol = null;
        if (str == null || str3 == null || str2 == null) {
            if (this.logger.isLoggable(Level.FINE)) {
                this.logger.fine("protocolConnect returning false, host=" + str + ", user=" + traceUser(str2) + ", password=" + tracePassword(str3));
            }
            z = false;
        } else {
            if (i == -1) {
                i = PropUtil.getIntProperty(this.session.getProperties(), "mail." + this.name + ".port", this.port);
            }
            this.port = i;
            if (this.port == -1) {
                this.port = this.defaultPort;
            }
            try {
                try {
                    try {
                        try {
                            synchronized (this.pool) {
                                zIsEmpty = this.pool.authenticatedConnections.isEmpty();
                            }
                            if (zIsEmpty) {
                                MailLogger mailLogger = this.logger;
                                Level level = Level.FINE;
                                if (mailLogger.isLoggable(level)) {
                                    this.logger.fine("trying to connect to host \"" + str + "\", port " + this.port + ", isSSL " + this.isSSL);
                                }
                                IMAPProtocol iMAPProtocolNewIMAPProtocol = newIMAPProtocol(str, this.port);
                                if (this.logger.isLoggable(level)) {
                                    this.logger.fine("protocolConnect login, host=" + str + ", user=" + traceUser(str2) + ", password=" + tracePassword(str3));
                                }
                                iMAPProtocolNewIMAPProtocol.addResponseHandler(this.nonStoreResponseHandler);
                                login(iMAPProtocolNewIMAPProtocol, str2, str3);
                                iMAPProtocolNewIMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
                                iMAPProtocolNewIMAPProtocol.addResponseHandler(this);
                                this.usingSSL = iMAPProtocolNewIMAPProtocol.isSSL();
                                this.host = str;
                                this.user = str2;
                                this.password = str3;
                                synchronized (this.pool) {
                                    this.pool.authenticatedConnections.addElement(iMAPProtocolNewIMAPProtocol);
                                }
                            }
                            z = true;
                        } catch (ProtocolException e) {
                            if (0 != 0) {
                                protocol.disconnect();
                            }
                            throw new MessagingException(e.getMessage(), e);
                        }
                    } catch (CommandFailedException e2) {
                        if (0 != 0) {
                            protocol.disconnect();
                        }
                        Response response = e2.getResponse();
                        throw new AuthenticationFailedException(response != null ? response.getRest() : e2.getMessage());
                    }
                } catch (SocketConnectException e3) {
                    throw new MailConnectException(e3);
                }
            } catch (IMAPReferralException e4) {
                if (0 != 0) {
                    protocol.disconnect();
                }
                throw new ReferralException(e4.getUrl(), e4.getMessage());
            } catch (IOException e5) {
                throw new MessagingException(e5.getMessage(), e5);
            }
        }
        return z;
    }

    public void releaseFolderStoreProtocol(IMAPProtocol iMAPProtocol) {
        if (iMAPProtocol == null) {
            return;
        }
        iMAPProtocol.removeResponseHandler(this.nonStoreResponseHandler);
        iMAPProtocol.addResponseHandler(this);
        synchronized (this.pool) {
            this.pool.storeConnectionInUse = false;
            this.pool.notifyAll();
            this.pool.logger.fine("releaseFolderStoreProtocol()");
            timeoutConnections();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0051 A[Catch: all -> 0x005f, TryCatch #1 {, blocks: (B:5:0x0005, B:7:0x000b, B:9:0x0021, B:10:0x003f, B:11:0x0046, B:12:0x0049, B:14:0x0051, B:15:0x005a, B:16:0x005d), top: B:24:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void releaseProtocol(IMAPFolder iMAPFolder, IMAPProtocol iMAPProtocol) {
        synchronized (this.pool) {
            if (iMAPProtocol != null) {
                if (isConnectionPoolFull()) {
                    this.logger.fine("pool is full, not adding an Authenticated connection");
                    try {
                        iMAPProtocol.logout();
                    } catch (ProtocolException unused) {
                    }
                } else {
                    iMAPProtocol.addResponseHandler(this);
                    this.pool.authenticatedConnections.addElement(iMAPProtocol);
                    if (this.logger.isLoggable(Level.FINE)) {
                        this.logger.fine("added an Authenticated connection -- size: " + this.pool.authenticatedConnections.size());
                    }
                }
                if (this.pool.folders != null) {
                    this.pool.folders.removeElement(iMAPFolder);
                }
                timeoutConnections();
            } else {
                if (this.pool.folders != null) {
                }
                timeoutConnections();
            }
        }
    }

    public synchronized void setPassword(String str) {
        this.password = str;
    }

    public void setProxyAuthUser(String str) {
        this.proxyAuthUser = str;
    }

    @Override // javax.mail.QuotaAwareStore
    public synchronized void setQuota(Quota quota) throws MessagingException {
        checkConnected();
        IMAPProtocol storeProtocol = null;
        try {
            try {
                try {
                    try {
                        storeProtocol = getStoreProtocol();
                        storeProtocol.setQuota(quota);
                    } catch (BadCommandException e) {
                        throw new MessagingException("QUOTA not supported", e);
                    }
                } catch (ConnectionException e2) {
                    throw new StoreClosedException(this, e2.getMessage());
                }
            } catch (ProtocolException e3) {
                throw new MessagingException(e3.getMessage(), e3);
            }
        } finally {
            releaseStoreProtocol(storeProtocol);
        }
    }

    public synchronized void setUsername(String str) {
        this.user = str;
    }

    public boolean throwSearchException() {
        return this.throwSearchException;
    }
}
