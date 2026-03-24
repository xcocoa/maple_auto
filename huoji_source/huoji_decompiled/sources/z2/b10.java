package z2;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class b10 {
    public static final int OooO = 1024;
    public static final int OooO0oo = 8192;
    public final byte[] OooO00o;
    public int OooO0O0;
    public int OooO0OO;
    public boolean OooO0Oo;
    public b10 OooO0o;
    public boolean OooO0o0;
    public b10 OooO0oO;

    public b10() {
        this.OooO00o = new byte[8192];
        this.OooO0o0 = true;
        this.OooO0Oo = false;
    }

    public b10(byte[] bArr, int i, int i2, boolean z, boolean z3) {
        this.OooO00o = bArr;
        this.OooO0O0 = i;
        this.OooO0OO = i2;
        this.OooO0Oo = z;
        this.OooO0o0 = z3;
    }

    public final void OooO00o() {
        b10 b10Var = this.OooO0oO;
        if (b10Var == this) {
            throw new IllegalStateException();
        }
        if (b10Var.OooO0o0) {
            int i = this.OooO0OO - this.OooO0O0;
            if (i > (8192 - b10Var.OooO0OO) + (b10Var.OooO0Oo ? 0 : b10Var.OooO0O0)) {
                return;
            }
            OooO0oO(b10Var, i);
            OooO0O0();
            c10.OooO00o(this);
        }
    }

    @Nullable
    public final b10 OooO0O0() {
        b10 b10Var = this.OooO0o;
        b10 b10Var2 = b10Var != this ? b10Var : null;
        b10 b10Var3 = this.OooO0oO;
        b10Var3.OooO0o = b10Var;
        this.OooO0o.OooO0oO = b10Var3;
        this.OooO0o = null;
        this.OooO0oO = null;
        return b10Var2;
    }

    public final b10 OooO0OO(b10 b10Var) {
        b10Var.OooO0oO = this;
        b10Var.OooO0o = this.OooO0o;
        this.OooO0o.OooO0oO = b10Var;
        this.OooO0o = b10Var;
        return b10Var;
    }

    public final b10 OooO0Oo() {
        this.OooO0Oo = true;
        return new b10(this.OooO00o, this.OooO0O0, this.OooO0OO, true, false);
    }

    public final b10 OooO0o() {
        return new b10((byte[]) this.OooO00o.clone(), this.OooO0O0, this.OooO0OO, false, true);
    }

    public final b10 OooO0o0(int i) {
        b10 b10VarOooO0O0;
        if (i <= 0 || i > this.OooO0OO - this.OooO0O0) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            b10VarOooO0O0 = OooO0Oo();
        } else {
            b10VarOooO0O0 = c10.OooO0O0();
            System.arraycopy(this.OooO00o, this.OooO0O0, b10VarOooO0O0.OooO00o, 0, i);
        }
        b10VarOooO0O0.OooO0OO = b10VarOooO0O0.OooO0O0 + i;
        this.OooO0O0 += i;
        this.OooO0oO.OooO0OO(b10VarOooO0O0);
        return b10VarOooO0O0;
    }

    public final void OooO0oO(b10 b10Var, int i) {
        if (!b10Var.OooO0o0) {
            throw new IllegalArgumentException();
        }
        int i2 = b10Var.OooO0OO;
        if (i2 + i > 8192) {
            if (b10Var.OooO0Oo) {
                throw new IllegalArgumentException();
            }
            int i3 = b10Var.OooO0O0;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = b10Var.OooO00o;
            System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
            b10Var.OooO0OO -= b10Var.OooO0O0;
            b10Var.OooO0O0 = 0;
        }
        System.arraycopy(this.OooO00o, this.OooO0O0, b10Var.OooO00o, b10Var.OooO0OO, i);
        b10Var.OooO0OO += i;
        this.OooO0O0 += i;
    }
}
