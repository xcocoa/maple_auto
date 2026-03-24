package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class fr {
    private final boolean OooO00o;
    private final zq OooO0O0;
    private final zq OooO0OO;
    private final ar OooO0Oo;

    public fr(zq zqVar, zq zqVar2, ar arVar, boolean z) {
        this.OooO0O0 = zqVar;
        this.OooO0OO = zqVar2;
        this.OooO0Oo = arVar;
        this.OooO00o = z;
    }

    private static boolean OooO00o(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    private static int OooO0o0(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final ar OooO0O0() {
        return this.OooO0Oo;
    }

    public final zq OooO0OO() {
        return this.OooO0O0;
    }

    public final zq OooO0Oo() {
        return this.OooO0OO;
    }

    public final boolean OooO0o() {
        return this.OooO00o;
    }

    public final boolean OooO0oO() {
        return this.OooO0OO == null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fr)) {
            return false;
        }
        fr frVar = (fr) obj;
        return OooO00o(this.OooO0O0, frVar.OooO0O0) && OooO00o(this.OooO0OO, frVar.OooO0OO) && OooO00o(this.OooO0Oo, frVar.OooO0Oo);
    }

    public final int hashCode() {
        return (OooO0o0(this.OooO0O0) ^ OooO0o0(this.OooO0OO)) ^ OooO0o0(this.OooO0Oo);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[ ");
        sb.append(this.OooO0O0);
        sb.append(" , ");
        sb.append(this.OooO0OO);
        sb.append(" : ");
        ar arVar = this.OooO0Oo;
        sb.append(arVar == null ? "null" : Integer.valueOf(arVar.OooO0OO()));
        sb.append(" ]");
        return sb.toString();
    }
}
