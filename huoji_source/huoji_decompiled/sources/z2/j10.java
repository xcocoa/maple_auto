package z2;

/* JADX INFO: loaded from: classes2.dex */
public class j10 implements Runnable {
    private final q10 OoooOoO = new q10();
    private final l10 OoooOoo;

    public j10(l10 l10Var) {
        this.OoooOoo = l10Var;
    }

    public void OooO00o(v10 v10Var, Object obj) {
        this.OoooOoO.OooO00o(p10.OooO00o(v10Var, obj));
        this.OoooOoo.OooO0oO().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        p10 p10VarOooO0O0 = this.OoooOoO.OooO0O0();
        if (p10VarOooO0O0 == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.OoooOoo.OooOO0O(p10VarOooO0O0);
    }
}
