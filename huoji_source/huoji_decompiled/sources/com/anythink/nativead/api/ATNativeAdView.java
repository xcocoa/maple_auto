package com.anythink.nativead.api;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.nativead.api.NativeAd;

/* JADX INFO: loaded from: classes.dex */
public class ATNativeAdView extends FrameLayout {
    private static final String TAG = ATNativeAdView.class.getSimpleName();
    public View mAdView;
    public NativeAd.ImpressionEventListener mImpressionEventListener;
    public boolean mIsInWindow;
    public NativeAd mNativeAd;
    public int mNativeAdId;

    public ATNativeAdView(Context context) {
        super(context);
    }

    public ATNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ATNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void callbackImpression() {
        NativeAd.ImpressionEventListener impressionEventListener = this.mImpressionEventListener;
        if (impressionEventListener != null) {
            impressionEventListener.onImpression();
        }
    }

    public synchronized void attachNativeAd(NativeAd nativeAd) {
        this.mNativeAd = nativeAd;
    }

    public synchronized void clear() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            try {
                nativeAd.clear(this);
            } catch (Throwable unused) {
            }
            this.mNativeAd = null;
        }
    }

    public void clearImpressionListener(int i) {
        if (this.mNativeAdId == i) {
            this.mImpressionEventListener = null;
        }
    }

    public void destory() {
        this.mImpressionEventListener = null;
    }

    public boolean isAttachInWindow() {
        return this.mIsInWindow;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsInWindow = true;
        if (getVisibility() == 0) {
            callbackImpression();
        }
        if (isHardwareAccelerated()) {
            return;
        }
        Log.w(TAG, "Native ads of some video types may display abnormally, because this view is attached to a window that does not enable hardware acceleration.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsInWindow = false;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0 && getVisibility() == 0) {
            callbackImpression();
        }
    }

    public void renderView(int i, View view, NativeAd.ImpressionEventListener impressionEventListener) {
        View view2 = this.mAdView;
        if (view2 != null) {
            removeView(view2);
        }
        this.mAdView = view;
        this.mNativeAdId = i;
        this.mImpressionEventListener = impressionEventListener;
        addView(view);
        if (this.mIsInWindow && getVisibility() == 0) {
            callbackImpression();
        }
    }
}
