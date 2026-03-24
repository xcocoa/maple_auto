package z2;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;

/* JADX INFO: loaded from: classes2.dex */
public class mp {
    public static final mp[] OooO;
    private static mp[] OooOO0;
    private final boolean OooO00o;
    private final int OooO0O0;
    private final int OooO0OO;
    public final int OooO0Oo;
    private final int OooO0o;
    public final int OooO0o0;
    private final int OooO0oO;
    private final int OooO0oo;

    static {
        mp[] mpVarArr = {new mp(false, 3, 5, 8, 8, 1), new mp(false, 5, 7, 10, 10, 1), new mp(true, 5, 7, 16, 6, 1), new mp(false, 8, 10, 12, 12, 1), new mp(true, 10, 11, 14, 6, 2), new mp(false, 12, 12, 14, 14, 1), new mp(true, 16, 14, 24, 10, 1), new mp(false, 18, 14, 16, 16, 1), new mp(false, 22, 18, 18, 18, 1), new mp(true, 22, 18, 16, 10, 2), new mp(false, 30, 20, 20, 20, 1), new mp(true, 32, 24, 16, 14, 2), new mp(false, 36, 24, 22, 22, 1), new mp(false, 44, 28, 24, 24, 1), new mp(true, 49, 28, 22, 14, 2), new mp(false, 62, 36, 14, 14, 4), new mp(false, 86, 42, 16, 16, 4), new mp(false, 114, 48, 18, 18, 4), new mp(false, 144, 56, 20, 20, 4), new mp(false, 174, 68, 22, 22, 4), new mp(false, UiMessage.CommandToUi.Command_Type.SET_RADIO_GROUP_VALUE, 84, 24, 24, 4, 102, 42), new mp(false, me.o0000O, 112, 14, 14, 16, 140, 56), new mp(false, 368, 144, 16, 16, 16, 92, 36), new mp(false, 456, 192, 18, 18, 16, 114, 48), new mp(false, 576, 224, 20, 20, 16, 144, 56), new mp(false, 696, me.o00000oo, 22, 22, 16, 174, 68), new mp(false, 816, 336, 24, 24, 16, 136, 56), new mp(false, 1050, UiMessage.CommandToUi.Command_Type.GET_VALUE_VALUE, 18, 18, 36, HideBottomViewOnScrollBehavior.OooO0o0, 68), new mp(false, 1304, 496, 20, 20, 36, 163, 62), new fp()};
        OooO = mpVarArr;
        OooOO0 = mpVarArr;
    }

    public mp(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    public mp(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.OooO00o = z;
        this.OooO0O0 = i;
        this.OooO0OO = i2;
        this.OooO0Oo = i3;
        this.OooO0o0 = i4;
        this.OooO0o = i5;
        this.OooO0oO = i6;
        this.OooO0oo = i7;
    }

    private int OooO0o() {
        int i = this.OooO0o;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 4) {
                if (i == 16) {
                    return 4;
                }
                if (i == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i2;
    }

    private int OooOO0o() {
        int i = this.OooO0o;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public static mp OooOOO(int i, SymbolShapeHint symbolShapeHint) {
        return OooOOOo(i, symbolShapeHint, true);
    }

    public static mp OooOOO0(int i) {
        return OooOOOo(i, SymbolShapeHint.FORCE_NONE, true);
    }

    public static mp OooOOOO(int i, SymbolShapeHint symbolShapeHint, wl wlVar, wl wlVar2, boolean z) {
        for (mp mpVar : OooOO0) {
            if (!(symbolShapeHint == SymbolShapeHint.FORCE_SQUARE && mpVar.OooO00o) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || mpVar.OooO00o) && ((wlVar == null || (mpVar.OooOO0O() >= wlVar.OooO0O0() && mpVar.OooOO0() >= wlVar.OooO00o())) && ((wlVar2 == null || (mpVar.OooOO0O() <= wlVar2.OooO0O0() && mpVar.OooOO0() <= wlVar2.OooO00o())) && i <= mpVar.OooO0O0)))) {
                return mpVar;
            }
        }
        if (z) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
        }
        return null;
    }

    private static mp OooOOOo(int i, SymbolShapeHint symbolShapeHint, boolean z) {
        return OooOOOO(i, symbolShapeHint, null, null, z);
    }

    public static void OooOOo(mp[] mpVarArr) {
        OooOO0 = mpVarArr;
    }

    public static mp OooOOo0(int i, boolean z, boolean z3) {
        return OooOOOo(i, z ? SymbolShapeHint.FORCE_NONE : SymbolShapeHint.FORCE_SQUARE, z3);
    }

    public final int OooO() {
        return OooO0o() * this.OooO0Oo;
    }

    public int OooO00o() {
        return this.OooO0O0 + this.OooO0OO;
    }

    public final int OooO0O0() {
        return this.OooO0O0;
    }

    public int OooO0OO(int i) {
        return this.OooO0oO;
    }

    public final int OooO0Oo() {
        return this.OooO0OO;
    }

    public final int OooO0o0(int i) {
        return this.OooO0oo;
    }

    public int OooO0oO() {
        return this.OooO0O0 / this.OooO0oO;
    }

    public final int OooO0oo() {
        return OooOO0o() * this.OooO0o0;
    }

    public final int OooOO0() {
        return OooO0oo() + (OooOO0o() << 1);
    }

    public final int OooOO0O() {
        return OooO() + (OooO0o() << 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.OooO00o ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.OooO0Oo);
        sb.append('x');
        sb.append(this.OooO0o0);
        sb.append(", symbol size ");
        sb.append(OooOO0O());
        sb.append('x');
        sb.append(OooOO0());
        sb.append(", symbol data size ");
        sb.append(OooO());
        sb.append('x');
        sb.append(OooO0oo());
        sb.append(", codewords ");
        sb.append(this.OooO0O0);
        sb.append('+');
        sb.append(this.OooO0OO);
        return sb.toString();
    }
}
