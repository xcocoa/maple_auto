package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class cp implements ip {
    private static char OooO0OO(char c, char c2) {
        if (lp.OooO0oO(c) && lp.OooO0oO(c2)) {
            return (char) (((c - '0') * 10) + (c2 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c + c2);
    }

    @Override // z2.ip
    public final int OooO00o() {
        return 0;
    }

    @Override // z2.ip
    public final void OooO0O0(jp jpVar) {
        if (lp.OooO00o(jpVar.OooO0o0(), jpVar.OooO0o) >= 2) {
            jpVar.OooOOoo(OooO0OO(jpVar.OooO0o0().charAt(jpVar.OooO0o), jpVar.OooO0o0().charAt(jpVar.OooO0o + 1)));
            jpVar.OooO0o += 2;
            return;
        }
        char cOooO0Oo = jpVar.OooO0Oo();
        int iOooOOOO = lp.OooOOOO(jpVar.OooO0o0(), jpVar.OooO0o, OooO00o());
        if (iOooOOOO == OooO00o()) {
            if (!lp.OooO0oo(cOooO0Oo)) {
                jpVar.OooOOoo((char) (cOooO0Oo + 1));
                jpVar.OooO0o++;
                return;
            } else {
                jpVar.OooOOoo(lp.OooO0Oo);
                jpVar.OooOOoo((char) ((cOooO0Oo - 128) + 1));
                jpVar.OooO0o++;
                return;
            }
        }
        if (iOooOOOO == 1) {
            jpVar.OooOOoo(lp.OooO0O0);
            jpVar.OooOOOo(1);
            return;
        }
        if (iOooOOOO == 2) {
            jpVar.OooOOoo(lp.OooO0oo);
            jpVar.OooOOOo(2);
            return;
        }
        if (iOooOOOO == 3) {
            jpVar.OooOOoo(lp.OooO0oO);
            jpVar.OooOOOo(3);
        } else if (iOooOOOO == 4) {
            jpVar.OooOOoo(lp.OooO);
            jpVar.OooOOOo(4);
        } else {
            if (iOooOOOO != 5) {
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(iOooOOOO)));
            }
            jpVar.OooOOoo(lp.OooO0OO);
            jpVar.OooOOOo(5);
        }
    }
}
