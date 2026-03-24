package z2;

import java.util.Arrays;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: renamed from: z2.do, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final class Cdo implements Cloneable {
    private int[] OoooOoO;
    private int OoooOoo;

    public Cdo() {
        this.OoooOoo = 0;
        this.OoooOoO = new int[1];
    }

    public Cdo(int i) {
        this.OoooOoo = i;
        this.OoooOoO = OooOOOo(i);
    }

    public Cdo(int[] iArr, int i) {
        this.OoooOoO = iArr;
        this.OoooOoo = i;
    }

    private void OooO0o(int i) {
        if (i > (this.OoooOoO.length << 5)) {
            int[] iArrOooOOOo = OooOOOo(i);
            int[] iArr = this.OoooOoO;
            System.arraycopy(iArr, 0, iArrOooOOOo, 0, iArr.length);
            this.OoooOoO = iArrOooOOOo;
        }
    }

    private static int[] OooOOOo(int i) {
        return new int[(i + 31) / 32];
    }

    public final int[] OooO() {
        return this.OoooOoO;
    }

    public final void OooO00o(boolean z) {
        OooO0o(this.OoooOoo + 1);
        if (z) {
            int[] iArr = this.OoooOoO;
            int i = this.OoooOoo;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.OoooOoo++;
    }

    public final void OooO0O0(Cdo cdo) {
        int i = cdo.OoooOoo;
        OooO0o(this.OoooOoo + i);
        for (int i2 = 0; i2 < i; i2++) {
            OooO00o(cdo.OooO0oo(i2));
        }
    }

    public final void OooO0OO(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        OooO0o(this.OoooOoo + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            OooO00o(z);
            i2--;
        }
    }

    public final void OooO0Oo() {
        int length = this.OoooOoO.length;
        for (int i = 0; i < length; i++) {
            this.OoooOoO[i] = 0;
        }
    }

    /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
    public final Cdo clone() {
        return new Cdo((int[]) this.OoooOoO.clone(), this.OoooOoo);
    }

    public final void OooO0oO(int i) {
        int[] iArr = this.OoooOoO;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public final boolean OooO0oo(int i) {
        return ((1 << (i & 31)) & this.OoooOoO[i / 32]) != 0;
    }

    public final int OooOO0O(int i) {
        int i2 = this.OoooOoo;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (~((1 << (i & 31)) - 1)) & this.OoooOoO[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.OoooOoO;
            if (i3 == iArr.length) {
                return this.OoooOoo;
            }
            i4 = iArr[i3];
        }
        int iNumberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.OoooOoo;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    public final int OooOO0o(int i) {
        int i2 = this.OoooOoo;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (~((1 << (i & 31)) - 1)) & (~this.OoooOoO[i3]);
        while (i4 == 0) {
            i3++;
            int[] iArr = this.OoooOoO;
            if (i3 == iArr.length) {
                return this.OoooOoo;
            }
            i4 = ~iArr[i3];
        }
        int iNumberOfTrailingZeros = (i3 << 5) + Integer.numberOfTrailingZeros(i4);
        int i5 = this.OoooOoo;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    public final int OooOOO() {
        return (this.OoooOoo + 7) / 8;
    }

    public final int OooOOO0() {
        return this.OoooOoo;
    }

    public final boolean OooOOOO(int i, int i2, boolean z) {
        if (i2 < i || i < 0 || i2 > this.OoooOoo) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = (2 << (i6 >= i5 ? 31 & i3 : 31)) - (1 << (i6 > i4 ? 0 : i & 31));
            int i8 = this.OoooOoO[i6] & i7;
            if (!z) {
                i7 = 0;
            }
            if (i8 != i7) {
                return false;
            }
            i6++;
        }
        return true;
    }

    public final void OooOOo(int i) {
        int[] iArr = this.OoooOoO;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public final void OooOOo0() {
        int[] iArr = new int[this.OoooOoO.length];
        int i = (this.OoooOoo - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = this.OoooOoO[i3];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i - i3] = (int) (((j5 & d00.OooOOoo) << 16) | ((j5 >> 16) & d00.OooOOoo));
        }
        int i4 = this.OoooOoo;
        int i5 = i2 << 5;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i2 - 1] = i7;
        }
        this.OoooOoO = iArr;
    }

    public final void OooOOoo(int i, int i2) {
        this.OoooOoO[i / 32] = i2;
    }

    public final void OooOo0(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (OooO0oo(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public final void OooOo00(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.OoooOoo) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 31;
            int i8 = i6 > i4 ? 0 : i & 31;
            if (i6 >= i5) {
                i7 = 31 & i3;
            }
            int i9 = (2 << i7) - (1 << i8);
            int[] iArr = this.OoooOoO;
            iArr[i6] = i9 | iArr[i6];
            i6++;
        }
    }

    public final void OooOo0O(Cdo cdo) {
        if (this.OoooOoo != cdo.OoooOoo) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.OoooOoO;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ cdo.OoooOoO[i];
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        return this.OoooOoo == cdo.OoooOoo && Arrays.equals(this.OoooOoO, cdo.OoooOoO);
    }

    public final int hashCode() {
        return (this.OoooOoo * 31) + Arrays.hashCode(this.OoooOoO);
    }

    public final String toString() {
        int i = this.OoooOoo;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.OoooOoo; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(OooO0oo(i2) ? 'X' : FilenameUtils.EXTENSION_SEPARATOR);
        }
        return sb.toString();
    }
}
