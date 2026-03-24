package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class q2 {
    private Class<?> OooO00o;
    private Class<?> OooO0O0;
    private Class<?> OooO0OO;

    public q2() {
    }

    public q2(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        OooO00o(cls, cls2);
    }

    public q2(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        OooO0O0(cls, cls2, cls3);
    }

    public void OooO00o(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        OooO0O0(cls, cls2, null);
    }

    public void OooO0O0(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.OooO00o = cls;
        this.OooO0O0 = cls2;
        this.OooO0OO = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q2 q2Var = (q2) obj;
        return this.OooO00o.equals(q2Var.OooO00o) && this.OooO0O0.equals(q2Var.OooO0O0) && t2.OooO0Oo(this.OooO0OO, q2Var.OooO0OO);
    }

    public int hashCode() {
        int iHashCode = ((this.OooO00o.hashCode() * 31) + this.OooO0O0.hashCode()) * 31;
        Class<?> cls = this.OooO0OO;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.OooO00o + ", second=" + this.OooO0O0 + MessageFormatter.DELIM_STOP;
    }
}
