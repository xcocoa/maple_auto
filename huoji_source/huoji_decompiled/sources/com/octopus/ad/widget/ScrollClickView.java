package com.octopus.ad.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.octopus.ad.R;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.utils.b.f;

/* JADX INFO: loaded from: classes2.dex */
public class ScrollClickView extends LinearLayout {
    public static final String DIR_DOWN = "down";
    public static final String DIR_LEFT = "left";
    public static final String DIR_RIGHT = "right";
    public static final String DIR_UP = "up";
    public ImageView a;
    public ImageView b;
    public TextView c;
    public TextView d;
    private boolean e;
    private String f;
    private String g;
    private int h;
    private int i;
    private String j;
    private int k;
    private int l;
    private ValueAnimator m;
    private Context n;
    private FrameLayout o;
    private FrameLayout p;
    private LinearLayout q;

    public ScrollClickView(Context context) {
        super(context);
        this.e = false;
        this.j = DIR_UP;
        this.k = 45;
        this.l = 180;
        this.q = null;
        init(context);
    }

    public ScrollClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.j = DIR_UP;
        this.k = 45;
        this.l = 180;
        this.q = null;
        init(context);
    }

    public ScrollClickView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.j = DIR_UP;
        this.k = 45;
        this.l = 180;
        this.q = null;
        init(context);
    }

    private void a() {
        this.a.post(new Runnable() { // from class: com.octopus.ad.widget.ScrollClickView.1
            @Override // java.lang.Runnable
            public void run() {
                if (ScrollClickView.this.o == null || ScrollClickView.this.p == null) {
                    f.b("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
                    return;
                }
                if (ScrollClickView.this.a.getLayoutParams() == null) {
                    return;
                }
                final int i = ScrollClickView.this.a.getLayoutParams().height;
                ScrollClickView scrollClickView = ScrollClickView.this;
                scrollClickView.m = ValueAnimator.ofInt(i, scrollClickView.l);
                f.b("ScrollClickUtil", "handHeight = " + i + ",scrollbarHeight = " + ScrollClickView.this.l);
                ViewGroup.LayoutParams layoutParams = ScrollClickView.this.b.getLayoutParams();
                StringBuilder sb = new StringBuilder();
                sb.append("handHeight = ");
                sb.append(i);
                f.b("ScrollClickUtil", sb.toString());
                if (layoutParams != null) {
                    layoutParams.height = ScrollClickView.this.l;
                }
                ScrollClickView.this.m.setDuration(1000L);
                ScrollClickView.this.m.setRepeatCount(-1);
                ScrollClickView.this.m.setRepeatMode(1);
                ScrollClickView.this.m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.octopus.ad.widget.ScrollClickView.1.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        ViewGroup.LayoutParams layoutParams2 = ScrollClickView.this.a.getLayoutParams();
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams2).topMargin = ScrollClickView.this.l - iIntValue;
                        }
                        ViewGroup.LayoutParams layoutParams3 = ScrollClickView.this.p.getLayoutParams();
                        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
                            layoutParams3.height = iIntValue - (i / 3);
                            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                            layoutParams4.topMargin = ScrollClickView.this.l - layoutParams4.height;
                        }
                        ScrollClickView.this.o.requestLayout();
                    }
                });
            }
        });
    }

    private void b() {
        this.a.post(new Runnable() { // from class: com.octopus.ad.widget.ScrollClickView.2
            @Override // java.lang.Runnable
            public void run() {
                if (ScrollClickView.this.o == null || ScrollClickView.this.p == null) {
                    f.b("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
                    return;
                }
                if (ScrollClickView.this.a.getLayoutParams() == null) {
                    return;
                }
                final int i = ScrollClickView.this.a.getLayoutParams().height;
                ScrollClickView scrollClickView = ScrollClickView.this;
                scrollClickView.m = ValueAnimator.ofInt(i, scrollClickView.l);
                ViewGroup.LayoutParams layoutParams = ScrollClickView.this.b.getLayoutParams();
                f.b("ScrollClickUtil", "handHeight = " + i);
                if (layoutParams != null) {
                    layoutParams.height = ScrollClickView.this.l;
                }
                ScrollClickView.this.m.setDuration(1000L);
                ScrollClickView.this.m.setRepeatCount(-1);
                ScrollClickView.this.m.setRepeatMode(1);
                ScrollClickView.this.m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.octopus.ad.widget.ScrollClickView.2.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        ViewGroup.LayoutParams layoutParams2 = ScrollClickView.this.o.getLayoutParams();
                        if (layoutParams2 != null) {
                            layoutParams2.height = iIntValue;
                        }
                        ViewGroup.LayoutParams layoutParams3 = ScrollClickView.this.p.getLayoutParams();
                        if (layoutParams3 != null) {
                            layoutParams3.height = iIntValue - (i / 3);
                        }
                        ScrollClickView.this.o.requestLayout();
                    }
                });
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void buildRealView() {
        LayoutInflater layoutInflaterFrom;
        int i;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        try {
        } catch (Throwable th) {
            th.printStackTrace();
            if (DIR_UP.equalsIgnoreCase(this.j)) {
                layoutInflaterFrom = LayoutInflater.from(this.n.getApplicationContext());
                i = R.layout.oct_layout_scrollview_up;
            } else if (DIR_DOWN.equalsIgnoreCase(this.j)) {
                layoutInflaterFrom = LayoutInflater.from(this.n.getApplicationContext());
                i = R.layout.oct_layout_scrollview_down;
            }
            this.q = (LinearLayout) layoutInflaterFrom.inflate(i, this);
        }
        if (!DIR_UP.equalsIgnoreCase(this.j)) {
            if (DIR_DOWN.equalsIgnoreCase(this.j)) {
                linearLayout2 = (LinearLayout) LayoutInflater.from(this.n).inflate(R.layout.oct_layout_scrollview_down, this);
            }
            linearLayout = this.q;
            if (linearLayout != null) {
                return;
            }
            this.a = (ImageView) linearLayout.findViewById(R.id.hand);
            this.b = (ImageView) this.q.findViewById(R.id.scrollbar);
            this.c = (TextView) this.q.findViewById(R.id.title);
            this.d = (TextView) this.q.findViewById(R.id.details);
            this.o = (FrameLayout) this.q.findViewById(R.id.scroll_container);
            this.p = (FrameLayout) this.q.findViewById(R.id.scrollbar_container);
            this.k = ViewUtil.dip2px(this.n, this.k);
            this.l = ViewUtil.dip2px(this.n, this.l) + this.k;
            TextView textView = this.c;
            if (textView != null) {
                textView.setText(this.f);
                this.c.setTextSize(2, this.h);
            }
            TextView textView2 = this.d;
            if (textView2 != null) {
                textView2.setText(this.g);
                this.d.setTextSize(2, this.i);
            }
            ImageView imageView = this.a;
            if (imageView == null || this.b == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = this.b.getLayoutParams();
            if (layoutParams != null) {
                int i2 = this.k;
                layoutParams.width = i2;
                layoutParams.height = i2;
                if (layoutParams2 != null) {
                    layoutParams2.height = this.l;
                    layoutParams2.width = (int) (i2 * 0.55f);
                }
            }
            if (DIR_DOWN.equalsIgnoreCase(this.j)) {
                b();
                return;
            } else if (DIR_UP.equalsIgnoreCase(this.j)) {
                a();
                return;
            } else {
                if (DIR_LEFT.equalsIgnoreCase(this.j)) {
                    return;
                }
                DIR_RIGHT.equalsIgnoreCase(this.j);
                return;
            }
        }
        linearLayout2 = (LinearLayout) LayoutInflater.from(this.n).inflate(R.layout.oct_layout_scrollview_up, this);
        this.q = linearLayout2;
        linearLayout = this.q;
        if (linearLayout != null) {
        }
    }

    public void init(Context context) {
        if (this.e) {
            return;
        }
        this.n = context;
        this.e = true;
    }

    public void setDetailText(String str) {
        this.g = str;
    }

    public void setDetailsFont(int i) {
        this.i = i;
    }

    public void setHandWidth(int i) {
        this.k = i;
    }

    public void setScrollDirection(String str) {
        this.j = str;
    }

    public void setScrollbarHeight(int i) {
        this.l = i;
    }

    public void setTitleFont(int i) {
        this.h = i;
    }

    public void setTitleText(String str) {
        this.f = str;
    }

    public void startAnim() {
        StringBuilder sb = new StringBuilder();
        sb.append("startAnim animator != null ? ");
        sb.append(this.m != null);
        f.b("ScrollClickUtil", sb.toString());
        ValueAnimator valueAnimator = this.m;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public void stopAnim() {
        ValueAnimator valueAnimator = this.m;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.m.cancel();
        }
    }
}
