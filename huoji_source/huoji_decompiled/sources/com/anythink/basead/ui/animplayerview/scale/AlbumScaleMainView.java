package com.anythink.basead.ui.animplayerview.scale;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.anythink.basead.ui.WrapRoundImageView;
import com.anythink.basead.ui.animplayerview.a;
import com.anythink.basead.ui.animplayerview.b;
import com.anythink.core.common.o.c;
import com.anythink.core.common.ui.component.RoundImageView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AlbumScaleMainView extends FrameLayout implements Handler.Callback, b {
    public static final int MAIN_VIEW_INIT_HEIGHT = 42;
    public static final int MAIN_VIEW_INIT_WIDTH = 90;
    private final int a;
    private final int b;
    private RoundImageView c;
    private WrapRoundImageView d;
    private AlbumScaleMainView e;
    private AnimatorSet f;
    private AnimatorSet g;
    private Handler h;
    private long i;

    /* JADX INFO: renamed from: com.anythink.basead.ui.animplayerview.scale.AlbumScaleMainView$3, reason: invalid class name */
    public class AnonymousClass3 extends a {
        public AnonymousClass3() {
        }

        @Override // com.anythink.basead.ui.animplayerview.a, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AlbumScaleMainView.this.h.sendEmptyMessageDelayed(100, 500L);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.animplayerview.scale.AlbumScaleMainView$4, reason: invalid class name */
    public class AnonymousClass4 extends a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.basead.ui.animplayerview.a, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (AlbumScaleMainView.this.h != null) {
                AlbumScaleMainView.this.h.sendEmptyMessageDelayed(100, 500L);
            }
        }
    }

    public AlbumScaleMainView(Context context) {
        this(context, null);
    }

    public AlbumScaleMainView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlbumScaleMainView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 100;
        this.b = com.anythink.expressad.d.b.b;
        this.c = new RoundImageView(context);
        this.d = new WrapRoundImageView(context);
        this.c.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.d.setScaleType(ImageView.ScaleType.CENTER_CROP);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        addView(this.c, layoutParams);
        addView(this.d, layoutParams2);
        this.h = new Handler(Looper.getMainLooper(), this);
    }

    private void a() {
        float mainViewScale = getMainViewScale();
        if (mainViewScale == 1.0f) {
            return;
        }
        if (this.f == null) {
            this.f = new AnimatorSet();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, mainViewScale);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, mainViewScale);
            long j = this.i;
            if (j > 0) {
                this.f.setStartDelay(j);
            }
            this.f.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f.setDuration(4000L);
            this.f.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f.addListener(new AnonymousClass3());
        }
        this.f.start();
    }

    private void b() {
        AlbumScaleMainView albumScaleMainView = this.e;
        if (albumScaleMainView == null) {
            return;
        }
        if (albumScaleMainView.getVisibility() != 0) {
            this.e.setVisibility(0);
        }
        if (this.g == null) {
            this.g = new AnimatorSet();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.e, "scaleX", 1.0f, 1.3f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.e, "scaleY", 1.0f, 1.3f);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.e, "alpha", 0.4f, 0.0f);
            this.g.setDuration(500L);
            this.g.setInterpolator(new LinearInterpolator());
            this.g.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
            this.g.addListener(new AnonymousClass4());
        }
        AnimatorSet animatorSet = this.g;
        if (animatorSet == null || animatorSet.isStarted()) {
            return;
        }
        this.g.start();
    }

    public float getMainViewScale() {
        if (getLayoutParams() == null) {
            return 1.0f;
        }
        return Math.min(getContext().getResources().getDisplayMetrics().widthPixels, getContext().getResources().getDisplayMetrics().heightPixels) / Math.min(r0.width, r0.height);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        AlbumScaleMainView albumScaleMainView;
        if (message.what == 100 && (albumScaleMainView = this.e) != null) {
            if (albumScaleMainView.getVisibility() != 0) {
                this.e.setVisibility(0);
            }
            if (this.g == null) {
                this.g = new AnimatorSet();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.e, "scaleX", 1.0f, 1.3f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.e, "scaleY", 1.0f, 1.3f);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.e, "alpha", 0.4f, 0.0f);
                this.g.setDuration(500L);
                this.g.setInterpolator(new LinearInterpolator());
                this.g.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
                this.g.addListener(new AnonymousClass4());
            }
            AnimatorSet animatorSet = this.g;
            if (animatorSet != null && !animatorSet.isStarted()) {
                this.g.start();
            }
        }
        return false;
    }

    public void initView(final Bitmap bitmap, boolean z) {
        c.a(getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.animplayerview.scale.AlbumScaleMainView.1
            @Override // com.anythink.core.common.o.c.a
            public final void a() {
            }

            @Override // com.anythink.core.common.o.c.a
            public final void a(Bitmap bitmap2) {
                AlbumScaleMainView.this.c.setImageBitmap(bitmap2);
            }
        });
        this.d.post(new Runnable() { // from class: com.anythink.basead.ui.animplayerview.scale.AlbumScaleMainView.2
            @Override // java.lang.Runnable
            public final void run() {
                AlbumScaleMainView.this.d.setBitmapAndResize(bitmap, AlbumScaleMainView.this.getWidth(), AlbumScaleMainView.this.getHeight());
            }
        });
        if (z) {
            AlbumScaleMainView albumScaleMainView = new AlbumScaleMainView(getContext());
            this.e = albumScaleMainView;
            albumScaleMainView.initView(bitmap, false);
            this.e.setVisibility(4);
            addView(this.e, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void pause() {
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                animatorSet.pause();
            } else {
                stop();
            }
        }
    }

    public void release() {
        stop();
        removeAllViews();
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void resume() {
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                animatorSet.resume();
            } else {
                start();
            }
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void setBitmapResources(List<Bitmap> list) {
    }

    public void setStartDelay(long j) {
        this.i = j;
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void start() {
        float mainViewScale = getMainViewScale();
        if (mainViewScale != 1.0f) {
            if (this.f == null) {
                this.f = new AnimatorSet();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, mainViewScale);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, mainViewScale);
                long j = this.i;
                if (j > 0) {
                    this.f.setStartDelay(j);
                }
                this.f.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                this.f.setDuration(4000L);
                this.f.setInterpolator(new AccelerateDecelerateInterpolator());
                this.f.addListener(new AnonymousClass3());
            }
            this.f.start();
        }
    }

    @Override // com.anythink.basead.ui.animplayerview.b
    public void stop() {
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.f.cancel();
            this.f = null;
        }
        AnimatorSet animatorSet2 = this.g;
        if (animatorSet2 != null) {
            animatorSet2.removeAllListeners();
            this.g.cancel();
            this.g = null;
        }
        Handler handler = this.h;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }
}
