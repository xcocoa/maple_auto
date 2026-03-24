package z2;

/* JADX INFO: loaded from: classes2.dex */
public class ep implements ip {
    private int OooO0OO(jp jpVar, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        jpVar.OooO0o--;
        int iOooO0Oo = OooO0Oo(jpVar.OooO0Oo(), sb2);
        jpVar.OooOO0o();
        return iOooO0Oo;
    }

    private static String OooO0o0(CharSequence charSequence, int i) {
        int iCharAt = (charSequence.charAt(i) * 1600) + (charSequence.charAt(i + 1) * '(') + charSequence.charAt(i + 2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    public static void OooO0oO(jp jpVar, StringBuilder sb) {
        jpVar.OooOo00(OooO0o0(sb, 0));
        sb.delete(0, 3);
    }

    @Override // z2.ip
    public int OooO00o() {
        return 1;
    }

    @Override // z2.ip
    public void OooO0O0(jp jpVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!jpVar.OooOO0()) {
                break;
            }
            char cOooO0Oo = jpVar.OooO0Oo();
            jpVar.OooO0o++;
            int iOooO0Oo = OooO0Oo(cOooO0Oo, sb);
            int iOooO00o = jpVar.OooO00o() + ((sb.length() / 3) << 1);
            jpVar.OooOOo(iOooO00o);
            int iOooO0O0 = jpVar.OooO0oo().OooO0O0() - iOooO00o;
            if (!jpVar.OooOO0()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (iOooO0O0 < 2 || iOooO0O0 > 2)) {
                    iOooO0Oo = OooO0OO(jpVar, sb, sb2, iOooO0Oo);
                }
                while (sb.length() % 3 == 1) {
                    if (iOooO0Oo <= 3 && iOooO0O0 != 1) {
                        iOooO0Oo = OooO0OO(jpVar, sb, sb2, iOooO0Oo);
                    } else if (iOooO0Oo <= 3) {
                        break;
                    } else {
                        iOooO0Oo = OooO0OO(jpVar, sb, sb2, iOooO0Oo);
                    }
                }
            } else if (sb.length() % 3 == 0 && lp.OooOOOO(jpVar.OooO0o0(), jpVar.OooO0o, OooO00o()) != OooO00o()) {
                jpVar.OooOOOo(0);
                break;
            }
        }
        OooO0o(jpVar, sb);
    }

    public int OooO0Oo(char c, StringBuilder sb) {
        int i;
        int i2;
        char c2;
        if (c == ' ') {
            c2 = 3;
        } else {
            if (c >= '0' && c <= '9') {
                i2 = (c - '0') + 4;
            } else {
                if (c < 'A' || c > 'Z') {
                    if (c < ' ') {
                        sb.append((char) 0);
                    } else {
                        char c3 = '!';
                        if (c < '!' || c > '/') {
                            if (c >= ':' && c <= '@') {
                                sb.append((char) 1);
                                i = (c - ':') + 15;
                            } else if (c < '[' || c > '_') {
                                c3 = '`';
                                if (c < '`' || c > 127) {
                                    sb.append("\u0001\u001e");
                                    return OooO0Oo((char) (c - 128), sb) + 2;
                                }
                                sb.append((char) 2);
                            } else {
                                sb.append((char) 1);
                                i = (c - '[') + 22;
                            }
                            c = (char) i;
                        } else {
                            sb.append((char) 1);
                        }
                        i = c - c3;
                        c = (char) i;
                    }
                    sb.append(c);
                    return 2;
                }
                i2 = (c - 'A') + 14;
            }
            c2 = (char) i2;
        }
        sb.append(c2);
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooO0o(jp jpVar, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int iOooO00o = jpVar.OooO00o() + length;
        jpVar.OooOOo(iOooO00o);
        int iOooO0O0 = jpVar.OooO0oo().OooO0O0() - iOooO00o;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                OooO0oO(jpVar, sb);
            }
            if (jpVar.OooOO0()) {
                jpVar.OooOOoo((char) 254);
            }
        } else if (iOooO0O0 == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                OooO0oO(jpVar, sb);
            }
            if (jpVar.OooOO0()) {
                jpVar.OooOOoo((char) 254);
            }
            jpVar.OooO0o--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                OooO0oO(jpVar, sb);
            }
            if (iOooO0O0 > 0 || jpVar.OooOO0()) {
            }
        }
        jpVar.OooOOOo(0);
    }
}
