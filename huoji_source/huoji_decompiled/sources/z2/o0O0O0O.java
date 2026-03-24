package z2;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import z2.o0O00OO;

/* JADX INFO: loaded from: classes.dex */
public class o0O0O0O implements o0O00OO {
    private static final String OooOoOO = "o0O0O0O";
    private static final int OooOoo = -1;
    private static final int OooOoo0 = 4096;
    private static final int OooOooO = -1;
    private static final int OooOooo = 4;
    private static final int Oooo000 = 255;

    @ColorInt
    private static final int Oooo00O = 0;
    private ByteBuffer OooO;

    @ColorInt
    private int[] OooO0o;

    @ColorInt
    private final int[] OooO0oO;
    private final o0O00OO.OooO00o OooO0oo;
    private byte[] OooOO0;
    private o0O00o00 OooOO0O;
    private short[] OooOO0o;
    private byte[] OooOOO;
    private byte[] OooOOO0;
    private byte[] OooOOOO;

    @ColorInt
    private int[] OooOOOo;
    private o0oO0Ooo OooOOo;
    private int OooOOo0;
    private Bitmap OooOOoo;
    private int OooOo;
    private int OooOo0;
    private boolean OooOo00;
    private int OooOo0O;
    private int OooOo0o;

    @NonNull
    private Bitmap.Config OooOoO;

    @Nullable
    private Boolean OooOoO0;

    public o0O0O0O(@NonNull o0O00OO.OooO00o oooO00o) {
        this.OooO0oO = new int[256];
        this.OooOoO = Bitmap.Config.ARGB_8888;
        this.OooO0oo = oooO00o;
        this.OooOOo = new o0oO0Ooo();
    }

    public o0O0O0O(@NonNull o0O00OO.OooO00o oooO00o, o0oO0Ooo o0oo0ooo, ByteBuffer byteBuffer) {
        this(oooO00o, o0oo0ooo, byteBuffer, 1);
    }

    public o0O0O0O(@NonNull o0O00OO.OooO00o oooO00o, o0oO0Ooo o0oo0ooo, ByteBuffer byteBuffer, int i) {
        this(oooO00o);
        OooOO0O(o0oo0ooo, byteBuffer, i);
    }

