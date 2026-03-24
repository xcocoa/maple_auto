package z2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public class r1 implements m1, l1 {

    @Nullable
    private final m1 OoooOoO;
    private l1 OoooOoo;
    private l1 Ooooo00;
    private boolean Ooooo0o;

    @VisibleForTesting
    public r1() {
        this(null);
    }

    public r1(@Nullable m1 m1Var) {
        this.OoooOoO = m1Var;
    }

    private boolean OooOOO() {
        m1 m1Var = this.OoooOoO;
        return m1Var == null || m1Var.OooO0oO(this);
    }

    private boolean OooOOO0() {
        m1 m1Var = this.OoooOoO;
        return m1Var == null || m1Var.OooOO0o(this);
    }

    private boolean OooOOOO() {
        m1 m1Var = this.OoooOoO;
        return m1Var == null || m1Var.OooO0oo(this);
    }

    private boolean OooOOOo() {
        m1 m1Var = this.OoooOoO;
        return m1Var != null && m1Var.OooO0O0();
    }

    @Override // z2.l1
    public void OooO() {
        this.Ooooo0o = true;
        if (!this.OoooOoo.OooOO0O() && !this.Ooooo00.isRunning()) {
            this.Ooooo00.OooO();
        }
        if (!this.Ooooo0o || this.OoooOoo.isRunning()) {
            return;
        }
        this.OoooOoo.OooO();
    }

    @Override // z2.m1
    public void OooO00o(l1 l1Var) {
        m1 m1Var;
        if (l1Var.equals(this.OoooOoo) && (m1Var = this.OoooOoO) != null) {
            m1Var.OooO00o(this);
        }
    }

    @Override // z2.m1
    public boolean OooO0O0() {
        return OooOOOo() || OooO0Oo();
    }

    @Override // z2.l1
    public boolean OooO0OO(l1 l1Var) {
        if (!(l1Var instanceof r1)) {
            return false;
        }
        r1 r1Var = (r1) l1Var;
        l1 l1Var2 = this.OoooOoo;
        if (l1Var2 == null) {
            if (r1Var.OoooOoo != null) {
                return false;
            }
        } else if (!l1Var2.OooO0OO(r1Var.OoooOoo)) {
            return false;
        }
        l1 l1Var3 = this.Ooooo00;
        l1 l1Var4 = r1Var.Ooooo00;
        if (l1Var3 == null) {
            if (l1Var4 != null) {
                return false;
            }
        } else if (!l1Var3.OooO0OO(l1Var4)) {
            return false;
        }
        return true;
    }

    @Override // z2.l1
    public boolean OooO0Oo() {
        return this.OoooOoo.OooO0Oo() || this.Ooooo00.OooO0Oo();
    }

    @Override // z2.l1
    public boolean OooO0o() {
        return this.OoooOoo.OooO0o();
    }

    @Override // z2.l1
    public boolean OooO0o0() {
        return this.OoooOoo.OooO0o0();
    }

    @Override // z2.m1
    public boolean OooO0oO(l1 l1Var) {
        return OooOOO() && l1Var.equals(this.OoooOoo) && !OooO0O0();
    }

    @Override // z2.m1
    public boolean OooO0oo(l1 l1Var) {
        return OooOOOO() && (l1Var.equals(this.OoooOoo) || !this.OoooOoo.OooO0Oo());
    }

    @Override // z2.m1
    public void OooOO0(l1 l1Var) {
        if (l1Var.equals(this.Ooooo00)) {
            return;
        }
        m1 m1Var = this.OoooOoO;
        if (m1Var != null) {
            m1Var.OooOO0(this);
        }
        if (this.Ooooo00.OooOO0O()) {
            return;
        }
        this.Ooooo00.clear();
    }

    @Override // z2.l1
    public boolean OooOO0O() {
        return this.OoooOoo.OooOO0O() || this.Ooooo00.OooOO0O();
    }

    @Override // z2.m1
    public boolean OooOO0o(l1 l1Var) {
        return OooOOO0() && l1Var.equals(this.OoooOoo);
    }

    public void OooOOo0(l1 l1Var, l1 l1Var2) {
        this.OoooOoo = l1Var;
        this.Ooooo00 = l1Var2;
    }

    @Override // z2.l1
    public void clear() {
        this.Ooooo0o = false;
        this.Ooooo00.clear();
        this.OoooOoo.clear();
    }

    @Override // z2.l1
    public boolean isRunning() {
        return this.OoooOoo.isRunning();
    }

    @Override // z2.l1
    public void recycle() {
        this.OoooOoo.recycle();
        this.Ooooo00.recycle();
    }
}
