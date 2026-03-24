package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class op extends ep {
    @Override // z2.ep, z2.ip
    public final int OooO00o() {
        return 3;
    }

    @Override // z2.ep, z2.ip
    public final void OooO0O0(jp jpVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!jpVar.OooOO0()) {
                break;
            }
            char cOooO0Oo = jpVar.OooO0Oo();
            jpVar.OooO0o++;
            OooO0Oo(cOooO0Oo, sb);
            if (sb.length() % 3 == 0) {
                ep.OooO0oO(jpVar, sb);
                if (lp.OooOOOO(jpVar.OooO0o0(), jpVar.OooO0o, OooO00o()) != OooO00o()) {
                    jpVar.OooOOOo(0);
                    break;
                }
            }
        }
        OooO0o(jpVar, sb);
    }

    @Override // z2.ep
    public final int OooO0Oo(char c, StringBuilder sb) {
        char c2;
        int i;
        if (c == '\r') {
            c2 = 0;
        } else {
            if (c != ' ') {
                if (c == '*') {
                    sb.append((char) 1);
                } else if (c != '>') {
                    if (c >= '0' && c <= '9') {
                        i = (c - '0') + 4;
                    } else if (c < 'A' || c > 'Z') {
                        lp.OooO0o(c);
                    } else {
                        i = (c - 'A') + 14;
                    }
                    c2 = (char) i;
                } else {
                    c2 = 2;
                }
                return 1;
            }
            c2 = 3;
        }
        sb.append(c2);
        return 1;
    }

    @Override // z2.ep
    public final void OooO0o(jp jpVar, StringBuilder sb) {
        jpVar.OooOOo0();
        int iOooO0O0 = jpVar.OooO0oo().OooO0O0() - jpVar.OooO00o();
        jpVar.OooO0o -= sb.length();
        if (jpVar.OooO0oO() > 1 || iOooO0O0 > 1 || jpVar.OooO0oO() != iOooO0O0) {
            jpVar.OooOOoo((char) 254);
        }
        if (jpVar.OooO0o() < 0) {
            jpVar.OooOOOo(0);
        }
    }
}
