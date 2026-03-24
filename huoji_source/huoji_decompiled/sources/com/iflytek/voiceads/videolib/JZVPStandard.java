package com.iflytek.voiceads.videolib;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class JZVPStandard extends JZPlayer {
    public ProgressBar U;
    public ImageView V;
    public TextView W;
    public LinearLayout aa;
    public int ab;
    public int ac;
    public int ad;
    public int ae;
    public int af;
    public int ag;
    public int ah;
    public int ai;
    public int aj;
    private Timer ak;
    private a al;

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JZVPStandard.this.Y();
        }
    }

    public JZVPStandard(Context context) {
        super(context);
    }

    public JZVPStandard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void L() {
        super.L();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage("您当前正在使用移动网络，继续播放将消耗流量！");
        builder.setPositiveButton("继续", new p(this));
        builder.setNegativeButton("取消", new q(this));
        builder.setOnCancelListener(new r(this));
        builder.create().show();
    }

    public void M() {
        switch (this.g) {
            case 1:
                O();
                break;
            case 3:
                if (this.s.getVisibility() != 0) {
                    P();
                } else {
                    Q();
                }
                break;
            case 5:
                if (this.s.getVisibility() != 0) {
                    R();
                } else {
                    S();
                }
                break;
        }
    }

    public void N() {
        a(4, 0, 4, 0, 4);
        V();
    }

    public void O() {
        a(4, 4, 0, 0, 4);
        V();
    }

    public void P() {
        a(0, 0, 4, 4, 4);
        V();
    }

    public void Q() {
        a(4, 4, 4, 4, 4);
    }

    public void R() {
        a(0, 0, 4, 4, 4);
        V();
    }

    public void S() {
        a(4, 4, 4, 4, 4);
    }

    public void T() {
        a(4, 0, 4, 0, 4);
        V();
    }

    public void U() {
        a(4, 0, 4, 4, 0);
        V();
    }

    public void V() {
        if (this.g == 3) {
            this.m.setVisibility(0);
            this.m.setImageResource(this.ai);
            return;
        }
        if (this.g == 7) {
            this.m.setVisibility(4);
            return;
        }
        if (this.g != 6) {
            this.m.setImageResource(this.ah);
        } else if (this.S != 0) {
            this.m.setVisibility(4);
        } else {
            this.m.setVisibility(0);
            this.m.setImageResource(this.aj);
        }
    }

    public void W() {
        X();
        this.ak = new Timer();
        this.al = new a();
        this.ak.schedule(this.al, com.anythink.expressad.exoplayer.i.a.f);
    }

    public void X() {
        if (this.ak != null) {
            this.ak.cancel();
        }
        if (this.al != null) {
            this.al.cancel();
        }
    }

    public void Y() {
        if (this.g == 0 || this.g == 7 || this.g == 6 || getContext() == null || !(getContext() instanceof Activity)) {
            return;
        }
        ((Activity) getContext()).runOnUiThread(new s(this));
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        this.s.setVisibility(i);
        this.m.setVisibility(i2);
        this.U.setVisibility(i3);
        this.V.setVisibility(i4);
        this.aa.setVisibility(i5);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void a(int i, long j) {
        super.a(i, j);
        this.U.setVisibility(0);
        this.m.setVisibility(4);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void a(Context context) {
        super.a(context);
        b(context);
        this.V.setOnClickListener(this);
        this.W.setOnClickListener(this);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void a(com.iflytek.voiceads.videolib.a aVar, int i, Object... objArr) {
        super.a(aVar, i, objArr);
        if (this.h == 1) {
            this.n.setImageResource(this.af);
            e(n.a(getContext(), 62.0f));
        } else if (this.h == 0) {
            this.n.setImageResource(this.ag);
            e(n.a(getContext(), 45.0f));
        }
        if (this.i == 0) {
            this.o.setImageResource(this.C);
        } else if (this.i == 1) {
            this.o.setImageResource(this.B);
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void b(Context context) {
        super.b(context);
        this.ab = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_loading_progress");
        this.ac = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_thumb");
        this.ad = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_retry_btn");
        this.ae = com.iflytek.voiceads.utils.e.a(context, "id", "ifly_ad_layout_retry");
        this.af = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_shrink");
        this.ag = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_enlarge");
        this.ah = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_click_play_selector");
        this.ai = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_click_pause_selector");
        this.aj = com.iflytek.voiceads.utils.e.a(context, com.anythink.expressad.foundation.h.i.c, "ifly_ad_jz_click_replay_selector");
        this.U = (ProgressBar) findViewById(this.ab);
        this.V = (ImageView) findViewById(this.ac);
        this.W = (TextView) findViewById(this.ad);
        this.aa = (LinearLayout) findViewById(this.ae);
    }

    public void e(int i) {
        ViewGroup.LayoutParams layoutParams = this.m.getLayoutParams();
        layoutParams.height = i;
        layoutParams.width = i;
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public int g() {
        return com.iflytek.voiceads.utils.e.a(getContext(), "layout", "ifly_ad_jz_layout_standard");
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void m() {
        super.m();
        N();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void n() {
        super.n();
        O();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == this.ac) {
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
            if (this.g == 6) {
                k();
                if (this.P.k) {
                    return;
                }
                com.iflytek.voiceads.utils.j.a(this.O.s);
                this.P.k = true;
                return;
            }
            return;
        }
        if (id == this.z) {
            if (this.S != 0) {
                if (this.Q != null) {
                    this.Q.onAdClick();
                    return;
                }
                return;
            } else if (!this.k) {
                W();
                M();
                return;
            } else {
                if (this.Q != null) {
                    this.Q.onAdClick();
                    return;
                }
                return;
            }
        }
        if (id == this.ad) {
            if (!this.e.a().toString().startsWith("file") && !this.e.a().toString().startsWith("/") && !com.iflytek.voiceads.utils.k.b(getContext()) && this.T) {
                L();
                return;
            }
            v();
            w();
            c.a(this.e);
            n();
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        X();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        if (this.g == 3) {
            Y();
        } else if (this.S == 0) {
            W();
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view.getId() == this.x) {
            switch (motionEvent.getAction()) {
                case 0:
                    X();
                    break;
                case 1:
                    W();
                    break;
            }
        }
        return super.onTouch(view, motionEvent);
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void p() {
        super.p();
        Q();
        if (this.P.a) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.i);
        this.P.a = true;
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void q() {
        super.q();
        R();
        W();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void r() {
        super.r();
        U();
        if (this.Q != null) {
            this.Q.onAdPlayError();
        }
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void s() {
        super.s();
        T();
        X();
        this.o.setImageResource(this.C);
        if (this.P.e) {
            return;
        }
        com.iflytek.voiceads.utils.j.a(this.O.m);
        this.P.e = true;
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void t() {
        super.t();
        X();
    }

    @Override // com.iflytek.voiceads.videolib.JZPlayer
    public void u() {
        super.u();
        X();
    }
}
