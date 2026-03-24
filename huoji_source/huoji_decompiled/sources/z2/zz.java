package z2;

import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes2.dex */
public final class zz {
    private final String OooO00o;
    private final int OooO0O0;
    private int OooO0OO;
    private int OooO0Oo;
    private int OooO0o;
    private int OooO0o0;
    private char[] OooO0oO;

    public zz(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.OooO00o = name;
        this.OooO0O0 = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
    
        r1 = r8.OooO0oO;
        r2 = r8.OooO0Oo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        return new java.lang.String(r1, r2, r8.OooO0o0 - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String OooO00o() {
        int i;
        int i2;
        int i3 = this.OooO0OO;
        this.OooO0Oo = i3;
        this.OooO0o0 = i3;
        while (true) {
            int i4 = this.OooO0OO;
            if (i4 < this.OooO0O0) {
                char[] cArr = this.OooO0oO;
                char c = cArr[i4];
                if (c == ' ') {
                    int i5 = this.OooO0o0;
                    this.OooO0o = i5;
                    this.OooO0OO = i4 + 1;
                    this.OooO0o0 = i5 + 1;
                    cArr[i5] = ' ';
                    while (true) {
                        i = this.OooO0OO;
                        i2 = this.OooO0O0;
                        if (i >= i2) {
                            break;
                        }
                        char[] cArr2 = this.OooO0oO;
                        if (cArr2[i] != ' ') {
                            break;
                        }
                        int i6 = this.OooO0o0;
                        this.OooO0o0 = i6 + 1;
                        cArr2[i6] = ' ';
                        this.OooO0OO = i + 1;
                    }
                    if (i == i2) {
                        break;
                    }
                    char[] cArr3 = this.OooO0oO;
                    if (cArr3[i] == ',' || cArr3[i] == '+' || cArr3[i] == ';') {
                        break;
                    }
                } else {
                    if (c == ';') {
                        break;
                    }
                    if (c == '\\') {
                        int i7 = this.OooO0o0;
                        this.OooO0o0 = i7 + 1;
                        cArr[i7] = OooO0Oo();
                        i4 = this.OooO0OO;
                    } else {
                        if (c == '+' || c == ',') {
                            break;
                        }
                        int i8 = this.OooO0o0;
                        this.OooO0o0 = i8 + 1;
                        cArr[i8] = cArr[i4];
                    }
                    this.OooO0OO = i4 + 1;
                }
            } else {
                char[] cArr4 = this.OooO0oO;
                int i9 = this.OooO0Oo;
                return new String(cArr4, i9, this.OooO0o0 - i9);
            }
        }
        char[] cArr5 = this.OooO0oO;
        int i10 = this.OooO0Oo;
        return new String(cArr5, i10, this.OooO0o - i10);
    }

    private int OooO0OO(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.OooO0O0) {
            throw new IllegalStateException("Malformed DN: " + this.OooO00o);
        }
        char[] cArr = this.OooO0oO;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.OooO00o);
            }
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.OooO00o);
            }
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    private char OooO0Oo() {
        int i = this.OooO0OO + 1;
        this.OooO0OO = i;
        if (i == this.OooO0O0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.OooO00o);
        }
        char[] cArr = this.OooO0oO;
        char c = cArr[i];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            return OooO0o0();
                    }
                    break;
            }
        }
        return cArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        r6.OooO0o0 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String OooO0o() {
        int i = this.OooO0OO;
        if (i + 4 >= this.OooO0O0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.OooO00o);
        }
        this.OooO0Oo = i;
        while (true) {
            this.OooO0OO = i + 1;
            i = this.OooO0OO;
            if (i == this.OooO0O0) {
                break;
            }
            char[] cArr = this.OooO0oO;
            if (cArr[i] == '+' || cArr[i] == ',' || cArr[i] == ';') {
                break;
            }
            if (cArr[i] == ' ') {
                this.OooO0o0 = i;
                do {
                    this.OooO0OO = i + 1;
                    i = this.OooO0OO;
                    if (i >= this.OooO0O0) {
                        break;
                    }
                } while (this.OooO0oO[i] == ' ');
            } else if (cArr[i] >= 'A' && cArr[i] <= 'F') {
                cArr[i] = (char) (cArr[i] + ' ');
            }
        }
        int i2 = this.OooO0o0;
        int i3 = this.OooO0Oo;
        int i4 = i2 - i3;
        if (i4 < 5 || (i4 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.OooO00o);
        }
        int i5 = i4 / 2;
        byte[] bArr = new byte[i5];
        int i6 = i3 + 1;
        for (int i7 = 0; i7 < i5; i7++) {
            bArr[i7] = (byte) OooO0OO(i6);
            i6 += 2;
        }
        return new String(this.OooO0oO, this.OooO0Oo, i4);
    }

    private char OooO0o0() {
        int i;
        int i2;
        int iOooO0OO = OooO0OO(this.OooO0OO);
        this.OooO0OO++;
        if (iOooO0OO < 128) {
            return (char) iOooO0OO;
        }
        if (iOooO0OO < 192 || iOooO0OO > 247) {
            return '?';
        }
        if (iOooO0OO <= 223) {
            i2 = iOooO0OO & 31;
            i = 1;
        } else if (iOooO0OO <= 239) {
            i = 2;
            i2 = iOooO0OO & 15;
        } else {
            i = 3;
            i2 = iOooO0OO & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.OooO0OO + 1;
            this.OooO0OO = i4;
            if (i4 == this.OooO0O0 || this.OooO0oO[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.OooO0OO = i5;
            int iOooO0OO2 = OooO0OO(i5);
            this.OooO0OO++;
            if ((iOooO0OO2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (iOooO0OO2 & 63);
        }
        return (char) i2;
    }

    private String OooO0oO() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char[] cArr;
        while (true) {
            i = this.OooO0OO;
            i2 = this.OooO0O0;
            if (i >= i2 || this.OooO0oO[i] != ' ') {
                break;
            }
            this.OooO0OO = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.OooO0Oo = i;
        do {
            this.OooO0OO = i + 1;
            i = this.OooO0OO;
            i3 = this.OooO0O0;
            if (i >= i3) {
                break;
            }
            cArr = this.OooO0oO;
            if (cArr[i] == '=') {
                break;
            }
        } while (cArr[i] != ' ');
        if (i >= i3) {
            throw new IllegalStateException("Unexpected end of DN: " + this.OooO00o);
        }
        this.OooO0o0 = i;
        if (this.OooO0oO[i] == ' ') {
            while (true) {
                i4 = this.OooO0OO;
                i5 = this.OooO0O0;
                if (i4 >= i5) {
                    break;
                }
                char[] cArr2 = this.OooO0oO;
                if (cArr2[i4] == '=' || cArr2[i4] != ' ') {
                    break;
                }
                this.OooO0OO = i4 + 1;
            }
            if (this.OooO0oO[i4] != '=' || i4 == i5) {
                throw new IllegalStateException("Unexpected end of DN: " + this.OooO00o);
            }
        }
        int i6 = this.OooO0OO;
        do {
            this.OooO0OO = i6 + 1;
            i6 = this.OooO0OO;
            if (i6 >= this.OooO0O0) {
                break;
            }
        } while (this.OooO0oO[i6] == ' ');
        int i7 = this.OooO0o0;
        int i8 = this.OooO0Oo;
        if (i7 - i8 > 4) {
            char[] cArr3 = this.OooO0oO;
            if (cArr3[i8 + 3] == '.' && ((cArr3[i8] == 'O' || cArr3[i8] == 'o') && ((cArr3[i8 + 1] == 'I' || cArr3[i8 + 1] == 'i') && (cArr3[i8 + 2] == 'D' || cArr3[i8 + 2] == 'd')))) {
                this.OooO0Oo = i8 + 4;
            }
        }
        char[] cArr4 = this.OooO0oO;
        int i9 = this.OooO0Oo;
        return new String(cArr4, i9, this.OooO0o0 - i9);
    }

    private String OooO0oo() {
        int i = this.OooO0OO + 1;
        this.OooO0OO = i;
        this.OooO0Oo = i;
        while (true) {
            this.OooO0o0 = i;
            int i2 = this.OooO0OO;
            if (i2 == this.OooO0O0) {
                throw new IllegalStateException("Unexpected end of DN: " + this.OooO00o);
            }
            char[] cArr = this.OooO0oO;
            if (cArr[i2] == '\"') {
                do {
                    this.OooO0OO = i2 + 1;
                    i2 = this.OooO0OO;
                    if (i2 >= this.OooO0O0) {
                        break;
                    }
                } while (this.OooO0oO[i2] == ' ');
                char[] cArr2 = this.OooO0oO;
                int i3 = this.OooO0Oo;
                return new String(cArr2, i3, this.OooO0o0 - i3);
            }
            if (cArr[i2] == '\\') {
                cArr[this.OooO0o0] = OooO0Oo();
            } else {
                cArr[this.OooO0o0] = cArr[i2];
            }
            this.OooO0OO++;
            i = this.OooO0o0 + 1;
        }
    }

    public String OooO0O0(String str) {
        this.OooO0OO = 0;
        this.OooO0Oo = 0;
        this.OooO0o0 = 0;
        this.OooO0o = 0;
        this.OooO0oO = this.OooO00o.toCharArray();
        String strOooO0oO = OooO0oO();
        if (strOooO0oO == null) {
            return null;
        }
        do {
            int i = this.OooO0OO;
            if (i == this.OooO0O0) {
                return null;
            }
            char c = this.OooO0oO[i];
            String strOooO00o = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : OooO00o() : OooO0o() : OooO0oo();
            if (str.equalsIgnoreCase(strOooO0oO)) {
                return strOooO00o;
            }
            int i2 = this.OooO0OO;
            if (i2 >= this.OooO0O0) {
                return null;
            }
            char[] cArr = this.OooO0oO;
            if (cArr[i2] != ',' && cArr[i2] != ';' && cArr[i2] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.OooO00o);
            }
            this.OooO0OO = i2 + 1;
            strOooO0oO = OooO0oO();
        } while (strOooO0oO != null);
        throw new IllegalStateException("Malformed DN: " + this.OooO00o);
    }
}
