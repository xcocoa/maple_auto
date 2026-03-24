package com.anythink.expressad.exoplayer.b;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.anythink.expressad.exoplayer.k.af;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Method;
import javax.mail.UIDFolder;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private static final int a = 1;
    private static final int b = 2;
    private static final int c = 3;
    private static final long d = 5000000;
    private static final long e = 5000000;
    private static final long f = 200;
    private static final int g = 10;
    private static final int h = 30000;
    private static final int i = 500000;
    private long A;
    private long B;
    private int C;
    private int D;
    private long E;
    private long F;
    private long G;
    private long H;
    private final a j;
    private final long[] k;
    private AudioTrack l;
    private int m;
    private int n;
    private i o;
    private int p;
    private boolean q;
    private long r;
    private long s;
    private long t;
    private Method u;
    private long v;
    private boolean w;
    private boolean x;
    private long y;
    private long z;

    public interface a {
        void a(int i, long j);

        void a(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j, long j2, long j3, long j4);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public j(a aVar) {
        this.j = (a) com.anythink.expressad.exoplayer.k.a.a(aVar);
        if (af.a >= 18) {
            try {
                this.u = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.k = new long[10];
    }

    private void a(long j, long j2) {
        if (this.o.a(j)) {
            long jF = this.o.f();
            long jG = this.o.g();
            if (Math.abs(jF - j) > 5000000) {
                this.j.b(jG, jF, j, j2);
                this.o.a();
            } else if (Math.abs(g(jG) - j2) <= 5000000) {
                this.o.b();
            } else {
                this.j.a(jG, jF, j, j2);
                this.o.a();
            }
        }
    }

    private static boolean a(int i2) {
        if (af.a < 23) {
            return i2 == 5 || i2 == 6;
        }
        return false;
    }

    private void e() {
        long jH = h();
        if (jH == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.t >= 30000) {
            long[] jArr = this.k;
            int i2 = this.C;
            jArr[i2] = jH - jNanoTime;
            this.C = (i2 + 1) % 10;
            int i3 = this.D;
            if (i3 < 10) {
                this.D = i3 + 1;
            }
            this.t = jNanoTime;
            this.s = 0L;
            int i4 = 0;
            while (true) {
                int i5 = this.D;
                if (i4 >= i5) {
                    break;
                }
                this.s += this.k[i4] / ((long) i5);
                i4++;
            }
        }
        if (this.q) {
            return;
        }
        if (this.o.a(jNanoTime)) {
            long jF = this.o.f();
            long jG = this.o.g();
            if (Math.abs(jF - jNanoTime) > 5000000) {
                this.j.b(jG, jF, jNanoTime, jH);
            } else if (Math.abs(g(jG) - jH) > 5000000) {
                this.j.a(jG, jF, jNanoTime, jH);
            } else {
                this.o.b();
            }
            this.o.a();
        }
        f(jNanoTime);
    }

    private void f() {
        this.s = 0L;
        this.D = 0;
        this.C = 0;
        this.t = 0L;
    }

    private void f(long j) {
        Method method;
        if (!this.x || (method = this.u) == null || j - this.y < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) method.invoke(this.l, null)).intValue()) * 1000) - this.r;
            this.v = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.v = jMax;
            if (jMax > 5000000) {
                this.j.a(jMax);
                this.v = 0L;
            }
        } catch (Exception unused) {
            this.u = null;
        }
        this.y = j;
    }

    private long g(long j) {
        return (j * 1000000) / ((long) this.p);
    }

    private boolean g() {
        return this.q && this.l.getPlayState() == 2 && i() == 0;
    }

    private long h() {
        return g(i());
    }

    private long i() {
        if (this.E != com.anythink.expressad.exoplayer.b.b) {
            return Math.min(this.H, this.G + ((((SystemClock.elapsedRealtime() * 1000) - this.E) * ((long) this.p)) / 1000000));
        }
        int playState = this.l.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = UIDFolder.MAXUID & ((long) this.l.getPlaybackHeadPosition());
        if (this.q) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.B = this.z;
            }
            playbackHeadPosition += this.B;
        }
        if (af.a <= 28) {
            if (playbackHeadPosition == 0 && this.z > 0 && playState == 3) {
                if (this.F == com.anythink.expressad.exoplayer.b.b) {
                    this.F = SystemClock.elapsedRealtime();
                }
                return this.z;
            }
            this.F = com.anythink.expressad.exoplayer.b.b;
        }
        if (this.z > playbackHeadPosition) {
            this.A++;
        }
        this.z = playbackHeadPosition;
        return playbackHeadPosition + (this.A << 32);
    }

    public final long a(boolean z) {
        if (this.l.getPlayState() == 3) {
            long jH = h();
            if (jH != 0) {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - this.t >= 30000) {
                    long[] jArr = this.k;
                    int i2 = this.C;
                    jArr[i2] = jH - jNanoTime;
                    this.C = (i2 + 1) % 10;
                    int i3 = this.D;
                    if (i3 < 10) {
                        this.D = i3 + 1;
                    }
                    this.t = jNanoTime;
                    this.s = 0L;
                    int i4 = 0;
                    while (true) {
                        int i5 = this.D;
                        if (i4 >= i5) {
                            break;
                        }
                        this.s += this.k[i4] / ((long) i5);
                        i4++;
                    }
                }
                if (!this.q) {
                    if (this.o.a(jNanoTime)) {
                        long jF = this.o.f();
                        long jG = this.o.g();
                        if (Math.abs(jF - jNanoTime) > 5000000) {
                            this.j.b(jG, jF, jNanoTime, jH);
                        } else if (Math.abs(g(jG) - jH) > 5000000) {
                            this.j.a(jG, jF, jNanoTime, jH);
                        } else {
                            this.o.b();
                        }
                        this.o.a();
                    }
                    f(jNanoTime);
                }
            }
        }
        long jNanoTime2 = System.nanoTime() / 1000;
        if (this.o.c()) {
            long jG2 = g(this.o.g());
            return !this.o.d() ? jG2 : jG2 + (jNanoTime2 - this.o.f());
        }
        long jH2 = this.D == 0 ? h() : this.s + jNanoTime2;
        return !z ? jH2 - this.v : jH2;
    }

    public final void a() {
        this.o.e();
    }

    public final void a(AudioTrack audioTrack, int i2, int i3, int i4) {
        this.l = audioTrack;
        this.m = i3;
        this.n = i4;
        this.o = new i(audioTrack);
        this.p = audioTrack.getSampleRate();
        this.q = af.a < 23 && (i2 == 5 || i2 == 6);
        boolean zB = af.b(i2);
        this.x = zB;
        this.r = zB ? g(i4 / i3) : -9223372036854775807L;
        this.z = 0L;
        this.A = 0L;
        this.B = 0L;
        this.w = false;
        this.E = com.anythink.expressad.exoplayer.b.b;
        this.F = com.anythink.expressad.exoplayer.b.b;
        this.v = 0L;
    }

    public final boolean a(long j) {
        a aVar;
        int playState = this.l.getPlayState();
        if (this.q) {
            if (playState == 2) {
                this.w = false;
                return false;
            }
            if (playState == 1 && i() == 0) {
                return false;
            }
        }
        boolean z = this.w;
        boolean zE = e(j);
        this.w = zE;
        if (z && !zE && playState != 1 && (aVar = this.j) != null) {
            aVar.a(this.n, com.anythink.expressad.exoplayer.b.a(this.r));
        }
        return true;
    }

    public final int b(long j) {
        return this.n - ((int) (j - (i() * ((long) this.m))));
    }

    public final boolean b() {
        return this.l.getPlayState() == 3;
    }

    public final boolean c() {
        f();
        if (this.E != com.anythink.expressad.exoplayer.b.b) {
            return false;
        }
        this.o.e();
        return true;
    }

    public final boolean c(long j) {
        return this.F != com.anythink.expressad.exoplayer.b.b && j > 0 && SystemClock.elapsedRealtime() - this.F >= f;
    }

    public final void d() {
        f();
        this.l = null;
        this.o = null;
    }

    public final void d(long j) {
        this.G = i();
        this.E = SystemClock.elapsedRealtime() * 1000;
        this.H = j;
    }

    public final boolean e(long j) {
        return j > i() || g();
    }
}
