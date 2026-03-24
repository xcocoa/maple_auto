package cn.haorui.sdk.adsail_ad.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class HRBannerRootView extends RelativeLayout {
    private static final String TAG = HRBannerRootView.class.getSimpleName();
    private IBannerAdListener adListener;

    public HRBannerRootView(Context context) {
        super(context);
    }

    public HRBannerRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HRBannerRootView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0 && isShown() && this.adListener != null) {
            LogUtil.d(TAG, "send onADExposure");
            this.adListener.onADExposure();
        }
    }

    public void setAdListener(IBannerAdListener iBannerAdListener) {
        this.adListener = iBannerAdListener;
    }
}
