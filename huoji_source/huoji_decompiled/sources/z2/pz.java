package z2;

import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes2.dex */
public class pz extends uz {
    private static final int OooOO0O = 4000;
    private final tz<Socket> OooO;
    private final tz<Socket> OooO0o;
    private final Class<?> OooO0o0;
    private final tz<Socket> OooO0oO;
    private final tz<Socket> OooO0oo;
    private final OooO0OO OooOO0 = OooO0OO.OooO0O0();

    public static final class OooO00o extends yz {
        private final Object OooO00o;
        private final Method OooO0O0;

        public OooO00o(Object obj, Method method) {
            this.OooO00o = obj;
            this.OooO0O0 = method;
        }

        @Override // z2.yz
        public List<Certificate> OooO00o(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.OooO0O0.invoke(this.OooO00o, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof OooO00o;
        }

        public int hashCode() {
            return 0;
        }
    }

    public static final class OooO0O0 implements b00 {
        private final X509TrustManager OooO00o;
        private final Method OooO0O0;

        public OooO0O0(X509TrustManager x509TrustManager, Method method) {
            this.OooO0O0 = method;
            this.OooO00o = x509TrustManager;
        }

        @Override // z2.b00
        public X509Certificate OooO00o(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.OooO0O0.invoke(this.OooO00o, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e) {
                throw zx.OooO0O0("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OooO0O0)) {
                return false;
            }
            OooO0O0 oooO0O0 = (OooO0O0) obj;
            return this.OooO00o.equals(oooO0O0.OooO00o) && this.OooO0O0.equals(oooO0O0.OooO0O0);
        }

        public int hashCode() {
            return this.OooO00o.hashCode() + (this.OooO0O0.hashCode() * 31);
        }
    }

    public static final class OooO0OO {
        private final Method OooO00o;
        private final Method OooO0O0;
        private final Method OooO0OO;

        public OooO0OO(Method method, Method method2, Method method3) {
            this.OooO00o = method;
            this.OooO0O0 = method2;
            this.OooO0OO = method3;
        }

        public static OooO0OO OooO0O0() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new OooO0OO(method3, method2, method);
        }

        public Object OooO00o(String str) {
            Method method = this.OooO00o;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, new Object[0]);
                    this.OooO0O0.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public boolean OooO0OO(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.OooO0OO.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public pz(Class<?> cls, tz<Socket> tzVar, tz<Socket> tzVar2, tz<Socket> tzVar3, tz<Socket> tzVar4) {
        this.OooO0o0 = cls;
        this.OooO0o = tzVar;
        this.OooO0oO = tzVar2;
        this.OooO0oo = tzVar3;
        this.OooO = tzVar4;
    }

    public static uz OooOo() {
        Class<?> cls;
        tz tzVar;
        tz tzVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            tz tzVar3 = new tz(null, "setUseSessionTickets", Boolean.TYPE);
            tz tzVar4 = new tz(null, "setHostname", String.class);
            if (OooOoO0()) {
                tz tzVar5 = new tz(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                tzVar2 = new tz(null, "setAlpnProtocols", byte[].class);
                tzVar = tzVar5;
            } else {
                tzVar = null;
                tzVar2 = null;
            }
            return new pz(cls2, tzVar3, tzVar4, tzVar, tzVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    private boolean OooOo0O(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.OooOOOo(str);
        }
    }

    private boolean OooOo0o(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return OooOo0O(str, cls, obj);
        }
    }

    private static boolean OooOoO0() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // z2.uz
    public void OooO(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!zx.OooOoo0(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e2);
            throw iOException;
        } catch (SecurityException e3) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e3);
            throw iOException2;
        }
    }

    @Override // z2.uz
    public yz OooO0Oo(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new OooO00o(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.OooO0Oo(x509TrustManager);
        }
    }

    @Override // z2.uz
    public b00 OooO0o0(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new OooO0O0(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.OooO0o0(x509TrustManager);
        }
    }

    @Override // z2.uz
    public void OooO0oo(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (str != null) {
            this.OooO0o.OooO0o0(sSLSocket, Boolean.TRUE);
            this.OooO0oO.OooO0o0(sSLSocket, str);
        }
        tz<Socket> tzVar = this.OooO;
        if (tzVar == null || !tzVar.OooO0oO(sSLSocket)) {
            return;
        }
        this.OooO.OooO0o(sSLSocket, uz.OooO0o(list));
    }

    @Override // z2.uz
    @Nullable
    public String OooOOO(SSLSocket sSLSocket) {
        byte[] bArr;
        tz<Socket> tzVar = this.OooO0oo;
        if (tzVar == null || !tzVar.OooO0oO(sSLSocket) || (bArr = (byte[]) this.OooO0oo.OooO0o(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, zx.OooOO0);
    }

    @Override // z2.uz
    public SSLContext OooOOO0() {
        boolean z = true;
        try {
            int i = Build.VERSION.SDK_INT;
            if (i < 16 || i >= 22) {
                z = false;
            }
        } catch (NoClassDefFoundError unused) {
        }
        if (z) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    @Override // z2.uz
    public Object OooOOOO(String str) {
        return this.OooOO0.OooO00o(str);
    }

    @Override // z2.uz
    public boolean OooOOOo(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return OooOo0o(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.OooOOOo(str);
        } catch (IllegalAccessException e) {
            e = e;
            throw zx.OooO0O0("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            throw zx.OooO0O0("unable to determine cleartext support", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw zx.OooO0O0("unable to determine cleartext support", e);
        }
    }

    @Override // z2.uz
    public void OooOOo(int i, String str, @Nullable Throwable th) {
        int iMin;
        int i2 = i != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int iIndexOf = str.indexOf(10, i3);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str.substring(i3, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i3 = iMin;
                }
            }
            i3 = iMin + 1;
        }
    }

    @Override // z2.uz
    public void OooOOoo(String str, Object obj) {
        if (this.OooOO0.OooO0OO(obj)) {
            return;
        }
        OooOOo(5, str, null);
    }

    @Override // z2.uz
    @Nullable
    public X509TrustManager OooOo0(SSLSocketFactory sSLSocketFactory) {
        Object objOooOo00 = uz.OooOo00(sSLSocketFactory, this.OooO0o0, "sslParameters");
        if (objOooOo00 == null) {
            try {
                objOooOo00 = uz.OooOo00(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
            } catch (ClassNotFoundException unused) {
                return super.OooOo0(sSLSocketFactory);
            }
        }
        X509TrustManager x509TrustManager = (X509TrustManager) uz.OooOo00(objOooOo00, X509TrustManager.class, "x509TrustManager");
        return x509TrustManager != null ? x509TrustManager : (X509TrustManager) uz.OooOo00(objOooOo00, X509TrustManager.class, "trustManager");
    }
}
