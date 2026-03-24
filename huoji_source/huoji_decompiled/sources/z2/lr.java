package z2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class lr extends pr {
    private static final int OooO0Oo = 8;
    private static final int OooO0o = 10;
    private static final int OooO0o0 = 2;

    public lr(Cdo cdo) {
        super(cdo);
    }

    @Override // z2.rr
    public final String OooO0Oo() throws NotFoundException, FormatException {
        if (OooO0OO().OooOOO0() < 48) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        OooO0o(sb, 8);
        int iOooO0o = OooO0O0().OooO0o(48, 2);
        sb.append("(393");
        sb.append(iOooO0o);
        sb.append(')');
        int iOooO0o2 = OooO0O0().OooO0o(50, 10);
        if (iOooO0o2 / 100 == 0) {
            sb.append('0');
        }
        if (iOooO0o2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(iOooO0o2);
        sb.append(OooO0O0().OooO0OO(60, null).OooO0O0());
        return sb.toString();
    }
}
