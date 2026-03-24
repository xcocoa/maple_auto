package cn.haorui.sdk.adsail_ad.draw;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.ad.draw.DrawAdListener;
import cn.haorui.sdk.core.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class HRDrawRootView extends RelativeLayout {
    private static final String TAG = HRDrawRootView.class.getSimpleName();
    private DrawAdListener adListener;
    public OnVisibilityChangeListener listener;

    public interface OnVisibilityChangeListener {
        void onVisibility(int i);
    }

    public HRDrawRootView(Context context) {
        super(context);
    }

    public HRDrawRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HRDrawRootView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        String str = TAG;
        LogUtil.e(str, "visibility=" + i);
        OnVisibilityChangeListener onVisibilityChangeListener = this.listener;
        if (onVisibilityChangeListener != null) {
            onVisibilityChangeListener.onVisibility(i);
        }
        if (i == 0 && isShown() && this.adListener != null) {
            LogUtil.d(str, "send onADExposure");
            this.adListener.onAdExposure();
        }
    }

    public void setAdListener(DrawAdListener drawAdListener) {
        this.adListener = drawAdListener;
    }

    public void setOnVisibilityChangeListener(OnVisibilityChangeListener onVisibilityChangeListener) {
        this.listener = onVisibilityChangeListener;
    }
}
