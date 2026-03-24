package z2;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class rr {
    private final Cdo OooO00o;
    private final zr OooO0O0;

    public rr(Cdo cdo) {
        this.OooO00o = cdo;
        this.OooO0O0 = new zr(cdo);
    }

    public static rr OooO00o(Cdo cdo) {
        if (cdo.OooO0oo(1)) {
            return new or(cdo);
        }
        if (!cdo.OooO0oo(2)) {
            return new sr(cdo);
        }
        int iOooO0oO = zr.OooO0oO(cdo, 1, 4);
        if (iOooO0oO == 4) {
            return new ir(cdo);
        }
        if (iOooO0oO == 5) {
            return new jr(cdo);
        }
        int iOooO0oO2 = zr.OooO0oO(cdo, 1, 5);
        if (iOooO0oO2 == 12) {
            return new kr(cdo);
        }
        if (iOooO0oO2 == 13) {
            return new lr(cdo);
        }
        switch (zr.OooO0oO(cdo, 1, 7)) {
            case 56:
                return new mr(cdo, "310", "11");
            case 57:
                return new mr(cdo, "320", "11");
            case 58:
                return new mr(cdo, "310", "13");
            case 59:
                return new mr(cdo, "320", "13");
            case 60:
                return new mr(cdo, "310", "15");
            case 61:
                return new mr(cdo, "320", "15");
            case 62:
                return new mr(cdo, "310", "17");
            case 63:
                return new mr(cdo, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: ".concat(String.valueOf(cdo)));
        }
    }

    public final zr OooO0O0() {
        return this.OooO0O0;
    }

    public final Cdo OooO0OO() {
        return this.OooO00o;
    }

    public abstract String OooO0Oo() throws NotFoundException, FormatException;
}
