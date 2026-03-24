package cn.haorui.sdk.core.ad.banner;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.loader.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class BannerAd extends BaseAd implements IBannerAd {
    public BannerAd(d dVar, String str) {
        super(dVar, str);
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void setCloseButtonVisible(boolean z) {
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void setWidthAndHeight(int i, int i2) {
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void showAd(Activity activity, ViewGroup viewGroup) {
        if (this.adView.getParent() != null && (this.adView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.adView.getParent()).removeView(this.adView);
        }
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            viewGroup.addView(this.adView);
        }
    }

    @Override // cn.haorui.sdk.core.ad.banner.IBannerAd
    public void showAd(ViewGroup viewGroup) {
        View view = this.adView;
        if (view == null) {
            return;
        }
        if (view.getParent() != null && (this.adView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.adView.getParent()).removeView(this.adView);
        }
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            viewGroup.addView(this.adView);
        }
    }
}
