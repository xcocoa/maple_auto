package z2;

import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes2.dex */
public class uz {
    public static final int OooO0O0 = 4;
    public static final int OooO0OO = 5;
    private static final uz OooO00o = OooOO0();
    private static final Logger OooO0Oo = Logger.getLogger(ox.class.getName());

    public static List<String> OooO0O0(List<Protocol> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                arrayList.add(protocol.toString());
            }
        }
        return arrayList;
    }

    public static byte[] OooO0o(List<Protocol> list) {
        j00 j00Var = new j00();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                j00Var.OooOOOO(protocol.toString().length());
                j00Var.OooOoO0(protocol.toString());
            }
        }
        return j00Var.OooOO0O();
    }

    private static uz OooOO0() {
        qz qzVarOooOo0O;
        uz uzVarOooOo = pz.OooOo();
        if (uzVarOooOo != null) {
            return uzVarOooOo;
        }
        if (OooOOo0() && (qzVarOooOo0O = qz.OooOo0O()) != null) {
            return qzVarOooOo0O;
        }
        rz rzVarOooOo0O = rz.OooOo0O();
        if (rzVarOooOo0O != null) {
            return rzVarOooOo0O;
        }
        uz uzVarOooOo0O = sz.OooOo0O();
        return uzVarOooOo0O != null ? uzVarOooOo0O : new uz();
    }

    public static uz OooOO0O() {
        return OooO00o;
    }

    public static boolean OooOOo0() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    @Nullable
    public static <T> T OooOo00(Object obj, Class<T> cls, String str) {
        Object objOooOo00;
        for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (obj2 != null && cls.isInstance(obj2)) {
                    return cls.cast(obj2);
                }
                return null;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (NoSuchFieldException unused2) {
            }
        }
        if (str.equals("delegate") || (objOooOo00 = OooOo00(obj, Object.class, "delegate")) == null) {
            return null;
        }
        return (T) OooOo00(objOooOo00, cls, str);
    }

    public void OooO(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void OooO00o(SSLSocket sSLSocket) {
    }

    public yz OooO0OO(SSLSocketFactory sSLSocketFactory) {
        X509TrustManager x509TrustManagerOooOo0 = OooOo0(sSLSocketFactory);
        if (x509TrustManagerOooOo0 != null) {
            return OooO0Oo(x509TrustManagerOooOo0);
        }
        throw new IllegalStateException("Unable to extract the trust manager on " + OooOO0O() + ", sslSocketFactory is " + sSLSocketFactory.getClass());
    }

    public yz OooO0Oo(X509TrustManager x509TrustManager) {
        return new wz(OooO0o0(x509TrustManager));
    }

    public b00 OooO0o0(X509TrustManager x509TrustManager) {
        return new xz(x509TrustManager.getAcceptedIssuers());
    }

    public void OooO0oO(SSLSocketFactory sSLSocketFactory) {
    }

    public void OooO0oo(SSLSocket sSLSocket, @Nullable String str, List<Protocol> list) {
    }

    public String OooOO0o() {
        return "OkHttp";
    }

    @Nullable
    public String OooOOO(SSLSocket sSLSocket) {
        return null;
    }

    public SSLContext OooOOO0() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    public Object OooOOOO(String str) {
        if (OooO0Oo.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean OooOOOo(String str) {
        return true;
    }

    public void OooOOo(int i, String str, @Nullable Throwable th) {
        OooO0Oo.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void OooOOoo(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        OooOOo(5, str, (Throwable) obj);
    }

    @Nullable
    public X509TrustManager OooOo0(SSLSocketFactory sSLSocketFactory) {
        try {
            Object objOooOo00 = OooOo00(sSLSocketFactory, Class.forName("sun.security.ssl.SSLContextImpl"), com.umeng.analytics.pro.b.M);
            if (objOooOo00 == null) {
                return null;
            }
            return (X509TrustManager) OooOo00(objOooOo00, X509TrustManager.class, "trustManager");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
