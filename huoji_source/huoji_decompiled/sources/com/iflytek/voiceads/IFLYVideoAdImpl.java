package com.iflytek.voiceads;

import android.content.Context;
import android.view.ViewGroup;
import com.iflytek.voiceads.e.a;
import com.iflytek.voiceads.listener.IFLYVideoListener;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class IFLYVideoAdImpl extends IFLYVideoAd {
    private a a;

    public IFLYVideoAdImpl(Context context, String str, int i, IFLYVideoListener iFLYVideoListener) {
        this.a = new a(context, str, i, iFLYVideoListener);
    }

    public boolean backPressed() {
        if (this.a != null) {
            return this.a.j();
        }
        return false;
    }

    public void cacheVideo() {
        if (this.a != null) {
            this.a.b();
        }
    }

    public ViewGroup getVideoView() {
        if (this.a != null) {
            return this.a.a;
        }
        return null;
    }

    public boolean isPlaying() {
        if (this.a != null) {
            return this.a.i();
        }
        return false;
    }

    public void loadAd() {
        if (this.a != null) {
            this.a.a();
        }
    }

    public void onPause() {
        if (this.a != null) {
            this.a.g();
        }
    }

    public void onResume() {
        if (this.a != null) {
            this.a.h();
        }
    }

    public void release() {
        if (this.a != null) {
            this.a.e();
        }
    }

    public void setDirectJump(boolean z) {
        if (this.a != null) {
            this.a.c(z);
        }
    }

    public void setParameter(String str, Object obj) {
        if (this.a != null) {
            this.a.a(str, obj);
        }
    }

    public void setVolume(boolean z) {
        if (this.a != null) {
            this.a.a(z);
        }
    }

    public void setWifiTip(boolean z) {
        if (this.a != null) {
            this.a.b(z);
        }
    }

    public void showAd(Object... objArr) {
        if (this.a != null) {
            this.a.a(objArr);
        }
    }

    public void skipAd() {
        if (this.a != null) {
            this.a.f();
        }
    }

    public void startPlay() {
        if (this.a != null) {
            this.a.d();
        }
    }

    public void videoDownScroll() {
        if (this.a != null) {
            this.a.l();
        }
    }

    public void videoUpScroll() {
        if (this.a != null) {
            this.a.k();
        }
    }
}
