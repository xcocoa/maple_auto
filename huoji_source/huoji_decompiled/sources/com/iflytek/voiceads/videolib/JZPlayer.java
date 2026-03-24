package com.iflytek.voiceads.videolib;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ac.R;
import com.iflytek.voiceads.listener.IFLYVideoListener;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public abstract class JZPlayer extends FrameLayout implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener {
    public static int a = 1;
    public static int b = 0;
    public static long c = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    protected int H;
    protected int I;
    protected AudioManager J;
    protected Handler K;
    protected ScheduledExecutorService L;
    protected a M;
    protected boolean N;
    public com.iflytek.voiceads.e.g O;
    public com.iflytek.voiceads.e.h P;
    public IFLYVideoListener Q;
    public com.iflytek.voiceads.param.a R;
    public int S;
    public boolean T;
    private final int U;
    public AudioManager.OnAudioFocusChangeListener d;
    public com.iflytek.voiceads.videolib.a e;
    public Object[] f;
    public int g;
    public int h;
    public int i;
    public long j;
    public boolean k;
    public SeekBar l;
    public ImageView m;
    public ImageView n;
    public ImageView o;
    public TextView p;
    public TextView q;
    public ViewGroup r;
    public ViewGroup s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (JZPlayer.this.g == 3 || JZPlayer.this.g == 5) {
                JZPlayer.this.K.post(new m(this));
            }
        }
    }

    public JZPlayer(Context context) {
        super(context);
        this.U = R.animator.mtrl_chip_state_list_anim;
        this.d = new l(this);
        this.f = null;
        this.g = -1;
        this.h = -1;
        this.i = 0;
        this.j = 0L;
        this.k = false;
        this.D = 0;
        this.E = 0;
        this.F = -1;
        this.G = 0;
        a(context);
    }

    public JZPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.U = R.animator.mtrl_chip_state_list_anim;
        this.d = new l(this);
        this.f = null;
        this.g = -1;
        this.h = -1;
        this.i = 0;
        this.j = 0L;
        this.k = false;
        this.D = 0;
        this.E = 0;
        this.F = -1;
        this.G = 0;
        a(context);
    }

    public static boolean b() {
        if (System.currentTimeMillis() - c < 300) {
            return false;
        }
        if (o.b() != null) {
            c = System.currentTimeMillis();
            if (o.a().e.a(c.b())) {
                o.a().J();
            } else {
                c();
            }
            return true;
        }
        if (o.a() == null || o.a().h != 1) {
            return false;
        }
        c = System.currentTimeMillis();
        c();
        return false;
    }

    public static void c() {
        o.a().z();
        c.a().g();
        o.d();
    }

    public void A() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onVideoSizeChanged");
        if (c.a != null) {
            if (this.G != 0) {
                c.a.setRotation(this.G);
            }
            c.a.a(c.a().g, c.a().h);
        }
    }

    public void B() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "startProgressTimer");
        C();
        this.L = Executors.newScheduledThreadPool(1);
        this.M = new a();
        this.L.scheduleAtFixedRate(this.M, 0L, 300L, TimeUnit.MILLISECONDS);
    }

    public void C() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "cancelProgressTimer");
        if (this.L != null) {
            this.L.shutdown();
        }
        if (this.M != null) {
            this.M.cancel();
        }
    }

    public void D() {
        this.l.setProgress(0);
        this.l.setSecondaryProgress(0);
        this.p.setText(n.a(0L));
        this.q.setText(n.a(0L));
    }

    public long E() {
        if (this.g != 3 && this.g != 5) {
            return 0L;
        }
        try {
            return c.c();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "get position" + e.getMessage());
            return 0L;
        }
    }

    public long F() {
        try {
            return c.d();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "get dur" + e.getMessage());
            return 0L;
        }
    }

    public void G() {
        try {
            if (this.O.c > this.O.d) {
                n.a(getContext(), 0);
            } else {
                n.a(getContext(), 1);
            }
            Activity activityA = n.a(getContext());
            if (activityA == null) {
                com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "startWindowFullscreen curActivity is null!");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) activityA.findViewById(android.R.id.content);
            View viewFindViewById = viewGroup.findViewById(R.animator.mtrl_chip_state_list_anim);
            if (viewFindViewById != null) {
                viewGroup.removeView(viewFindViewById);
            }
            this.r.removeView(c.a);
            JZPlayer jZPlayer = (JZPlayer) getClass().getConstructor(Context.class).newInstance(getContext());
            jZPlayer.setId(R.animator.mtrl_chip_state_list_anim);
            viewGroup.addView(jZPlayer, new FrameLayout.LayoutParams(-1, -1));
            int i = Build.VERSION.SDK_INT;
            int i2 = getContext().getApplicationInfo().targetSdkVersion;
            if (i >= 19 && i2 >= 19) {
                jZPlayer.setSystemUiVisibility(2054);
            } else if (i < 16 || i2 < 16) {
                jZPlayer.setSystemUiVisibility(2);
            } else {
                jZPlayer.setSystemUiVisibility(6);
            }
            jZPlayer.a(this.O);
            jZPlayer.a(this.R);
            jZPlayer.a(this.S);
            jZPlayer.a(this.Q);
            jZPlayer.b(this.i);
            jZPlayer.a(this.P);
            jZPlayer.a(this.e, 1, this.f);
            jZPlayer.c(this.g);
            jZPlayer.w();
            o.b(jZPlayer);
            m();
            jZPlayer.l.setSecondaryProgress(this.l.getSecondaryProgress());
            jZPlayer.B();
            c = System.currentTimeMillis();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "window full" + e.getMessage());
        }
    }

    public boolean H() {
        return I() && this.e.a(c.b());
    }

    public boolean I() {
        return o.c() != null && o.c() == this;
    }

    public void J() {
        this.i = o.b().i;
        if (this.i == 0) {
            this.o.setImageResource(this.C);
        } else if (this.i == 1) {
            this.o.setImageResource(this.B);
        }
        this.g = o.b().g;
        z();
        c(this.g);
        w();
    }

    public void K() {
    }

    public void L() {
    }

    public void a() {
        if (System.currentTimeMillis() - c > 300) {
            o.d();
            c.a().f = -1;
            c.a().g();
        }
    }

    public void a(int i) {
        this.S = i;
    }

    public void a(int i, int i2) {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onError");
        if (i == 38 || i2 == -38 || i == -38 || i2 == 38 || i2 == -19) {
            return;
        }
        r();
        if (H()) {
            c.a().g();
        }
    }

    public void a(int i, int i2, int i3) {
        switch (i) {
            case 0:
                m();
                break;
            case 1:
                n();
                break;
            case 2:
                a(i2, i3);
                break;
            case 3:
                p();
                break;
            case 5:
                q();
                break;
            case 6:
                s();
                break;
            case 7:
                r();
                break;
        }
    }

    public void a(int i, long j) {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStatePreparingChangingUrl");
        this.g = 2;
        this.j = j;
        this.e.b = i;
        c.a(this.e);
        c.a().h();
    }

    public void a(int i, long j, long j2) {
        if (!this.N && i != 0) {
            this.l.setProgress(i);
            if (21 < i && i < 29 && !this.P.b) {
                com.iflytek.voiceads.utils.j.a(this.O.j);
                this.P.b = true;
            }
            if (46 < i && i < 54 && !this.P.c) {
                com.iflytek.voiceads.utils.j.a(this.O.k);
                this.P.c = true;
            }
            if (71 < i && i < 79 && !this.P.d) {
                com.iflytek.voiceads.utils.j.a(this.O.l);
                this.P.d = true;
            }
        }
        if (j != 0) {
            this.p.setText(n.a(j));
        }
        this.q.setText(n.a(j2));
    }

    public void a(Context context) {
        try {
            View.inflate(context, g(), this);
            b(context);
            this.m = (ImageView) findViewById(this.t);
            this.n = (ImageView) findViewById(this.u);
            this.o = (ImageView) findViewById(this.v);
            this.l = (SeekBar) findViewById(this.x);
            this.p = (TextView) findViewById(this.w);
            this.q = (TextView) findViewById(this.y);
            this.s = (ViewGroup) findViewById(this.A);
            this.r = (ViewGroup) findViewById(this.z);
            this.m.setOnClickListener(this);
            this.n.setOnClickListener(this);
            this.o.setOnClickListener(this);
            this.l.setOnSeekBarChangeListener(this);
            this.s.setOnClickListener(this);
            this.r.setOnClickListener(this);
            this.r.setOnTouchListener(this);
            this.H = getContext().getResources().getDisplayMetrics().widthPixels;
            this.I = getContext().getResources().getDisplayMetrics().heightPixels;
            this.J = (AudioManager) getContext().getSystemService(com.anythink.expressad.exoplayer.k.o.b);
            this.K = new Handler();
            this.P = new com.iflytek.voiceads.e.h();
            if (H() && (context instanceof Activity)) {
                a = ((Activity) context).getRequestedOrientation();
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("JZVideoPlayer", "jz init" + e.getMessage());
        }
    }

    public void a(com.iflytek.voiceads.e.g gVar) {
        this.O = gVar;
    }

    public void a(com.iflytek.voiceads.e.h hVar) {
        this.P = hVar;
    }

    public void a(IFLYVideoListener iFLYVideoListener) {
        this.Q = iFLYVideoListener;
    }

    public void a(com.iflytek.voiceads.param.a aVar) {
        this.R = aVar;
    }

    public void a(com.iflytek.voiceads.videolib.a aVar, int i, Object... objArr) {
        if (this.e == null || aVar.a() == null || !this.e.a(aVar.a())) {
            if (I() && aVar.a(c.b())) {
                c.a().g();
            }
            this.h = i;
            this.e = aVar;
            this.f = objArr;
            this.e.g = objArr;
            m();
        }
    }

    public void a(String str, String str2, int i, Object... objArr) {
        a(new com.iflytek.voiceads.videolib.a(str, str2), i, objArr);
    }

    public void a(boolean z) {
        this.T = z;
    }

    public void b(int i) {
        this.i = i;
    }

    public void b(Context context) {
        this.t = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_play_state_btn");
        this.u = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_fullscreen_btn");
        this.v = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_volume_btn");
        this.w = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_cur_time");
        this.x = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_bottom_seek_bar");
        this.y = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_total_time");
        this.z = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_surface_container");
        this.A = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_layout_bottom");
        this.B = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_open_volume");
        this.C = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_close_volume");
    }

    public void b(boolean z) {
        c.a(z);
        if (z) {
            this.i = 0;
            if (this.P.i) {
                return;
            }
            com.iflytek.voiceads.utils.j.a(this.O.q);
            this.P.i = true;
            return;
        }
        this.i = 1;
        if (this.P.j) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.r);
        this.P.j = true;
    }

    public void c(int i) {
        a(i, 0, 0);
    }

    public void c(boolean z) {
        this.k = z;
    }

    public void d() {
        JZPlayer jZPlayerC = o.c();
        if (jZPlayerC == null || jZPlayerC.g != 5) {
            return;
        }
        jZPlayerC.p();
        c.f();
        if (this.P.g || this.O == null) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.o);
        this.P.g = true;
    }

    public void d(int i) {
        if (i != 0) {
            this.l.setSecondaryProgress(i);
        }
    }

    public void e() {
        JZPlayer jZPlayerC = o.c();
        if (jZPlayerC == null || jZPlayerC.g == 6 || jZPlayerC.g == 0 || jZPlayerC.g == 7) {
            return;
        }
        jZPlayerC.q();
        c.e();
        if (this.P.f || this.O == null) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.n);
        this.P.f = true;
    }

    public void f() {
        JZPlayer jZPlayerC = o.c();
        if (jZPlayerC != null) {
            jZPlayerC.K();
            a();
            if (this.P.l) {
                return;
            }
            com.iflytek.voiceads.utils.j.a(this.O.t);
            this.P.l = true;
        }
    }

    public abstract int g();

    public void h() {
        b();
        if (this.P.h) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.p);
        this.P.h = true;
    }

    public void i() {
        if (this.P.o) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.w);
        this.P.o = true;
    }

    public void j() {
        if (this.P.p) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.x);
        this.P.p = true;
    }

    public void k() {
        o.d();
        v();
        w();
        ((AudioManager) getContext().getSystemService(com.anythink.expressad.exoplayer.k.o.b)).requestAudioFocus(this.d, 3, 2);
        Activity activityA = n.a(getContext());
        if (activityA != null) {
            activityA.getWindow().addFlags(128);
        }
        c.a(this.e);
        c.a().f = this.F;
        n();
        o.a(this);
    }

    public void l() {
        o();
        p();
        if (this.Q != null) {
            this.Q.onVideoStart();
        }
    }

    public void m() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStateNormal");
        this.g = 0;
        C();
    }

    public void n() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStatePreparing");
        this.g = 1;
        D();
    }

    public void o() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStatePrepared");
        if (this.j == 0) {
            c.a(0L);
        } else {
            c.a(this.j);
            this.j = 0L;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != this.t) {
            if (id == this.u) {
                if (this.g != 6) {
                    if (this.h == 1) {
                        b();
                        if (this.P.n) {
                            return;
                        }
                        com.iflytek.voiceads.utils.j.a(this.O.v);
                        this.P.n = true;
                        return;
                    }
                    G();
                    if (this.P.m) {
                        return;
                    }
                    com.iflytek.voiceads.utils.j.a(this.O.u);
                    this.P.m = true;
                    return;
                }
                return;
            }
            if (id == this.v) {
                if (this.i == 0) {
                    c.a(false);
                    this.i = 1;
                    this.o.setImageResource(this.B);
                    if (this.P.j) {
                        return;
                    }
                    com.iflytek.voiceads.utils.j.a(this.O.r);
                    this.P.j = true;
                    return;
                }
                if (this.i == 1) {
                    c.a(true);
                    this.i = 0;
                    this.o.setImageResource(this.C);
                    if (this.P.i) {
                        return;
                    }
                    com.iflytek.voiceads.utils.j.a(this.O.q);
                    this.P.i = true;
                    return;
                }
                return;
            }
            return;
        }
        if (this.e == null || this.e.c.isEmpty() || this.e.a() == null) {
            com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "播放地址无效");
            return;
        }
        if (this.g == 0) {
            if (this.e.a().toString().startsWith("file") || this.e.a().toString().startsWith("/") || com.iflytek.voiceads.utils.k.b(getContext()) || !this.T) {
                k();
                return;
            } else {
                L();
                return;
            }
        }
        if (this.g == 3) {
            c.e();
            q();
            if (this.P.f) {
                return;
            }
            com.iflytek.voiceads.utils.j.a(this.O.n);
            this.P.f = true;
            return;
        }
        if (this.g == 5) {
            c.f();
            p();
            if (this.P.g) {
                return;
            }
            com.iflytek.voiceads.utils.j.a(this.O.o);
            this.P.g = true;
            return;
        }
        if (this.g == 6) {
            k();
            if (!this.P.k) {
                com.iflytek.voiceads.utils.j.a(this.O.s);
                this.P.k = true;
            }
            if (this.Q != null) {
                this.Q.onVideoReplay();
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.h == 1) {
            super.onMeasure(i, i2);
            return;
        }
        if (this.D == 0 || this.E == 0) {
            super.onMeasure(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int i3 = (int) ((size * this.E) / this.D);
        setMeasuredDimension(size, i3);
        getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        C();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        B();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        if (this.g == 3 || this.g == 5) {
            c.a((((long) seekBar.getProgress()) * F()) / 100);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    public void p() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStatePlaying");
        this.g = 3;
        B();
    }

    public void q() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStatePause");
        this.g = 5;
        B();
    }

    public void r() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStateError");
        this.g = 7;
        C();
    }

    public void s() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onStateAutoComplete");
        this.g = 6;
        C();
        this.l.setProgress(100);
        this.p.setText(this.q.getText());
    }

    public void t() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onAutoCompletion");
        Runtime.getRuntime().gc();
        s();
        if (this.h == 1) {
            b();
        }
        c.a().g();
        Activity activityA = n.a(getContext());
        if (activityA != null) {
            activityA.getWindow().clearFlags(128);
        }
        if (this.Q != null) {
            this.Q.onVideoComplete();
        }
    }

    public void u() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "onCompletion");
        C();
        m();
        this.r.removeView(c.a);
        c.a().g = 0;
        c.a().h = 0;
        ((AudioManager) getContext().getSystemService(com.anythink.expressad.exoplayer.k.o.b)).abandonAudioFocus(this.d);
        Activity activityA = n.a(getContext());
        if (activityA != null) {
            activityA.getWindow().clearFlags(128);
        }
        y();
        n.a(getContext(), a);
        if (c.d != null) {
            c.d.release();
        }
        if (c.c != null) {
            c.c.release();
        }
        c.a = null;
        c.c = null;
    }

    public void v() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "initTextureView");
        x();
        c.a = new JZTextureView(getContext());
        c.a.setSurfaceTextureListener(c.a());
    }

    public void w() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "addTextureView");
        this.r.addView(c.a, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void x() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "removeTextureView");
        c.c = null;
        if (c.a == null || c.a.getParent() == null) {
            return;
        }
        ((ViewGroup) c.a.getParent()).removeView(c.a);
    }

    public void y() {
        ViewGroup viewGroup;
        View viewFindViewById;
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "clearFullscreenLayout");
        Activity activityA = n.a(getContext());
        if (activityA == null || (viewFindViewById = (viewGroup = (ViewGroup) activityA.findViewById(android.R.id.content)).findViewById(R.animator.mtrl_chip_state_list_anim)) == null) {
            return;
        }
        viewGroup.removeView(viewFindViewById);
    }

    public void z() {
        com.iflytek.voiceads.utils.g.a("JZVideoPlayer", "clearFloatScreen");
        n.a(getContext(), a);
        JZPlayer jZPlayerC = o.c();
        jZPlayerC.r.removeView(c.a);
        Activity activityA = n.a(getContext());
        if (activityA != null) {
            ((ViewGroup) activityA.findViewById(android.R.id.content)).removeView(jZPlayerC);
        }
        o.b(null);
    }
}
