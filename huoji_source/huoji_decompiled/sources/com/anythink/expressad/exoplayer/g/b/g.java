package com.anythink.expressad.exoplayer.g.b;

import android.util.Log;
import com.anythink.expressad.exoplayer.g.a;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.s;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import javax.mail.UIDFolder;

/* JADX INFO: loaded from: classes.dex */
public final class g implements com.anythink.expressad.exoplayer.g.b {
    public static final a a = new a() { // from class: com.anythink.expressad.exoplayer.g.b.g.1
        @Override // com.anythink.expressad.exoplayer.g.b.g.a
        public final boolean a(int i2, int i3, int i4, int i5, int i6) {
            return false;
        }
    };
    public static final int b = af.f("ID3");
    public static final int c = 10;
    private static final String d = "Id3Decoder";
    private static final int e = 128;
    private static final int f = 64;
    private static final int g = 32;
    private static final int h = 8;
    private static final int i = 4;
    private static final int j = 64;
    private static final int k = 2;
    private static final int l = 1;
    private static final int m = 0;
    private static final int n = 1;
    private static final int o = 2;
    private static final int p = 3;
    private final a q;

    public interface a {
        boolean a(int i, int i2, int i3, int i4, int i5);
    }

    public static final class b {
        private final int a;
        private final boolean b;
        private final int c;

        public b(int i, boolean z, int i2) {
            this.a = i;
            this.b = z;
            this.c = i2;
        }
    }

    public g() {
        this(null);
    }

    private g(a aVar) {
        this.q = aVar;
    }

