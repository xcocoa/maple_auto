package com.anythink.expressad.exoplayer.e.a;

import android.util.Log;
import android.util.Pair;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.anythink.expressad.exoplayer.e.a.a;
import com.anythink.expressad.exoplayer.e.a.d;
import com.anythink.expressad.exoplayer.g.a;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.exoplayer.k.s;
import com.anythink.expressad.exoplayer.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String a = "AtomParsers";
    private static final int b = af.f("vide");
    private static final int c = af.f("soun");
    private static final int d = af.f("text");
    private static final int e = af.f("sbtl");
    private static final int f = af.f("subt");
    private static final int g = af.f("clcp");
    private static final int h = af.f("meta");
    private static final int i = 3;

    public static final class a {
        public final int a;
        public int b;
        public int c;
        public long d;
        private final boolean e;
        private final s f;
        private final s g;
        private int h;
        private int i;

        public a(s sVar, s sVar2, boolean z) {
            this.g = sVar;
            this.f = sVar2;
            this.e = z;
            sVar2.c(12);
            this.a = sVar2.m();
            sVar.c(12);
            this.i = sVar.m();
            com.anythink.expressad.exoplayer.k.a.b(sVar.i() == 1, "first_chunk must be 1");
            this.b = -1;
        }

        public final boolean a() {
            int i = this.b + 1;
            this.b = i;
            if (i == this.a) {
                return false;
            }
            this.d = this.e ? this.f.n() : this.f.h();
            if (this.b == this.h) {
                this.c = this.g.m();
                this.g.d(4);
                int i2 = this.i - 1;
                this.i = i2;
                this.h = i2 > 0 ? this.g.m() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.e.a.b$b, reason: collision with other inner class name */
    public interface InterfaceC0114b {
        int a();

        int b();

        boolean c();
    }

    public static final class c {
        public static final int a = 8;
        public final k[] b;
        public com.anythink.expressad.exoplayer.m c;
        public int d;
        public int e = 0;

        public c(int i) {
            this.b = new k[i];
        }
    }

    public static final class d implements InterfaceC0114b {
        private final int a;
        private final int b;
        private final s c;

        public d(a.b bVar) {
            s sVar = bVar.aV;
            this.c = sVar;
            sVar.c(12);
            this.a = sVar.m();
            this.b = sVar.m();
        }

        @Override // com.anythink.expressad.exoplayer.e.a.b.InterfaceC0114b
        public final int a() {
            return this.b;
        }

        @Override // com.anythink.expressad.exoplayer.e.a.b.InterfaceC0114b
        public final int b() {
            int i = this.a;
            return i == 0 ? this.c.m() : i;
        }

        @Override // com.anythink.expressad.exoplayer.e.a.b.InterfaceC0114b
        public final boolean c() {
            return this.a != 0;
        }
    }

    public static final class e implements InterfaceC0114b {
        private final s a;
        private final int b;
        private final int c;
        private int d;
        private int e;

        public e(a.b bVar) {
            s sVar = bVar.aV;
            this.a = sVar;
            sVar.c(12);
            this.c = sVar.m() & 255;
            this.b = sVar.m();
        }

        @Override // com.anythink.expressad.exoplayer.e.a.b.InterfaceC0114b
        public final int a() {
            return this.b;
        }

        @Override // com.anythink.expressad.exoplayer.e.a.b.InterfaceC0114b
        public final int b() {
            int i = this.c;
            if (i == 8) {
                return this.a.d();
            }
            if (i == 16) {
                return this.a.e();
            }
            int i2 = this.d;
            this.d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.e & 15;
            }
            int iD = this.a.d();
            this.e = iD;
            return (iD & 240) >> 4;
        }

        @Override // com.anythink.expressad.exoplayer.e.a.b.InterfaceC0114b
        public final boolean c() {
            return false;
        }
    }

    public static final class f {
        private final int a;
        private final long b;
        private final int c;

        public f(int i, long j, int i2) {
            this.a = i;
            this.b = j;
            this.c = i2;
        }
    }

    public static final class g extends t {
    }

    private b() {
    }

    private static int a(s sVar, int i2, int i3) {
        int iC = sVar.c();
        while (iC - i2 < i3) {
            sVar.c(iC);
            int i4 = sVar.i();
            com.anythink.expressad.exoplayer.k.a.a(i4 > 0, "childAtomSize should be positive");
            if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.O) {
                return iC;
            }
            iC += i4;
        }
        return -1;
    }

    private static long a(s sVar) {
        sVar.c(8);
        sVar.d(com.anythink.expressad.exoplayer.e.a.a.a(sVar.i()) != 0 ? 16 : 8);
        return sVar.h();
    }

    private static Pair<long[], long[]> a(a.C0113a c0113a) {
        a.b bVarD;
        if (c0113a == null || (bVarD = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.V)) == null) {
            return Pair.create(null, null);
        }
        s sVar = bVarD.aV;
        sVar.c(8);
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar.i());
        int iM = sVar.m();
        long[] jArr = new long[iM];
        long[] jArr2 = new long[iM];
        for (int i2 = 0; i2 < iM; i2++) {
            jArr[i2] = iA == 1 ? sVar.n() : sVar.h();
            jArr2[i2] = iA == 1 ? sVar.j() : sVar.i();
            if (sVar.f() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            sVar.d(2);
        }
        return Pair.create(jArr, jArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:199:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0341  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static c a(s sVar, int i2, int i3, String str, com.anythink.expressad.exoplayer.d.e eVar, boolean z) throws t {
        int i4;
        int i5;
        int i6;
        int i7;
        com.anythink.expressad.exoplayer.d.e eVar2;
        com.anythink.expressad.exoplayer.m mVarA;
        byte[] bArrCopyOfRange;
        String str2;
        List<byte[]> list;
        String str3;
        com.anythink.expressad.exoplayer.d.e eVarA;
        int iE;
        int iRound;
        int iM;
        com.anythink.expressad.exoplayer.d.e eVar3;
        int i8;
        String str4;
        com.anythink.expressad.exoplayer.d.e eVar4;
        int i9;
        int iC;
        String str5;
        int i10;
        String str6;
        String str7;
        int i11;
        String str8;
        com.anythink.expressad.exoplayer.m mVarB;
        com.anythink.expressad.exoplayer.d.e eVarA2;
        String str9;
        List list2;
        String str10;
        long j;
        sVar.c(12);
        int i12 = sVar.i();
        c cVar = new c(i12);
        int i13 = 0;
        int i14 = 0;
        while (i14 < i12) {
            int iC2 = sVar.c();
            int i15 = sVar.i();
            String str11 = "childAtomSize should be positive";
            com.anythink.expressad.exoplayer.k.a.a(i15 > 0, "childAtomSize should be positive");
            int i16 = sVar.i();
            if (i16 == com.anythink.expressad.exoplayer.e.a.a.g || i16 == com.anythink.expressad.exoplayer.e.a.a.h || i16 == com.anythink.expressad.exoplayer.e.a.a.ae || i16 == com.anythink.expressad.exoplayer.e.a.a.aq || i16 == com.anythink.expressad.exoplayer.e.a.a.i || i16 == com.anythink.expressad.exoplayer.e.a.a.j || i16 == com.anythink.expressad.exoplayer.e.a.a.k || i16 == com.anythink.expressad.exoplayer.e.a.a.aP || i16 == com.anythink.expressad.exoplayer.e.a.a.aQ) {
                i4 = i14;
                i5 = iC2;
                i6 = i12;
                i7 = i15;
                sVar.c(i5 + 8 + 8);
                sVar.d(16);
                int iE2 = sVar.e();
                int iE3 = sVar.e();
                sVar.d(50);
                int iC3 = sVar.c();
                if (i16 == com.anythink.expressad.exoplayer.e.a.a.ae) {
                    Pair<Integer, k> pairB = b(sVar, i5, i7);
                    if (pairB != null) {
                        i16 = ((Integer) pairB.first).intValue();
                        eVarA = eVar == null ? null : eVar.a(((k) pairB.second).b);
                        cVar.b[i4] = (k) pairB.second;
                    } else {
                        eVarA = eVar;
                    }
                    sVar.c(iC3);
                    eVar2 = eVarA;
                } else {
                    eVar2 = eVar;
                }
                String str12 = null;
                List<byte[]> listSingletonList = null;
                byte[] bArr = null;
                boolean z3 = false;
                float fM = 1.0f;
                int i17 = -1;
                while (iC3 - i5 < i7) {
                    sVar.c(iC3);
                    int iC4 = sVar.c();
                    int i18 = sVar.i();
                    if (i18 == 0 && sVar.c() - i5 == i7) {
                        break;
                    }
                    com.anythink.expressad.exoplayer.k.a.a(i18 > 0, "childAtomSize should be positive");
                    int i19 = sVar.i();
                    if (i19 == com.anythink.expressad.exoplayer.e.a.a.M) {
                        com.anythink.expressad.exoplayer.k.a.b(str12 == null);
                        sVar.c(iC4 + 8);
                        com.anythink.expressad.exoplayer.l.a aVarA = com.anythink.expressad.exoplayer.l.a.a(sVar);
                        list = aVarA.a;
                        cVar.d = aVarA.b;
                        if (!z3) {
                            fM = aVarA.e;
                        }
                        str3 = o.h;
                    } else if (i19 == com.anythink.expressad.exoplayer.e.a.a.N) {
                        com.anythink.expressad.exoplayer.k.a.b(str12 == null);
                        sVar.c(iC4 + 8);
                        com.anythink.expressad.exoplayer.l.d dVarA = com.anythink.expressad.exoplayer.l.d.a(sVar);
                        list = dVarA.a;
                        cVar.d = dVarA.b;
                        str3 = o.i;
                    } else {
                        if (i19 == com.anythink.expressad.exoplayer.e.a.a.aR) {
                            com.anythink.expressad.exoplayer.k.a.b(str12 == null);
                            str2 = i16 == com.anythink.expressad.exoplayer.e.a.a.aP ? o.j : o.k;
                        } else if (i19 == com.anythink.expressad.exoplayer.e.a.a.l) {
                            com.anythink.expressad.exoplayer.k.a.b(str12 == null);
                            str2 = o.g;
                        } else {
                            if (i19 == com.anythink.expressad.exoplayer.e.a.a.O) {
                                com.anythink.expressad.exoplayer.k.a.b(str12 == null);
                                Pair<String, byte[]> pairD = d(sVar, iC4);
                                String str13 = (String) pairD.first;
                                listSingletonList = Collections.singletonList((byte[]) pairD.second);
                                str12 = str13;
                            } else if (i19 == com.anythink.expressad.exoplayer.e.a.a.an) {
                                sVar.c(iC4 + 8);
                                fM = sVar.m() / sVar.m();
                                z3 = true;
                            } else if (i19 == com.anythink.expressad.exoplayer.e.a.a.aN) {
                                int i20 = iC4 + 8;
                                while (true) {
                                    if (i20 - iC4 >= i18) {
                                        bArrCopyOfRange = null;
                                        break;
                                    }
                                    sVar.c(i20);
                                    int i21 = sVar.i();
                                    if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aO) {
                                        bArrCopyOfRange = Arrays.copyOfRange(sVar.a, i20, i21 + i20);
                                        break;
                                    }
                                    i20 += i21;
                                }
                                bArr = bArrCopyOfRange;
                            } else {
                                if (i19 == com.anythink.expressad.exoplayer.e.a.a.aM) {
                                    int iD = sVar.d();
                                    sVar.d(3);
                                    if (iD == 0) {
                                        int iD2 = sVar.d();
                                        if (iD2 == 0) {
                                            i17 = 0;
                                        } else if (iD2 == 1) {
                                            i17 = 1;
                                        } else if (iD2 == 2) {
                                            i17 = 2;
                                        } else if (iD2 == 3) {
                                            i17 = 3;
                                        }
                                    }
                                }
                                iC3 += i18;
                            }
                            iC3 += i18;
                        }
                        str12 = str2;
                        iC3 += i18;
                    }
                    str12 = str3;
                    listSingletonList = list;
                    iC3 += i18;
                }
                if (str12 != null) {
                    mVarA = com.anythink.expressad.exoplayer.m.a(Integer.toString(i2), str12, null, -1, -1, iE2, iE3, -1.0f, listSingletonList, i3, fM, bArr, i17, null, eVar2);
                    cVar.c = mVarA;
                }
            } else if (i16 == com.anythink.expressad.exoplayer.e.a.a.n || i16 == com.anythink.expressad.exoplayer.e.a.a.af || i16 == com.anythink.expressad.exoplayer.e.a.a.s || i16 == com.anythink.expressad.exoplayer.e.a.a.u || i16 == com.anythink.expressad.exoplayer.e.a.a.w || i16 == com.anythink.expressad.exoplayer.e.a.a.z || i16 == com.anythink.expressad.exoplayer.e.a.a.x || i16 == com.anythink.expressad.exoplayer.e.a.a.y || i16 == com.anythink.expressad.exoplayer.e.a.a.aD || i16 == com.anythink.expressad.exoplayer.e.a.a.aE || i16 == com.anythink.expressad.exoplayer.e.a.a.q || i16 == com.anythink.expressad.exoplayer.e.a.a.r || i16 == com.anythink.expressad.exoplayer.e.a.a.o || i16 == com.anythink.expressad.exoplayer.e.a.a.aT) {
                i4 = i14;
                i6 = i12;
                i5 = iC2;
                sVar.c(i5 + 8 + 8);
                if (z) {
                    iE = sVar.e();
                    sVar.d(6);
                } else {
                    sVar.d(8);
                    iE = 0;
                }
                if (iE == 0 || iE == 1) {
                    int iE4 = sVar.e();
                    sVar.d(6);
                    int iK = sVar.k();
                    if (iE == 1) {
                        sVar.d(16);
                    }
                    iRound = iK;
                    iM = iE4;
                } else if (iE == 2) {
                    sVar.d(16);
                    iRound = (int) Math.round(Double.longBitsToDouble(sVar.j()));
                    iM = sVar.m();
                    sVar.d(20);
                } else {
                    i7 = i15;
                }
                int iC5 = sVar.c();
                if (i16 == com.anythink.expressad.exoplayer.e.a.a.af) {
                    Pair<Integer, k> pairB2 = b(sVar, i5, i15);
                    if (pairB2 != null) {
                        i16 = ((Integer) pairB2.first).intValue();
                        eVarA2 = eVar != null ? eVar.a(((k) pairB2.second).b) : null;
                        cVar.b[i4] = (k) pairB2.second;
                    } else {
                        eVarA2 = eVar;
                    }
                    sVar.c(iC5);
                    eVar3 = eVarA2;
                } else {
                    eVar3 = eVar;
                }
                int i22 = com.anythink.expressad.exoplayer.e.a.a.s;
                String str14 = o.w;
                String str15 = i16 == i22 ? o.z : i16 == com.anythink.expressad.exoplayer.e.a.a.u ? o.A : i16 == com.anythink.expressad.exoplayer.e.a.a.w ? o.D : (i16 == com.anythink.expressad.exoplayer.e.a.a.x || i16 == com.anythink.expressad.exoplayer.e.a.a.y) ? o.E : i16 == com.anythink.expressad.exoplayer.e.a.a.z ? o.F : i16 == com.anythink.expressad.exoplayer.e.a.a.aD ? o.I : i16 == com.anythink.expressad.exoplayer.e.a.a.aE ? o.J : (i16 == com.anythink.expressad.exoplayer.e.a.a.q || i16 == com.anythink.expressad.exoplayer.e.a.a.r) ? o.w : i16 == com.anythink.expressad.exoplayer.e.a.a.o ? o.t : i16 == com.anythink.expressad.exoplayer.e.a.a.aT ? o.L : null;
                int iIntValue = iM;
                int i23 = iRound;
                int i24 = iC5;
                byte[] bArr2 = null;
                String str16 = str15;
                while (i24 - i5 < i15) {
                    sVar.c(i24);
                    int i25 = sVar.i();
                    com.anythink.expressad.exoplayer.k.a.a(i25 > 0, str11);
                    int i26 = sVar.i();
                    int i27 = com.anythink.expressad.exoplayer.e.a.a.O;
                    if (i26 == i27 || (z && i26 == com.anythink.expressad.exoplayer.e.a.a.p)) {
                        i8 = i25;
                        str4 = str14;
                        String str17 = str11;
                        String str18 = str16;
                        eVar4 = eVar3;
                        i9 = i24;
                        if (i26 == i27) {
                            iC = i9;
                            str5 = str17;
                        } else {
                            iC = sVar.c();
                            while (iC - i9 < i8) {
                                sVar.c(iC);
                                int i28 = sVar.i();
                                str5 = str17;
                                com.anythink.expressad.exoplayer.k.a.a(i28 > 0, str5);
                                if (sVar.i() != com.anythink.expressad.exoplayer.e.a.a.O) {
                                    iC += i28;
                                    str17 = str5;
                                }
                            }
                            str5 = str17;
                            i10 = -1;
                            iC = -1;
                            if (iC == i10) {
                                Pair<String, byte[]> pairD2 = d(sVar, iC);
                                str6 = (String) pairD2.first;
                                bArr2 = (byte[]) pairD2.second;
                                if (o.r.equals(str6)) {
                                    Pair<Integer, Integer> pairA = com.anythink.expressad.exoplayer.k.d.a(bArr2);
                                    int iIntValue2 = ((Integer) pairA.first).intValue();
                                    iIntValue = ((Integer) pairA.second).intValue();
                                    i23 = iIntValue2;
                                }
                            } else {
                                str6 = str18;
                            }
                            str7 = str6;
                        }
                        i10 = -1;
                        if (iC == i10) {
                        }
                        str7 = str6;
                    } else {
                        if (i26 == com.anythink.expressad.exoplayer.e.a.a.t) {
                            sVar.c(i24 + 8);
                            mVarB = com.anythink.expressad.exoplayer.b.a.a(sVar, Integer.toString(i2), str, eVar3);
                        } else if (i26 == com.anythink.expressad.exoplayer.e.a.a.v) {
                            sVar.c(i24 + 8);
                            mVarB = com.anythink.expressad.exoplayer.b.a.b(sVar, Integer.toString(i2), str, eVar3);
                        } else {
                            if (i26 == com.anythink.expressad.exoplayer.e.a.a.A) {
                                i8 = i25;
                                i11 = i24;
                                str4 = str14;
                                str8 = str11;
                                str7 = str16;
                                eVar4 = eVar3;
                                cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i2), str16, null, -1, iIntValue, i23, null, eVar3, str);
                            } else {
                                i8 = i25;
                                i11 = i24;
                                str4 = str14;
                                str8 = str11;
                                str7 = str16;
                                eVar4 = eVar3;
                                if (i26 == com.anythink.expressad.exoplayer.e.a.a.aT) {
                                    byte[] bArr3 = new byte[i8];
                                    i9 = i11;
                                    sVar.c(i9);
                                    sVar.a(bArr3, 0, i8);
                                    bArr2 = bArr3;
                                }
                                str5 = str8;
                            }
                            i9 = i11;
                            str5 = str8;
                        }
                        cVar.c = mVarB;
                        i8 = i25;
                        str4 = str14;
                        str8 = str11;
                        str7 = str16;
                        eVar4 = eVar3;
                        i9 = i24;
                        str5 = str8;
                    }
                    i24 = i9 + i8;
                    str11 = str5;
                    eVar3 = eVar4;
                    str14 = str4;
                    str16 = str7;
                }
                String str19 = str14;
                String str20 = str16;
                com.anythink.expressad.exoplayer.d.e eVar5 = eVar3;
                if (cVar.c != null || str20 == null) {
                    i7 = i15;
                } else {
                    i7 = i15;
                    mVarA = com.anythink.expressad.exoplayer.m.a(Integer.toString(i2), str20, (String) null, -1, iIntValue, i23, str19.equals(str20) ? 2 : -1, (List<byte[]>) (bArr2 == null ? null : Collections.singletonList(bArr2)), eVar5, str);
                    cVar.c = mVarA;
                }
            } else {
                int i29 = com.anythink.expressad.exoplayer.e.a.a.ao;
                if (i16 == i29 || i16 == com.anythink.expressad.exoplayer.e.a.a.az || i16 == com.anythink.expressad.exoplayer.e.a.a.aA || i16 == com.anythink.expressad.exoplayer.e.a.a.aB || i16 == com.anythink.expressad.exoplayer.e.a.a.aC) {
                    sVar.c(iC2 + 8 + 8);
                    if (i16 == i29) {
                        list2 = null;
                        str10 = o.Z;
                    } else if (i16 == com.anythink.expressad.exoplayer.e.a.a.az) {
                        int i30 = (i15 - 8) - 8;
                        byte[] bArr4 = new byte[i30];
                        sVar.a(bArr4, i13, i30);
                        List listSingletonList2 = Collections.singletonList(bArr4);
                        str10 = o.aa;
                        list2 = listSingletonList2;
                    } else {
                        if (i16 == com.anythink.expressad.exoplayer.e.a.a.aA) {
                            str9 = o.ab;
                        } else if (i16 == com.anythink.expressad.exoplayer.e.a.a.aB) {
                            list2 = null;
                            str10 = o.Z;
                            j = 0;
                            i4 = i14;
                            i6 = i12;
                            cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i2), str10, (String) null, -1, 0, str, -1, (com.anythink.expressad.exoplayer.d.e) null, j, (List<byte[]>) list2);
                            i7 = i15;
                            i5 = iC2;
                        } else {
                            if (i16 != com.anythink.expressad.exoplayer.e.a.a.aC) {
                                throw new IllegalStateException();
                            }
                            cVar.e = 1;
                            str9 = o.ac;
                        }
                        str10 = str9;
                        list2 = null;
                    }
                    j = Long.MAX_VALUE;
                    i4 = i14;
                    i6 = i12;
                    cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i2), str10, (String) null, -1, 0, str, -1, (com.anythink.expressad.exoplayer.d.e) null, j, (List<byte[]>) list2);
                    i7 = i15;
                    i5 = iC2;
                } else {
                    if (i16 == com.anythink.expressad.exoplayer.e.a.a.aS) {
                        cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i2), o.ah, (String) null, (com.anythink.expressad.exoplayer.d.e) null);
                    }
                    i4 = i14;
                    i5 = iC2;
                    i6 = i12;
                    i7 = i15;
                }
            }
            sVar.c(i5 + i7);
            i14 = i4 + 1;
            i12 = i6;
            i13 = 0;
        }
        return cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static j a(a.C0113a c0113a, a.b bVar, long j, com.anythink.expressad.exoplayer.d.e eVar, boolean z, boolean z3) throws t {
        boolean z4;
        long jH;
        int i2;
        a.b bVar2;
        long j2;
        c cVarA;
        long[] jArr;
        long[] jArr2;
        a.C0113a c0113aE = c0113a.e(com.anythink.expressad.exoplayer.e.a.a.J);
        s sVar = c0113aE.d(com.anythink.expressad.exoplayer.e.a.a.X).aV;
        sVar.c(16);
        int i3 = sVar.i();
        int i4 = i3 == c ? 1 : i3 == b ? 2 : (i3 == d || i3 == e || i3 == f || i3 == g) ? 3 : i3 == h ? 4 : -1;
        if (i4 == -1) {
            return null;
        }
        s sVar2 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.T).aV;
        sVar2.c(8);
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar2.i());
        sVar2.d(iA == 0 ? 8 : 16);
        int i5 = sVar2.i();
        sVar2.d(4);
        int iC = sVar2.c();
        int i6 = iA == 0 ? 4 : 8;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i8 >= i6) {
                z4 = true;
                break;
            }
            if (sVar2.a[iC + i8] != -1) {
                z4 = false;
                break;
            }
            i8++;
        }
        long jA = com.anythink.expressad.exoplayer.b.b;
        if (!z4) {
            jH = iA == 0 ? sVar2.h() : sVar2.n();
            if (jH == 0) {
            }
            sVar2.d(16);
            i2 = sVar2.i();
            int i9 = sVar2.i();
            sVar2.d(4);
            int i10 = sVar2.i();
            int i11 = sVar2.i();
            if (i2 != 0 && i9 == 65536 && i10 == -65536 && i11 == 0) {
                i7 = 90;
            } else if (i2 != 0 && i9 == -65536 && i10 == 65536 && i11 == 0) {
                i7 = SubsamplingScaleImageView.ORIENTATION_270;
            } else if (i2 == -65536 && i9 == 0 && i10 == 0 && i11 == -65536) {
                i7 = 180;
            }
            f fVar = new f(i5, jH, i7);
            if (j != com.anythink.expressad.exoplayer.b.b) {
                j2 = fVar.b;
                bVar2 = bVar;
            } else {
                bVar2 = bVar;
                j2 = j;
            }
            s sVar3 = bVar2.aV;
            sVar3.c(8);
            sVar3.d(com.anythink.expressad.exoplayer.e.a.a.a(sVar3.i()) != 0 ? 8 : 16);
            long jH2 = sVar3.h();
            if (j2 != com.anythink.expressad.exoplayer.b.b) {
                jA = af.a(j2, 1000000L, jH2);
            }
            a.C0113a c0113aE2 = c0113aE.e(com.anythink.expressad.exoplayer.e.a.a.K).e(com.anythink.expressad.exoplayer.e.a.a.L);
            s sVar4 = c0113aE.d(com.anythink.expressad.exoplayer.e.a.a.W).aV;
            sVar4.c(8);
            int iA2 = com.anythink.expressad.exoplayer.e.a.a.a(sVar4.i());
            sVar4.d(iA2 != 0 ? 8 : 16);
            long jH3 = sVar4.h();
            sVar4.d(iA2 == 0 ? 4 : 8);
            int iE = sVar4.e();
            StringBuilder sb = new StringBuilder();
            sb.append((char) (((iE >> 10) & 31) + 96));
            sb.append((char) (((iE >> 5) & 31) + 96));
            sb.append((char) ((iE & 31) + 96));
            Pair pairCreate = Pair.create(Long.valueOf(jH3), sb.toString());
            cVarA = a(c0113aE2.d(com.anythink.expressad.exoplayer.e.a.a.Y).aV, fVar.a, fVar.c, (String) pairCreate.second, eVar, z3);
            if (z) {
                Pair<long[], long[]> pairA = a(c0113a.e(com.anythink.expressad.exoplayer.e.a.a.U));
                long[] jArr3 = (long[]) pairA.first;
                jArr2 = (long[]) pairA.second;
                jArr = jArr3;
            } else {
                jArr = null;
                jArr2 = null;
            }
            if (cVarA.c != null) {
                return null;
            }
            return new j(fVar.a, i4, ((Long) pairCreate.first).longValue(), jH2, jA, cVarA.c, cVarA.e, cVarA.b, cVarA.d, jArr, jArr2);
        }
        sVar2.d(i6);
        jH = -9223372036854775807L;
        sVar2.d(16);
        i2 = sVar2.i();
        int i92 = sVar2.i();
        sVar2.d(4);
        int i102 = sVar2.i();
        int i112 = sVar2.i();
        if (i2 != 0) {
            if (i2 != 0) {
                if (i2 == -65536) {
                    i7 = 180;
                }
            }
        }
        f fVar2 = new f(i5, jH, i7);
        if (j != com.anythink.expressad.exoplayer.b.b) {
        }
        s sVar32 = bVar2.aV;
        sVar32.c(8);
        sVar32.d(com.anythink.expressad.exoplayer.e.a.a.a(sVar32.i()) != 0 ? 8 : 16);
        long jH22 = sVar32.h();
        if (j2 != com.anythink.expressad.exoplayer.b.b) {
        }
        a.C0113a c0113aE22 = c0113aE.e(com.anythink.expressad.exoplayer.e.a.a.K).e(com.anythink.expressad.exoplayer.e.a.a.L);
        s sVar42 = c0113aE.d(com.anythink.expressad.exoplayer.e.a.a.W).aV;
        sVar42.c(8);
        int iA22 = com.anythink.expressad.exoplayer.e.a.a.a(sVar42.i());
        sVar42.d(iA22 != 0 ? 8 : 16);
        long jH32 = sVar42.h();
        sVar42.d(iA22 == 0 ? 4 : 8);
        int iE2 = sVar42.e();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) (((iE2 >> 10) & 31) + 96));
        sb2.append((char) (((iE2 >> 5) & 31) + 96));
        sb2.append((char) ((iE2 & 31) + 96));
        Pair pairCreate2 = Pair.create(Long.valueOf(jH32), sb2.toString());
        cVarA = a(c0113aE22.d(com.anythink.expressad.exoplayer.e.a.a.Y).aV, fVar2.a, fVar2.c, (String) pairCreate2.second, eVar, z3);
        if (z) {
        }
        if (cVarA.c != null) {
        }
    }

    private static k a(s sVar, int i2, int i3, String str) {
        int i4;
        int i5;
        int i6 = i2 + 8;
        while (true) {
            byte[] bArr = null;
            if (i6 - i2 >= i3) {
                return null;
            }
            sVar.c(i6);
            int i7 = sVar.i();
            if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.ad) {
                int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar.i());
                sVar.d(1);
                if (iA == 0) {
                    sVar.d(1);
                    i5 = 0;
                    i4 = 0;
                } else {
                    int iD = sVar.d();
                    i4 = iD & 15;
                    i5 = (iD & 240) >> 4;
                }
                boolean z = sVar.d() == 1;
                int iD2 = sVar.d();
                byte[] bArr2 = new byte[16];
                sVar.a(bArr2, 0, 16);
                if (z && iD2 == 0) {
                    int iD3 = sVar.d();
                    bArr = new byte[iD3];
                    sVar.a(bArr, 0, iD3);
                }
                return new k(z, str, iD2, bArr2, i5, i4, bArr);
            }
            i6 += i7;
        }
    }

    public static m a(j jVar, a.C0113a c0113a, com.anythink.expressad.exoplayer.e.i iVar) throws t {
        InterfaceC0114b eVar;
        boolean z;
        int iM;
        int iM2;
        j jVar2;
        String str;
        long[] jArr;
        int[] iArr;
        int i2;
        long[] jArr2;
        int[] iArr2;
        long j;
        String str2;
        int i3;
        String str3;
        int[] iArr3;
        boolean z3;
        long[] jArr3;
        long[] jArr4;
        int[] iArr4;
        int[] iArr5;
        int i4;
        int[] iArr6;
        int[] iArr7;
        int i5;
        a.b bVarD = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.av);
        if (bVarD != null) {
            eVar = new d(bVarD);
        } else {
            a.b bVarD2 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.aw);
            if (bVarD2 == null) {
                throw new t("Track has no sample table size information");
            }
            eVar = new e(bVarD2);
        }
        int iA = eVar.a();
        if (iA == 0) {
            return new m(jVar, new long[0], new int[0], 0, new long[0], new int[0], com.anythink.expressad.exoplayer.b.b);
        }
        a.b bVarD3 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.ax);
        if (bVarD3 == null) {
            bVarD3 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.ay);
            z = true;
        } else {
            z = false;
        }
        s sVar = bVarD3.aV;
        s sVar2 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.au).aV;
        s sVar3 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.ar).aV;
        a.b bVarD4 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.as);
        s sVar4 = null;
        s sVar5 = bVarD4 != null ? bVarD4.aV : null;
        a.b bVarD5 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.at);
        s sVar6 = bVarD5 != null ? bVarD5.aV : null;
        a aVar = new a(sVar2, sVar, z);
        sVar3.c(12);
        int iM3 = sVar3.m() - 1;
        int iM4 = sVar3.m();
        int iM5 = sVar3.m();
        if (sVar6 != null) {
            sVar6.c(12);
            iM = sVar6.m();
        } else {
            iM = 0;
        }
        int iM6 = -1;
        if (sVar5 != null) {
            sVar5.c(12);
            iM2 = sVar5.m();
            if (iM2 > 0) {
                iM6 = sVar5.m() - 1;
                sVar4 = sVar5;
            }
        } else {
            sVar4 = sVar5;
            iM2 = 0;
        }
        long j2 = 0;
        if (eVar.c() && o.w.equals(jVar.h.h) && iM3 == 0 && iM == 0 && iM2 == 0) {
            jVar2 = jVar;
            str = a;
            int i6 = aVar.a;
            long[] jArr5 = new long[i6];
            int[] iArr8 = new int[i6];
            while (aVar.a()) {
                int i7 = aVar.b;
                jArr5[i7] = aVar.d;
                iArr8[i7] = aVar.c;
            }
            com.anythink.expressad.exoplayer.m mVar = jVar2.h;
            d.a aVarA = com.anythink.expressad.exoplayer.e.a.d.a(af.b(mVar.w, mVar.u), jArr5, iArr8, iM5);
            jArr = aVarA.a;
            iArr = aVarA.b;
            i2 = aVarA.c;
            jArr2 = aVarA.d;
            iArr2 = aVarA.e;
            j = aVarA.f;
        } else {
            long[] jArr6 = new long[iA];
            int[] iArr9 = new int[iA];
            int i8 = iM2;
            long[] jArr7 = new long[iA];
            iArr2 = new int[iA];
            int i9 = iM5;
            long j3 = 0;
            long j4 = 0;
            int i10 = iM3;
            int i11 = 0;
            int i12 = 0;
            int iM7 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = i8;
            int iM8 = iM6;
            int i16 = iM;
            int i17 = iM4;
            while (i11 < iA) {
                while (i14 == 0) {
                    com.anythink.expressad.exoplayer.k.a.b(aVar.a());
                    j4 = aVar.d;
                    i14 = aVar.c;
                    i10 = i10;
                    i17 = i17;
                }
                int i18 = i10;
                int i19 = i17;
                if (sVar6 != null) {
                    while (iM7 == 0 && i16 > 0) {
                        iM7 = sVar6.m();
                        i13 = sVar6.i();
                        i16--;
                    }
                    iM7--;
                }
                int i20 = i13;
                jArr6[i11] = j4;
                iArr9[i11] = eVar.b();
                if (iArr9[i11] > i12) {
                    i12 = iArr9[i11];
                }
                InterfaceC0114b interfaceC0114b = eVar;
                long[] jArr8 = jArr6;
                jArr7[i11] = j3 + ((long) i20);
                iArr2[i11] = sVar4 == null ? 1 : 0;
                if (i11 == iM8) {
                    iArr2[i11] = 1;
                    i15--;
                    if (i15 > 0) {
                        iM8 = sVar4.m() - 1;
                    }
                }
                j3 += (long) i9;
                int iM9 = i19 - 1;
                if (iM9 == 0 && i18 > 0) {
                    i18--;
                    iM9 = sVar3.m();
                    i9 = sVar3.i();
                }
                int i21 = iM9;
                j4 += (long) iArr9[i11];
                i14--;
                i11++;
                eVar = interfaceC0114b;
                jArr6 = jArr8;
                i17 = i21;
                i13 = i20;
                i10 = i18;
            }
            int i22 = i10;
            int i23 = i17;
            int i24 = i13;
            long[] jArr9 = jArr6;
            j = j3 + ((long) i24);
            com.anythink.expressad.exoplayer.k.a.a(iM7 == 0);
            while (i16 > 0) {
                com.anythink.expressad.exoplayer.k.a.a(sVar6.m() == 0);
                sVar6.i();
                i16--;
            }
            if (i15 == 0 && i23 == 0) {
                i5 = i14;
                if (i5 == 0 && i22 == 0) {
                    jVar2 = jVar;
                    str = a;
                }
                iArr = iArr9;
                jArr = jArr9;
                jArr2 = jArr7;
                i2 = i12;
            } else {
                i5 = i14;
            }
            StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
            jVar2 = jVar;
            sb.append(jVar2.c);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i15);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i23);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i5);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i22);
            String string = sb.toString();
            str = a;
            Log.w(str, string);
            iArr = iArr9;
            jArr = jArr9;
            jArr2 = jArr7;
            i2 = i12;
        }
        long jA = af.a(j, 1000000L, jVar2.e);
        if (jVar2.j == null || iVar.a()) {
            af.a(jArr2, jVar2.e);
            return new m(jVar, jArr, iArr, i2, jArr2, iArr2, jA);
        }
        long[] jArr10 = jVar2.j;
        if (jArr10.length == 1 && jVar2.d == 1 && jArr2.length >= 2) {
            long j5 = jVar2.k[0];
            str2 = str;
            long jA2 = j5 + af.a(jArr10[0], jVar2.e, jVar2.f);
            int length = jArr2.length - 1;
            i3 = iA;
            if (jArr2[0] <= j5 && j5 < jArr2[af.a(3, 0, length)] && jArr2[af.a(jArr2.length - 3, 0, length)] < jA2 && jA2 <= j) {
                long jA3 = af.a(j5 - jArr2[0], jVar2.h.v, jVar2.e);
                long jA4 = af.a(j - jA2, jVar2.h.v, jVar2.e);
                if ((jA3 != 0 || jA4 != 0) && jA3 <= 2147483647L && jA4 <= 2147483647L) {
                    iVar.b = (int) jA3;
                    iVar.c = (int) jA4;
                    af.a(jArr2, jVar2.e);
                    return new m(jVar, jArr, iArr, i2, jArr2, iArr2, jA);
                }
            }
        } else {
            str2 = str;
            i3 = iA;
        }
        long[] jArr11 = jVar2.j;
        if (jArr11.length == 1 && jArr11[0] == 0) {
            long j6 = jVar2.k[0];
            for (int i25 = 0; i25 < jArr2.length; i25++) {
                jArr2[i25] = af.a(jArr2[i25] - j6, 1000000L, jVar2.e);
            }
            return new m(jVar, jArr, iArr, i2, jArr2, iArr2, af.a(j - j6, 1000000L, jVar2.e));
        }
        boolean z4 = jVar2.d == 1;
        boolean z5 = false;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        while (true) {
            long[] jArr12 = jVar2.j;
            if (i28 >= jArr12.length) {
                break;
            }
            int[] iArr10 = iArr;
            int i29 = i2;
            long j7 = jVar2.k[i28];
            if (j7 != -1) {
                long jA5 = af.a(jArr12[i28], jVar2.e, jVar2.f);
                int iA2 = af.a(jArr2, j7, true, true);
                int iA3 = af.a(jArr2, j7 + jA5, z4, false);
                i26 += iA3 - iA2;
                z5 |= i27 != iA2;
                i27 = iA3;
            }
            i28++;
            iArr = iArr10;
            i2 = i29;
        }
        int[] iArr11 = iArr;
        int i30 = i2;
        boolean z6 = z5 | (i26 != i3);
        long[] jArr13 = z6 ? new long[i26] : jArr;
        int[] iArr12 = z6 ? new int[i26] : iArr11;
        if (z6) {
            i30 = 0;
        }
        int[] iArr13 = z6 ? new int[i26] : iArr2;
        long[] jArr14 = new long[i26];
        int i31 = 0;
        int i32 = 0;
        while (true) {
            long[] jArr15 = jVar2.j;
            if (i32 >= jArr15.length) {
                return new m(jVar, jArr13, iArr12, i30, jArr14, iArr13, af.a(j2, 1000000L, jVar2.e));
            }
            int[] iArr14 = iArr11;
            long j8 = jVar2.k[i32];
            long j9 = jArr15[i32];
            if (j8 != -1) {
                i4 = i32;
                int[] iArr15 = iArr2;
                int[] iArr16 = iArr13;
                long jA6 = af.a(j9, jVar2.e, jVar2.f) + j8;
                int iA4 = af.a(jArr2, j8, true, true);
                int iA5 = af.a(jArr2, jA6, z4, false);
                if (z6) {
                    int i33 = iA5 - iA4;
                    System.arraycopy(jArr, iA4, jArr13, i31, i33);
                    iArr3 = iArr14;
                    System.arraycopy(iArr3, iA4, iArr12, i31, i33);
                    jArr3 = jArr;
                    iArr6 = iArr15;
                    jArr4 = jArr13;
                    iArr7 = iArr16;
                    System.arraycopy(iArr6, iA4, iArr7, i31, i33);
                } else {
                    iArr3 = iArr14;
                    jArr3 = jArr;
                    iArr6 = iArr15;
                    jArr4 = jArr13;
                    iArr7 = iArr16;
                }
                if (iA4 < iA5 && (iArr7[i31] & 1) == 0) {
                    Log.w(str2, "Ignoring edit list: edit does not start with a sync sample.");
                    throw new g();
                }
                String str4 = str2;
                z3 = z4;
                int i34 = i30;
                while (iA4 < iA5) {
                    int[] iArr17 = iArr6;
                    int[] iArr18 = iArr7;
                    int i35 = iA5;
                    String str5 = str4;
                    jArr14[i31] = af.a(j2, 1000000L, jVar2.f) + af.a(jArr2[iA4] - j8, 1000000L, jVar2.e);
                    if (z6 && iArr12[i31] > i34) {
                        i34 = iArr3[iA4];
                    }
                    i31++;
                    iA4++;
                    iArr7 = iArr18;
                    iA5 = i35;
                    str4 = str5;
                    iArr6 = iArr17;
                }
                iArr4 = iArr6;
                iArr5 = iArr7;
                str3 = str4;
                i30 = i34;
            } else {
                str3 = str2;
                iArr3 = iArr14;
                z3 = z4;
                jArr3 = jArr;
                jArr4 = jArr13;
                iArr4 = iArr2;
                iArr5 = iArr13;
                i4 = i32;
            }
            j2 += j9;
            i32 = i4 + 1;
            iArr13 = iArr5;
            iArr11 = iArr3;
            str2 = str3;
            jArr13 = jArr4;
            z4 = z3;
            jArr = jArr3;
            iArr2 = iArr4;
        }
    }

    public static com.anythink.expressad.exoplayer.g.a a(a.b bVar, boolean z) {
        if (z) {
            return null;
        }
        s sVar = bVar.aV;
        sVar.c(8);
        while (sVar.a() >= 8) {
            int iC = sVar.c();
            int i2 = sVar.i();
            if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aG) {
                sVar.c(iC);
                int i3 = iC + i2;
                sVar.d(12);
                while (true) {
                    if (sVar.c() >= i3) {
                        break;
                    }
                    int iC2 = sVar.c();
                    int i4 = sVar.i();
                    if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aH) {
                        sVar.c(iC2);
                        int i5 = iC2 + i4;
                        sVar.d(8);
                        ArrayList arrayList = new ArrayList();
                        while (sVar.c() < i5) {
                            a.InterfaceC0117a interfaceC0117aA = com.anythink.expressad.exoplayer.e.a.f.a(sVar);
                            if (interfaceC0117aA != null) {
                                arrayList.add(interfaceC0117aA);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new com.anythink.expressad.exoplayer.g.a(arrayList);
                        }
                    } else {
                        sVar.d(i4 - 8);
                    }
                }
                return null;
            }
            sVar.d(i2 - 8);
        }
        return null;
    }

    private static com.anythink.expressad.exoplayer.g.a a(s sVar, int i2) {
        sVar.d(12);
        while (sVar.c() < i2) {
            int iC = sVar.c();
            int i3 = sVar.i();
            if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aH) {
                sVar.c(iC);
                int i4 = iC + i3;
                sVar.d(8);
                ArrayList arrayList = new ArrayList();
                while (sVar.c() < i4) {
                    a.InterfaceC0117a interfaceC0117aA = com.anythink.expressad.exoplayer.e.a.f.a(sVar);
                    if (interfaceC0117aA != null) {
                        arrayList.add(interfaceC0117aA);
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new com.anythink.expressad.exoplayer.g.a(arrayList);
            }
            sVar.d(i3 - 8);
        }
        return null;
    }

    private static void a(s sVar, int i2, int i3, int i4, int i5, int i6, com.anythink.expressad.exoplayer.d.e eVar, c cVar, int i7) throws t {
        int i8 = i3;
        com.anythink.expressad.exoplayer.d.e eVarA = eVar;
        sVar.c(i8 + 8 + 8);
        sVar.d(16);
        int iE = sVar.e();
        int iE2 = sVar.e();
        sVar.d(50);
        int iC = sVar.c();
        int iIntValue = i2;
        if (iIntValue == com.anythink.expressad.exoplayer.e.a.a.ae) {
            Pair<Integer, k> pairB = b(sVar, i8, i4);
            if (pairB != null) {
                iIntValue = ((Integer) pairB.first).intValue();
                eVarA = eVarA == null ? null : eVarA.a(((k) pairB.second).b);
                cVar.b[i7] = (k) pairB.second;
            }
            sVar.c(iC);
        }
        com.anythink.expressad.exoplayer.d.e eVar2 = eVarA;
        String str = null;
        boolean z = false;
        List<byte[]> listSingletonList = null;
        float fM = 1.0f;
        byte[] bArrCopyOfRange = null;
        int i9 = -1;
        while (iC - i8 < i4) {
            sVar.c(iC);
            int iC2 = sVar.c();
            int i10 = sVar.i();
            if (i10 == 0 && sVar.c() - i8 == i4) {
                break;
            }
            com.anythink.expressad.exoplayer.k.a.a(i10 > 0, "childAtomSize should be positive");
            int i11 = sVar.i();
            if (i11 == com.anythink.expressad.exoplayer.e.a.a.M) {
                com.anythink.expressad.exoplayer.k.a.b(str == null);
                sVar.c(iC2 + 8);
                com.anythink.expressad.exoplayer.l.a aVarA = com.anythink.expressad.exoplayer.l.a.a(sVar);
                listSingletonList = aVarA.a;
                cVar.d = aVarA.b;
                if (!z) {
                    fM = aVarA.e;
                }
                str = o.h;
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.N) {
                com.anythink.expressad.exoplayer.k.a.b(str == null);
                sVar.c(iC2 + 8);
                com.anythink.expressad.exoplayer.l.d dVarA = com.anythink.expressad.exoplayer.l.d.a(sVar);
                listSingletonList = dVarA.a;
                cVar.d = dVarA.b;
                str = o.i;
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.aR) {
                com.anythink.expressad.exoplayer.k.a.b(str == null);
                str = iIntValue == com.anythink.expressad.exoplayer.e.a.a.aP ? o.j : o.k;
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.l) {
                com.anythink.expressad.exoplayer.k.a.b(str == null);
                str = o.g;
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.O) {
                com.anythink.expressad.exoplayer.k.a.b(str == null);
                Pair<String, byte[]> pairD = d(sVar, iC2);
                String str2 = (String) pairD.first;
                listSingletonList = Collections.singletonList((byte[]) pairD.second);
                str = str2;
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.an) {
                sVar.c(iC2 + 8);
                fM = sVar.m() / sVar.m();
                z = true;
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.aN) {
                int i12 = iC2 + 8;
                while (true) {
                    if (i12 - iC2 >= i10) {
                        bArrCopyOfRange = null;
                        break;
                    }
                    sVar.c(i12);
                    int i13 = sVar.i();
                    if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aO) {
                        bArrCopyOfRange = Arrays.copyOfRange(sVar.a, i12, i13 + i12);
                        break;
                    }
                    i12 += i13;
                }
            } else if (i11 == com.anythink.expressad.exoplayer.e.a.a.aM) {
                int iD = sVar.d();
                sVar.d(3);
                if (iD == 0) {
                    int iD2 = sVar.d();
                    if (iD2 == 0) {
                        i9 = 0;
                    } else if (iD2 == 1) {
                        i9 = 1;
                    } else if (iD2 == 2) {
                        i9 = 2;
                    } else if (iD2 == 3) {
                        i9 = 3;
                    }
                }
            }
            iC += i10;
            i8 = i3;
        }
        if (str == null) {
            return;
        }
        cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i5), str, null, -1, -1, iE, iE2, -1.0f, listSingletonList, i6, fM, bArrCopyOfRange, i9, null, eVar2);
    }

    private static void a(s sVar, int i2, int i3, int i4, int i5, String str, c cVar) {
        sVar.c(i3 + 8 + 8);
        int i6 = com.anythink.expressad.exoplayer.e.a.a.ao;
        String str2 = o.Z;
        List listSingletonList = null;
        long j = Long.MAX_VALUE;
        if (i2 != i6) {
            if (i2 == com.anythink.expressad.exoplayer.e.a.a.az) {
                int i7 = (i4 - 8) - 8;
                byte[] bArr = new byte[i7];
                sVar.a(bArr, 0, i7);
                listSingletonList = Collections.singletonList(bArr);
                str2 = o.aa;
            } else if (i2 == com.anythink.expressad.exoplayer.e.a.a.aA) {
                str2 = o.ab;
            } else if (i2 == com.anythink.expressad.exoplayer.e.a.a.aB) {
                j = 0;
            } else {
                if (i2 != com.anythink.expressad.exoplayer.e.a.a.aC) {
                    throw new IllegalStateException();
                }
                cVar.e = 1;
                str2 = o.ac;
            }
        }
        cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i5), str2, (String) null, -1, 0, str, -1, (com.anythink.expressad.exoplayer.d.e) null, j, (List<byte[]>) listSingletonList);
    }

    private static void a(s sVar, int i2, int i3, int i4, int i5, String str, boolean z, com.anythink.expressad.exoplayer.d.e eVar, c cVar, int i6) {
        int iE;
        int iRound;
        int iM;
        int i7;
        int i8;
        String str2;
        String str3;
        com.anythink.expressad.exoplayer.d.e eVar2;
        int iC;
        com.anythink.expressad.exoplayer.m mVarB;
        int i9 = i3;
        com.anythink.expressad.exoplayer.d.e eVarA = eVar;
        sVar.c(i9 + 8 + 8);
        if (z) {
            iE = sVar.e();
            sVar.d(6);
        } else {
            sVar.d(8);
            iE = 0;
        }
        if (iE == 0 || iE == 1) {
            int iE2 = sVar.e();
            sVar.d(6);
            int iK = sVar.k();
            if (iE == 1) {
                sVar.d(16);
            }
            iRound = iK;
            iM = iE2;
        } else {
            if (iE != 2) {
                return;
            }
            sVar.d(16);
            iRound = (int) Math.round(Double.longBitsToDouble(sVar.j()));
            iM = sVar.m();
            sVar.d(20);
        }
        int iC2 = sVar.c();
        int iIntValue = i2;
        if (iIntValue == com.anythink.expressad.exoplayer.e.a.a.af) {
            Pair<Integer, k> pairB = b(sVar, i9, i4);
            if (pairB != null) {
                iIntValue = ((Integer) pairB.first).intValue();
                eVarA = eVarA == null ? null : eVarA.a(((k) pairB.second).b);
                cVar.b[i6] = (k) pairB.second;
            }
            sVar.c(iC2);
        }
        com.anythink.expressad.exoplayer.d.e eVar3 = eVarA;
        int i10 = com.anythink.expressad.exoplayer.e.a.a.s;
        String str4 = o.w;
        String str5 = iIntValue == i10 ? o.z : iIntValue == com.anythink.expressad.exoplayer.e.a.a.u ? o.A : iIntValue == com.anythink.expressad.exoplayer.e.a.a.w ? o.D : (iIntValue == com.anythink.expressad.exoplayer.e.a.a.x || iIntValue == com.anythink.expressad.exoplayer.e.a.a.y) ? o.E : iIntValue == com.anythink.expressad.exoplayer.e.a.a.z ? o.F : iIntValue == com.anythink.expressad.exoplayer.e.a.a.aD ? o.I : iIntValue == com.anythink.expressad.exoplayer.e.a.a.aE ? o.J : (iIntValue == com.anythink.expressad.exoplayer.e.a.a.q || iIntValue == com.anythink.expressad.exoplayer.e.a.a.r) ? o.w : iIntValue == com.anythink.expressad.exoplayer.e.a.a.o ? o.t : iIntValue == com.anythink.expressad.exoplayer.e.a.a.aT ? o.L : null;
        int iIntValue2 = iM;
        int i11 = iRound;
        int i12 = iC2;
        byte[] bArr = null;
        while (i12 - i9 < i4) {
            sVar.c(i12);
            int i13 = sVar.i();
            com.anythink.expressad.exoplayer.k.a.a(i13 > 0, "childAtomSize should be positive");
            int i14 = sVar.i();
            int i15 = com.anythink.expressad.exoplayer.e.a.a.O;
            if (i14 == i15 || (z && i14 == com.anythink.expressad.exoplayer.e.a.a.p)) {
                i7 = i13;
                i8 = i12;
                str2 = str5;
                str3 = str4;
                eVar2 = eVar3;
                if (i14 != i15) {
                    iC = sVar.c();
                    while (true) {
                        if (iC - i8 >= i7) {
                            iC = -1;
                            break;
                        }
                        sVar.c(iC);
                        int i16 = sVar.i();
                        com.anythink.expressad.exoplayer.k.a.a(i16 > 0, "childAtomSize should be positive");
                        if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.O) {
                            break;
                        } else {
                            iC += i16;
                        }
                    }
                } else {
                    iC = i8;
                }
                if (iC != -1) {
                    Pair<String, byte[]> pairD = d(sVar, iC);
                    String str6 = (String) pairD.first;
                    byte[] bArr2 = (byte[]) pairD.second;
                    if (o.r.equals(str6)) {
                        Pair<Integer, Integer> pairA = com.anythink.expressad.exoplayer.k.d.a(bArr2);
                        int iIntValue3 = ((Integer) pairA.first).intValue();
                        bArr = bArr2;
                        str5 = str6;
                        iIntValue2 = ((Integer) pairA.second).intValue();
                        i11 = iIntValue3;
                    } else {
                        bArr = bArr2;
                        str5 = str6;
                    }
                }
                i12 = i8 + i7;
                i9 = i3;
                eVar3 = eVar2;
                str4 = str3;
            } else {
                if (i14 == com.anythink.expressad.exoplayer.e.a.a.t) {
                    sVar.c(i12 + 8);
                    mVarB = com.anythink.expressad.exoplayer.b.a.a(sVar, Integer.toString(i5), str, eVar3);
                } else if (i14 == com.anythink.expressad.exoplayer.e.a.a.v) {
                    sVar.c(i12 + 8);
                    mVarB = com.anythink.expressad.exoplayer.b.a.b(sVar, Integer.toString(i5), str, eVar3);
                } else if (i14 == com.anythink.expressad.exoplayer.e.a.a.A) {
                    i7 = i13;
                    str2 = str5;
                    str3 = str4;
                    eVar2 = eVar3;
                    i8 = i12;
                    cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i5), str5, null, -1, iIntValue2, i11, null, eVar3, str);
                } else {
                    i7 = i13;
                    i8 = i12;
                    str2 = str5;
                    str3 = str4;
                    eVar2 = eVar3;
                    if (i14 == com.anythink.expressad.exoplayer.e.a.a.aT) {
                        byte[] bArr3 = new byte[i7];
                        sVar.c(i8);
                        sVar.a(bArr3, 0, i7);
                        bArr = bArr3;
                    }
                }
                cVar.c = mVarB;
                i7 = i13;
                i8 = i12;
                str2 = str5;
                str3 = str4;
                eVar2 = eVar3;
            }
            str5 = str2;
            i12 = i8 + i7;
            i9 = i3;
            eVar3 = eVar2;
            str4 = str3;
        }
        String str7 = str5;
        String str8 = str4;
        com.anythink.expressad.exoplayer.d.e eVar4 = eVar3;
        if (cVar.c != null || str7 == null) {
            return;
        }
        cVar.c = com.anythink.expressad.exoplayer.m.a(Integer.toString(i5), str7, (String) null, -1, iIntValue2, i11, str8.equals(str7) ? 2 : -1, (List<byte[]>) (bArr == null ? null : Collections.singletonList(bArr)), eVar4, str);
    }

    private static boolean a(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[af.a(3, 0, length)] && jArr[af.a(jArr.length - 3, 0, length)] < j3 && j3 <= j;
    }

    private static Pair<Integer, k> b(s sVar, int i2, int i3) {
        Pair<Integer, k> pairC;
        int iC = sVar.c();
        while (iC - i2 < i3) {
            sVar.c(iC);
            int i4 = sVar.i();
            com.anythink.expressad.exoplayer.k.a.a(i4 > 0, "childAtomSize should be positive");
            if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aa && (pairC = c(sVar, iC, i4)) != null) {
                return pairC;
            }
            iC += i4;
        }
        return null;
    }

    private static f b(s sVar) {
        boolean z;
        sVar.c(8);
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar.i());
        sVar.d(iA == 0 ? 8 : 16);
        int i2 = sVar.i();
        sVar.d(4);
        int iC = sVar.c();
        int i3 = iA == 0 ? 4 : 8;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= i3) {
                z = true;
                break;
            }
            if (sVar.a[iC + i5] != -1) {
                z = false;
                break;
            }
            i5++;
        }
        long j = com.anythink.expressad.exoplayer.b.b;
        if (z) {
            sVar.d(i3);
        } else {
            long jH = iA == 0 ? sVar.h() : sVar.n();
            if (jH != 0) {
                j = jH;
            }
        }
        sVar.d(16);
        int i6 = sVar.i();
        int i7 = sVar.i();
        sVar.d(4);
        int i8 = sVar.i();
        int i9 = sVar.i();
        if (i6 == 0 && i7 == 65536 && i8 == -65536 && i9 == 0) {
            i4 = 90;
        } else if (i6 == 0 && i7 == -65536 && i8 == 65536 && i9 == 0) {
            i4 = SubsamplingScaleImageView.ORIENTATION_270;
        } else if (i6 == -65536 && i7 == 0 && i8 == 0 && i9 == -65536) {
            i4 = 180;
        }
        return new f(i2, j, i4);
    }

    private static com.anythink.expressad.exoplayer.g.a b(s sVar, int i2) {
        sVar.d(8);
        ArrayList arrayList = new ArrayList();
        while (sVar.c() < i2) {
            a.InterfaceC0117a interfaceC0117aA = com.anythink.expressad.exoplayer.e.a.f.a(sVar);
            if (interfaceC0117aA != null) {
                arrayList.add(interfaceC0117aA);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.anythink.expressad.exoplayer.g.a(arrayList);
    }

    private static float c(s sVar, int i2) {
        sVar.c(i2 + 8);
        return sVar.m() / sVar.m();
    }

    private static int c(s sVar) {
        sVar.c(16);
        int i2 = sVar.i();
        if (i2 == c) {
            return 1;
        }
        if (i2 == b) {
            return 2;
        }
        if (i2 == d || i2 == e || i2 == f || i2 == g) {
            return 3;
        }
        return i2 == h ? 4 : -1;
    }

    private static Pair<Integer, k> c(s sVar, int i2, int i3) {
        int i4 = i2 + 8;
        String strO = null;
        Integer numValueOf = null;
        int i5 = -1;
        int i6 = 0;
        while (i4 - i2 < i3) {
            sVar.c(i4);
            int i7 = sVar.i();
            int i8 = sVar.i();
            if (i8 == com.anythink.expressad.exoplayer.e.a.a.ag) {
                numValueOf = Integer.valueOf(sVar.i());
            } else if (i8 == com.anythink.expressad.exoplayer.e.a.a.ab) {
                sVar.d(4);
                strO = sVar.o();
            } else if (i8 == com.anythink.expressad.exoplayer.e.a.a.ac) {
                i5 = i4;
                i6 = i7;
            }
            i4 += i7;
        }
        if (!com.anythink.expressad.exoplayer.b.bd.equals(strO) && !com.anythink.expressad.exoplayer.b.be.equals(strO) && !com.anythink.expressad.exoplayer.b.bf.equals(strO) && !com.anythink.expressad.exoplayer.b.bg.equals(strO)) {
            return null;
        }
        com.anythink.expressad.exoplayer.k.a.a(numValueOf != null, "frma atom is mandatory");
        com.anythink.expressad.exoplayer.k.a.a(i5 != -1, "schi atom is mandatory");
        k kVarA = a(sVar, i5, i6, strO);
        com.anythink.expressad.exoplayer.k.a.a(kVarA != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, kVarA);
    }

    private static Pair<Long, String> d(s sVar) {
        sVar.c(8);
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar.i());
        sVar.d(iA == 0 ? 8 : 16);
        long jH = sVar.h();
        sVar.d(iA == 0 ? 4 : 8);
        int iE = sVar.e();
        StringBuilder sb = new StringBuilder();
        sb.append((char) (((iE >> 10) & 31) + 96));
        sb.append((char) (((iE >> 5) & 31) + 96));
        sb.append((char) ((iE & 31) + 96));
        return Pair.create(Long.valueOf(jH), sb.toString());
    }

    private static Pair<String, byte[]> d(s sVar, int i2) {
        sVar.c(i2 + 8 + 4);
        sVar.d(1);
        e(sVar);
        sVar.d(2);
        int iD = sVar.d();
        if ((iD & 128) != 0) {
            sVar.d(2);
        }
        if ((iD & 64) != 0) {
            sVar.d(sVar.e());
        }
        if ((iD & 32) != 0) {
            sVar.d(2);
        }
        sVar.d(1);
        e(sVar);
        String strA = o.a(sVar.d());
        if (o.t.equals(strA) || o.D.equals(strA) || o.E.equals(strA)) {
            return Pair.create(strA, null);
        }
        sVar.d(12);
        sVar.d(1);
        int iE = e(sVar);
        byte[] bArr = new byte[iE];
        sVar.a(bArr, 0, iE);
        return Pair.create(strA, bArr);
    }

    private static byte[] d(s sVar, int i2, int i3) {
        int i4 = i2 + 8;
        while (i4 - i2 < i3) {
            sVar.c(i4);
            int i5 = sVar.i();
            if (sVar.i() == com.anythink.expressad.exoplayer.e.a.a.aO) {
                return Arrays.copyOfRange(sVar.a, i4, i5 + i4);
            }
            i4 += i5;
        }
        return null;
    }

    private static int e(s sVar) {
        int iD = sVar.d();
        int i2 = iD & 127;
        while ((iD & 128) == 128) {
            iD = sVar.d();
            i2 = (i2 << 7) | (iD & 127);
        }
        return i2;
    }
}
