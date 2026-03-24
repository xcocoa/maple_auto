package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class GestureG2CV2View extends BaseG2CV2View {
    public ImageView c;
    public ImageView d;
    public TextView e;
    public Animation f;
    public int g;
    public RelativeLayout h;
    public d i;
    private boolean j;
    private float k;
    private float l;
    private int m;

    public GestureG2CV2View(Context context) {
        super(context);
        this.j = false;
    }

    public static /* synthetic */ float b(GestureG2CV2View gestureG2CV2View, float f) {
        float f2 = gestureG2CV2View.l + f;
        gestureG2CV2View.l = f2;
        return f2;
    }

    private void c() {
        if (this.f == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -this.g, 0.0f, 0.0f);
            this.f = translateAnimation;
            translateAnimation.setDuration(1000L);
            this.f.setRepeatCount(-1);
            this.f.setRepeatMode(2);
            this.c.startAnimation(this.f);
        }
    }

    private d d() {
        for (ViewParent parent = getParent(); parent.getParent() != null; parent = parent.getParent()) {
            if (parent instanceof d) {
                return (d) parent;
            }
        }
        return null;
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a() {
        super.a();
        Animation animation = this.f;
        if (animation != null) {
            animation.start();
        }
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a(int i, int i2) {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_g2c_v2_gesture", "layout"), this);
        this.m = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.c = (ImageView) findViewById(i.a(getContext(), "myoffer_g2c_slide_finger", "id"));
        this.d = (ImageView) findViewById(i.a(getContext(), "myoffer_g2c_white_line", "id"));
        this.e = (TextView) findViewById(i.a(getContext(), "myoffer_g2c_slide_hint", "id"));
        this.h = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_g2c_item_container", "id"));
        this.g = i.a(getContext(), 36.0f);
        if (i == 1 || i == 3) {
            this.h.setBackgroundResource(i.a(getContext(), "myoffer_g2c_gesture_bg", com.anythink.expressad.foundation.h.i.c));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i.a(getContext(), 270.0f), i.a(getContext(), 100.0f));
            layoutParams.addRule(13);
            this.h.setLayoutParams(layoutParams);
            this.d.setVisibility(0);
        } else if (i == 2) {
            this.h.setBackgroundColor(Color.parseColor("#80000000"));
            this.d.setVisibility(0);
            if (this.j) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.d.getLayoutParams();
                layoutParams2.width = i.a(getContext(), 240.0f);
                this.d.setLayoutParams(layoutParams2);
            }
        } else {
            ViewGroup.LayoutParams layoutParams3 = this.c.getLayoutParams();
            layoutParams3.height = i.a(getContext(), 24.0f);
            layoutParams3.width = i.a(getContext(), 24.0f);
            this.g = i.a(getContext(), 24.0f);
            this.c.setLayoutParams(layoutParams3);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.d.getLayoutParams();
            layoutParams4.width = i.a(getContext(), 150.0f);
            layoutParams4.height = i.a(getContext(), 4.0f);
            layoutParams4.setMargins(layoutParams4.leftMargin, layoutParams4.topMargin, layoutParams4.rightMargin, i.a(getContext(), 8.0f));
            this.d.setLayoutParams(layoutParams4);
            LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.e.getLayoutParams();
            layoutParams5.setMargins(i.a(getContext(), 8.0f), layoutParams5.topMargin, layoutParams5.rightMargin, layoutParams5.bottomMargin);
            this.e.setTextSize(1, 10.0f);
            setBackgroundColor(Color.parseColor("#80000000"));
            post(new Runnable() { // from class: com.anythink.basead.ui.guidetoclickv2.GestureG2CV2View.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (GestureG2CV2View.this.getMeasuredWidth() < i.a(GestureG2CV2View.this.getContext(), 182.0f)) {
                        RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) GestureG2CV2View.this.d.getLayoutParams();
                        layoutParams6.width = -1;
                        GestureG2CV2View.this.d.setLayoutParams(layoutParams6);
                    }
                    GestureG2CV2View.this.d.setVisibility(0);
                }
            });
        }
        if (this.f == null) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -this.g, 0.0f, 0.0f);
            this.f = translateAnimation;
            translateAnimation.setDuration(1000L);
            this.f.setRepeatCount(-1);
            this.f.setRepeatMode(2);
            this.c.startAnimation(this.f);
        }
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void b() {
        super.b();
        Animation animation = this.f;
        if (animation != null) {
            animation.cancel();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        d dVar;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (true) {
            if (parent.getParent() == null) {
                dVar = null;
                break;
            } else {
                if (parent instanceof d) {
                    dVar = (d) parent;
                    break;
                }
                parent = parent.getParent();
            }
        }
        this.i = dVar;
        if (dVar != null) {
            dVar.setCallback(new c() { // from class: com.anythink.basead.ui.guidetoclickv2.GestureG2CV2View.2
                @Override // com.anythink.basead.ui.guidetoclickv2.c
                public final boolean a(MotionEvent motionEvent) {
                    int action = motionEvent.getAction();
                    if (action != 0) {
                        if (action == 1) {
                            if (GestureG2CV2View.this.l <= GestureG2CV2View.this.m) {
                                return false;
                            }
                            b.a aVar = GestureG2CV2View.this.b;
                            if (aVar != null) {
                                aVar.a(11, 15);
                            }
                            return true;
                        }
                        if (action != 2) {
                            return false;
                        }
                        GestureG2CV2View.b(GestureG2CV2View.this, Math.abs(motionEvent.getX() - GestureG2CV2View.this.k));
                    }
                    GestureG2CV2View.this.k = motionEvent.getX();
                    return false;
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d dVar = this.i;
        if (dVar != null) {
            dVar.setCallback(null);
        }
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        Animation animation = this.f;
        if (animation != null) {
            animation.cancel();
        }
    }

    public void setVerticalLandscape(boolean z) {
        this.j = z;
    }
}
