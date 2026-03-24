package z2;

import androidx.core.view.InputDeviceCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class dp implements ip {
    private static char OooO0OO(char c, int i) {
        int i2 = c + ((i * 149) % 255) + 1;
        return i2 <= 255 ? (char) i2 : (char) (i2 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // z2.ip
    public final int OooO00o() {
        return 5;
    }

    @Override // z2.ip
    public final void OooO0O0(jp jpVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!jpVar.OooOO0()) {
                break;
            }
            sb.append(jpVar.OooO0Oo());
            jpVar.OooO0o++;
            if (lp.OooOOOO(jpVar.OooO0o0(), jpVar.OooO0o, OooO00o()) != OooO00o()) {
                jpVar.OooOOOo(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int iOooO00o = jpVar.OooO00o() + length + 1;
        jpVar.OooOOo(iOooO00o);
        boolean z = jpVar.OooO0oo().OooO0O0() - iOooO00o > 0;
        if (jpVar.OooOO0() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            jpVar.OooOOoo(OooO0OO(sb.charAt(i), jpVar.OooO00o() + 1));
        }
    }
}
