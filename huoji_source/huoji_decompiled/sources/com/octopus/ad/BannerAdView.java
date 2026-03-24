package com.octopus.ad;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.octopus.ad.internal.g;
import com.octopus.ad.internal.nativead.NativeAdShownListener;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.view.AdViewImpl;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class BannerAdView extends FrameLayout {
    public final AdViewImpl a;

    public BannerAdView(Context context, AdViewImpl adViewImpl) {
        super(context);
        this.a = adViewImpl;
        a();
    }

    private void a() {
        setBackgroundColor(0);
        setPadding(0, 0, 0, 0);
        addView(this.a);
    }

    public void checkShow() {
        g.a(this, new NativeAdShownListener() { // from class: com.octopus.ad.BannerAdView.1
            @Override // com.octopus.ad.internal.nativead.NativeAdShownListener
            public void onAdShown() {
                AdViewImpl adViewImpl = BannerAdView.this.a;
                if (adViewImpl != null) {
                    adViewImpl.onBannerAdShow();
                }
            }
        });
    }

    public a getAdSize() {
        return this.a.getAdSize();
    }

    public boolean getResizeAdToFitContainer() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AdViewImpl adViewImpl = this.a;
        if (adViewImpl != null) {
            adViewImpl.activityOnDestroy();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iA;
        if (getResizeAdToFitContainer()) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
            super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(iMakeMeasureSpec) / 6, 1073741824));
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int measuredWidth = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            a adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                HaoboLog.e(HaoboLog.baseLogTag, "Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                int iB = adSize.b(context);
                iA = adSize.a(context);
                measuredWidth = iB;
            } else {
                iA = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            measuredWidth = childAt.getMeasuredWidth();
            iA = childAt.getMeasuredHeight();
        }
        int iMax = Math.max(measuredWidth, getSuggestedMinimumWidth());
        int iMax2 = Math.max(iA, getSuggestedMinimumHeight());
        if (mode == 1073741824) {
            iMax = View.MeasureSpec.getSize(i);
        }
        if (mode2 == 1073741824) {
            iMax2 = View.MeasureSpec.getSize(i2);
        }
        setMeasuredDimension(View.resolveSize(iMax, i), View.resolveSize(iMax2, i2));
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (i == 8) {
            this.a.activityOnPause();
        } else {
            this.a.activityOnResume();
        }
    }
}