    private static int a(byte[] bArr, int i2, int i3) {
        int iB = b(bArr, i2);
        if (i3 == 0 || i3 == 3) {
            return iB;
        }
        while (iB < bArr.length - 1) {
            if (iB % 2 == 0 && bArr[iB + 1] == 0) {
                return iB;
            }
            iB = b(bArr, iB + 1);
        }
        return bArr.length;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private com.anythink.expressad.exoplayer.g.a a(byte[] bArr, int i2) throws Throwable {
        String strValueOf;
        String str;
        b bVar;
        String strConcat;
        ArrayList arrayList = new ArrayList();
        s sVar = new s(bArr, i2);
        boolean z = false;
        if (sVar.a() < 10) {
            strConcat = "Data too short to be an ID3 tag";
        } else {
            int iG = sVar.g();
            if (iG == b) {
                int iD = sVar.d();
                sVar.d(1);
                int iD2 = sVar.d();
                int iL = sVar.l();
                if (iD == 2) {
                    if ((iD2 & 64) != 0) {
                        strConcat = "Skipped ID3 tag with majorVersion=2 and undefined compression scheme";
                    }
                } else if (iD == 3) {
                    if ((iD2 & 64) != 0) {
                        int i3 = sVar.i();
                        sVar.d(i3);
                        iL -= i3 + 4;
                    }
                } else if (iD == 4) {
                    if ((iD2 & 64) != 0) {
                        int iL2 = sVar.l();
                        sVar.d(iL2 - 4);
                        iL -= iL2;
                    }
                    if ((iD2 & 16) != 0) {
                        iL -= 10;
                    }
                } else {
                    strValueOf = String.valueOf(iD);
                    str = "Skipped ID3 tag with unsupported majorVersion=";
                }
                bVar = new b(iD, iD < 4 && (iD2 & 128) != 0, iL);
                if (bVar != null) {
                    return null;
                }
                int iC = sVar.c();
                int i4 = bVar.a == 2 ? 6 : 10;
                int iF = bVar.c;
                if (bVar.b) {
                    iF = f(sVar, bVar.c);
                }
                sVar.b(iC + iF);
                if (!a(sVar, bVar.a, i4, false)) {
                    if (bVar.a != 4 || !a(sVar, 4, i4, true)) {
                        Log.w(d, "Failed to validate ID3 tag with majorVersion=" + bVar.a);
                        return null;
                    }
                    z = true;
                }
                while (sVar.a() >= i4) {
                    h hVarA = a(bVar.a, sVar, z, i4, this.q);
                    if (hVarA != null) {
                        arrayList.add(hVarA);
                    }
                }
                return new com.anythink.expressad.exoplayer.g.a(arrayList);
            }
            strValueOf = String.valueOf(iG);
            str = "Unexpected first three bytes of ID3 tag header: ";
            strConcat = str.concat(strValueOf);
        }
        Log.w(d, strConcat);
        bVar = null;
        if (bVar != null) {
        }
    }

    private static com.anythink.expressad.exoplayer.g.b.a a(s sVar, int i2, int i3) {
        int iB;
        String strConcat;
        int iD = sVar.d();
        String strA = a(iD);
        int i4 = i2 - 1;
        byte[] bArr = new byte[i4];
        sVar.a(bArr, 0, i4);
        if (i3 == 2) {
            strConcat = "image/" + af.d(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(strConcat)) {
                strConcat = "image/jpeg";
            }
            iB = 2;
        } else {
            iB = b(bArr, 0);
            String strD = af.d(new String(bArr, 0, iB, "ISO-8859-1"));
            strConcat = strD.indexOf(47) == -1 ? "image/".concat(String.valueOf(strD)) : strD;
        }
        int i5 = bArr[iB + 1] & 255;
        int i6 = iB + 2;
        int iA = a(bArr, i6, iD);
        return new com.anythink.expressad.exoplayer.g.b.a(strConcat, new String(bArr, i6, iA - i6, strA), i5, b(bArr, iA + b(iD), i4));
    }

    private static c a(s sVar, int i2, int i3, boolean z, int i4, a aVar) throws Throwable {
        int iC = sVar.c();
        int iB = b(sVar.a, iC);
        String str = new String(sVar.a, iC, iB - iC, "ISO-8859-1");
        sVar.c(iB + 1);
        int i5 = sVar.i();
        int i6 = sVar.i();
        long jH = sVar.h();
        long j2 = jH == UIDFolder.MAXUID ? -1L : jH;
        long jH2 = sVar.h();
        long j3 = jH2 == UIDFolder.MAXUID ? -1L : jH2;
        ArrayList arrayList = new ArrayList();
        int i7 = iC + i2;
        while (sVar.c() < i7) {
            h hVarA = a(i3, sVar, z, i4, aVar);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        h[] hVarArr = new h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return new c(str, i5, i6, j2, j3, hVarArr);
    }

    private static b a(s sVar) {
        String strValueOf;
        String str;
        String strConcat;
        if (sVar.a() < 10) {
            strConcat = "Data too short to be an ID3 tag";
        } else {
            int iG = sVar.g();
            if (iG == b) {
                int iD = sVar.d();
                sVar.d(1);
                int iD2 = sVar.d();
                int iL = sVar.l();
                if (iD == 2) {
                    if ((iD2 & 64) != 0) {
                        strConcat = "Skipped ID3 tag with majorVersion=2 and undefined compression scheme";
                    }
                } else if (iD == 3) {
                    if ((iD2 & 64) != 0) {
                        int i2 = sVar.i();
                        sVar.d(i2);
                        iL -= i2 + 4;
                    }
                } else if (iD == 4) {
                    if ((iD2 & 64) != 0) {
                        int iL2 = sVar.l();
                        sVar.d(iL2 - 4);
                        iL -= iL2;
                    }
                    if ((iD2 & 16) != 0) {
                        iL -= 10;
                    }
                } else {
                    strValueOf = String.valueOf(iD);
                    str = "Skipped ID3 tag with unsupported majorVersion=";
                }
                return new b(iD, iD < 4 && (iD2 & 128) != 0, iL);
            }
            strValueOf = String.valueOf(iG);
            str = "Unexpected first three bytes of ID3 tag header: ";
            strConcat = str.concat(strValueOf);
        }
        Log.w(d, strConcat);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:192:0x038a A[Catch: all -> 0x03aa, UnsupportedEncodingException -> 0x03ae, TRY_LEAVE, TryCatch #5 {all -> 0x03aa, blocks: (B:192:0x038a, B:194:0x03a6, B:146:0x0281, B:154:0x02b4, B:173:0x030e, B:183:0x034f, B:189:0x0369, B:190:0x0379), top: B:215:0x0107 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0113  */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.anythink.expressad.exoplayer.g.b.h] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v28, types: [com.anythink.expressad.exoplayer.g.b.h] */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static h a(int i2, s sVar, boolean z, int i3, a aVar) throws Throwable {
        int iM;
        String str;
        int i4;
        String str2;
        int i5;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i6;
        String str3;
        int i7;
        ?? eVar;
        int iB;
        String strD;
        a.InterfaceC0117a jVar;
        Object fVar;
        s sVar2 = sVar;
        int iD = sVar.d();
        int iD2 = sVar.d();
        int iD3 = sVar.d();
        int iD4 = i2 >= 3 ? sVar.d() : 0;
        if (i2 == 4) {
            iM = sVar.m();
            if (!z) {
                iM = (((iM >> 24) & 255) << 21) | (iM & 255) | (((iM >> 8) & 255) << 7) | (((iM >> 16) & 255) << 14);
            }
        } else {
            iM = i2 == 3 ? sVar.m() : sVar.g();
        }
        int iF = iM;
        int iE = i2 >= 3 ? sVar.e() : 0;
        if (iD != 0 || iD2 != 0 || iD3 != 0 || iD4 != 0 || iF != 0 || iE != 0) {
            int iC = sVar.c() + iF;
            if (iC <= sVar.b()) {
                if (aVar != null) {
                    str = d;
                    i4 = iC;
                    str2 = null;
                    i5 = iE;
                    if (!aVar.a(i2, iD, iD2, iD3, iD4)) {
                        sVar2.c(i4);
                        return null;
                    }
                } else {
                    str = d;
                    i4 = iC;
                    str2 = null;
                    i5 = iE;
                }
                if (i2 == 3) {
                    int i8 = i5;
                    z4 = (i8 & 128) != 0;
                    boolean z8 = (i8 & 64) != 0;
                    z3 = (i8 & 32) != 0;
                    z6 = z8;
                    z7 = false;
                    z5 = z4;
                } else {
                    int i9 = i5;
                    if (i2 == 4) {
                        boolean z9 = (i9 & 64) != 0;
                        z5 = (i9 & 8) != 0;
                        z6 = (i9 & 4) != 0;
                        z7 = (i9 & 2) != 0;
                        if ((i9 & 1) != 0) {
                            z3 = z9;
                            z4 = true;
                        } else {
                            z3 = z9;
                            z4 = false;
                        }
                    } else {
                        z3 = false;
                        z4 = false;
                        z5 = false;
                        z6 = false;
                        z7 = false;
                    }
                }
                if (z5 || z6) {
                    ?? r0 = str2;
                    Log.w(str, "Skipping unsupported compressed or encrypted frame");
                    sVar2.c(i4);
                    return r0;
                }
                if (z3) {
                    iF--;
                    sVar2.d(1);
                }
                if (z4) {
                    iF -= 4;
                    sVar2.d(4);
                }
                if (z7) {
                    iF = f(sVar2, iF);
                }
                try {
                    try {
                        try {
                            if (iD == 84 && iD2 == 88 && iD3 == 88 && (i2 == 2 || iD4 == 88)) {
                                if (iF > 0) {
                                    int iD5 = sVar.d();
                                    String strA = a(iD5);
                                    int i10 = iF - 1;
                                    byte[] bArr = new byte[i10];
                                    sVar2.a(bArr, 0, i10);
                                    int iA = a(bArr, 0, iD5);
                                    String str4 = new String(bArr, 0, iA, strA);
                                    int iB2 = iA + b(iD5);
                                    fVar = new k("TXXX", str4, a(bArr, iB2, a(bArr, iB2, iD5), strA));
                                }
                                i7 = i4;
                                eVar = fVar;
                                if (eVar == 0) {
                                }
                                sVar2.c(i7);
                                return eVar;
                            }
                            if (iD == 84) {
                                String strA2 = a(i2, iD, iD2, iD3, iD4);
                                if (iF > 0) {
                                    int iD6 = sVar.d();
                                    String strA3 = a(iD6);
                                    int i11 = iF - 1;
                                    byte[] bArr2 = new byte[i11];
                                    sVar2.a(bArr2, 0, i11);
                                    fVar = new k(strA2, str2, new String(bArr2, 0, a(bArr2, 0, iD6), strA3));
                                    i7 = i4;
                                    eVar = fVar;
                                    if (eVar == 0) {
                                    }
                                    sVar2.c(i7);
                                    return eVar;
                                }
                                fVar = str2;
                                i7 = i4;
                                eVar = fVar;
                                if (eVar == 0) {
                                    str3 = str;
                                    try {
                                        Log.w(str3, "Failed to decode frame: id=" + a(i2, iD, iD2, iD3, iD4) + ", frameSize=" + iF);
                                    } catch (UnsupportedEncodingException unused) {
                                        i6 = i7;
                                        try {
                                            Log.w(str3, "Unsupported character encoding");
                                            sVar2.c(i6);
                                            return null;
                                        } catch (Throwable th) {
                                            th = th;
                                        }
                                    }
                                }
                                sVar2.c(i7);
                                return eVar;
                            }
                            if (iD != 87 || iD2 != 88 || iD3 != 88 || (i2 != 2 && iD4 != 88)) {
                                if (iD == 87) {
                                    String strA4 = a(i2, iD, iD2, iD3, iD4);
                                    byte[] bArr3 = new byte[iF];
                                    sVar2.a(bArr3, 0, iF);
                                    jVar = new l(strA4, str2, new String(bArr3, 0, b(bArr3, 0), "ISO-8859-1"));
                                } else if (iD == 80 && iD2 == 82 && iD3 == 73 && iD4 == 86) {
                                    byte[] bArr4 = new byte[iF];
                                    sVar2.a(bArr4, 0, iF);
                                    int iB3 = b(bArr4, 0);
                                    jVar = new j(new String(bArr4, 0, iB3, "ISO-8859-1"), b(bArr4, iB3 + 1, iF));
                                } else {
                                    if (iD != 71 || iD2 != 69 || iD3 != 79 || (iD4 != 66 && i2 != 2)) {
                                        try {
                                            if (i2 != 2 ? !(iD == 65 && iD2 == 80 && iD3 == 73 && iD4 == 67) : !(iD == 80 && iD2 == 73 && iD3 == 67)) {
                                                i7 = i4;
                                                if (iD != 67 || iD2 != 79 || iD3 != 77 || (iD4 != 77 && i2 != 2)) {
                                                    sVar2 = sVar;
                                                    if (iD == 67 && iD2 == 72 && iD3 == 65 && iD4 == 80) {
                                                        eVar = a(sVar, iF, i2, z, i3, aVar);
                                                    } else if (iD == 67 && iD2 == 84 && iD3 == 79 && iD4 == 67) {
                                                        eVar = b(sVar, iF, i2, z, i3, aVar);
                                                    } else {
                                                        String strA5 = a(i2, iD, iD2, iD3, iD4);
                                                        byte[] bArr5 = new byte[iF];
                                                        sVar2.a(bArr5, 0, iF);
                                                        eVar = new com.anythink.expressad.exoplayer.g.b.b(strA5, bArr5);
                                                    }
                                                } else if (iF < 4) {
                                                    sVar2 = sVar;
                                                    eVar = 0;
                                                } else {
                                                    int iD7 = sVar.d();
                                                    String strA6 = a(iD7);
                                                    byte[] bArr6 = new byte[3];
                                                    sVar2 = sVar;
                                                    sVar2.a(bArr6, 0, 3);
                                                    String str5 = new String(bArr6, 0, 3);
                                                    int i12 = iF - 4;
                                                    byte[] bArr7 = new byte[i12];
                                                    sVar2.a(bArr7, 0, i12);
                                                    int iA2 = a(bArr7, 0, iD7);
                                                    String str6 = new String(bArr7, 0, iA2, strA6);
                                                    int iB4 = iA2 + b(iD7);
                                                    eVar = new e(str5, str6, a(bArr7, iB4, a(bArr7, iB4, iD7), strA6));
                                                }
                                            } else {
                                                try {
                                                    int iD8 = sVar.d();
                                                    String strA7 = a(iD8);
                                                    int i13 = iF - 1;
                                                    byte[] bArr8 = new byte[i13];
                                                    sVar2.a(bArr8, 0, i13);
                                                    if (i2 == 2) {
                                                        StringBuilder sb = new StringBuilder("image/");
                                                        i7 = i4;
                                                        sb.append(af.d(new String(bArr8, 0, 3, "ISO-8859-1")));
                                                        strD = sb.toString();
                                                        if ("image/jpg".equals(strD)) {
                                                            strD = "image/jpeg";
                                                        }
                                                        iB = 2;
                                                    } else {
                                                        i7 = i4;
                                                        iB = b(bArr8, 0);
                                                        strD = af.d(new String(bArr8, 0, iB, "ISO-8859-1"));
                                                        if (strD.indexOf(47) == -1) {
                                                            strD = "image/".concat(String.valueOf(strD));
                                                        }
                                                    }
                                                    int i14 = bArr8[iB + 1] & 255;
                                                    int i15 = iB + 2;
                                                    int iA3 = a(bArr8, i15, iD8);
                                                    sVar2 = sVar;
                                                    eVar = new com.anythink.expressad.exoplayer.g.b.a(strD, new String(bArr8, i15, iA3 - i15, strA7), i14, b(bArr8, iA3 + b(iD8), i13));
                                                } catch (UnsupportedEncodingException unused2) {
                                                    sVar2 = sVar;
                                                    i6 = i4;
                                                    str3 = str;
                                                    Log.w(str3, "Unsupported character encoding");
                                                    sVar2.c(i6);
                                                    return null;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    sVar2 = sVar;
                                                    i6 = i4;
                                                    sVar2.c(i6);
                                                    throw th;
                                                }
                                            }
                                            if (eVar == 0) {
                                            }
                                            sVar2.c(i7);
                                            return eVar;
                                        } catch (UnsupportedEncodingException unused3) {
                                            sVar2 = sVar;
                                            str3 = str;
                                            i6 = i7;
                                            Log.w(str3, "Unsupported character encoding");
                                            sVar2.c(i6);
                                            return null;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            sVar2 = sVar;
                                            i6 = i7;
                                            sVar2.c(i6);
                                            throw th;
                                        }
                                    }
                                    int iD9 = sVar.d();
                                    String strA8 = a(iD9);
                                    int i16 = iF - 1;
                                    byte[] bArr9 = new byte[i16];
                                    sVar2.a(bArr9, 0, i16);
                                    int iB5 = b(bArr9, 0);
                                    String str7 = new String(bArr9, 0, iB5, "ISO-8859-1");
                                    int i17 = iB5 + 1;
                                    int iA4 = a(bArr9, i17, iD9);
                                    String strA9 = a(bArr9, i17, iA4, strA8);
                                    int iB6 = iA4 + b(iD9);
                                    int iA5 = a(bArr9, iB6, iD9);
                                    fVar = new f(str7, strA9, a(bArr9, iB6, iA5, strA8), b(bArr9, iA5 + b(iD9), i16));
                                }
                                fVar = jVar;
                            } else if (iF <= 0) {
                                fVar = str2;
                            } else {
                                int iD10 = sVar.d();
                                String strA10 = a(iD10);
                                int i18 = iF - 1;
                                byte[] bArr10 = new byte[i18];
                                sVar2.a(bArr10, 0, i18);
                                int iA6 = a(bArr10, 0, iD10);
                                String str8 = new String(bArr10, 0, iA6, strA10);
                                int iB7 = iA6 + b(iD10);
                                fVar = new l("WXXX", str8, a(bArr10, iB7, b(bArr10, iB7), "ISO-8859-1"));
                            }
                            i7 = i4;
                            eVar = fVar;
                            if (eVar == 0) {
                            }
                            sVar2.c(i7);
                            return eVar;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (UnsupportedEncodingException unused4) {
                    }
                } catch (UnsupportedEncodingException unused5) {
                } catch (Throwable th5) {
                    th = th5;
                }
                sVar2.c(i6);
                throw th;
            }
            Log.w(d, "Frame size exceeds remaining tag data");
        }
        sVar2.c(sVar.b());
        return null;
    }

    private static k a(s sVar, int i2) {
        if (i2 <= 0) {
            return null;
        }
        int iD = sVar.d();
        String strA = a(iD);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        sVar.a(bArr, 0, i3);
        int iA = a(bArr, 0, iD);
        String str = new String(bArr, 0, iA, strA);
        int iB = iA + b(iD);
        return new k("TXXX", str, a(bArr, iB, a(bArr, iB, iD), strA));
    }

    private static k a(s sVar, int i2, String str) {
        if (i2 <= 0) {
            return null;
        }
        int iD = sVar.d();
        String strA = a(iD);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        sVar.a(bArr, 0, i3);
        return new k(str, null, new String(bArr, 0, a(bArr, 0, iD), strA));
    }

    private static String a(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : com.anythink.expressad.exoplayer.b.k;
    }

    private static String a(int i2, int i3, int i4, int i5, int i6) {
        return i2 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6));
    }

    private static String a(byte[] bArr, int i2, int i3, String str) {
        return (i3 <= i2 || i3 > bArr.length) ? "" : new String(bArr, i2, i3 - i2, str);
    }

    private static boolean a(s sVar, int i2, int i3, boolean z) {
        int iG;
        long jG;
        int iE;
        int i4;
        int iC = sVar.c();
        while (true) {
            try {
                boolean z3 = true;
                if (sVar.a() < i3) {
                    return true;
                }
                if (i2 >= 3) {
                    iG = sVar.i();
                    jG = sVar.h();
                    iE = sVar.e();
                } else {
                    iG = sVar.g();
                    jG = sVar.g();
                    iE = 0;
                }
                if (iG == 0 && jG == 0 && iE == 0) {
                    return true;
                }
                if (i2 == 4 && !z) {
                    if ((8421504 & jG) != 0) {
                        return false;
                    }
                    jG = (((jG >> 24) & 255) << 21) | (jG & 255) | (((jG >> 8) & 255) << 7) | (((jG >> 16) & 255) << 14);
                }
                if (i2 == 4) {
                    i4 = (iE & 64) != 0 ? 1 : 0;
                    if ((iE & 1) == 0) {
                        z3 = false;
                    }
                } else {
                    if (i2 == 3) {
                        i4 = (iE & 32) != 0 ? 1 : 0;
                        if ((iE & 128) == 0) {
                        }
                    } else {
                        i4 = 0;
                    }
                    z3 = false;
                }
                if (z3) {
                    i4 += 4;
                }
                if (jG < i4) {
                    return false;
                }
                if (sVar.a() < jG) {
                    return false;
                }
                sVar.d((int) jG);
            } finally {
                sVar.c(iC);
            }
        }
    }

    private static int b(int i2) {
        return (i2 == 0 || i2 == 3) ? 1 : 2;
    }

    private static int b(byte[] bArr, int i2) {
        while (i2 < bArr.length) {
            if (bArr[i2] == 0) {
                return i2;
            }
            i2++;
        }
        return bArr.length;
    }

    private static d b(s sVar, int i2, int i3, boolean z, int i4, a aVar) throws Throwable {
        int iC = sVar.c();
        int iB = b(sVar.a, iC);
        String str = new String(sVar.a, iC, iB - iC, "ISO-8859-1");
        sVar.c(iB + 1);
        int iD = sVar.d();
        boolean z3 = (iD & 2) != 0;
        boolean z4 = (iD & 1) != 0;
        int iD2 = sVar.d();
        String[] strArr = new String[iD2];
        for (int i5 = 0; i5 < iD2; i5++) {
            int iC2 = sVar.c();
            int iB2 = b(sVar.a, iC2);
            strArr[i5] = new String(sVar.a, iC2, iB2 - iC2, "ISO-8859-1");
            sVar.c(iB2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i6 = iC + i2;
        while (sVar.c() < i6) {
            h hVarA = a(i3, sVar, z, i4, aVar);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        h[] hVarArr = new h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return new d(str, z3, z4, strArr, hVarArr);
    }

    private static l b(s sVar, int i2) {
        if (i2 <= 0) {
            return null;
        }
        int iD = sVar.d();
        String strA = a(iD);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        sVar.a(bArr, 0, i3);
        int iA = a(bArr, 0, iD);
        String str = new String(bArr, 0, iA, strA);
        int iB = iA + b(iD);
        return new l("WXXX", str, a(bArr, iB, b(bArr, iB), "ISO-8859-1"));
    }

    private static l b(s sVar, int i2, String str) {
        byte[] bArr = new byte[i2];
        sVar.a(bArr, 0, i2);
        return new l(str, null, new String(bArr, 0, b(bArr, 0), "ISO-8859-1"));
    }

    private static byte[] b(byte[] bArr, int i2, int i3) {
        return i3 <= i2 ? new byte[0] : Arrays.copyOfRange(bArr, i2, i3);
    }

    private static com.anythink.expressad.exoplayer.g.b.b c(s sVar, int i2, String str) {
        byte[] bArr = new byte[i2];
        sVar.a(bArr, 0, i2);
        return new com.anythink.expressad.exoplayer.g.b.b(str, bArr);
    }

    private static j c(s sVar, int i2) {
        byte[] bArr = new byte[i2];
        sVar.a(bArr, 0, i2);
        int iB = b(bArr, 0);
        return new j(new String(bArr, 0, iB, "ISO-8859-1"), b(bArr, iB + 1, i2));
    }

    private static f d(s sVar, int i2) {
        int iD = sVar.d();
        String strA = a(iD);
        int i3 = i2 - 1;
        byte[] bArr = new byte[i3];
        sVar.a(bArr, 0, i3);
        int iB = b(bArr, 0);
        String str = new String(bArr, 0, iB, "ISO-8859-1");
        int i4 = iB + 1;
        int iA = a(bArr, i4, iD);
        String strA2 = a(bArr, i4, iA, strA);
        int iB2 = iA + b(iD);
        int iA2 = a(bArr, iB2, iD);
        return new f(str, strA2, a(bArr, iB2, iA2, strA), b(bArr, iA2 + b(iD), i3));
    }

    private static e e(s sVar, int i2) {
        if (i2 < 4) {
            return null;
        }
        int iD = sVar.d();
        String strA = a(iD);
        byte[] bArr = new byte[3];
        sVar.a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i3 = i2 - 4;
        byte[] bArr2 = new byte[i3];
        sVar.a(bArr2, 0, i3);
        int iA = a(bArr2, 0, iD);
        String str2 = new String(bArr2, 0, iA, strA);
        int iB = iA + b(iD);
        return new e(str, str2, a(bArr2, iB, a(bArr2, iB, iD), strA));
    }

    private static int f(s sVar, int i2) {
        byte[] bArr = sVar.a;
        int iC = sVar.c();
        while (true) {
            int i3 = iC + 1;
            if (i3 >= i2) {
                return i2;
            }
            if ((bArr[iC] & 255) == 255 && bArr[i3] == 0) {
                System.arraycopy(bArr, iC + 2, bArr, i3, (i2 - iC) - 2);
                i2--;
            }
            iC = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00aa  */
    @Override // com.anythink.expressad.exoplayer.g.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.anythink.expressad.exoplayer.g.a a(com.anythink.expressad.exoplayer.g.e eVar) throws Throwable {
        String strValueOf;
        String str;
        b bVar;
        String strConcat;
        ByteBuffer byteBuffer = eVar.e;
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        ArrayList arrayList = new ArrayList();
        s sVar = new s(bArrArray, iLimit);
        boolean z = false;
        if (sVar.a() < 10) {
            strConcat = "Data too short to be an ID3 tag";
        } else {
            int iG = sVar.g();
            if (iG == b) {
                int iD = sVar.d();
                sVar.d(1);
                int iD2 = sVar.d();
                int iL = sVar.l();
                if (iD == 2) {
                    if ((iD2 & 64) != 0) {
                        strConcat = "Skipped ID3 tag with majorVersion=2 and undefined compression scheme";
                    }
                } else if (iD == 3) {
                    if ((iD2 & 64) != 0) {
                        int i2 = sVar.i();
                        sVar.d(i2);
                        iL -= i2 + 4;
                    }
                } else if (iD == 4) {
                    if ((iD2 & 64) != 0) {
                        int iL2 = sVar.l();
                        sVar.d(iL2 - 4);
                        iL -= iL2;
                    }
                    if ((iD2 & 16) != 0) {
                        iL -= 10;
                    }
                } else {
                    strValueOf = String.valueOf(iD);
                    str = "Skipped ID3 tag with unsupported majorVersion=";
                }
                bVar = new b(iD, iD < 4 && (iD2 & 128) != 0, iL);
                if (bVar != null) {
                    return null;
                }
                int iC = sVar.c();
                int i3 = bVar.a == 2 ? 6 : 10;
                int iF = bVar.c;
                if (bVar.b) {
                    iF = f(sVar, bVar.c);
                }
                sVar.b(iC + iF);
                if (!a(sVar, bVar.a, i3, false)) {
                    if (bVar.a != 4 || !a(sVar, 4, i3, true)) {
                        Log.w(d, "Failed to validate ID3 tag with majorVersion=" + bVar.a);
                        return null;
                    }
                    z = true;
                }
                while (sVar.a() >= i3) {
                    h hVarA = a(bVar.a, sVar, z, i3, this.q);
                    if (hVarA != null) {
                        arrayList.add(hVarA);
                    }
                }
                return new com.anythink.expressad.exoplayer.g.a(arrayList);
            }
            strValueOf = String.valueOf(iG);
            str = "Unexpected first three bytes of ID3 tag header: ";
            strConcat = str.concat(strValueOf);
        }
        Log.w(d, strConcat);
        bVar = null;
        if (bVar != null) {
        }
    }
}
