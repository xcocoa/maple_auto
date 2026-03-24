package com.iflytek.voiceads.videolib;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.TextureView;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class c implements TextureView.SurfaceTextureListener {
    public static JZTextureView a;
    public static c b;
    public static SurfaceTexture c;
    public static Surface d;
    public b e;
    public int f = -1;
    public int g = 0;
    public int h = 0;
    public HandlerThread i = new HandlerThread("JZVideoPlayer");
    public a j;
    public Handler k;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    c.this.g = 0;
                    c.this.h = 0;
                    c.this.e.b();
                    if (c.d != null) {
                        c.d.release();
                    }
                    c.d = new Surface(c.c);
                    c.this.e.a(c.d);
                    break;
                case 2:
                    c.this.e.d();
                    break;
            }
        }
    }

    public c() {
        this.i.start();
        this.j = new a(this.i.getLooper());
        this.k = new Handler();
        if (this.e == null) {
            this.e = new d();
        }
    }

    public static c a() {
        if (b == null) {
            b = new c();
        }
        return b;
    }

    public static void a(long j) {
        a().e.a(j);
    }

    public static void a(com.iflytek.voiceads.videolib.a aVar) {
        a().e.a = aVar;
    }

    public static void a(boolean z) {
        a().e.a(z);
    }

    public static Object b() {
        if (a().e.a == null) {
            return null;
        }
        return a().e.a.a();
    }

    public static long c() {
        return a().e.e();
    }

    public static long d() {
        return a().e.f();
    }

    public static void e() {
        a().e.c();
    }

    public static void f() {
        a().e.a();
    }

    public void g() {
        Message message = new Message();
        message.what = 2;
        this.j.sendMessage(message);
    }

    public void h() {
        g();
        Message message = new Message();
        message.what = 0;
        this.j.sendMessage(message);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (o.c() == null) {
            return;
        }
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onSurfaceTextureAvailable");
        try {
            if (c == null) {
                c = surfaceTexture;
                h();
            } else {
                a.setSurfaceTexture(c);
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "onSurfaceTextureAvailable:" + e.getMessage());
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return c == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
