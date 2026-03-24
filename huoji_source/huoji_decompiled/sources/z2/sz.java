package z2;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes2.dex */
public class sz extends uz {
    private final Class<?> OooO;
    private final Method OooO0o;
    private final Method OooO0o0;
    private final Method OooO0oO;
    private final Class<?> OooO0oo;

    public static class OooO00o implements InvocationHandler {
        private final List<String> OooO00o;
        public boolean OooO0O0;
        public String OooO0OO;

        public OooO00o(List<String> list) {
            this.OooO00o = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2;
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = zx.OooO0O0;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.OooO0O0 = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.OooO00o;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.OooO0OO = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    obj2 = this.OooO00o.get(0);
                    break;
                }
                if (this.OooO00o.contains(list.get(i))) {
                    obj2 = list.get(i);
                    break;
                }
                i++;
            }
            String str = (String) obj2;
            this.OooO0OO = str;
            return str;
        }
    }

    public sz(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.OooO0o0 = method;
        this.OooO0o = method2;
        this.OooO0oO = method3;
        this.OooO0oo = cls;
        this.OooO = cls2;
    }

    public static uz OooOo0O() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new sz(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // z2.uz
    public void OooO00o(SSLSocket sSLSocket) {
        try {
            this.OooO0oO.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw zx.OooO0O0("unable to remove alpn", e);
        }
    }

    @Override // z2.uz
    public void OooO0oo(SSLSocket sSLSocket, String str, List<Protocol> list) {
        try {
            this.OooO0o0.invoke(null, sSLSocket, Proxy.newProxyInstance(uz.class.getClassLoader(), new Class[]{this.OooO0oo, this.OooO}, new OooO00o(uz.OooO0O0(list))));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw zx.OooO0O0("unable to set alpn", e);
        }
    }

    @Override // z2.uz
    @Nullable
    public String OooOOO(SSLSocket sSLSocket) {
        try {
            OooO00o oooO00o = (OooO00o) Proxy.getInvocationHandler(this.OooO0o.invoke(null, sSLSocket));
            boolean z = oooO00o.OooO0O0;
            if (!z && oooO00o.OooO0OO == null) {
                uz.OooOO0O().OooOOo(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (z) {
                return null;
            }
            return oooO00o.OooO0OO;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw zx.OooO0O0("unable to get selected protocol", e);
        }
    }
}
