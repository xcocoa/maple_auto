package z2;

/* JADX INFO: loaded from: classes2.dex */
public class ec0 {
    private String OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private int OooO0Oo;

    public String OooO00o() {
        return this.OooO0O0;
    }

    public int OooO0O0() {
        return this.OooO0Oo;
    }

    public String OooO0OO() {
        return this.OooO0OO;
    }

    public String OooO0Oo() {
        return this.OooO00o;
    }

    public void OooO0o(int i) {
        this.OooO0Oo = i;
    }

    public void OooO0o0(String str) {
        this.OooO0O0 = str;
    }

    public void OooO0oO(String str) {
        this.OooO0OO = str;
    }

    public void OooO0oo(String str) {
        this.OooO00o = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ec0)) {
            return false;
        }
        ec0 ec0Var = (ec0) obj;
        if (ec0Var.OooO0Oo() == null || ec0Var.OooO00o() == null || ec0Var.OooO0O0() != this.OooO0Oo || !ec0Var.OooO0OO().equals(this.OooO0OO)) {
            return false;
        }
        if (ec0Var.OooO0Oo().equals(this.OooO00o) && ec0Var.OooO00o().equals(this.OooO0O0) && ec0Var.OooO0OO().equals(this.OooO0OO)) {
            return true;
        }
        return ec0Var.OooO0Oo().equals(this.OooO0O0) && ec0Var.OooO00o().equals(this.OooO00o) && ec0Var.OooO0OO().equals(this.OooO0OO);
    }
}
