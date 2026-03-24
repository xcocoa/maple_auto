package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class v10 {
    public final Object OooO00o;
    public final t10 OooO0O0;
    public volatile boolean OooO0OO = true;

    public v10(Object obj, t10 t10Var) {
        this.OooO00o = obj;
        this.OooO0O0 = t10Var;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof v10)) {
            return false;
        }
        v10 v10Var = (v10) obj;
        return this.OooO00o == v10Var.OooO00o && this.OooO0O0.equals(v10Var.OooO0O0);
    }

    public int hashCode() {
        return this.OooO00o.hashCode() + this.OooO0O0.OooO0o.hashCode();
    }
}
