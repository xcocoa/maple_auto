package z2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class or extends pr {
    private static final int OooO0Oo = 4;

    public or(Cdo cdo) {
        super(cdo);
    }

    @Override // z2.rr
    public final String OooO0Oo() throws NotFoundException, FormatException {
        StringBuilder sb = new StringBuilder();
        sb.append("(01)");
        int length = sb.length();
        sb.append(OooO0O0().OooO0o(4, 4));
        OooO0oO(sb, 8, length);
        return OooO0O0().OooO00o(sb, 48);
    }
}
