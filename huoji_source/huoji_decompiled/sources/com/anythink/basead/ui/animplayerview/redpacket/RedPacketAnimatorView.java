package com.anythink.basead.ui.animplayerview.redpacket;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.anythink.basead.ui.animplayerview.b;
import java.util.List;
import z2.p7;

/* JADX INFO: loaded from: classes.dex */
public class RedPacketAnimatorView extends FrameLayout implements Handler.Callback, b {
    private final int a;
    private final int b;
    private RedPacketView c;
    private ObjectAnimator d;
    private Bitmap e;
    private boolean f;
    private boolean g;
    private int h;
    private Handler i;

    public RedPacketAnimatorView(Context context) {
        this(context, null);
    }

    public RedPacketAnimatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RedPacketAnimatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = p7.OooO0OO;
        this.b = 100;
        this.f = false;
        this.g = false;
        this.i = new Handler(Looper.getMainLooper(), this);
        setClipChildren(false);
        RedPacketView redPacketView = new RedPacketView(getContext());
        this.c = redPacketView;
        addView(redPacketView, new ViewGroup.LayoutParams(-1, -1));
        this.c.setVisibility(4);
    }

    private static ViewGroup.LayoutParams a() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    private void b() {
        RedPacketView redPacketView = this.c;
        if (redPacketView == null) {
            return;
        }
        redPacketView.setTranslationY(-this.h);
        if (this.d == null) {
            this.c.setVisibility(0);
            this.c.initRedPacketList(this.e);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.c, "translationY", -r4, this.h);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.addListener(new com.anythink.basead.ui.animplayerview.a() { // from class: com.anythink.basead.ui.animplayerview.redpacket.RedPacketAnimatorView.1
                @Override // com.anythink.basead.ui.animplayerview.a, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    if (RedPacketAnimatorView.this.i != null) {
                        RedPacketAnimatorView.this.i.removeMessages(100);
                        RedPacketAnimatorView.this.i.sendEmptyMessageDelayed(100, 500L);
                    }
                }
            });
            this.d.setRepeatCount(0);
            this.d.setDuration(4000L);
            this.d.setInterpolator(new LinearInterpolator());
        }
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null && !objectAnimator.isStarted()) {
            this.d.start();
        }
        this.f = true;
        this.g = false;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 100) {
            return false;
        }
        b();
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.h = getMeasuredHeight();
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void pause() {
        Handler handler = this.i;
        if (handler != null) {
            handler.removeMessages(100);
        }
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                objectAnimator.pause();
            } else {
                stop();
            }
        }
    }

    public void release() {
        if (this.g) {
            return;
        }
        stop();
        RedPacketView redPacketView = this.c;
        if (redPacketView != null) {
            redPacketView.release();
        }
        this.g = true;
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void resume() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            if (Build.VERSION.SDK_INT < 19) {
                b();
            } else if (objectAnimator.isPaused()) {
                this.d.resume();
            } else {
                b();
            }
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void setBitmapResources(List<Bitmap> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.e = list.get(0);
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void start() {
        if (this.f) {
            resume();
            return;
        }
        Handler handler = this.i;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(100, 500L);
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void stop() {
        RedPacketView redPacketView = this.c;
        if (redPacketView != null) {
            redPacketView.setTranslationY(-this.h);
        }
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.d.cancel();
            this.d = null;
        }
        Handler handler = this.i;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f = false;
    }
}
