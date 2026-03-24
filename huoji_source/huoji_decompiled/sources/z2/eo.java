package z2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class eo implements Cloneable {
    private final int OoooOoO;
    private final int OoooOoo;
    private final int Ooooo00;
    private final int[] Ooooo0o;

    public eo(int i) {
        this(i, i);
    }

    public eo(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.OoooOoO = i;
        this.OoooOoo = i2;
        int i3 = (i + 31) / 32;
        this.Ooooo00 = i3;
        this.Ooooo0o = new int[i3 * i2];
    }

    private eo(int i, int i2, int i3, int[] iArr) {
        this.OoooOoO = i;
        this.OoooOoo = i2;
        this.Ooooo00 = i3;
        this.Ooooo0o = iArr;
    }

    private String OooO00o(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.OoooOoo * (this.OoooOoO + 1));
        for (int i = 0; i < this.OoooOoo; i++) {
            for (int i2 = 0; i2 < this.OoooOoO; i2++) {
                sb.append(OooO0o0(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public static eo OooOOO(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int length = 0;
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (length < str.length()) {
            if (str.charAt(length) == '\n' || str.charAt(length) == '\r') {
                if (i > i2) {
                    if (i3 == -1) {
                        i3 = i - i2;
                    } else if (i - i2 != i3) {
                        throw new IllegalArgumentException("row lengths do not match");
                    }
                    i4++;
                    i2 = i;
                }
                length++;
            } else {
                if (str.substring(length, str2.length() + length).equals(str2)) {
                    length += str2.length();
                    zArr[i] = true;
                } else {
                    if (!str.substring(length, str3.length() + length).equals(str3)) {
                        throw new IllegalArgumentException("illegal character encountered: " + str.substring(length));
                    }
                    length += str3.length();
                    zArr[i] = false;
                }
                i++;
            }
        }
        if (i > i2) {
            int i5 = i - i2;
            if (i3 == -1) {
                i3 = i5;
            } else if (i5 != i3) {
                throw new IllegalArgumentException("row lengths do not match");
            }
            i4++;
        }
        eo eoVar = new eo(i3, i4);
        for (int i6 = 0; i6 < i; i6++) {
            if (zArr[i6]) {
                eoVar.OooOOo0(i6 % i3, i6 / i3);
            }
        }
        return eoVar;
    }

    public static eo OooOOOO(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        eo eoVar = new eo(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    eoVar.OooOOo0(i2, i);
                }
            }
        }
        return eoVar;
    }

    public final Cdo OooO(int i, Cdo cdo) {
        if (cdo == null || cdo.OooOOO0() < this.OoooOoO) {
            cdo = new Cdo(this.OoooOoO);
        } else {
            cdo.OooO0Oo();
        }
        int i2 = i * this.Ooooo00;
        for (int i3 = 0; i3 < this.Ooooo00; i3++) {
            cdo.OooOOoo(i3 << 5, this.Ooooo0o[i2 + i3]);
        }
        return cdo;
    }

    public final void OooO0O0() {
        int length = this.Ooooo0o.length;
        for (int i = 0; i < length; i++) {
            this.Ooooo0o[i] = 0;
        }
    }

    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public final eo clone() {
        return new eo(this.OoooOoO, this.OoooOoo, this.Ooooo00, (int[]) this.Ooooo0o.clone());
    }

    public final void OooO0Oo(int i, int i2) {
        int i3 = (i2 * this.Ooooo00) + (i / 32);
        int[] iArr = this.Ooooo0o;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public final int[] OooO0o() {
        int length = this.Ooooo0o.length - 1;
        while (length >= 0 && this.Ooooo0o[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.Ooooo00;
        int i2 = length / i;
        int i3 = (length % i) << 5;
        int i4 = 31;
        while ((this.Ooooo0o[length] >>> i4) == 0) {
            i4--;
        }
        return new int[]{i3 + i4, i2};
    }

    public final boolean OooO0o0(int i, int i2) {
        return ((this.Ooooo0o[(i2 * this.Ooooo00) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public final int[] OooO0oO() {
        int i = this.OoooOoO;
        int i2 = this.OoooOoo;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < this.OoooOoo; i5++) {
            int i6 = 0;
            while (true) {
                int i7 = this.Ooooo00;
                if (i6 < i7) {
                    int i8 = this.Ooooo0o[(i7 * i5) + i6];
                    if (i8 != 0) {
                        if (i5 < i2) {
                            i2 = i5;
                        }
                        if (i5 > i4) {
                            i4 = i5;
                        }
                        int i9 = i6 << 5;
                        if (i9 < i) {
                            int i10 = 0;
                            while ((i8 << (31 - i10)) == 0) {
                                i10++;
                            }
                            int i11 = i10 + i9;
                            if (i11 < i) {
                                i = i11;
                            }
                        }
                        if (i9 + 31 > i3) {
                            int i12 = 31;
                            while ((i8 >>> i12) == 0) {
                                i12--;
                            }
                            int i13 = i9 + i12;
                            if (i13 > i3) {
                                i3 = i13;
                            }
                        }
                    }
                    i6++;
                }
            }
        }
        if (i3 < i || i4 < i2) {
            return null;
        }
        return new int[]{i, i2, (i3 - i) + 1, (i4 - i2) + 1};
    }

    public final int OooO0oo() {
        return this.OoooOoo;
    }

    public final int OooOO0O() {
        return this.Ooooo00;
    }

    public final int[] OooOO0o() {
        int[] iArr;
        int i = 0;
        while (true) {
            iArr = this.Ooooo0o;
            if (i >= iArr.length || iArr[i] != 0) {
                break;
            }
            i++;
        }
        if (i == iArr.length) {
            return null;
        }
        int i2 = this.Ooooo00;
        int i3 = i / i2;
        int i4 = (i % i2) << 5;
        int i5 = iArr[i];
        int i6 = 0;
        while ((i5 << (31 - i6)) == 0) {
            i6++;
        }
        return new int[]{i4 + i6, i3};
    }

    public final int OooOOO0() {
        return this.OoooOoO;
    }

    public final void OooOOOo() {
        int iOooOOO0 = OooOOO0();
        int iOooO0oo = OooO0oo();
        Cdo cdo = new Cdo(iOooOOO0);
        Cdo cdo2 = new Cdo(iOooOOO0);
        for (int i = 0; i < (iOooO0oo + 1) / 2; i++) {
            cdo = OooO(i, cdo);
            int i2 = (iOooO0oo - 1) - i;
            cdo2 = OooO(i2, cdo2);
            cdo.OooOOo0();
            cdo2.OooOOo0();
            OooOOoo(i, cdo2);
            OooOOoo(i2, cdo);
        }
    }

    public final void OooOOo(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.OoooOoo || i5 > this.OoooOoO) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.Ooooo00 * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.Ooooo0o;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public final void OooOOo0(int i, int i2) {
        int i3 = (i2 * this.Ooooo00) + (i / 32);
        int[] iArr = this.Ooooo0o;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public final void OooOOoo(int i, Cdo cdo) {
        int[] iArrOooO = cdo.OooO();
        int[] iArr = this.Ooooo0o;
        int i2 = this.Ooooo00;
        System.arraycopy(iArrOooO, 0, iArr, i * i2, i2);
    }

    @Deprecated
    public final String OooOo0(String str, String str2, String str3) {
        return OooO00o(str, str2, str3);
    }

    public final String OooOo00(String str, String str2) {
        return OooO00o(str, str2, "\n");
    }

    public final void OooOo0O(int i, int i2) {
        int i3 = (i2 * this.Ooooo00) + (i / 32);
        int[] iArr = this.Ooooo0o;
        iArr[i3] = (~(1 << (i & 31))) & iArr[i3];
    }

    public final void OooOo0o(eo eoVar) {
        if (this.OoooOoO != eoVar.OooOOO0() || this.OoooOoo != eoVar.OooO0oo() || this.Ooooo00 != eoVar.OooOO0O()) {
            throw new IllegalArgumentException("input matrix dimensions do not match");
        }
        Cdo cdo = new Cdo(this.OoooOoO);
        for (int i = 0; i < this.OoooOoo; i++) {
            int i2 = this.Ooooo00 * i;
            int[] iArrOooO = eoVar.OooO(i, cdo).OooO();
            for (int i3 = 0; i3 < this.Ooooo00; i3++) {
                int[] iArr = this.Ooooo0o;
                int i4 = i2 + i3;
                iArr[i4] = iArr[i4] ^ iArrOooO[i3];
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof eo)) {
            return false;
        }
        eo eoVar = (eo) obj;
        return this.OoooOoO == eoVar.OoooOoO && this.OoooOoo == eoVar.OoooOoo && this.Ooooo00 == eoVar.Ooooo00 && Arrays.equals(this.Ooooo0o, eoVar.Ooooo0o);
    }

    public final int hashCode() {
        int i = this.OoooOoO;
        return (((((((i * 31) + i) * 31) + this.OoooOoo) * 31) + this.Ooooo00) * 31) + Arrays.hashCode(this.Ooooo0o);
    }

    public final String toString() {
        return OooOo00("X ", "  ");
    }
}
