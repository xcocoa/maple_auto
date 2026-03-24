package com.octopus.ad.utils;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.widget.ScrollClickView;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public int a;
    public int b;
    private Context c;
    private int d;
    private int e;
    private a f = null;
    private boolean g = false;
    private int h = 200;
    private ScrollClickView i;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public i(Context context) {
        this.c = context;
    }

    public static Pair<Integer, Boolean> c(int i) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        return iRandom <= i ? new Pair<>(Integer.valueOf(iRandom), Boolean.TRUE) : new Pair<>(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    private void d() {
        if (((Boolean) c(this.e).second).booleanValue()) {
            c.a(new Runnable() { // from class: com.octopus.ad.utils.i.1
                @Override // java.lang.Runnable
                public void run() {
                    i.this.b();
                }
            }, this.d + (((Integer) r0.first).intValue() * 10));
        }
    }

    public View a(final int i, final int i2) {
        com.octopus.ad.utils.b.f.a("ScrollClickUtil", "enter getScrollClick");
        if (this.c == null) {
            return null;
        }
        try {
            ScrollClickView scrollClickView = new ScrollClickView(this.c);
            this.i = scrollClickView;
            scrollClickView.setScrollDirection(ScrollClickView.DIR_UP);
            this.i.setTitleText("向上滑动");
            this.i.setTitleFont(15);
            this.i.setDetailText("解锁更多有趣内容");
            this.i.setDetailsFont(12);
            int i3 = Integer.parseInt("50");
            int i4 = Integer.parseInt("80");
            this.i.setHandWidth(i3);
            this.i.setScrollbarHeight(i4);
            this.i.buildRealView();
            TextUtils.isEmpty("50%");
            TextUtils.isEmpty("50%");
            this.a = "50%".endsWith("%") ? (Integer.parseInt("50%".substring(0, "50%".indexOf("%"))) * i) / 100 : Integer.parseInt("50%");
            this.b = "50%".endsWith("%") ? (Integer.parseInt("50%".substring(0, "50%".indexOf("%"))) * i2) / 100 : Integer.parseInt("50%");
            this.a = ViewUtil.dip2px(this.c, this.a);
            this.b = ViewUtil.dip2px(this.c, this.b);
            final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            com.octopus.ad.utils.b.f.a("ScrollClickUtil", "topInt = " + this.b + ",centerXInt = " + this.a + ",adWidthDp = " + i + ",adHeightDp = " + i2);
            this.i.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.octopus.ad.utils.i.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (i.this.i == null) {
                        return;
                    }
                    i.this.i.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    int measuredWidth = i.this.i.getMeasuredWidth();
                    i iVar = i.this;
                    if (iVar.b == 0) {
                        iVar.b = ViewUtil.dip2px(iVar.c, i2) / 2;
                    }
                    i iVar2 = i.this;
                    if (iVar2.a == 0) {
                        iVar2.a = ViewUtil.dip2px(iVar2.c, i) / 2;
                    }
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    i iVar3 = i.this;
                    layoutParams2.topMargin = iVar3.b;
                    layoutParams2.leftMargin = iVar3.a - (measuredWidth / 2);
                    iVar3.i.setLayoutParams(layoutParams);
                    com.octopus.ad.utils.b.f.a("ScrollClickUtil", "topMargin = " + layoutParams.topMargin + ",leftMargin = " + layoutParams.leftMargin + ",scrollViewWidthInt = " + measuredWidth);
                }
            });
            this.i.setLayoutParams(layoutParams);
            this.i.postDelayed(new Runnable() { // from class: com.octopus.ad.utils.i.3
                @Override // java.lang.Runnable
                public void run() {
                    i.this.i.startAnim();
                }
            }, 10L);
            return this.i;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a() {
        a(1000);
        b(0);
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(a aVar) {
        this.f = aVar;
    }

    public void b() {
        StringBuilder sb = new StringBuilder();
        sb.append("enter callBackShakeHappened and mShakeStateListener != null ? ");
        sb.append(this.f != null);
        sb.append(",!isCallBack = ");
        sb.append(!this.g);
        com.octopus.ad.utils.b.f.a("ScrollClickUtil", sb.toString());
        if (this.f == null || this.g) {
            return;
        }
        com.octopus.ad.utils.b.f.a("ScrollClickUtil", "callback onShakeHappened()");
        this.f.a("100", "200", "105", "206", "100", "200", "105", "206");
        this.g = true;
        ScrollClickView scrollClickView = this.i;
        if (scrollClickView != null) {
            scrollClickView.stopAnim();
        }
    }

    public void b(int i) {
        this.e = i;
        d();
    }

    public void c() {
        this.g = false;
        ScrollClickView scrollClickView = this.i;
        if (scrollClickView != null) {
            scrollClickView.stopAnim();
        }
        this.f = null;
        this.c = null;
        this.i = null;
        this.h = 200;
    }
}
