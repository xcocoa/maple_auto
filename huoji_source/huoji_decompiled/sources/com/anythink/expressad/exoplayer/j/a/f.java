package com.anythink.expressad.exoplayer.j.a;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.j.a.a;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.v;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final int a = 131072;

    public static class a {
        public volatile long a;
        public volatile long b;
        public volatile long c = -1;

        private long a() {
            return this.a + this.b;
        }
    }

    private f() {
    }

    private static long a(com.anythink.expressad.exoplayer.j.k kVar, long j, long j2, com.anythink.expressad.exoplayer.j.h hVar, byte[] bArr, v vVar, a aVar) {
        com.anythink.expressad.exoplayer.j.k kVar2 = kVar;
        while (true) {
            if (vVar != null) {
                vVar.b();
            }
            try {
                try {
                    if (Thread.interrupted()) {
                        throw new InterruptedException();
                    }
                    com.anythink.expressad.exoplayer.j.k kVar3 = new com.anythink.expressad.exoplayer.j.k(kVar2.c, kVar2.d, j, (kVar2.f + j) - kVar2.e, -1L, kVar2.h, kVar2.i | 2);
                    try {
                        long jA = hVar.a(kVar3);
                        if (aVar.c == -1 && jA != -1) {
                            aVar.c = kVar3.e + jA;
                        }
                        long j3 = 0;
                        while (true) {
                            if (j3 == j2) {
                                break;
                            }
                            if (Thread.interrupted()) {
                                throw new InterruptedException();
                            }
                            int iA = hVar.a(bArr, 0, j2 != -1 ? (int) Math.min(bArr.length, j2 - j3) : bArr.length);
                            if (iA != -1) {
                                long j4 = iA;
                                j3 += j4;
                                aVar.b += j4;
                            } else if (aVar.c == -1) {
                                aVar.c = kVar3.e + j3;
                            }
                        }
                        return j3;
                    } catch (v.a unused) {
                        kVar2 = kVar3;
                    }
                } catch (v.a unused2) {
                }
                af.a(hVar);
            } finally {
                af.a(hVar);
            }
        }
    }

    private static String a(Uri uri) {
        return uri.toString();
    }

    public static String a(com.anythink.expressad.exoplayer.j.k kVar) {
        String str = kVar.h;
        return str != null ? str : kVar.c.toString();
    }

    private static void a(com.anythink.expressad.exoplayer.j.a.a aVar, String str) {
        Iterator<e> it = aVar.a(str).iterator();
        while (it.hasNext()) {
            try {
                aVar.b(it.next());
            } catch (a.C0126a unused) {
            }
        }
    }

    private static void a(com.anythink.expressad.exoplayer.j.k kVar, com.anythink.expressad.exoplayer.j.a.a aVar, c cVar, byte[] bArr, v vVar, @Nullable a aVar2, @Nullable AtomicBoolean atomicBoolean) throws InterruptedException {
        a aVar3;
        String str;
        long j;
        long j2;
        com.anythink.expressad.exoplayer.k.a.a(cVar);
        com.anythink.expressad.exoplayer.k.a.a(bArr);
        long j3 = 0;
        if (aVar2 != null) {
            String strA = a(kVar);
            long j4 = kVar.e;
            long jB = kVar.g;
            if (jB == -1) {
                jB = aVar.b(strA);
            }
            aVar2.c = jB;
            aVar2.a = 0L;
            aVar2.b = 0L;
            long j5 = j4;
            long j6 = jB;
            while (j6 != 0) {
                long jB2 = aVar.b(strA, j5, j6 != -1 ? j6 : Long.MAX_VALUE);
                if (jB2 <= 0) {
                    jB2 = -jB2;
                    if (jB2 == Long.MAX_VALUE) {
                        break;
                    }
                } else {
                    aVar2.a += jB2;
                }
                j5 += jB2;
                if (j6 == -1) {
                    jB2 = 0;
                }
                j6 -= jB2;
            }
            aVar3 = aVar2;
        } else {
            aVar3 = new a();
        }
        String strA2 = a(kVar);
        long j7 = kVar.e;
        long jB3 = kVar.g;
        if (jB3 == -1) {
            jB3 = aVar.b(strA2);
        }
        long j8 = j7;
        long j9 = jB3;
        while (j9 != j3) {
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            long jB4 = aVar.b(strA2, j8, j9 != -1 ? j9 : Long.MAX_VALUE);
            if (jB4 <= j3) {
                long j10 = -jB4;
                str = strA2;
                j = j3;
                if (a(kVar, j8, j10, cVar, bArr, vVar, aVar3) < j10) {
                    return;
                } else {
                    j2 = j10;
                }
            } else {
                str = strA2;
                j = j3;
                j2 = jB4;
            }
            j8 += j2;
            if (j9 == -1) {
                j2 = j;
            }
            j9 -= j2;
            strA2 = str;
            j3 = j;
        }
    }

    private static void a(com.anythink.expressad.exoplayer.j.k kVar, com.anythink.expressad.exoplayer.j.a.a aVar, a aVar2) {
        String strA = a(kVar);
        long j = kVar.e;
        long jB = kVar.g;
        if (jB == -1) {
            jB = aVar.b(strA);
        }
        aVar2.c = jB;
        aVar2.a = 0L;
        aVar2.b = 0L;
        long j2 = j;
        long j3 = jB;
        while (j3 != 0) {
            long jB2 = aVar.b(strA, j2, j3 != -1 ? j3 : Long.MAX_VALUE);
            if (jB2 > 0) {
                aVar2.a += jB2;
            } else {
                jB2 = -jB2;
                if (jB2 == Long.MAX_VALUE) {
                    return;
                }
            }
            j2 += jB2;
            if (j3 == -1) {
                jB2 = 0;
            }
            j3 -= jB2;
        }
    }

    private static void a(com.anythink.expressad.exoplayer.j.k kVar, com.anythink.expressad.exoplayer.j.a.a aVar, com.anythink.expressad.exoplayer.j.h hVar, @Nullable a aVar2, @Nullable AtomicBoolean atomicBoolean) throws InterruptedException {
        a aVar3;
        String str;
        long j;
        long j2;
        c cVar = new c(aVar, hVar);
        byte[] bArr = new byte[131072];
        com.anythink.expressad.exoplayer.k.a.a(cVar);
        com.anythink.expressad.exoplayer.k.a.a(bArr);
        long j3 = 0;
        if (aVar2 != null) {
            String strA = a(kVar);
            long j4 = kVar.e;
            long jB = kVar.g;
            if (jB == -1) {
                jB = aVar.b(strA);
            }
            aVar2.c = jB;
            aVar2.a = 0L;
            aVar2.b = 0L;
            long j5 = j4;
            long j6 = jB;
            while (j6 != 0) {
                String str2 = strA;
                long jB2 = aVar.b(strA, j5, j6 != -1 ? j6 : Long.MAX_VALUE);
                if (jB2 <= 0) {
                    jB2 = -jB2;
                    if (jB2 == Long.MAX_VALUE) {
                        break;
                    }
                } else {
                    aVar2.a += jB2;
                }
                j5 += jB2;
                if (j6 == -1) {
                    jB2 = 0;
                }
                j6 -= jB2;
                strA = str2;
            }
            aVar3 = aVar2;
        } else {
            aVar3 = new a();
        }
        String strA2 = a(kVar);
        long j7 = kVar.e;
        long jB3 = kVar.g;
        if (jB3 == -1) {
            jB3 = aVar.b(strA2);
        }
        long j8 = j7;
        long j9 = jB3;
        while (j9 != j3) {
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            long jB4 = aVar.b(strA2, j8, j9 != -1 ? j9 : Long.MAX_VALUE);
            if (jB4 <= j3) {
                long j10 = -jB4;
                str = strA2;
                j = j3;
                if (a(kVar, j8, j10, cVar, bArr, (v) null, aVar3) < j10) {
                    return;
                } else {
                    j2 = j10;
                }
            } else {
                str = strA2;
                j = j3;
                j2 = jB4;
            }
            j8 += j2;
            if (j9 == -1) {
                j2 = j;
            }
            j9 -= j2;
            strA2 = str;
            j3 = j;
        }
    }
}
