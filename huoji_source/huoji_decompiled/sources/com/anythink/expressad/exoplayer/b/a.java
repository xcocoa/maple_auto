package com.anythink.expressad.exoplayer.b;

import com.anythink.expressad.foundation.h.m;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = 16;
    public static final int b = 10;
    private static final int c = 256;
    private static final int d = 1536;
    private static final int[] e = {1, 2, 3, 6};
    private static final int[] f = {48000, 44100, 32000};
    private static final int[] g = {24000, 22050, 16000};
    private static final int[] h = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] i = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, m.a.a, 512, 576, 640};
    private static final int[] j = {69, 87, 104, com.anythink.expressad.video.module.a.a.L, 139, 174, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.b.a$a, reason: collision with other inner class name */
    public static final class C0108a {
        public static final int a = -1;
        public static final int b = 0;
        public static final int c = 1;
        public static final int d = 2;
        public final String e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;

        /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.b.a$a$a, reason: collision with other inner class name */
        @Retention(RetentionPolicy.SOURCE)
        public @interface InterfaceC0109a {
        }

        private C0108a(String str, int i, int i2, int i3, int i4, int i5) {
            this.e = str;
            this.f = i;
            this.h = i2;
            this.g = i3;
            this.i = i4;
            this.j = i5;
        }

        public /* synthetic */ C0108a(String str, int i, int i2, int i3, int i4, int i5, byte b2) {
            this(str, i, i2, i3, i4, i5);
        }
    }

    private a() {
    }

    public static int a() {
        return d;
    }

    private static int a(int i2, int i3) {
        int i4 = i3 / 2;
        if (i2 < 0) {
            return -1;
        }
        int[] iArr = f;
        if (i2 >= iArr.length || i3 < 0) {
            return -1;
        }
        int[] iArr2 = j;
        if (i4 >= iArr2.length) {
            return -1;
        }
        int i5 = iArr[i2];
        if (i5 == 44100) {
            return (iArr2[i4] + (i3 % 2)) * 2;
        }
        int i6 = i[i4];
        return i5 == 32000 ? i6 * 6 : i6 * 4;
    }

    public static int a(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? e[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] : 6) * 256;
    }

    public static int a(ByteBuffer byteBuffer, int i2) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i2) + ((byteBuffer.get((byteBuffer.position() + i2) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    private static int a(byte[] bArr) {
        if (bArr.length < 5) {
            return -1;
        }
        return a((bArr[4] & 192) >> 6, bArr[4] & 63);
    }

    private static C0108a a(com.anythink.expressad.exoplayer.k.r rVar) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int iC;
        int i7;
        int i8;
        int i9;
        int iB = rVar.b();
        rVar.b(40);
        boolean z = rVar.c(5) == 16;
        rVar.a(iB);
        int i10 = -1;
        if (z) {
            rVar.b(16);
            int iC2 = rVar.c(2);
            if (iC2 == 0) {
                i10 = 0;
            } else if (iC2 == 1) {
                i10 = 1;
            } else if (iC2 == 2) {
                i10 = 2;
            }
            rVar.b(3);
            int iC3 = (rVar.c(11) + 1) * 2;
            int iC4 = rVar.c(2);
            if (iC4 == 3) {
                i8 = g[rVar.c(2)];
                iC = 3;
                i7 = 6;
            } else {
                iC = rVar.c(2);
                i7 = e[iC];
                i8 = f[iC4];
            }
            int i11 = i7 * 256;
            int iC5 = rVar.c(3);
            boolean zD = rVar.d();
            int i12 = h[iC5] + (zD ? 1 : 0);
            rVar.b(10);
            if (rVar.d()) {
                rVar.b(8);
            }
            if (iC5 == 0) {
                rVar.b(5);
                if (rVar.d()) {
                    rVar.b(8);
                }
            }
            if (i10 == 1 && rVar.d()) {
                rVar.b(16);
            }
            if (rVar.d()) {
                if (iC5 > 2) {
                    rVar.b(2);
                }
                if ((iC5 & 1) != 0 && iC5 > 2) {
                    rVar.b(6);
                }
                if ((iC5 & 4) != 0) {
                    rVar.b(6);
                }
                if (zD && rVar.d()) {
                    rVar.b(5);
                }
                if (i10 == 0) {
                    if (rVar.d()) {
                        rVar.b(6);
                    }
                    if (iC5 == 0 && rVar.d()) {
                        rVar.b(6);
                    }
                    if (rVar.d()) {
                        rVar.b(6);
                    }
                    int iC6 = rVar.c(2);
                    if (iC6 == 1) {
                        rVar.b(5);
                    } else if (iC6 == 2) {
                        rVar.b(12);
                    } else if (iC6 == 3) {
                        int iC7 = rVar.c(5);
                        if (rVar.d()) {
                            rVar.b(5);
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                rVar.b(4);
                            }
                            if (rVar.d()) {
                                if (rVar.d()) {
                                    rVar.b(4);
                                }
                                if (rVar.d()) {
                                    rVar.b(4);
                                }
                            }
                        }
                        if (rVar.d()) {
                            rVar.b(5);
                            if (rVar.d()) {
                                rVar.b(7);
                                if (rVar.d()) {
                                    rVar.b(8);
                                }
                            }
                        }
                        rVar.b((iC7 + 2) * 8);
                        rVar.e();
                    }
                    if (iC5 < 2) {
                        if (rVar.d()) {
                            rVar.b(14);
                        }
                        if (iC5 == 0 && rVar.d()) {
                            rVar.b(14);
                        }
                    }
                    if (rVar.d()) {
                        if (iC == 0) {
                            rVar.b(5);
                        } else {
                            for (int i13 = 0; i13 < i7; i13++) {
                                if (rVar.d()) {
                                    rVar.b(5);
                                }
                            }
                        }
                    }
                }
            }
            if (rVar.d()) {
                rVar.b(5);
                if (iC5 == 2) {
                    rVar.b(4);
                }
                if (iC5 >= 6) {
                    rVar.b(2);
                }
                if (rVar.d()) {
                    rVar.b(8);
                }
                if (iC5 == 0 && rVar.d()) {
                    rVar.b(8);
                }
                i9 = 3;
                if (iC4 < 3) {
                    rVar.c();
                }
            } else {
                i9 = 3;
            }
            if (i10 == 0 && iC != i9) {
                rVar.c();
            }
            if (i10 == 2 && (iC == i9 || rVar.d())) {
                rVar.b(6);
            }
            str = (rVar.d() && rVar.c(6) == 1 && rVar.c(8) == 1) ? com.anythink.expressad.exoplayer.k.o.B : com.anythink.expressad.exoplayer.k.o.A;
            i5 = i10;
            i2 = iC3;
            i3 = i8;
            i6 = i11;
            i4 = i12;
        } else {
            rVar.b(32);
            int iC8 = rVar.c(2);
            int iA = a(iC8, rVar.c(6));
            rVar.b(8);
            int iC9 = rVar.c(3);
            if ((iC9 & 1) != 0 && iC9 != 1) {
                rVar.b(2);
            }
            if ((iC9 & 4) != 0) {
                rVar.b(2);
            }
            if (iC9 == 2) {
                rVar.b(2);
            }
            int i14 = f[iC8];
            int i15 = h[iC9] + (rVar.d() ? 1 : 0);
            str = com.anythink.expressad.exoplayer.k.o.z;
            i2 = iA;
            i3 = i14;
            i4 = i15;
            i5 = -1;
            i6 = d;
        }
        return new C0108a(str, i5, i4, i3, i2, i6, (byte) 0);
    }

    public static com.anythink.expressad.exoplayer.m a(com.anythink.expressad.exoplayer.k.s sVar, String str, String str2, com.anythink.expressad.exoplayer.d.e eVar) {
        int i2 = f[(sVar.d() & 192) >> 6];
        int iD = sVar.d();
        int i3 = h[(iD & 56) >> 3];
        if ((iD & 4) != 0) {
            i3++;
        }
        return com.anythink.expressad.exoplayer.m.a(str, com.anythink.expressad.exoplayer.k.o.z, null, -1, i3, i2, null, eVar, str2);
    }

    public static int b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i2 = iPosition; i2 <= iLimit; i2++) {
            if ((byteBuffer.getInt(i2 + 4) & (-16777217)) == -1167101192) {
                return i2 - iPosition;
            }
        }
        return -1;
    }

    private static int b(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            return 40 << ((bArr[(bArr[7] & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
        }
        return 0;
    }

    public static com.anythink.expressad.exoplayer.m b(com.anythink.expressad.exoplayer.k.s sVar, String str, String str2, com.anythink.expressad.exoplayer.d.e eVar) {
        sVar.d(2);
        int i2 = f[(sVar.d() & 192) >> 6];
        int iD = sVar.d();
        int i3 = h[(iD & 14) >> 1];
        if ((iD & 1) != 0) {
            i3++;
        }
        if (((sVar.d() & 30) >> 1) > 0 && (2 & sVar.d()) != 0) {
            i3 += 2;
        }
        return com.anythink.expressad.exoplayer.m.a(str, (sVar.a() <= 0 || (sVar.d() & 1) == 0) ? com.anythink.expressad.exoplayer.k.o.A : com.anythink.expressad.exoplayer.k.o.B, null, -1, i3, i2, null, eVar, str2);
    }
}
