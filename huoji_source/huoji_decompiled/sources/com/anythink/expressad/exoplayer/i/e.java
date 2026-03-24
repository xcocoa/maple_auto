package com.anythink.expressad.exoplayer.i;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.aa;
import com.anythink.expressad.exoplayer.h.ae;
import com.anythink.expressad.exoplayer.h.af;
import com.anythink.expressad.exoplayer.z;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends h {

    @Nullable
    private a a;

    public static final class a {
        public static final int a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;

        @Deprecated
        public final int e;
        private final int f;
        private final int[] g;
        private final af[] h;
        private final int[] i;
        private final int[][][] j;
        private final af k;

        /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.i.e$a$a, reason: collision with other inner class name */
        @Retention(RetentionPolicy.SOURCE)
        public @interface InterfaceC0125a {
        }

        public a(int[] iArr, af[] afVarArr, int[] iArr2, int[][][] iArr3, af afVar) {
            this.g = iArr;
            this.h = afVarArr;
            this.j = iArr3;
            this.i = iArr2;
            this.k = afVar;
            int length = iArr.length;
            this.f = length;
            this.e = length;
        }

        private int a(int i, int i2, int[] iArr) {
            int i3 = 0;
            String str = null;
            boolean z = false;
            int i4 = 0;
            int iMin = 16;
            while (i3 < iArr.length) {
                String str2 = this.h[i].a(i2).a(iArr[i3]).h;
                int i5 = i4 + 1;
                if (i4 == 0) {
                    str = str2;
                } else {
                    z |= !com.anythink.expressad.exoplayer.k.af.a((Object) str, (Object) str2);
                }
                iMin = Math.min(iMin, this.j[i][i2][i3] & 24);
                i3++;
                i4 = i5;
            }
            return z ? Math.min(iMin, this.i[i]) : iMin;
        }

        @Deprecated
        private int b(int i, int i2, int i3) {
            return a(i, i2, i3);
        }

        private int c(int i) {
            int i2;
            int[][] iArr = this.j[i];
            int iMax = 0;
            for (int i3 = 0; i3 < iArr.length; i3++) {
                for (int i4 = 0; i4 < iArr[i3].length; i4++) {
                    int i5 = iArr[i3][i4] & 7;
                    if (i5 == 3) {
                        i2 = 2;
                    } else {
                        if (i5 == 4) {
                            return 3;
                        }
                        i2 = 1;
                    }
                    iMax = Math.max(iMax, i2);
                }
            }
            return iMax;
        }

        @Deprecated
        private af c() {
            return this.k;
        }

        @Deprecated
        private int d(int i) {
            int i2;
            int iMax = 0;
            for (int i3 = 0; i3 < this.f; i3++) {
                if (this.g[i3] == i) {
                    int[][] iArr = this.j[i3];
                    int i4 = 0;
                    int iMax2 = 0;
                    while (true) {
                        if (i4 >= iArr.length) {
                            break;
                        }
                        for (int i5 = 0; i5 < iArr[i4].length; i5++) {
                            int i6 = iArr[i4][i5] & 7;
                            if (i6 == 3) {
                                i2 = 2;
                            } else {
                                if (i6 == 4) {
                                    iMax2 = 3;
                                    break;
                                }
                                i2 = 1;
                            }
                            iMax2 = Math.max(iMax2, i2);
                        }
                        i4++;
                    }
                    iMax = Math.max(iMax, iMax2);
                }
            }
            return iMax;
        }

        private int e(int i) {
            int i2;
            int iMax = 0;
            for (int i3 = 0; i3 < this.f; i3++) {
                if (this.g[i3] == i) {
                    int[][] iArr = this.j[i3];
                    int i4 = 0;
                    int iMax2 = 0;
                    while (true) {
                        if (i4 >= iArr.length) {
                            break;
                        }
                        for (int i5 = 0; i5 < iArr[i4].length; i5++) {
                            int i6 = iArr[i4][i5] & 7;
                            if (i6 == 3) {
                                i2 = 2;
                            } else {
                                if (i6 == 4) {
                                    iMax2 = 3;
                                    break;
                                }
                                i2 = 1;
                            }
                            iMax2 = Math.max(iMax2, i2);
                        }
                        i4++;
                    }
                    iMax = Math.max(iMax, iMax2);
                }
            }
            return iMax;
        }

        public final int a() {
            return this.f;
        }

        public final int a(int i) {
            return this.g[i];
        }

        public final int a(int i, int i2) {
            int i3 = this.h[i].a(i2).a;
            int[] iArr = new int[i3];
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i3; i6++) {
                if (a(i, i2, i6) == 4) {
                    iArr[i5] = i6;
                    i5++;
                }
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i5);
            int iMin = 16;
            String str = null;
            boolean z = false;
            int i7 = 0;
            while (i4 < iArrCopyOf.length) {
                String str2 = this.h[i].a(i2).a(iArrCopyOf[i4]).h;
                int i8 = i7 + 1;
                if (i7 == 0) {
                    str = str2;
                } else {
                    z |= !com.anythink.expressad.exoplayer.k.af.a((Object) str, (Object) str2);
                }
                iMin = Math.min(iMin, this.j[i][i2][i4] & 24);
                i4++;
                i7 = i8;
            }
            return z ? Math.min(iMin, this.i[i]) : iMin;
        }

        public final int a(int i, int i2, int i3) {
            return this.j[i][i2][i3] & 7;
        }

        public final af b() {
            return this.k;
        }

        public final af b(int i) {
            return this.h[i];
        }
    }

    private static int a(z[] zVarArr, ae aeVar) {
        int length = zVarArr.length;
        int i = 0;
        for (int i2 = 0; i2 < zVarArr.length; i2++) {
            z zVar = zVarArr[i2];
            for (int i3 = 0; i3 < aeVar.a; i3++) {
                int iA = zVar.a(aeVar.a(i3)) & 7;
                if (iA > i) {
                    if (iA == 4) {
                        return i2;
                    }
                    length = i2;
                    i = iA;
                }
            }
        }
        return length;
    }

    private static int[] a(z zVar, ae aeVar) {
        int[] iArr = new int[aeVar.a];
        for (int i = 0; i < aeVar.a; i++) {
            iArr[i] = zVar.a(aeVar.a(i));
        }
        return iArr;
    }

    private static int[] a(z[] zVarArr) {
        int length = zVarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = zVarArr[i].m();
        }
        return iArr;
    }

    public abstract Pair<aa[], f[]> a(a aVar, int[][][] iArr, int[] iArr2);

    @Nullable
    public final a a() {
        return this.a;
    }

    @Override // com.anythink.expressad.exoplayer.i.h
    public final i a(z[] zVarArr, af afVar) {
        int[] iArr;
        int[] iArr2 = new int[zVarArr.length + 1];
        int length = zVarArr.length + 1;
        ae[][] aeVarArr = new ae[length][];
        int[][][] iArr3 = new int[zVarArr.length + 1][][];
        for (int i = 0; i < length; i++) {
            int i2 = afVar.b;
            aeVarArr[i] = new ae[i2];
            iArr3[i] = new int[i2][];
        }
        int length2 = zVarArr.length;
        int[] iArr4 = new int[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            iArr4[i3] = zVarArr[i3].m();
        }
        for (int i4 = 0; i4 < afVar.b; i4++) {
            ae aeVarA = afVar.a(i4);
            int length3 = zVarArr.length;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i5 >= zVarArr.length) {
                    break;
                }
                z zVar = zVarArr[i5];
                for (int i7 = 0; i7 < aeVarA.a; i7++) {
                    int iA = zVar.a(aeVarA.a(i7)) & 7;
                    if (iA > i6) {
                        if (iA == 4) {
                            length3 = i5;
                            break;
                        }
                        length3 = i5;
                        i6 = iA;
                    }
                }
                i5++;
            }
            if (length3 == zVarArr.length) {
                iArr = new int[aeVarA.a];
            } else {
                z zVar2 = zVarArr[length3];
                int[] iArr5 = new int[aeVarA.a];
                for (int i8 = 0; i8 < aeVarA.a; i8++) {
                    iArr5[i8] = zVar2.a(aeVarA.a(i8));
                }
                iArr = iArr5;
            }
            int i9 = iArr2[length3];
            aeVarArr[length3][i9] = aeVarA;
            iArr3[length3][i9] = iArr;
            iArr2[length3] = iArr2[length3] + 1;
        }
        af[] afVarArr = new af[zVarArr.length];
        int[] iArr6 = new int[zVarArr.length];
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            int i11 = iArr2[i10];
            afVarArr[i10] = new af((ae[]) com.anythink.expressad.exoplayer.k.af.a(aeVarArr[i10], i11));
            iArr3[i10] = (int[][]) com.anythink.expressad.exoplayer.k.af.a(iArr3[i10], i11);
            iArr6[i10] = zVarArr[i10].a();
        }
        a aVar = new a(iArr6, afVarArr, iArr4, iArr3, new af((ae[]) com.anythink.expressad.exoplayer.k.af.a(aeVarArr[zVarArr.length], iArr2[zVarArr.length])));
        Pair<aa[], f[]> pairA = a(aVar, iArr3, iArr4);
        return new i((aa[]) pairA.first, (f[]) pairA.second, aVar);
    }

    @Override // com.anythink.expressad.exoplayer.i.h
    public final void a(Object obj) {
        this.a = (a) obj;
    }
}
