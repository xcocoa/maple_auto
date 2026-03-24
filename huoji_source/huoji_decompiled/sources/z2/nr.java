package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class nr extends qr {
    private static final int OooO0Oo = 5;
    private static final int OooO0o0 = 15;

    public nr(Cdo cdo) {
        super(cdo);
    }

    @Override // z2.rr
    public String OooO0Oo() throws NotFoundException {
        if (OooO0OO().OooOOO0() != 60) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        OooO0o(sb, 5);
        OooOO0(sb, 45, 15);
        return sb.toString();
    }
}
