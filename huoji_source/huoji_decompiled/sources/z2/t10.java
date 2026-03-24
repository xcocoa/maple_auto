package z2;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class t10 {
    public final Method OooO00o;
    public final ThreadMode OooO0O0;
    public final Class<?> OooO0OO;
    public final int OooO0Oo;
    public String OooO0o;
    public final boolean OooO0o0;

    public t10(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.OooO00o = method;
        this.OooO0O0 = threadMode;
        this.OooO0OO = cls;
        this.OooO0Oo = i;
        this.OooO0o0 = z;
    }

    private synchronized void OooO00o() {
        if (this.OooO0o == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.OooO00o.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.OooO00o.getName());
            sb.append('(');
            sb.append(this.OooO0OO.getName());
            this.OooO0o = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t10)) {
            return false;
        }
        OooO00o();
        t10 t10Var = (t10) obj;
        t10Var.OooO00o();
        return this.OooO0o.equals(t10Var.OooO0o);
    }

    public int hashCode() {
        return this.OooO00o.hashCode();
    }
}
