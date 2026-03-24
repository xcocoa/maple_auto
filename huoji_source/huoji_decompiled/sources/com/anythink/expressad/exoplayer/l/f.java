package com.anythink.expressad.exoplayer.l;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.k.af;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class f {
    private static final long a = 500;
    private static final long b = 20000000;
    private static final long c = 80;
    private static final int d = 6;
    private final WindowManager e;
    private final b f;
    private final a g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;
    private boolean m;
    private long n;
    private long o;
    private long p;

    @TargetApi(17)
    public final class a implements DisplayManager.DisplayListener {
        private final DisplayManager b;

        public a(DisplayManager displayManager) {
            this.b = displayManager;
        }

        public final void a() {
            this.b.registerDisplayListener(this, null);
        }

        public final void b() {
            this.b.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                f.this.c();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }

    public static final class b implements Handler.Callback, Choreographer.FrameCallback {
        private static final int b = 0;
        private static final int c = 1;
        private static final int d = 2;
        private static final b e = new b();
        public volatile long a = com.anythink.expressad.exoplayer.b.b;
        private final Handler f;
        private final HandlerThread g;
        private Choreographer h;
        private int i;

        private b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.g = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper(), this);
            this.f = handler;
            handler.sendEmptyMessage(0);
        }

        public static b a() {
            return e;
        }

        private void d() {
            this.h = Choreographer.getInstance();
        }

        private void e() {
            Choreographer choreographer = this.h;
            if (choreographer != null) {
                int i = this.i + 1;
                this.i = i;
                if (i == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void f() {
            Choreographer choreographer = this.h;
            if (choreographer != null) {
                int i = this.i - 1;
                this.i = i;
                if (i == 0) {
                    choreographer.removeFrameCallback(this);
                    this.a = com.anythink.expressad.exoplayer.b.b;
                }
            }
        }

        public final void b() {
            this.f.sendEmptyMessage(1);
        }

        public final void c() {
            this.f.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            if (this.h != null) {
                this.a = j;
                this.h.postFrameCallbackDelayed(this, 500L);
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                try {
                    this.h = Choreographer.getInstance();
                } catch (Throwable unused) {
                }
                return true;
            }
            if (i == 1) {
                Choreographer choreographer = this.h;
                if (choreographer != null) {
                    int i2 = this.i + 1;
                    this.i = i2;
                    if (i2 == 1) {
                        choreographer.postFrameCallback(this);
                    }
                }
                return true;
            }
            if (i != 2) {
                return false;
            }
            Choreographer choreographer2 = this.h;
            if (choreographer2 != null) {
                int i3 = this.i - 1;
                this.i = i3;
                if (i3 == 0) {
                    choreographer2.removeFrameCallback(this);
                    this.a = com.anythink.expressad.exoplayer.b.b;
                }
            }
            return true;
        }
    }

    public f() {
        this(null);
    }

    public f(@Nullable Context context) {
        DisplayManager displayManager;
        a aVar = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.e = (WindowManager) context.getSystemService("window");
        } else {
            this.e = null;
        }
        if (this.e != null) {
            if (af.a >= 17 && (displayManager = (DisplayManager) context.getSystemService("display")) != null) {
                aVar = new a(displayManager);
            }
            this.g = aVar;
            this.f = b.a();
        } else {
            this.g = null;
            this.f = null;
        }
        this.h = com.anythink.expressad.exoplayer.b.b;
        this.i = com.anythink.expressad.exoplayer.b.b;
    }

    private static long a(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (((j - j2) / j3) * j3);
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j5 = j3 + j5;
            j4 = j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    @TargetApi(17)
    private a a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager == null) {
            return null;
        }
        return new a(displayManager);
    }

    private boolean b(long j, long j2) {
        return Math.abs((j2 - this.n) - (j - this.o)) > b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            Display defaultDisplay = this.e.getDefaultDisplay();
            if (defaultDisplay != null) {
                long refreshRate = (long) (1.0E9d / ((double) defaultDisplay.getRefreshRate()));
                this.h = refreshRate;
                this.i = (refreshRate * c) / 100;
            }
        } catch (Throwable unused) {
        }
    }

    public final long a(long j, long j2) {
        long j3;
        long j4;
        long j5;
        long j6 = 1000 * j;
        if (this.m) {
            if (j != this.j) {
                this.p++;
                this.k = this.l;
            }
            long j7 = this.p;
            if (j7 >= 6) {
                j4 = this.k + ((j6 - this.o) / j7);
                if (!b(j4, j2)) {
                    j3 = (this.n + j4) - this.o;
                }
            } else {
                if (b(j6, j2)) {
                }
                j3 = j2;
                j4 = j6;
            }
            this.m = false;
            j3 = j2;
            j4 = j6;
        } else {
            j3 = j2;
            j4 = j6;
        }
        if (!this.m) {
            this.o = j6;
            this.n = j2;
            this.p = 0L;
            this.m = true;
        }
        this.j = j;
        this.l = j4;
        b bVar = this.f;
        if (bVar == null || this.h == com.anythink.expressad.exoplayer.b.b) {
            return j3;
        }
        long j8 = bVar.a;
        if (j8 == com.anythink.expressad.exoplayer.b.b) {
            return j3;
        }
        long j9 = this.h;
        long j10 = j8 + (((j3 - j8) / j9) * j9);
        if (j3 <= j10) {
            j5 = j10 - j9;
        } else {
            j10 = j9 + j10;
            j5 = j10;
        }
        if (j10 - j3 >= j3 - j5) {
            j10 = j5;
        }
        return j10 - this.i;
    }

    public final void a() {
        this.m = false;
        if (this.e != null) {
            this.f.b();
            a aVar = this.g;
            if (aVar != null) {
                aVar.a();
            }
            c();
        }
    }

    public final void b() {
        if (this.e != null) {
            a aVar = this.g;
            if (aVar != null) {
                aVar.b();
            }
            this.f.c();
        }
    }
}
