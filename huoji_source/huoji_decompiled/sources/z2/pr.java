package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class pr extends rr {
    public static final int OooO0OO = 40;

    public pr(Cdo cdo) {
        super(cdo);
    }

    private static void OooO0o0(StringBuilder sb, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            int iCharAt = sb.charAt(i3 + i) - '0';
            if ((i3 & 1) == 0) {
                iCharAt *= 3;
            }
            i2 += iCharAt;
        }
        int i4 = 10 - (i2 % 10);
        sb.append(i4 != 10 ? i4 : 0);
    }

    public final void OooO0o(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        OooO0oO(sb, i, length);
    }

    public final void OooO0oO(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int iOooO0o = OooO0O0().OooO0o((i3 * 10) + i, 10);
            if (iOooO0o / 100 == 0) {
                sb.append('0');
            }
            if (iOooO0o / 10 == 0) {
                sb.append('0');
            }
            sb.append(iOooO0o);
        }
        OooO0o0(sb, i2);
    }
}
