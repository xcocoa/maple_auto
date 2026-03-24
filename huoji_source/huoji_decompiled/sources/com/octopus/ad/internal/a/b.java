package com.octopus.ad.internal.a;

import android.app.Activity;
import android.content.MutableContextWrapper;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.octopus.ad.AdActivity;
import com.octopus.ad.R;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.video.AdVideoView;
import com.octopus.ad.internal.view.AdWebView;
import com.octopus.ad.internal.view.InterstitialAdViewImpl;
import com.octopus.ad.internal.view.d;

/* JADX INFO: loaded from: classes2.dex */
public class b implements AdActivity.a {
    private Activity a;
    private AdWebView b;
    private com.octopus.ad.internal.view.b c;
    private FrameLayout d;
    private long e;
    private InterstitialAdViewImpl f;

    public b(Activity activity) {
        this.a = activity;
    }

    private void a(InterstitialAdViewImpl interstitialAdViewImpl) {
        d dVarPoll;
        FrameLayout frameLayout;
        View view;
        FrameLayout.LayoutParams layoutParams;
        this.f = interstitialAdViewImpl;
        if (interstitialAdViewImpl == null) {
            return;
        }
        interstitialAdViewImpl.setAdImplementation(this);
        this.d.setBackgroundColor(this.f.getBackgroundColor());
        this.d.removeAllViews();
        if (this.f.getParent() != null) {
            ((ViewGroup) this.f.getParent()).removeAllViews();
        }
        while (true) {
            dVarPoll = this.f.getAdQueue().poll();
            if (dVarPoll == null || (this.e - dVarPoll.a() <= InterstitialAdViewImpl.MAX_AGE && this.e - dVarPoll.a() >= 0)) {
                break;
            } else {
                HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.too_old));
            }
        }
        if (dVarPoll == null || !(dVarPoll.c() instanceof AdWebView)) {
            return;
        }
        AdWebView adWebView = (AdWebView) dVarPoll.c();
        this.b = adWebView;
        if (adWebView.getContext() instanceof MutableContextWrapper) {
            ((MutableContextWrapper) this.b.getContext()).setBaseContext(this.a);
            AdVideoView adVideoView = this.b.mAdVideoView;
            if (adVideoView != null) {
                ((MutableContextWrapper) adVideoView.getContext()).setBaseContext(this.a);
            }
        }
        if ((this.b.getCreativeWidth() != 1 || this.b.getCreativeHeight() != 1) && this.a.getResources().getConfiguration().orientation != 2) {
            int i = 0;
            try {
                i = this.f.getAdParameters().b().getApplicationInfo().targetSdkVersion;
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (i <= 26 || Build.VERSION.SDK_INT != 26) {
                AdActivity.a(this.a, this.b.getOrientation());
            } else {
                Log.d("octopus", "Only fullscreen activities can request orientation");
            }
        }
        this.c = this.b.getRealDisplayable();
        AdWebView adWebView2 = this.b;
        if (adWebView2.mAdVideoView != null) {
            this.d.addView(adWebView2.getRealDisplayable().getView(), new FrameLayout.LayoutParams(-2, -2, 17));
        } else {
            if (this.a.getRequestedOrientation() == 0) {
                frameLayout = this.d;
                view = this.b.getRealDisplayable().getView();
                layoutParams = new FrameLayout.LayoutParams((int) (this.b.getCreativeHeight() * m.a().i), (int) (this.b.getCreativeWidth() * m.a().j), 17);
            } else if (this.a.getRequestedOrientation() == 1) {
                frameLayout = this.d;
                view = this.b.getRealDisplayable().getView();
                layoutParams = new FrameLayout.LayoutParams((int) (this.b.getCreativeWidth() * m.a().i), (int) (this.b.getCreativeHeight() * m.a().j), 17);
            } else {
                frameLayout = this.d;
                view = this.b.getRealDisplayable().getView();
                layoutParams = new FrameLayout.LayoutParams((int) (this.b.getCreativeWidth() * m.a().i), (int) (this.b.getCreativeHeight() * m.a().j), 17);
            }
            frameLayout.addView(view, layoutParams);
        }
        this.c.visible();
    }

    private void h() {
        if (this.a != null) {
            InterstitialAdViewImpl interstitialAdViewImpl = this.f;
            if (interstitialAdViewImpl != null && interstitialAdViewImpl.getAdDispatcher() != null) {
                this.f.getAdDispatcher().b();
            }
            this.a.finish();
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    public void a() {
        Activity activity;
        int i;
        InterstitialAdViewImpl interstitialAdViewImpl = InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE;
        if (interstitialAdViewImpl == null || interstitialAdViewImpl.getAdQueue().peek() == null || !(InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE.getAdQueue().peek().c() instanceof AdWebView)) {
            return;
        }
        AdWebView adWebView = (AdWebView) InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE.getAdQueue().peek().c();
        adWebView.getSettings().setLoadsImagesAutomatically(true);
        if (adWebView.isBackgroundDim()) {
            activity = this.a;
            i = R.style.OctopusDialogStyle;
        } else {
            activity = this.a;
            i = R.style.OctopusDialogStyleTran;
        }
        activity.setTheme(i);
        if (adWebView.isVideoFullScreen()) {
            this.a.setTheme(R.style.OctopusTheme_Transparent);
            this.a.requestWindowFeature(1);
            this.a.getWindow().setFlags(1024, 1024);
        }
        this.d = new FrameLayout(this.a);
        this.d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        this.a.setContentView(this.d);
        this.e = this.a.getIntent().getLongExtra(InterstitialAdViewImpl.INTENT_KEY_TIME, System.currentTimeMillis());
        a(InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE);
    }

    @Override // com.octopus.ad.AdActivity.a
    public void b() {
        InterstitialAdViewImpl interstitialAdViewImpl = this.f;
        if (interstitialAdViewImpl == null || interstitialAdViewImpl.getAdDispatcher() == null || this.f.isRewardVideo() || this.a == null) {
            return;
        }
        this.f.getAdDispatcher().b();
        this.a.finish();
    }

    @Override // com.octopus.ad.AdActivity.a
    public void c() {
        AdWebView adWebView = this.b;
        if (adWebView != null) {
            ViewUtil.removeChildFromParent(adWebView);
            this.b.destroy();
            AdVideoView adVideoView = this.b.mAdVideoView;
            if (adVideoView != null) {
                adVideoView.destroy();
            }
        }
        InterstitialAdViewImpl interstitialAdViewImpl = this.f;
        if (interstitialAdViewImpl != null) {
            interstitialAdViewImpl.setAdImplementation(null);
        }
        this.a.finish();
    }

    @Override // com.octopus.ad.AdActivity.a
    public void d() {
    }

    @Override // com.octopus.ad.AdActivity.a
    public void e() {
        InterstitialAdViewImpl interstitialAdViewImpl = this.f;
        if (interstitialAdViewImpl == null || !interstitialAdViewImpl.shouldDismissOnClick()) {
            return;
        }
        h();
    }

    @Override // com.octopus.ad.AdActivity.a
    public WebView f() {
        return this.b;
    }

    public void g() {
        com.octopus.ad.internal.view.b realDisplayable;
        com.octopus.ad.internal.view.b bVar;
        FrameLayout frameLayout;
        View view;
        ViewGroup.LayoutParams layoutParams;
        AdWebView adWebView = this.b;
        if (adWebView == null || (realDisplayable = adWebView.getRealDisplayable()) == (bVar = this.c)) {
            return;
        }
        this.d.removeView(bVar.getView());
        if (realDisplayable instanceof AdVideoView) {
            frameLayout = this.d;
            view = realDisplayable.getView();
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        } else {
            frameLayout = this.d;
            view = realDisplayable.getView();
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        frameLayout.addView(view, layoutParams);
        this.c = realDisplayable;
        realDisplayable.visible();
    }
}
