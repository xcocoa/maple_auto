package javax.mail;

import com.anythink.expressad.exoplayer.k.o;
import com.umeng.analytics.pro.b;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.EventListener;
import java.util.Vector;
import java.util.concurrent.Executor;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.ConnectionListener;
import javax.mail.event.MailEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Service implements AutoCloseable {
    private boolean connected = false;
    private final Vector<ConnectionListener> connectionListeners = new Vector<>();
    public boolean debug;
    private final EventQueue q;
    public Session session;
    public volatile URLName url;

    public Service(Session session, URLName uRLName) {
        String property;
        String str;
        String file;
        String password;
        int i;
        String property2;
        String property3 = null;
        this.url = null;
        this.debug = false;
        this.session = session;
        this.debug = session.getDebug();
        this.url = uRLName;
        if (this.url != null) {
            String protocol = this.url.getProtocol();
            String host = this.url.getHost();
            int port = this.url.getPort();
            property = this.url.getUsername();
            i = port;
            password = this.url.getPassword();
            file = this.url.getFile();
            str = protocol;
            property3 = host;
        } else {
            property = null;
            str = null;
            file = null;
            password = null;
            i = -1;
        }
        if (str != null) {
            if (property3 == null) {
                property3 = session.getProperty("mail." + str + ".host");
            }
            if (property == null) {
                property = session.getProperty("mail." + str + ".user");
            }
        }
        String property4 = property3 == null ? session.getProperty("mail.host") : property3;
        property = property == null ? session.getProperty("mail.user") : property;
        if (property == null) {
            try {
                property2 = System.getProperty("user.name");
            } catch (SecurityException unused) {
                property2 = property;
            }
        } else {
            property2 = property;
        }
        this.url = new URLName(str, property4, i, file, property2, password);
        String property5 = session.getProperties().getProperty("mail.event.scope", "folder");
        Executor executor = (Executor) session.getProperties().get("mail.event.executor");
        this.q = property5.equalsIgnoreCase(o.d) ? EventQueue.getApplicationEventQueue(executor) : property5.equalsIgnoreCase(b.ac) ? session.getEventQueue() : new EventQueue(executor);
    }

    public void addConnectionListener(ConnectionListener connectionListener) {
        this.connectionListeners.addElement(connectionListener);
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() throws MessagingException {
        setConnected(false);
        notifyConnectionListeners(3);
    }

    public void connect() throws MessagingException {
        connect(null, null, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:6|(6:8|(1:10)(1:11)|12|(1:14)(1:15)|(3:17|(2:19|20)|25)(2:(2:24|20)|25)|26)(1:27)|(2:(1:30)|(1:32))|(1:34)|(1:36)|(2:93|38)|41|(1:54)(2:45|(2:(1:48)(2:50|(0))|49)(6:53|89|56|57|(5:91|61|62|64|(1:66))|(1:(1:(1:(2:71|72)(2:73|74))(2:75|76))(1:77))(4:78|(1:80)|81|82)))|55|89|56|57|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0107, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0108, code lost:
    
        r16 = r0;
        r0 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014d A[Catch: all -> 0x017c, TryCatch #3 {, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x000f, B:10:0x0017, B:14:0x0025, B:17:0x002f, B:19:0x0037, B:20:0x0039, B:26:0x0051, B:30:0x0069, B:32:0x0084, B:34:0x009f, B:36:0x00a9, B:38:0x00b3, B:43:0x00be, B:45:0x00c2, B:48:0x00e4, B:49:0x00e8, B:56:0x0100, B:61:0x010d, B:64:0x0114, B:66:0x0120, B:71:0x0134, B:72:0x013b, B:73:0x013c, B:74:0x0143, B:75:0x0144, B:76:0x014b, B:77:0x014c, B:78:0x014d, B:80:0x015e, B:81:0x016c, B:50:0x00ed, B:22:0x0040, B:24:0x004c, B:84:0x0174, B:85:0x017b), top: B:95:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void connect(String str, int i, String str2, String str3) throws MessagingException, UnknownHostException {
        String property;
        String password;
        int i2;
        String str4;
        String file;
        boolean z;
        ?? r15;
        boolean z3;
        String password2;
        String userName;
        boolean zProtocolConnect;
        InetAddress byName;
        URLName uRLName;
        String password3;
        String property2 = str2;
        synchronized (this) {
            if (isConnected()) {
                throw new IllegalStateException("already connected");
            }
            if (this.url != null) {
                String protocol = this.url.getProtocol();
                property = str == null ? this.url.getHost() : str;
                int port = i == -1 ? this.url.getPort() : i;
                if (property2 == null) {
                    property2 = this.url.getUsername();
                    if (str3 == null) {
                        uRLName = this.url;
                        password3 = uRLName.getPassword();
                    }
                    password3 = str3;
                } else {
                    if (str3 == null && property2.equals(this.url.getUsername())) {
                        uRLName = this.url;
                        password3 = uRLName.getPassword();
                    }
                    password3 = str3;
                }
                str4 = protocol;
                i2 = port;
                password = password3;
                file = this.url.getFile();
            } else {
                property = str;
                password = str3;
                i2 = i;
                str4 = null;
                file = null;
            }
            if (str4 != null) {
                if (property == null) {
                    property = this.session.getProperty("mail." + str4 + ".host");
                }
                if (property2 == null) {
                    property2 = this.session.getProperty("mail." + str4 + ".user");
                }
            }
            if (property == null) {
                property = this.session.getProperty("mail.host");
            }
            if (property2 == null) {
                property2 = this.session.getProperty("mail.user");
            }
            if (property2 == null) {
                try {
                    property2 = System.getProperty("user.name");
                } catch (SecurityException unused) {
                }
            }
            if (password != null || this.url == null) {
                z = true;
            } else {
                r15 = 1;
                z = true;
                z = true;
                setURLName(new URLName(str4, property, i2, file, property2, null));
                PasswordAuthentication passwordAuthentication = this.session.getPasswordAuthentication(getURLName());
                if (passwordAuthentication != null) {
                    if (property2 == null) {
                        property2 = passwordAuthentication.getUserName();
                    } else if (property2.equals(passwordAuthentication.getUserName())) {
                    }
                    password = passwordAuthentication.getPassword();
                } else {
                    userName = property2;
                    password2 = password;
                    z3 = true;
                    zProtocolConnect = protocolConnect(property, i2, userName, password2);
                    AuthenticationFailedException authenticationFailedException = null;
                    if (!zProtocolConnect) {
                        try {
                            byName = InetAddress.getByName(property);
                        } catch (UnknownHostException unused2) {
                            byName = null;
                        }
                        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = this.session.requestPasswordAuthentication(byName, i2, str4, null, userName);
                        if (passwordAuthenticationRequestPasswordAuthentication != null) {
                            userName = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                            password2 = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                            zProtocolConnect = protocolConnect(property, i2, userName, password2);
                        }
                    }
                    if (zProtocolConnect) {
                        if (authenticationFailedException != null) {
                            throw authenticationFailedException;
                        }
                        if (userName == null) {
                            throw new AuthenticationFailedException("failed to connect, no user name specified?");
                        }
                        if (password2 != null) {
                            throw new AuthenticationFailedException("failed to connect");
                        }
                        throw new AuthenticationFailedException("failed to connect, no password specified?");
                    }
                    String str5 = password2;
                    setURLName(new URLName(str4, property, i2, file, userName, password2));
                    if (z3) {
                        this.session.setPasswordAuthentication(getURLName(), new PasswordAuthentication(userName, str5));
                    }
                    setConnected(r15);
                    notifyConnectionListeners(r15);
                }
            }
            userName = property2;
            password2 = password;
            z3 = false;
            r15 = z;
            zProtocolConnect = protocolConnect(property, i2, userName, password2);
            AuthenticationFailedException authenticationFailedException2 = null;
            if (!zProtocolConnect) {
            }
            if (zProtocolConnect) {
            }
        }
    }

    public void connect(String str, String str2) throws MessagingException, UnknownHostException {
        connect(null, str, str2);
    }

    public void connect(String str, String str2, String str3) throws MessagingException, UnknownHostException {
        connect(str, -1, str2, str3);
    }

    public void finalize() throws Throwable {
        try {
            this.q.terminateQueue();
        } finally {
            super.finalize();
        }
    }

    public EventQueue getEventQueue() {
        return this.q;
    }

    public Session getSession() {
        return this.session;
    }

    public URLName getURLName() {
        URLName uRLName = this.url;
        return (uRLName == null || (uRLName.getPassword() == null && uRLName.getFile() == null)) ? uRLName : new URLName(uRLName.getProtocol(), uRLName.getHost(), uRLName.getPort(), null, uRLName.getUsername(), null);
    }

    public synchronized boolean isConnected() {
        return this.connected;
    }

    public void notifyConnectionListeners(int i) {
        if (this.connectionListeners.size() > 0) {
            queueEvent(new ConnectionEvent(this, i), this.connectionListeners);
        }
        if (i == 3) {
            this.q.terminateQueue();
        }
    }

    public boolean protocolConnect(String str, int i, String str2, String str3) throws MessagingException {
        return false;
    }

    public void queueEvent(MailEvent mailEvent, Vector<? extends EventListener> vector) {
        this.q.enqueue(mailEvent, (Vector) vector.clone());
    }

    public void removeConnectionListener(ConnectionListener connectionListener) {
        this.connectionListeners.removeElement(connectionListener);
    }

    public synchronized void setConnected(boolean z) {
        this.connected = z;
    }

    public void setURLName(URLName uRLName) {
        this.url = uRLName;
    }

    public String toString() {
        URLName uRLName = getURLName();
        return uRLName != null ? uRLName.toString() : super.toString();
    }
}
