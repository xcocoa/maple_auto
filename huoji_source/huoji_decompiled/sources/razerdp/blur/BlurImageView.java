package razerdp.blur;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import razerdp.util.log.PopupLog;
import z2.ef0;
import z2.gf0;
import z2.hf0;

/* JADX INFO: loaded from: classes2.dex */
public class BlurImageView extends ImageView {
    private static final String Oooooo = "BlurImageView";
    private volatile boolean OoooOoO;
    private WeakReference<gf0> OoooOoo;
    private AtomicBoolean Ooooo00;
    private volatile boolean Ooooo0o;
    private long OooooO0;
    private OooOOO0 OooooOO;
    private OooOOO0 OooooOo;
    private boolean Oooooo0;

    public class OooO implements ValueAnimator.AnimatorUpdateListener {
        public OooO() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BlurImageView.this.setImageAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BlurImageView blurImageView = BlurImageView.this;
            blurImageView.OooOOO(blurImageView.OooooO0);
        }
    }

    public class OooO0O0 extends AnimatorListenerAdapter {
        public OooO0O0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BlurImageView.this.Ooooo0o = false;
        }
    }

    public class OooO0OO implements ValueAnimator.AnimatorUpdateListener {
        public OooO0OO() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BlurImageView.this.setImageAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public class OooO0o extends AnimatorListenerAdapter {
        public OooO0o() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BlurImageView.this.Ooooo0o = false;
        }
    }

    public class OooOO0 implements Runnable {
        public final /* synthetic */ Bitmap OoooOoO;
        public final /* synthetic */ boolean OoooOoo;

        public OooOO0(Bitmap bitmap, boolean z) {
            this.OoooOoO = bitmap;
            this.OoooOoo = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            BlurImageView.this.OooOO0(this.OoooOoO, this.OoooOoo);
        }
    }

    public class OooOO0O implements Runnable {
        public final /* synthetic */ Bitmap OoooOoO;
        public final /* synthetic */ boolean OoooOoo;

        public OooOO0O(Bitmap bitmap, boolean z) {
            this.OoooOoO = bitmap;
            this.OoooOoo = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            BlurImageView.this.OooOO0(this.OoooOoO, this.OoooOoo);
        }
    }

    public class OooOOO implements Runnable {
        private int OoooOoO;
        private int OoooOoo;
        private Bitmap Ooooo00;

        public OooOOO(View view) {
            this.OoooOoO = view.getWidth();
            this.OoooOoo = view.getHeight();
            this.Ooooo00 = ef0.OooO0oO(view, BlurImageView.this.getOption().OooO0OO(), BlurImageView.this.getOption().OooO0oo());
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BlurImageView.this.OoooOoO || BlurImageView.this.getOption() == null) {
                PopupLog.OooO0OO(BlurImageView.Oooooo, "放弃模糊，可能是已经移除了布局");
                return;
            }
            PopupLog.OooO(BlurImageView.Oooooo, "子线程模糊执行");
            BlurImageView blurImageView = BlurImageView.this;
            blurImageView.OooOOO0(ef0.OooO0O0(blurImageView.getContext(), this.Ooooo00, this.OoooOoO, this.OoooOoo, BlurImageView.this.getOption().OooO0Oo()), false);
        }
    }

    public class OooOOO0 {
        private static final long OooO0o0 = 1000;
        public Runnable OooO00o;
        public long OooO0O0;
        public final long OooO0OO = System.currentTimeMillis();

        public OooOOO0(Runnable runnable, long j) {
            this.OooO00o = runnable;
            this.OooO0O0 = j;
        }

        public void OooO00o() {
            Runnable runnable = this.OooO00o;
            if (runnable != null) {
                BlurImageView.this.removeCallbacks(runnable);
            }
            this.OooO00o = null;
            this.OooO0O0 = 0L;
        }

        public void OooO0O0() {
            Runnable runnable = this.OooO00o;
            if (runnable != null) {
                BlurImageView.this.post(runnable);
            }
        }

        public boolean OooO0OO() {
            return System.currentTimeMillis() - this.OooO0OO > OooO0o0;
        }

        public boolean OooO0Oo(Runnable runnable) {
            Runnable runnable2;
            return (runnable == null && this.OooO00o == null) || ((runnable2 = this.OooO00o) != null && runnable2.equals(runnable));
        }

        public void OooO0o0() {
            if (OooO0OO()) {
                PopupLog.OooO0OO(BlurImageView.Oooooo, "模糊超时");
                OooO00o();
            } else {
                Runnable runnable = this.OooO00o;
                if (runnable != null) {
                    BlurImageView.this.post(runnable);
                }
            }
        }
    }

    public BlurImageView(Context context) {
        this(context, null);
    }

    public BlurImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BlurImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = false;
        this.Ooooo00 = new AtomicBoolean(false);
        this.Ooooo0o = false;
        this.Oooooo0 = false;
        OooOO0O();
    }

    private void OooO0oO(gf0 gf0Var, boolean z) {
        if (gf0Var == null) {
            return;
        }
        this.OoooOoo = new WeakReference<>(gf0Var);
        View viewOooO0o0 = gf0Var.OooO0o0();
        if (viewOooO0o0 == null) {
            PopupLog.OooO0OO(Oooooo, "模糊锚点View为空，放弃模糊操作...");
            OooO0oo();
            return;
        }
        if (gf0Var.OooO0oO() && !z) {
            PopupLog.OooO(Oooooo, "子线程blur");
            OooOOo0(viewOooO0o0);
            return;
        }
        try {
            PopupLog.OooO(Oooooo, "主线程blur");
            if (!ef0.OooOO0()) {
                PopupLog.OooO0OO(Oooooo, "不支持脚本模糊。。。最低支持api 17(Android 4.2.2)，将采用fastblur");
            }
            OooOOO0(ef0.OooO0Oo(getContext(), viewOooO0o0, gf0Var.OooO0OO(), gf0Var.OooO0Oo(), gf0Var.OooO0oo()), z);
        } catch (Exception e) {
            PopupLog.OooO0OO(Oooooo, "模糊异常", e);
            e.printStackTrace();
            OooO0oo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOO0(Bitmap bitmap, boolean z) {
        if (bitmap != null) {
            PopupLog.OooO0oo("bitmap: 【" + bitmap.getWidth() + "," + bitmap.getHeight() + "】");
        }
        setImageAlpha(z ? 255 : 0);
        setImageBitmap(bitmap);
        gf0 option = getOption();
        if (option != null && !option.OooO0oo()) {
            View viewOooO0o0 = option.OooO0o0();
            if (viewOooO0o0 == null) {
                return;
            }
            viewOooO0o0.getGlobalVisibleRect(new Rect());
            Matrix imageMatrix = getImageMatrix();
            imageMatrix.setTranslate(r5.left, r5.top);
            setImageMatrix(imageMatrix);
        }
        this.Ooooo00.compareAndSet(false, true);
        PopupLog.OooO(Oooooo, "设置成功：" + this.Ooooo00.get());
        if (this.OooooOO != null) {
            PopupLog.OooO(Oooooo, "恢复缓存动画");
            this.OooooOO.OooO0o0();
        }
        OooOOO0 oooOOO0 = this.OooooOo;
        if (oooOOO0 != null) {
            oooOOO0.OooO00o();
            this.OooooOo = null;
        }
    }

    private void OooOO0O() {
        setFocusable(false);
        setFocusableInTouchMode(false);
        setScaleType(ImageView.ScaleType.MATRIX);
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(null);
        } else {
            setBackgroundDrawable(null);
        }
    }

    private boolean OooOO0o() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOO0(Bitmap bitmap, boolean z) {
        if (OooOO0o()) {
            OooOO0(bitmap, z);
        } else if (this.Oooooo0) {
            post(new OooOO0O(bitmap, z));
        } else {
            this.OooooOo = new OooOOO0(new OooOO0(bitmap, z), 0L);
        }
    }

    private void OooOOOO(long j) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.addListener(new OooO0O0());
        valueAnimatorOfInt.addUpdateListener(new OooO0OO());
        valueAnimatorOfInt.start();
    }

    private void OooOOOo(long j) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 0);
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfInt.addListener(new OooO0o());
        valueAnimatorOfInt.addUpdateListener(new OooO());
        valueAnimatorOfInt.start();
    }

    private void OooOOo0(View view) {
        hf0.OooO00o(new OooOOO(view));
    }

    public void OooO(long j) {
        this.Ooooo0o = false;
        PopupLog.OooO(Oooooo, "dismiss模糊imageview alpha动画");
        if (j <= 0) {
            if (j != -2) {
                setImageAlpha(0);
                return;
            }
            j = getOption() == null ? 500L : getOption().OooO0O0();
        }
        OooOOOo(j);
    }

    public void OooO0o(gf0 gf0Var) {
        OooO0oO(gf0Var, false);
    }

    public void OooO0oo() {
        setImageBitmap(null);
        this.OoooOoO = true;
        WeakReference<gf0> weakReference = this.OoooOoo;
        if (weakReference != null) {
            weakReference.clear();
            this.OoooOoo = null;
        }
        OooOOO0 oooOOO0 = this.OooooOO;
        if (oooOOO0 != null) {
            oooOOO0.OooO00o();
            this.OooooOO = null;
        }
        this.Ooooo00.set(false);
        this.Ooooo0o = false;
        this.OooooO0 = 0L;
    }

    public void OooOOO(long j) {
        this.OooooO0 = j;
        if (!this.Ooooo00.get()) {
            if (this.OooooOO == null) {
                this.OooooOO = new OooOOO0(new OooO00o(), 0L);
                PopupLog.OooO0OO(Oooooo, "缓存模糊动画，等待模糊完成");
                return;
            }
            return;
        }
        OooOOO0 oooOOO0 = this.OooooOO;
        if (oooOOO0 != null) {
            oooOOO0.OooO00o();
            this.OooooOO = null;
        }
        if (this.Ooooo0o) {
            return;
        }
        PopupLog.OooO(Oooooo, "开始模糊alpha动画");
        this.Ooooo0o = true;
        if (j <= 0) {
            if (j != -2) {
                setImageAlpha(255);
                return;
            }
            j = getOption() == null ? 500L : getOption().OooO00o();
        }
        OooOOOO(j);
    }

    public void OooOOo() {
        if (getOption() != null) {
            OooO0oO(getOption(), true);
        }
    }

    public gf0 getOption() {
        WeakReference<gf0> weakReference = this.OoooOoo;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Oooooo0 = true;
        OooOOO0 oooOOO0 = this.OooooOo;
        if (oooOOO0 != null) {
            oooOOO0.OooO0O0();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.OoooOoO = true;
    }
}
