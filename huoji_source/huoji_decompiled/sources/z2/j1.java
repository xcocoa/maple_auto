package z2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class j1 implements m1, l1 {

    @Nullable
    private final m1 OoooOoO;
    private l1 OoooOoo;
    private l1 Ooooo00;

    public j1(@Nullable m1 m1Var) {
        this.OoooOoO = m1Var;
    }

    private boolean OooOOO() {
        m1 m1Var = this.OoooOoO;
        return m1Var == null || m1Var.OooOO0o(this);
    }

    private boolean OooOOO0(l1 l1Var) {
        return l1Var.equals(this.OoooOoo) || (this.OoooOoo.OooO0o0() && l1Var.equals(this.Ooooo00));
    }

    private boolean OooOOOO() {
        m1 m1Var = this.OoooOoO;
        return m1Var == null || m1Var.OooO0oO(this);
    }

    private boolean OooOOOo() {
        m1 m1Var = this.OoooOoO;
        return m1Var == null || m1Var.OooO0oo(this);
    }

    private boolean OooOOo0() {
        m1 m1Var = this.OoooOoO;
        return m1Var != null && m1Var.OooO0O0();
    }

    @Override // z2.l1
    public void OooO() {
        if (this.OoooOoo.isRunning()) {
            return;
        }
        this.OoooOoo.OooO();
    }

    @Override // z2.m1
    public void OooO00o(l1 l1Var) {
        if (!l1Var.equals(this.Ooooo00)) {
            if (this.Ooooo00.isRunning()) {
                return;
            }
            this.Ooooo00.OooO();
        } else {
            m1 m1Var = this.OoooOoO;
            if (m1Var != null) {
                m1Var.OooO00o(this);
            }
        }
    }

    @Override // z2.m1
    public boolean OooO0O0() {
        return OooOOo0() || OooO0Oo();
    }

    @Override // z2.l1
    public boolean OooO0OO(l1 l1Var) {
        if (!(l1Var instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) l1Var;
        return this.OoooOoo.OooO0OO(j1Var.OoooOoo) && this.Ooooo00.OooO0OO(j1Var.Ooooo00);
    }

    @Override // z2.l1
    public boolean OooO0Oo() {
        return (this.OoooOoo.OooO0o0() ? this.Ooooo00 : this.OoooOoo).OooO0Oo();
    }

    @Override // z2.l1
    public boolean OooO0o() {
        return (this.OoooOoo.OooO0o0() ? this.Ooooo00 : this.OoooOoo).OooO0o();
    }

    @Override // z2.l1
    public boolean OooO0o0() {
        return this.OoooOoo.OooO0o0() && this.Ooooo00.OooO0o0();
    }

    @Override // z2.m1
    public boolean OooO0oO(l1 l1Var) {
        return OooOOOO() && OooOOO0(l1Var);
    }

    @Override // z2.m1
    public boolean OooO0oo(l1 l1Var) {
        return OooOOOo() && OooOOO0(l1Var);
    }

    @Override // z2.m1
    public void OooOO0(l1 l1Var) {
        m1 m1Var = this.OoooOoO;
        if (m1Var != null) {
            m1Var.OooOO0(this);
        }
    }

    @Override // z2.l1
    public boolean OooOO0O() {
        return (this.OoooOoo.OooO0o0() ? this.Ooooo00 : this.OoooOoo).OooOO0O();
    }

    @Override // z2.m1
    public boolean OooOO0o(l1 l1Var) {
        return OooOOO() && OooOOO0(l1Var);
    }

    public void OooOOo(l1 l1Var, l1 l1Var2) {
        this.OoooOoo = l1Var;
        this.Ooooo00 = l1Var2;
    }

    @Override // z2.l1
    public void clear() {
        this.OoooOoo.clear();
        if (this.Ooooo00.isRunning()) {
            this.Ooooo00.clear();
        }
    }

    @Override // z2.l1
    public boolean isRunning() {
        return (this.OoooOoo.OooO0o0() ? this.Ooooo00 : this.OoooOoo).isRunning();
    }

    @Override // z2.l1
    public void recycle() {
        this.OoooOoo.recycle();
        this.Ooooo00.recycle();
    }
}