    @ColorInt
    private int OooOOo(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = i; i9 < this.OooOo0O + i; i9++) {
            byte[] bArr = this.OooOOOO;
            if (i9 >= bArr.length || i9 >= i2) {
                break;
            }
            int i10 = this.OooO0o[bArr[i9] & 255];
            if (i10 != 0) {
                i4 += (i10 >> 24) & 255;
                i5 += (i10 >> 16) & 255;
                i6 += (i10 >> 8) & 255;
                i7 += i10 & 255;
                i8++;
            }
        }
        int i11 = i + i3;
        for (int i12 = i11; i12 < this.OooOo0O + i11; i12++) {
            byte[] bArr2 = this.OooOOOO;
            if (i12 >= bArr2.length || i12 >= i2) {
                break;
            }
            int i13 = this.OooO0o[bArr2[i12] & 255];
            if (i13 != 0) {
                i4 += (i13 >> 24) & 255;
                i5 += (i13 >> 16) & 255;
                i6 += (i13 >> 8) & 255;
                i7 += i13 & 255;
                i8++;
            }
        }
        if (i8 == 0) {
            return 0;
        }
        return ((i4 / i8) << 24) | ((i5 / i8) << 16) | ((i6 / i8) << 8) | (i7 / i8);
    }

    private void OooOOoo(o0O00OOO o0o00ooo) {
        Boolean bool;
        int i;
        int i2;
        int i3;
        int i4;
        Boolean bool2 = Boolean.TRUE;
        int[] iArr = this.OooOOOo;
        int i5 = o0o00ooo.OooO0Oo;
        int i6 = this.OooOo0O;
        int i7 = i5 / i6;
        int i8 = o0o00ooo.OooO0O0 / i6;
        int i9 = o0o00ooo.OooO0OO / i6;
        int i10 = o0o00ooo.OooO00o / i6;
        boolean z = this.OooOOo0 == 0;
        int i11 = this.OooOo;
        int i12 = this.OooOo0o;
        byte[] bArr = this.OooOOOO;
        int[] iArr2 = this.OooO0o;
        Boolean bool3 = this.OooOoO0;
        int i13 = 8;
        int i14 = 0;
        int i15 = 0;
        int i16 = 1;
        while (true) {
            bool = bool3;
            if (i15 >= i7) {
                break;
            }
            if (o0o00ooo.OooO0o0) {
                if (i14 >= i7) {
                    int i17 = i14;
                    int i18 = i16 + 1;
                    if (i18 == 2) {
                        i16 = i18;
                        i14 = 4;
                    } else if (i18 != 3) {
                        i16 = i18;
                        if (i18 != 4) {
                            i14 = i17;
                        } else {
                            i14 = 1;
                            i13 = 2;
                        }
                    } else {
                        i16 = i18;
                        i14 = 2;
                        i13 = 4;
                    }
                }
                i = i14 + i13;
            } else {
                i = i14;
                i14 = i15;
            }
            int i19 = i14 + i8;
            boolean z3 = i6 == 1;
            if (i19 < i12) {
                int i20 = i19 * i11;
                int i21 = i20 + i10;
                int i22 = i21 + i9;
                int i23 = i20 + i11;
                if (i23 < i22) {
                    i22 = i23;
                }
                i2 = i7;
                int i24 = i15 * i6 * o0o00ooo.OooO0OO;
                if (z3) {
                    int i25 = i21;
                    while (true) {
                        i3 = i8;
                        if (i25 >= i22) {
                            break;
                        }
                        int i26 = iArr2[bArr[i24] & 255];
                        if (i26 != 0) {
                            iArr[i25] = i26;
                        } else if (z && bool == null) {
                            bool = bool2;
                        }
                        i24 += i6;
                        i25++;
                        i8 = i3;
                    }
                } else {
                    i3 = i8;
                    int i27 = ((i22 - i21) * i6) + i24;
                    int i28 = i21;
                    while (true) {
                        i4 = i9;
                        if (i28 < i22) {
                            int iOooOOo = OooOOo(i24, i27, o0o00ooo.OooO0OO);
                            if (iOooOOo != 0) {
                                iArr[i28] = iOooOOo;
                            } else if (z && bool == null) {
                                bool = bool2;
                            }
                            i24 += i6;
                            i28++;
                            i9 = i4;
                        }
                    }
                    bool3 = bool;
                    i15++;
                    i8 = i3;
                    i9 = i4;
                    i14 = i;
                    i7 = i2;
                }
            } else {
                i2 = i7;
                i3 = i8;
            }
            i4 = i9;
            bool3 = bool;
            i15++;
            i8 = i3;
            i9 = i4;
            i14 = i;
            i7 = i2;
        }
        if (this.OooOoO0 == null) {
            this.OooOoO0 = Boolean.valueOf(bool == null ? false : bool.booleanValue());
        }
    }

    private int OooOo() {
        int iOooOoO0 = OooOoO0();
        if (iOooOoO0 <= 0) {
            return iOooOoO0;
        }
        ByteBuffer byteBuffer = this.OooO;
        byteBuffer.get(this.OooOO0, 0, Math.min(iOooOoO0, byteBuffer.remaining()));
        return iOooOoO0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    private void OooOo0(o0O00OOO o0o00ooo) {
        int i;
        int i2;
        short s;
        o0O0O0O o0o0o0o = this;
        if (o0o00ooo != null) {
            o0o0o0o.OooO.position(o0o00ooo.OooOO0);
        }
        if (o0o00ooo == null) {
            o0oO0Ooo o0oo0ooo = o0o0o0o.OooOOo;
            i = o0oo0ooo.OooO0o;
            i2 = o0oo0ooo.OooO0oO;
        } else {
            i = o0o00ooo.OooO0OO;
            i2 = o0o00ooo.OooO0Oo;
        }
        int i3 = i * i2;
        byte[] bArr = o0o0o0o.OooOOOO;
        if (bArr == null || bArr.length < i3) {
            o0o0o0o.OooOOOO = o0o0o0o.OooO0oo.OooO0o0(i3);
        }
        byte[] bArr2 = o0o0o0o.OooOOOO;
        if (o0o0o0o.OooOO0o == null) {
            o0o0o0o.OooOO0o = new short[4096];
        }
        short[] sArr = o0o0o0o.OooOO0o;
        if (o0o0o0o.OooOOO0 == null) {
            o0o0o0o.OooOOO0 = new byte[4096];
        }
        byte[] bArr3 = o0o0o0o.OooOOO0;
        if (o0o0o0o.OooOOO == null) {
            o0o0o0o.OooOOO = new byte[4097];
        }
        byte[] bArr4 = o0o0o0o.OooOOO;
        int iOooOoO0 = OooOoO0();
        int i4 = 1 << iOooOoO0;
        int i5 = i4 + 1;
        int i6 = i4 + 2;
        int i7 = iOooOoO0 + 1;
        int i8 = (1 << i7) - 1;
        int i9 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            sArr[i10] = 0;
            bArr3[i10] = (byte) i10;
        }
        byte[] bArr5 = o0o0o0o.OooOO0;
        int i11 = i7;
        int i12 = i6;
        int i13 = i8;
        int iOooOo = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = -1;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            if (i9 >= i3) {
                break;
            }
            if (iOooOo == 0) {
                iOooOo = OooOo();
                if (iOooOo <= 0) {
                    o0o0o0o.OooOo0 = 3;
                    break;
                }
                i14 = 0;
            }
            i16 += (bArr5[i14] & 255) << i15;
            i14++;
            iOooOo--;
            int i21 = i15 + 8;
            int i22 = i12;
            int i23 = i11;
            int i24 = i18;
            int i25 = i7;
            int i26 = i19;
            while (true) {
                if (i21 < i23) {
                    i18 = i24;
                    i12 = i22;
                    i15 = i21;
                    o0o0o0o = this;
                    i19 = i26;
                    i7 = i25;
                    i11 = i23;
                    break;
                }
                int i27 = i6;
                int i28 = i16 & i13;
                i16 >>= i23;
                i21 -= i23;
                if (i28 == i4) {
                    i13 = i8;
                    i23 = i25;
                    i22 = i27;
                    i6 = i22;
                    i24 = -1;
                } else {
                    if (i28 == i5) {
                        i15 = i21;
                        i19 = i26;
                        i12 = i22;
                        i7 = i25;
                        i6 = i27;
                        i18 = i24;
                        i11 = i23;
                        o0o0o0o = this;
                        break;
                    }
                    if (i24 == -1) {
                        bArr2[i17] = bArr3[i28];
                        i17++;
                        i9++;
                        i24 = i28;
                        i26 = i24;
                        i6 = i27;
                        i21 = i21;
                    } else {
                        if (i28 >= i22) {
                            bArr4[i20] = (byte) i26;
                            i20++;
                            s = i24;
                        } else {
                            s = i28;
                        }
                        while (s >= i4) {
                            bArr4[i20] = bArr3[s];
                            i20++;
                            s = sArr[s];
                        }
                        i26 = bArr3[s] & 255;
                        byte b = (byte) i26;
                        bArr2[i17] = b;
                        while (true) {
                            i17++;
                            i9++;
                            if (i20 <= 0) {
                                break;
                            }
                            i20--;
                            bArr2[i17] = bArr4[i20];
                        }
                        byte[] bArr6 = bArr4;
                        if (i22 < 4096) {
                            sArr[i22] = (short) i24;
                            bArr3[i22] = b;
                            i22++;
                            if ((i22 & i13) == 0 && i22 < 4096) {
                                i23++;
                                i13 += i22;
                            }
                        }
                        i24 = i28;
                        i6 = i27;
                        i21 = i21;
                        bArr4 = bArr6;
                    }
                }
            }
        }
        Arrays.fill(bArr2, i17, i3, (byte) 0);
    }

    private void OooOo00(o0O00OOO o0o00ooo) {
        o0O00OOO o0o00ooo2 = o0o00ooo;
        int[] iArr = this.OooOOOo;
        int i = o0o00ooo2.OooO0Oo;
        int i2 = o0o00ooo2.OooO0O0;
        int i3 = o0o00ooo2.OooO0OO;
        int i4 = o0o00ooo2.OooO00o;
        boolean z = this.OooOOo0 == 0;
        int i5 = this.OooOo;
        byte[] bArr = this.OooOOOO;
        int[] iArr2 = this.OooO0o;
        int i6 = 0;
        byte b = -1;
        while (i6 < i) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            if (i10 < i9) {
                i9 = i10;
            }
            int i11 = o0o00ooo2.OooO0OO * i6;
            int i12 = i8;
            while (i12 < i9) {
                byte b2 = bArr[i11];
                int i13 = i;
                int i14 = b2 & 255;
                if (i14 != b) {
                    int i15 = iArr2[i14];
                    if (i15 != 0) {
                        iArr[i12] = i15;
                    } else {
                        b = b2;
                    }
                }
                i11++;
                i12++;
                i = i13;
            }
            i6++;
            o0o00ooo2 = o0o00ooo;
        }
        this.OooOoO0 = Boolean.valueOf(this.OooOoO0 == null && z && b != -1);
    }

    @NonNull
    private o0O00o00 OooOo0O() {
        if (this.OooOO0O == null) {
            this.OooOO0O = new o0O00o00();
        }
        return this.OooOO0O;
    }

    private Bitmap OooOo0o() {
        Boolean bool = this.OooOoO0;
        Bitmap bitmapOooO00o = this.OooO0oo.OooO00o(this.OooOo, this.OooOo0o, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.OooOoO);
        bitmapOooO00o.setHasAlpha(true);
        return bitmapOooO00o;
    }

    private Bitmap OooOoO(o0O00OOO o0o00ooo, o0O00OOO o0o00ooo2) {
        int i;
        int i2;
        Bitmap bitmap;
        int[] iArr = this.OooOOOo;
        int i3 = 0;
        if (o0o00ooo2 == null) {
            Bitmap bitmap2 = this.OooOOoo;
            if (bitmap2 != null) {
                this.OooO0oo.OooO0OO(bitmap2);
            }
            this.OooOOoo = null;
            Arrays.fill(iArr, 0);
        }
        if (o0o00ooo2 != null && o0o00ooo2.OooO0oO == 3 && this.OooOOoo == null) {
            Arrays.fill(iArr, 0);
        }
        if (o0o00ooo2 != null && (i2 = o0o00ooo2.OooO0oO) > 0) {
            if (i2 == 2) {
                if (!o0o00ooo.OooO0o) {
                    o0oO0Ooo o0oo0ooo = this.OooOOo;
                    int i4 = o0oo0ooo.OooOO0o;
                    if (o0o00ooo.OooOO0O == null || o0oo0ooo.OooOO0 != o0o00ooo.OooO0oo) {
                        i3 = i4;
                    }
                } else if (this.OooOOo0 == 0) {
                    this.OooOoO0 = Boolean.TRUE;
                }
                int i5 = o0o00ooo2.OooO0Oo;
                int i6 = this.OooOo0O;
                int i7 = i5 / i6;
                int i8 = o0o00ooo2.OooO0O0 / i6;
                int i9 = o0o00ooo2.OooO0OO / i6;
                int i10 = o0o00ooo2.OooO00o / i6;
                int i11 = this.OooOo;
                int i12 = (i8 * i11) + i10;
                int i13 = (i7 * i11) + i12;
                while (i12 < i13) {
                    int i14 = i12 + i9;
                    for (int i15 = i12; i15 < i14; i15++) {
                        iArr[i15] = i3;
                    }
                    i12 += this.OooOo;
                }
            } else if (i2 == 3 && (bitmap = this.OooOOoo) != null) {
                int i16 = this.OooOo;
                bitmap.getPixels(iArr, 0, i16, 0, 0, i16, this.OooOo0o);
            }
        }
        OooOo0(o0o00ooo);
        if (o0o00ooo.OooO0o0 || this.OooOo0O != 1) {
            OooOOoo(o0o00ooo);
        } else {
            OooOo00(o0o00ooo);
        }
        if (this.OooOo00 && ((i = o0o00ooo.OooO0oO) == 0 || i == 1)) {
            if (this.OooOOoo == null) {
                this.OooOOoo = OooOo0o();
            }
            Bitmap bitmap3 = this.OooOOoo;
            int i17 = this.OooOo;
            bitmap3.setPixels(iArr, 0, i17, 0, 0, i17, this.OooOo0o);
        }
        Bitmap bitmapOooOo0o = OooOo0o();
        int i18 = this.OooOo;
        bitmapOooOo0o.setPixels(iArr, 0, i18, 0, 0, i18, this.OooOo0o);
        return bitmapOooOo0o;
    }

    private int OooOoO0() {
        return this.OooO.get() & 255;
    }

    @Override // z2.o0O00OO
    public synchronized void OooO(@NonNull o0oO0Ooo o0oo0ooo, @NonNull ByteBuffer byteBuffer) {
        OooOO0O(o0oo0ooo, byteBuffer, 1);
    }

    @Override // z2.o0O00OO
    @Nullable
    public synchronized Bitmap OooO00o() {
        if (this.OooOOo.OooO0OO <= 0 || this.OooOOo0 < 0) {
            String str = OooOoOO;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Unable to decode frame, frameCount=" + this.OooOOo.OooO0OO + ", framePointer=" + this.OooOOo0);
            }
            this.OooOo0 = 1;
        }
        int i = this.OooOo0;
        if (i != 1 && i != 2) {
            this.OooOo0 = 0;
            if (this.OooOO0 == null) {
                this.OooOO0 = this.OooO0oo.OooO0o0(255);
            }
            o0O00OOO o0o00ooo = this.OooOOo.OooO0o0.get(this.OooOOo0);
            int i2 = this.OooOOo0 - 1;
            o0O00OOO o0o00ooo2 = i2 >= 0 ? this.OooOOo.OooO0o0.get(i2) : null;
            int[] iArr = o0o00ooo.OooOO0O;
            if (iArr == null) {
                iArr = this.OooOOo.OooO00o;
            }
            this.OooO0o = iArr;
            if (iArr != null) {
                if (o0o00ooo.OooO0o) {
                    System.arraycopy(iArr, 0, this.OooO0oO, 0, iArr.length);
                    int[] iArr2 = this.OooO0oO;
                    this.OooO0o = iArr2;
                    iArr2[o0o00ooo.OooO0oo] = 0;
                }
                return OooOoO(o0o00ooo, o0o00ooo2);
            }
            String str2 = OooOoOO;
            if (Log.isLoggable(str2, 3)) {
                Log.d(str2, "No valid color table found for frame #" + this.OooOOo0);
            }
            this.OooOo0 = 1;
            return null;
        }
        String str3 = OooOoOO;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.OooOo0);
        }
        return null;
    }

    @Override // z2.o0O00OO
    public void OooO0O0() {
        this.OooOOo0 = (this.OooOOo0 + 1) % this.OooOOo.OooO0OO;
    }

    @Override // z2.o0O00OO
    public synchronized void OooO0OO(@NonNull o0oO0Ooo o0oo0ooo, @NonNull byte[] bArr) {
        OooO(o0oo0ooo, ByteBuffer.wrap(bArr));
    }

    @Override // z2.o0O00OO
    public int OooO0Oo() {
        return this.OooOOo.OooO0OO;
    }

    @Override // z2.o0O00OO
    public void OooO0o(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.OooOoO = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    @Override // z2.o0O00OO
    public int OooO0o0() {
        int i;
        if (this.OooOOo.OooO0OO <= 0 || (i = this.OooOOo0) < 0) {
            return 0;
        }
        return OooO0oO(i);
    }

    @Override // z2.o0O00OO
    public int OooO0oO(int i) {
        if (i >= 0) {
            o0oO0Ooo o0oo0ooo = this.OooOOo;
            if (i < o0oo0ooo.OooO0OO) {
                return o0oo0ooo.OooO0o0.get(i).OooO;
            }
        }
        return -1;
    }

    @Override // z2.o0O00OO
    public void OooO0oo() {
        this.OooOOo0 = -1;
    }

    @Override // z2.o0O00OO
    public int OooOO0() {
        return this.OooOOo0;
    }

    @Override // z2.o0O00OO
    public synchronized void OooOO0O(@NonNull o0oO0Ooo o0oo0ooo, @NonNull ByteBuffer byteBuffer, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
        }
        int iHighestOneBit = Integer.highestOneBit(i);
        this.OooOo0 = 0;
        this.OooOOo = o0oo0ooo;
        this.OooOOo0 = -1;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.OooO = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.OooO.order(ByteOrder.LITTLE_ENDIAN);
        this.OooOo00 = false;
        Iterator<o0O00OOO> it = o0oo0ooo.OooO0o0.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().OooO0oO == 3) {
                this.OooOo00 = true;
                break;
            }
        }
        this.OooOo0O = iHighestOneBit;
        int i2 = o0oo0ooo.OooO0o;
        this.OooOo = i2 / iHighestOneBit;
        int i3 = o0oo0ooo.OooO0oO;
        this.OooOo0o = i3 / iHighestOneBit;
        this.OooOOOO = this.OooO0oo.OooO0o0(i2 * i3);
        this.OooOOOo = this.OooO0oo.OooO0O0(this.OooOo * this.OooOo0o);
    }

    @Override // z2.o0O00OO
    public int OooOO0o() {
        return this.OooOOo.OooOOO0;
    }

    @Override // z2.o0O00OO
    public int OooOOO(@Nullable InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i2 = inputStream.read(bArr, 0, 16384);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(OooOoOO, "Error reading data from stream", e);
            }
        } else {
            this.OooOo0 = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(OooOoOO, "Error closing stream", e2);
            }
        }
        return this.OooOo0;
    }

    @Override // z2.o0O00OO
    public int OooOOO0() {
        return this.OooOo0;
    }

    @Override // z2.o0O00OO
    public int OooOOOO() {
        return this.OooO.limit() + this.OooOOOO.length + (this.OooOOOo.length * 4);
    }

    @Override // z2.o0O00OO
    public int OooOOOo() {
        int i = this.OooOOo.OooOOO0;
        if (i == -1) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        return i + 1;
    }

    @Override // z2.o0O00OO
    @Deprecated
    public int OooOOo0() {
        int i = this.OooOOo.OooOOO0;
        if (i == -1) {
            return 1;
        }
        return i;
    }

    @Override // z2.o0O00OO
    public void clear() {
        this.OooOOo = null;
        byte[] bArr = this.OooOOOO;
        if (bArr != null) {
            this.OooO0oo.OooO0Oo(bArr);
        }
        int[] iArr = this.OooOOOo;
        if (iArr != null) {
            this.OooO0oo.OooO0o(iArr);
        }
        Bitmap bitmap = this.OooOOoo;
        if (bitmap != null) {
            this.OooO0oo.OooO0OO(bitmap);
        }
        this.OooOOoo = null;
        this.OooO = null;
        this.OooOoO0 = null;
        byte[] bArr2 = this.OooOO0;
        if (bArr2 != null) {
            this.OooO0oo.OooO0Oo(bArr2);
        }
    }

    @Override // z2.o0O00OO
    @NonNull
    public ByteBuffer getData() {
        return this.OooO;
    }

    @Override // z2.o0O00OO
    public int getHeight() {
        return this.OooOOo.OooO0oO;
    }

    @Override // z2.o0O00OO
    public int getWidth() {
        return this.OooOOo.OooO0o;
    }

    @Override // z2.o0O00OO
    public synchronized int read(@Nullable byte[] bArr) {
        o0oO0Ooo o0oo0oooOooO0Oo = OooOo0O().OooOOo(bArr).OooO0Oo();
        this.OooOOo = o0oo0oooOooO0Oo;
        if (bArr != null) {
            OooO0OO(o0oo0oooOooO0Oo, bArr);
        }
        return this.OooOo0;
    }
}
