package com.iflytek.voiceads.view;

import android.content.Context;
import android.os.Message;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.utils.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class BannerAdView extends AdView {
    private boolean t;
    private Context u;
    private boolean v;

    public BannerAdView(Context context) {
        super(context);
        this.t = false;
        this.v = true;
    }

    public BannerAdView(Context context, RelativeLayout relativeLayout, String str, InternalListener internalListener) {
        super(context, relativeLayout, str, a.EnumC0185a.BANNER, internalListener);
        this.t = false;
        this.v = true;
        this.u = context.getApplicationContext();
    }

    @Override // com.iflytek.voiceads.view.AdView
    public synchronized void a(IFLYAdListener iFLYAdListener) {
        if (!this.t) {
            this.t = true;
            super.a(iFLYAdListener);
        }
    }

    @Override // com.iflytek.voiceads.view.AdView
    protected synchronized void d(Message message) throws Exception {
        if (com.iflytek.voiceads.utils.b.a(this.u) || com.iflytek.voiceads.utils.b.b(this.u)) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Ad is invisible, please check the app's state!");
            this.l.a(this.l.obtainMessage(1), e());
        } else {
            ViewGroup viewGroup = (ViewGroup) this.b.getParent();
            if (viewGroup == null) {
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Ad has no parent!");
            } else {
                if (this.v) {
                    this.v = false;
                } else if (!this.b.isShown()) {
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Ad is invisible, recycle delayed!");
                    this.l.a(this.l.obtainMessage(1), e());
                } else if (!com.iflytek.voiceads.utils.b.a(this.u, viewGroup)) {
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Ad is invisible,not in screen, recycle delayed!");
                    this.l.a(this.l.obtainMessage(1), e());
                }
                super.d(message);
            }
        }
    }

    @Override // com.iflytek.voiceads.view.AdView
    protected synchronized void h() {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "recycleLoadAd");
        if (this.b.getParent() == null) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "There isn't valid parent widget!");
        } else if (a.c.end != this.l.a()) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Ad is requesting, can't recycle load ad!");
        } else if (f()) {
            this.l.a(this.l.obtainMessage(1), e());
        } else {
            this.t = false;
        }
    }

    @Override // com.iflytek.voiceads.view.AdView
    public void k() {
        int iMin = Math.min(com.iflytek.voiceads.param.d.c(this.u), com.iflytek.voiceads.param.d.d(this.u));
        int iB = (this.e.b() * iMin) / this.e.a();
        this.b.setGravity(17);
        a(iMin, iB);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
