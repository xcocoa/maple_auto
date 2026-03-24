package cn.haorui.sdk.core.view.gif;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String y = "a";
    public int[] a;
    public ByteBuffer c;
    public byte[] d;
    public byte[] e;
    public GifHeaderParser h;
    public short[] i;
    public byte[] j;
    public byte[] k;
    public byte[] l;
    public int[] m;
    public int n;
    public int o;
    public InterfaceC0028a q;
    public Bitmap r;
    public boolean s;
    public int t;
    public int u;
    public int v;
    public int w;
    public boolean x;
    public final int[] b = new int[256];
    public int f = 0;
    public int g = 0;
    public GifHeader p = new GifHeader();

    /* JADX INFO: renamed from: cn.haorui.sdk.core.view.gif.a$a, reason: collision with other inner class name */
    public interface InterfaceC0028a {
    }

    public a(InterfaceC0028a interfaceC0028a) {
        this.q = interfaceC0028a;
    }

    public synchronized int a(int i, byte[] bArr) {
        if (this.h == null) {
            this.h = new GifHeaderParser();
        }
        GifHeader header = this.h.setData(bArr).parseHeader();
        this.p = header;
        if (bArr != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            synchronized (this) {
                if (i <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
                }
                int iHighestOneBit = Integer.highestOneBit(i);
                this.t = 0;
                this.p = header;
                this.x = false;
                this.n = -1;
                this.o = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBufferWrap.asReadOnlyBuffer();
                this.c = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.c.order(ByteOrder.LITTLE_ENDIAN);
                this.s = false;
                Iterator<b> it = header.frames.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (it.next().g == 3) {
                        this.s = true;
                        break;
                    }
                }
                this.u = iHighestOneBit;
                int i2 = header.width;
                this.w = i2 / iHighestOneBit;
                int i3 = header.height;
                this.v = i3 / iHighestOneBit;
                ((c) this.q).getClass();
                this.l = new byte[i2 * i3];
                InterfaceC0028a interfaceC0028a = this.q;
                int i4 = this.w * this.v;
                ((c) interfaceC0028a).getClass();
                this.m = new int[i4];
            }
        }
        return this.t;
    }

    public final Bitmap a() {
        Bitmap bitmapCreateBitmap = null;
        try {
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            InterfaceC0028a interfaceC0028a = this.q;
            int i = this.w;
            int i2 = this.v;
            ((c) interfaceC0028a).getClass();
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(i, i2, config);
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
            }
            if (bitmapCreateBitmap != null && Build.VERSION.SDK_INT >= 12) {
                bitmapCreateBitmap.setHasAlpha(true);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return bitmapCreateBitmap;
    }

    public final void a(int[] iArr, b bVar, int i) {
        int i2 = bVar.d;
        int i3 = this.u;
        int i4 = i2 / i3;
        int i5 = bVar.b / i3;
        int i6 = bVar.c / i3;
        int i7 = bVar.a / i3;
        int i8 = this.w;
        int i9 = (i5 * i8) + i7;
        int i10 = (i4 * i8) + i9;
        while (i9 < i10) {
            int i11 = i9 + i6;
            for (int i12 = i9; i12 < i11; i12++) {
                iArr[i12] = i;
            }
            i9 += this.w;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v35, types: [short] */
    /* JADX WARN: Type inference failed for: r2v37 */
    public synchronized Bitmap b() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        short s;
        int i10;
        int i11;
        int i12;
        if (this.p.frameCount <= 0 || this.n < 0) {
            String str = y;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "unable to decode frame, frameCount=" + this.p.frameCount + " framePointer=" + this.n);
            }
            this.t = 1;
        }
        int i13 = this.t;
        if (i13 != 1 && i13 != 2) {
            int i14 = 0;
            this.t = 0;
            b bVar = this.p.frames.get(this.n);
            int i15 = this.n - 1;
            b bVar2 = i15 >= 0 ? this.p.frames.get(i15) : null;
            int[] iArr = bVar.k;
            if (iArr == null) {
                iArr = this.p.gct;
            }
            this.a = iArr;
            if (iArr == null) {
                String str2 = y;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "No Valid Color Table for frame #" + this.n);
                }
                this.t = 1;
                return null;
            }
            if (bVar.f) {
                System.arraycopy(iArr, 0, this.b, 0, iArr.length);
                int[] iArr2 = this.b;
                this.a = iArr2;
                iArr2[bVar.h] = 0;
            }
            int[] iArr3 = this.m;
            if (bVar2 == null) {
                Arrays.fill(iArr3, 0);
            }
            if (bVar2 != null && (i11 = bVar2.g) > 0) {
                if (i11 == 2) {
                    if (!bVar.f) {
                        GifHeader gifHeader = this.p;
                        i12 = gifHeader.bgColor;
                        if (bVar.k != null && gifHeader.bgIndex == bVar.h) {
                        }
                        a(iArr3, bVar2, i12);
                    } else if (this.n == 0) {
                        this.x = true;
                    }
                    i12 = 0;
                    a(iArr3, bVar2, i12);
                } else if (i11 == 3) {
                    Bitmap bitmap = this.r;
                    if (bitmap == null) {
                        a(iArr3, bVar2, 0);
                    } else {
                        int i16 = bVar2.d;
                        int i17 = this.u;
                        int i18 = bVar2.b / i17;
                        int i19 = bVar2.c / i17;
                        int i20 = bVar2.a / i17;
                        int i21 = this.w;
                        bitmap.getPixels(iArr3, (i18 * i21) + i20, i21, i20, i18, i19, i16 / i17);
                    }
                }
            }
            this.f = 0;
            this.g = 0;
            this.c.position(bVar.j);
            int i22 = bVar.d * bVar.c;
            byte[] bArr = this.l;
            if (bArr == null || bArr.length < i22) {
                ((c) this.q).getClass();
                this.l = new byte[i22];
            }
            if (this.i == null) {
                this.i = new short[4096];
            }
            if (this.j == null) {
                this.j = new byte[4096];
            }
            if (this.k == null) {
                this.k = new byte[4097];
            }
            int iC = c();
            int i23 = 1 << iC;
            int i24 = i23 + 1;
            int i25 = i23 + 2;
            int i26 = iC + 1;
            int i27 = (1 << i26) - 1;
            for (int i28 = 0; i28 < i23; i28++) {
                this.i[i28] = 0;
                this.j[i28] = (byte) i28;
            }
            int i29 = i25;
            int i30 = i26;
            int i31 = i27;
            int i32 = 0;
            int i33 = 0;
            int i34 = 0;
            int i35 = 0;
            int i36 = 0;
            int i37 = 0;
            int i38 = -1;
            int i39 = 0;
            int i40 = 0;
            while (true) {
                if (i33 >= i22) {
                    break;
                }
                if (i32 == 0) {
                    int iC2 = c();
                    if (iC2 > 0) {
                        try {
                            if (this.d == null) {
                                ((c) this.q).getClass();
                                this.d = new byte[255];
                            }
                            int i41 = this.f;
                            int i42 = this.g;
                            int i43 = i41 - i42;
                            if (i43 >= iC2) {
                                System.arraycopy(this.e, i42, this.d, i14, iC2);
                                i10 = this.g + iC2;
                            } else if (this.c.remaining() + i43 >= iC2) {
                                System.arraycopy(this.e, this.g, this.d, i14, i43);
                                this.g = this.f;
                                d();
                                int i44 = iC2 - i43;
                                System.arraycopy(this.e, i14, this.d, i43, i44);
                                i10 = this.g + i44;
                            } else {
                                this.t = 1;
                            }
                            this.g = i10;
                        } catch (Exception e) {
                            Log.w(y, "Error Reading Block", e);
                            this.t = 1;
                        }
                    }
                    if (iC2 <= 0) {
                        this.t = 3;
                        break;
                    }
                    i32 = iC2;
                    i34 = 0;
                }
                i36 += (this.d[i34] & 255) << i35;
                i34++;
                i32--;
                int i45 = i35 + 8;
                int i46 = i38;
                int i47 = i39;
                int i48 = i29;
                int i49 = i30;
                while (true) {
                    i8 = i32;
                    if (i45 < i49) {
                        i35 = i45;
                        i39 = i47;
                        i30 = i49;
                        i29 = i48;
                        i14 = 0;
                        i38 = i46;
                        break;
                    }
                    int i50 = i36 & i31;
                    i36 >>= i49;
                    i45 -= i49;
                    if (i50 == i23) {
                        i48 = i25;
                        i49 = i26;
                        i31 = i27;
                        i32 = i8;
                        i46 = -1;
                    } else {
                        if (i50 > i48) {
                            i9 = i45;
                            this.t = 3;
                            break;
                        }
                        i9 = i45;
                        if (i50 == i24) {
                            break;
                        }
                        if (i46 == -1) {
                            this.k[i40] = this.j[i50];
                            i46 = i50;
                            i40++;
                            i45 = i9;
                            i47 = i46;
                            i32 = i8;
                        } else {
                            if (i50 >= i48) {
                                this.k[i40] = (byte) i47;
                                s = i46;
                                i40++;
                            } else {
                                s = i50;
                            }
                            while (s >= i23) {
                                this.k[i40] = this.j[s];
                                s = this.i[s];
                                i40++;
                                i50 = i50;
                            }
                            int i51 = i50;
                            byte[] bArr2 = this.j;
                            int i52 = bArr2[s] & 255;
                            int i53 = i40 + 1;
                            int i54 = i23;
                            byte b = (byte) i52;
                            this.k[i40] = b;
                            if (i48 < 4096) {
                                this.i[i48] = (short) i46;
                                bArr2[i48] = b;
                                i48++;
                                if ((i48 & i31) == 0 && i48 < 4096) {
                                    i49++;
                                    i31 += i48;
                                }
                            }
                            i40 = i53;
                            while (i40 > 0) {
                                i40--;
                                this.l[i37] = this.k[i40];
                                i33++;
                                i37++;
                            }
                            i47 = i52;
                            i32 = i8;
                            i45 = i9;
                            i46 = i51;
                            i23 = i54;
                        }
                    }
                }
                i30 = i49;
                i29 = i48;
                i32 = i8;
                i35 = i9;
                i14 = 0;
                i38 = i46;
                i39 = i47;
            }
            for (int i55 = i37; i55 < i22; i55++) {
                this.l[i55] = 0;
            }
            int i56 = bVar.d;
            int i57 = this.u;
            int i58 = i56 / i57;
            int i59 = bVar.b / i57;
            int i60 = bVar.c / i57;
            int i61 = bVar.a / i57;
            boolean z = this.n == 0;
            int i62 = 0;
            int i63 = 1;
            int i64 = 0;
            int i65 = 8;
            while (i64 < i58) {
                if (bVar.e) {
                    if (i62 >= i58) {
                        i63++;
                        if (i63 == 2) {
                            i62 = 4;
                        } else if (i63 == 3) {
                            i62 = 2;
                            i65 = 4;
                        } else if (i63 == 4) {
                            i62 = 1;
                            i65 = 2;
                        }
                    }
                    i2 = i62 + i65;
                } else {
                    i2 = i62;
                    i62 = i64;
                }
                int i66 = i62 + i59;
                if (i66 < this.v) {
                    int i67 = this.w;
                    int i68 = i66 * i67;
                    int i69 = i68 + i61;
                    int i70 = i69 + i60;
                    int i71 = i68 + i67;
                    if (i71 < i70) {
                        i70 = i71;
                    }
                    int i72 = this.u;
                    int i73 = i64 * i72 * bVar.c;
                    int i74 = ((i70 - i69) * i72) + i73;
                    int i75 = i69;
                    while (i75 < i70) {
                        int i76 = i58;
                        int i77 = i70;
                        if (this.u == 1) {
                            i6 = this.a[this.l[i73] & 255];
                            i3 = i59;
                            i4 = i60;
                            i5 = i61;
                        } else {
                            int i78 = bVar.c;
                            i3 = i59;
                            int i79 = i73;
                            int i80 = 0;
                            int i81 = 0;
                            int i82 = 0;
                            int i83 = 0;
                            int i84 = 0;
                            while (true) {
                                if (i79 >= this.u + i73) {
                                    i4 = i60;
                                    break;
                                }
                                byte[] bArr3 = this.l;
                                i4 = i60;
                                if (i79 >= bArr3.length || i79 >= i74) {
                                    break;
                                }
                                int i85 = this.a[bArr3[i79] & 255];
                                if (i85 != 0) {
                                    i7 = i61;
                                    i83 += (i85 >> 24) & 255;
                                    i82 += (i85 >> 16) & 255;
                                    i81 += (i85 >> 8) & 255;
                                    i80 += i85 & 255;
                                    i84++;
                                } else {
                                    i7 = i61;
                                }
                                i79++;
                                i60 = i4;
                                i61 = i7;
                            }
                            i5 = i61;
                            int i86 = i78 + i73;
                            for (int i87 = i86; i87 < this.u + i86; i87++) {
                                byte[] bArr4 = this.l;
                                if (i87 >= bArr4.length || i87 >= i74) {
                                    break;
                                }
                                int i88 = this.a[bArr4[i87] & 255];
                                if (i88 != 0) {
                                    i83 += (i88 >> 24) & 255;
                                    i82 += (i88 >> 16) & 255;
                                    i81 += (i88 >> 8) & 255;
                                    i80 += i88 & 255;
                                    i84++;
                                }
                            }
                            i6 = i84 == 0 ? 0 : ((i83 / i84) << 24) | ((i82 / i84) << 16) | ((i81 / i84) << 8) | (i80 / i84);
                        }
                        if (i6 != 0) {
                            iArr3[i75] = i6;
                        } else if (!this.x && z) {
                            this.x = true;
                        }
                        i73 += this.u;
                        i75++;
                        i58 = i76;
                        i70 = i77;
                        i59 = i3;
                        i60 = i4;
                        i61 = i5;
                    }
                }
                i64++;
                i62 = i2;
                i58 = i58;
                i59 = i59;
                i60 = i60;
                i61 = i61;
            }
            if (this.s && ((i = bVar.g) == 0 || i == 1)) {
                if (this.r == null) {
                    this.r = a();
                }
                Bitmap bitmap2 = this.r;
                if (bitmap2 != null) {
                    int i89 = this.w;
                    bitmap2.setPixels(iArr3, 0, i89, 0, 0, i89, this.v);
                }
            }
            Bitmap bitmapA = a();
            if (bitmapA != null) {
                int i90 = this.w;
                bitmapA.setPixels(iArr3, 0, i90, 0, 0, i90, this.v);
            }
            return bitmapA;
        }
        String str3 = y;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.t);
        }
        return null;
    }

    public final int c() {
        try {
            d();
            byte[] bArr = this.e;
            int i = this.g;
            this.g = i + 1;
            return bArr[i] & 255;
        } catch (Exception unused) {
            this.t = 1;
            return 0;
        }
    }

    public final void d() {
        if (this.f > this.g) {
            return;
        }
        if (this.e == null) {
            ((c) this.q).getClass();
            this.e = new byte[16384];
        }
        this.g = 0;
        int iMin = Math.min(this.c.remaining(), 16384);
        this.f = iMin;
        this.c.get(this.e, 0, iMin);
    }
}
