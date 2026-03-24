package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class mr extends qr {
    private static final int OooO0o = 8;
    private static final int OooO0oO = 20;
    private static final int OooO0oo = 16;
    private final String OooO0Oo;
    private final String OooO0o0;

    public mr(Cdo cdo, String str, String str2) {
        super(cdo);
        this.OooO0Oo = str2;
        this.OooO0o0 = str;
    }

    private void OooOO0O(StringBuilder sb, int i) {
        int iOooO0o = OooO0O0().OooO0o(i, 16);
        if (iOooO0o == 38400) {
            return;
        }
        sb.append('(');
        sb.append(this.OooO0Oo);
        sb.append(')');
        int i2 = iOooO0o % 32;
        int i3 = iOooO0o / 32;
        int i4 = (i3 % 12) + 1;
        int i5 = i3 / 12;
        if (i5 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i5);
        if (i4 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i4);
        if (i2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i2);
    }

    @Override // z2.qr
    public final int OooO(int i) {
        return i % 100000;
    }

    @Override // z2.rr
    public final String OooO0Oo() throws NotFoundException {
        if (OooO0OO().OooOOO0() != 84) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        OooO0o(sb, 8);
        OooOO0(sb, 48, 20);
        OooOO0O(sb, 68);
        return sb.toString();
    }

    @Override // z2.qr
    public final void OooO0oo(StringBuilder sb, int i) {
        sb.append('(');
        sb.append(this.OooO0o0);
        sb.append(i / 100000);
        sb.append(')');
    }
}
