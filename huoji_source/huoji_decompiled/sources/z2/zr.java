package z2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.oned.rss.expanded.decoders.CurrentParsingState;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class zr {
    private final Cdo OooO00o;
    private final CurrentParsingState OooO0O0 = new CurrentParsingState();
    private final StringBuilder OooO0OO = new StringBuilder();

    public zr(Cdo cdo) {
        this.OooO00o = cdo;
    }

    private boolean OooO(int i) {
        int i2;
        if (i + 1 > this.OooO00o.OooOOO0()) {
            return false;
        }
        for (int i3 = 0; i3 < 5 && (i2 = i3 + i) < this.OooO00o.OooOOO0(); i3++) {
            if (i3 == 2) {
                if (!this.OooO00o.OooO0oo(i + 2)) {
                    return false;
                }
            } else if (this.OooO00o.OooO0oo(i2)) {
                return false;
            }
        }
        return true;
    }

    private ur OooO0O0(int i) {
        char c;
        int iOooO0o = OooO0o(i, 5);
        if (iOooO0o == 15) {
            return new ur(i + 5, ur.OooO0OO);
        }
        if (iOooO0o >= 5 && iOooO0o < 15) {
            return new ur(i + 5, (char) ((iOooO0o + 48) - 5));
        }
        int iOooO0o2 = OooO0o(i, 6);
        if (iOooO0o2 >= 32 && iOooO0o2 < 58) {
            return new ur(i + 6, (char) (iOooO0o2 + 33));
        }
        switch (iOooO0o2) {
            case 58:
                c = '*';
                break;
            case 59:
                c = ',';
                break;
            case 60:
                c = '-';
                break;
            case 61:
                c = FilenameUtils.EXTENSION_SEPARATOR;
                break;
            case 62:
                c = IOUtils.DIR_SEPARATOR_UNIX;
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(iOooO0o2)));
        }
        return new ur(i + 6, c);
    }

    private ur OooO0Oo(int i) throws FormatException {
        char c;
        int iOooO0o = OooO0o(i, 5);
        if (iOooO0o == 15) {
            return new ur(i + 5, ur.OooO0OO);
        }
        if (iOooO0o >= 5 && iOooO0o < 15) {
            return new ur(i + 5, (char) ((iOooO0o + 48) - 5));
        }
        int iOooO0o2 = OooO0o(i, 7);
        if (iOooO0o2 >= 64 && iOooO0o2 < 90) {
            return new ur(i + 7, (char) (iOooO0o2 + 1));
        }
        if (iOooO0o2 >= 90 && iOooO0o2 < 116) {
            return new ur(i + 7, (char) (iOooO0o2 + 7));
        }
        switch (OooO0o(i, 8)) {
            case 232:
                c = '!';
                break;
            case 233:
                c = '\"';
                break;
            case 234:
                c = '%';
                break;
            case 235:
                c = '&';
                break;
            case 236:
                c = '\'';
                break;
            case 237:
                c = '(';
                break;
            case 238:
                c = ')';
                break;
            case 239:
                c = '*';
                break;
            case 240:
                c = '+';
                break;
            case 241:
                c = ',';
                break;
            case 242:
                c = '-';
                break;
            case 243:
                c = FilenameUtils.EXTENSION_SEPARATOR;
                break;
            case 244:
                c = IOUtils.DIR_SEPARATOR_UNIX;
                break;
            case 245:
                c = ':';
                break;
            case 246:
                c = ';';
                break;
            case mobi.oneway.export.a.e /* 247 */:
                c = '<';
                break;
            case 248:
                c = '=';
                break;
            case 249:
                c = '>';
                break;
            case 250:
                c = '?';
                break;
            case 251:
                c = '_';
                break;
            case 252:
                c = ' ';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        return new ur(i + 8, c);
    }

    private wr OooO0o0(int i) throws FormatException {
        int i2 = i + 7;
        if (i2 > this.OooO00o.OooOOO0()) {
            int iOooO0o = OooO0o(i, 4);
            return iOooO0o == 0 ? new wr(this.OooO00o.OooOOO0(), 10, 10) : new wr(this.OooO00o.OooOOO0(), iOooO0o - 1, 10);
        }
        int iOooO0o2 = OooO0o(i, 7) - 8;
        return new wr(i2, iOooO0o2 / 11, iOooO0o2 % 11);
    }

    public static int OooO0oO(Cdo cdo, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (cdo.OooO0oo(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }

    private boolean OooO0oo(int i) {
        int i2 = i + 3;
        if (i2 > this.OooO00o.OooOOO0()) {
            return false;
        }
        while (i < i2) {
            if (this.OooO00o.OooO0oo(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private boolean OooOO0(int i) {
        int i2;
        if (i + 1 > this.OooO00o.OooOOO0()) {
            return false;
        }
        for (int i3 = 0; i3 < 4 && (i2 = i3 + i) < this.OooO00o.OooOOO0(); i3++) {
            if (this.OooO00o.OooO0oo(i2)) {
                return false;
            }
        }
        return true;
    }

    private boolean OooOO0O(int i) {
        int iOooO0o;
        if (i + 5 > this.OooO00o.OooOOO0()) {
            return false;
        }
        int iOooO0o2 = OooO0o(i, 5);
        if (iOooO0o2 < 5 || iOooO0o2 >= 16) {
            return i + 6 <= this.OooO00o.OooOOO0() && (iOooO0o = OooO0o(i, 6)) >= 16 && iOooO0o < 63;
        }
        return true;
    }

    private boolean OooOO0o(int i) {
        int iOooO0o;
        if (i + 5 > this.OooO00o.OooOOO0()) {
            return false;
        }
        int iOooO0o2 = OooO0o(i, 5);
        if (iOooO0o2 >= 5 && iOooO0o2 < 16) {
            return true;
        }
        if (i + 7 > this.OooO00o.OooOOO0()) {
            return false;
        }
        int iOooO0o3 = OooO0o(i, 7);
        if (iOooO0o3 < 64 || iOooO0o3 >= 116) {
            return i + 8 <= this.OooO00o.OooOOO0() && (iOooO0o = OooO0o(i, 8)) >= 232 && iOooO0o < 253;
        }
        return true;
    }

    private tr OooOOO() {
        while (OooOO0O(this.OooO0O0.OooO00o())) {
            ur urVarOooO0O0 = OooO0O0(this.OooO0O0.OooO00o());
            this.OooO0O0.OooO(urVarOooO0O0.OooO00o());
            if (urVarOooO0O0.OooO0OO()) {
                return new tr(new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString()), true);
            }
            this.OooO0OO.append(urVarOooO0O0.OooO0O0());
        }
        if (OooO0oo(this.OooO0O0.OooO00o())) {
            this.OooO0O0.OooO0O0(3);
            this.OooO0O0.OooO0oo();
        } else if (OooO(this.OooO0O0.OooO00o())) {
            if (this.OooO0O0.OooO00o() + 5 < this.OooO00o.OooOOO0()) {
                this.OooO0O0.OooO0O0(5);
            } else {
                this.OooO0O0.OooO(this.OooO00o.OooOOO0());
            }
            this.OooO0O0.OooO0oO();
        }
        return new tr(false);
    }

    private boolean OooOOO0(int i) {
        if (i + 7 > this.OooO00o.OooOOO0()) {
            return i + 4 <= this.OooO00o.OooOOO0();
        }
        int i2 = i;
        while (true) {
            int i3 = i + 3;
            if (i2 >= i3) {
                return this.OooO00o.OooO0oo(i3);
            }
            if (this.OooO00o.OooO0oo(i2)) {
                return true;
            }
            i2++;
        }
    }

    private vr OooOOOO() throws FormatException {
        tr trVarOooOOO;
        boolean zOooO0O0;
        do {
            int iOooO00o = this.OooO0O0.OooO00o();
            trVarOooOOO = this.OooO0O0.OooO0OO() ? OooOOO() : this.OooO0O0.OooO0Oo() ? OooOOOo() : OooOOo0();
            zOooO0O0 = trVarOooOOO.OooO0O0();
            if (!(iOooO00o != this.OooO0O0.OooO00o()) && !zOooO0O0) {
                break;
            }
        } while (!zOooO0O0);
        return trVarOooOOO.OooO00o();
    }

    private tr OooOOOo() throws FormatException {
        while (OooOO0o(this.OooO0O0.OooO00o())) {
            ur urVarOooO0Oo = OooO0Oo(this.OooO0O0.OooO00o());
            this.OooO0O0.OooO(urVarOooO0Oo.OooO00o());
            if (urVarOooO0Oo.OooO0OO()) {
                return new tr(new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString()), true);
            }
            this.OooO0OO.append(urVarOooO0Oo.OooO0O0());
        }
        if (OooO0oo(this.OooO0O0.OooO00o())) {
            this.OooO0O0.OooO0O0(3);
            this.OooO0O0.OooO0oo();
        } else if (OooO(this.OooO0O0.OooO00o())) {
            if (this.OooO0O0.OooO00o() + 5 < this.OooO00o.OooOOO0()) {
                this.OooO0O0.OooO0O0(5);
            } else {
                this.OooO0O0.OooO(this.OooO00o.OooOOO0());
            }
            this.OooO0O0.OooO0o();
        }
        return new tr(false);
    }

    private tr OooOOo0() throws FormatException {
        while (OooOOO0(this.OooO0O0.OooO00o())) {
            wr wrVarOooO0o0 = OooO0o0(this.OooO0O0.OooO00o());
            this.OooO0O0.OooO(wrVarOooO0o0.OooO00o());
            if (wrVarOooO0o0.OooO0o()) {
                return new tr(wrVarOooO0o0.OooO0oO() ? new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString()) : new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString(), wrVarOooO0o0.OooO0OO()), true);
            }
            this.OooO0OO.append(wrVarOooO0o0.OooO0O0());
            if (wrVarOooO0o0.OooO0oO()) {
                return new tr(new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString()), true);
            }
            this.OooO0OO.append(wrVarOooO0o0.OooO0OO());
        }
        if (OooOO0(this.OooO0O0.OooO00o())) {
            this.OooO0O0.OooO0o();
            this.OooO0O0.OooO0O0(4);
        }
        return new tr(false);
    }

    public final String OooO00o(StringBuilder sb, int i) throws NotFoundException, FormatException {
        String str = null;
        while (true) {
            vr vrVarOooO0OO = OooO0OO(i, str);
            String strOooO00o = yr.OooO00o(vrVarOooO0OO.OooO0O0());
            if (strOooO00o != null) {
                sb.append(strOooO00o);
            }
            String strValueOf = vrVarOooO0OO.OooO0Oo() ? String.valueOf(vrVarOooO0OO.OooO0OO()) : null;
            if (i == vrVarOooO0OO.OooO00o()) {
                return sb.toString();
            }
            i = vrVarOooO0OO.OooO00o();
            str = strValueOf;
        }
    }

    public final vr OooO0OO(int i, String str) throws FormatException {
        this.OooO0OO.setLength(0);
        if (str != null) {
            this.OooO0OO.append(str);
        }
        this.OooO0O0.OooO(i);
        vr vrVarOooOOOO = OooOOOO();
        return (vrVarOooOOOO == null || !vrVarOooOOOO.OooO0Oo()) ? new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString()) : new vr(this.OooO0O0.OooO00o(), this.OooO0OO.toString(), vrVarOooOOOO.OooO0OO());
    }

    public final int OooO0o(int i, int i2) {
        return OooO0oO(this.OooO00o, i, i2);
    }
}
