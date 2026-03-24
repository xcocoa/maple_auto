package com.anythink.expressad.exoplayer.b;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.af;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final int e = 4;
    private static final int f = 5000;
    private static final int g = 10000000;
    private static final int h = 500000;
    private static final int i = 500000;

    @Nullable
    private final a j;
    private int k;
    private long l;
    private long m;
    private long n;
    private long o;

    @TargetApi(19)
    public static final class a {
        private final AudioTrack a;
        private final AudioTimestamp b = new AudioTimestamp();
        private long c;
        private long d;
        private long e;

        public a(AudioTrack audioTrack) {
            this.a = audioTrack;
        }

        public final boolean a() {
            boolean timestamp = this.a.getTimestamp(this.b);
            if (timestamp) {
                long j = this.b.framePosition;
                if (this.d > j) {
                    this.c++;
                }
                this.d = j;
                this.e = j + (this.c << 32);
            }
            return timestamp;
        }

        public final long b() {
            return this.b.nanoTime / 1000;
        }

        public final long c() {
            return this.e;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    public i(AudioTrack audioTrack) {
        if (af.a >= 19) {
            this.j = new a(audioTrack);
            e();
        } else {
            this.j = null;
            a(3);
        }
    }

    private void a(int i2) {
        this.k = i2;
        long j = com.anythink.expressad.exoplayer.f.a;
        if (i2 == 0) {
            this.n = 0L;
            this.o = -1L;
            this.l = System.nanoTime() / 1000;
        } else if (i2 == 1) {
            this.m = com.anythink.expressad.exoplayer.f.a;
            return;
        } else if (i2 == 2 || i2 == 3) {
            j = 10000000;
        } else {
            if (i2 != 4) {
                throw new IllegalStateException();
            }
            j = 500000;
        }
        this.m = j;
    }

    public final void a() {
        a(4);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(long j) {
        a aVar = this.j;
        if (aVar == null || j - this.n < this.m) {
            return false;
        }
        this.n = j;
        boolean zA = aVar.a();
        int i2 = this.k;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zA) {
                        e();
                    }
                } else if (!zA) {
                }
            } else if (zA) {
                if (this.j.c() > this.o) {
                    a(2);
                }
            }
        } else if (zA) {
            if (this.j.b() < this.l) {
                return false;
            }
            this.o = this.j.c();
            a(1);
        } else if (j - this.l > 500000) {
            a(3);
        }
        return zA;
    }

    public final void b() {
        if (this.k == 4) {
            e();
        }
    }

    public final boolean c() {
        int i2 = this.k;
        return i2 == 1 || i2 == 2;
    }

    public final boolean d() {
        return this.k == 2;
    }

    public final void e() {
        if (this.j != null) {
            a(0);
        }
    }

    public final long f() {
        a aVar = this.j;
        return aVar != null ? aVar.b() : com.anythink.expressad.exoplayer.b.b;
    }

    public final long g() {
        a aVar = this.j;
        if (aVar != null) {
            return aVar.c();
        }
        return -1L;
    }
}
