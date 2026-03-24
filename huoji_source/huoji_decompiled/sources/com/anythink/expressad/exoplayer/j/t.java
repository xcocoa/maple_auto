package com.anythink.expressad.exoplayer.j;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.ad;
import com.anythink.expressad.exoplayer.k.af;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class t implements u {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    private final ExecutorService e;
    private b<? extends c> f;
    private IOException g;

    public interface a<T extends c> {
        int a(T t, long j, long j2, IOException iOException);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    @SuppressLint({"HandlerLeak"})
    public final class b<T extends c> extends Handler implements Runnable {
        private static final String c = "LoadTask";
        private static final int d = 0;
        private static final int e = 1;
        private static final int f = 2;
        private static final int g = 3;
        private static final int h = 4;
        public final int a;
        private final T i;
        private final long j;

        @Nullable
        private a<T> k;
        private IOException l;
        private int m;
        private volatile Thread n;
        private volatile boolean o;
        private volatile boolean p;

        public b(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.i = t;
            this.k = aVar;
            this.a = i;
            this.j = j;
        }

        private void a() {
            this.l = null;
            t.this.e.execute(t.this.f);
        }

        private void b() {
            t.this.f = null;
        }

        private long c() {
            return Math.min((this.m - 1) * 1000, 5000);
        }

        public final void a(int i) throws IOException {
            IOException iOException = this.l;
            if (iOException != null && this.m > i) {
                throw iOException;
            }
        }

        public final void a(long j) {
            com.anythink.expressad.exoplayer.k.a.b(t.this.f == null);
            t.this.f = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                a();
            }
        }

        public final void a(boolean z) {
            this.p = z;
            this.l = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.o = true;
                this.i.a();
                if (this.n != null) {
                    this.n.interrupt();
                }
            }
            if (z) {
                b();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.k.a((c) this.i, jElapsedRealtime, jElapsedRealtime - this.j, true);
                this.k = null;
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (this.p) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                a();
                return;
            }
            if (i == 4) {
                throw ((Error) message.obj);
            }
            b();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.j;
            if (this.o) {
                this.k.a((c) this.i, jElapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                this.k.a((c) this.i, jElapsedRealtime, j, false);
                return;
            }
            if (i2 == 2) {
                try {
                    this.k.a(this.i, jElapsedRealtime, j);
                    return;
                } catch (RuntimeException e2) {
                    Log.e(c, "Unexpected exception handling load completed", e2);
                    t.this.g = new g(e2);
                    return;
                }
            }
            if (i2 != 3) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.l = iOException;
            int iA = this.k.a(this.i, jElapsedRealtime, j, iOException);
            if (iA == 3) {
                t.this.g = this.l;
            } else if (iA != 2) {
                this.m = iA == 1 ? 1 : this.m + 1;
                a(Math.min((r12 - 1) * 1000, 5000));
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.n = Thread.currentThread();
                if (!this.o) {
                    ad.a("load:" + this.i.getClass().getSimpleName());
                    try {
                        this.i.b();
                        ad.a();
                    } catch (Throwable th) {
                        ad.a();
                        throw th;
                    }
                }
                if (this.p) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e2) {
                if (this.p) {
                    return;
                }
                obtainMessage(3, e2).sendToTarget();
            } catch (Error e3) {
                Log.e(c, "Unexpected error loading stream", e3);
                if (!this.p) {
                    obtainMessage(4, e3).sendToTarget();
                }
                throw e3;
            } catch (InterruptedException unused) {
                com.anythink.expressad.exoplayer.k.a.b(this.o);
                if (this.p) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e4) {
                Log.e(c, "Unexpected exception loading stream", e4);
                if (this.p) {
                    return;
                }
                obtainMessage(3, new g(e4)).sendToTarget();
            } catch (OutOfMemoryError e5) {
                Log.e(c, "OutOfMemory error loading stream", e5);
                if (this.p) {
                    return;
                }
                obtainMessage(3, new g(e5)).sendToTarget();
            }
        }
    }

    public interface c {
        void a();

        void b();
    }

    public interface d {
        void g();
    }

    public static final class e implements Runnable {
        private final d a;

        public e(d dVar) {
            this.a = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.a.g();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface f {
    }

    public static final class g extends IOException {
        public g(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    public t(String str) {
        this.e = af.a(str);
    }

    private void d() {
        a((d) null);
    }

    public final <T extends c> long a(T t, a<T> aVar, int i) {
        Looper looperMyLooper = Looper.myLooper();
        com.anythink.expressad.exoplayer.k.a.b(looperMyLooper != null);
        this.g = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new b(looperMyLooper, t, aVar, i, jElapsedRealtime).a(0L);
        return jElapsedRealtime;
    }

    @Override // com.anythink.expressad.exoplayer.j.u
    public final void a(int i) throws IOException {
        IOException iOException = this.g;
        if (iOException != null) {
            throw iOException;
        }
        b<? extends c> bVar = this.f;
        if (bVar != null) {
            if (i == Integer.MIN_VALUE) {
                i = bVar.a;
            }
            bVar.a(i);
        }
    }

    public final void a(@Nullable d dVar) {
        b<? extends c> bVar = this.f;
        if (bVar != null) {
            bVar.a(true);
        }
        if (dVar != null) {
            this.e.execute(new e(dVar));
        }
        this.e.shutdown();
    }

    public final boolean a() {
        return this.f != null;
    }

    public final void b() {
        this.f.a(false);
    }

    @Override // com.anythink.expressad.exoplayer.j.u
    public final void c() throws IOException {
        a(Integer.MIN_VALUE);
    }
}
