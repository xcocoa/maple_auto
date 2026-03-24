package com.iflytek.voiceads.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.iflytek.voiceads.listener.InternalListener;
import com.iflytek.voiceads.utils.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class InterstitialAdView extends AdView {
    private Context t;
    private final String u;

    public InterstitialAdView(Context context) {
        super(context);
        this.u = "close_widget";
    }

    public InterstitialAdView(Context context, RelativeLayout relativeLayout, String str, InternalListener internalListener) {
        super(context, relativeLayout, str, a.EnumC0185a.INTERSTITIAL, internalListener);
        this.u = "close_widget";
        this.t = context.getApplicationContext();
    }

    private void a(ImageView imageView) {
        new com.iflytek.voiceads.b.a(this.t.getApplicationContext(), this.g.I).a(new g(this, imageView));
    }

    @Override // com.iflytek.voiceads.view.AdView
    public void j() {
        if (this.g == null || TextUtils.isEmpty(this.g.I)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "adview parent is null");
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if ("close_widget".equals(viewGroup.getChildAt(i).getTag())) {
                return;
            }
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = displayMetrics.density;
        int iMin = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) - 40;
        int i2 = (int) (25.0f * f);
        int i3 = (int) (0.3d * ((double) i2));
        ImageView imageView = new ImageView(this.t);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, (int) (f * 25.0f));
        layoutParams.topMargin = i3;
        layoutParams.leftMargin = (iMin - i2) - i3;
        imageView.setTag("close_widget");
        viewGroup.addView(imageView, layoutParams);
        a(imageView);
        imageView.setOnClickListener(new f(this));
    }

    @Override // com.iflytek.voiceads.view.AdView
    public void k() {
        int iMin = Math.min(com.iflytek.voiceads.param.d.c(this.t), com.iflytek.voiceads.param.d.d(this.t)) - 40;
        int iB = (this.e.b() * iMin) / this.e.a();
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "InterstitialAdView adWidth=" + iMin + ", adHeight=" + iB);
        this.b.setGravity(17);
        a(iMin, iB);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
