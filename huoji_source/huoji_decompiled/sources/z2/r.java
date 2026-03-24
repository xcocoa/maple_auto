package z2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import z2.v;

/* JADX INFO: loaded from: classes.dex */
public class r extends Drawable implements v.OooO0O0, Animatable, Animatable2Compat {
    private static final int o00O0O = 119;
    public static final int o0OoOo0 = -1;
    public static final int ooOO = 0;
    private final OooO00o OoooOoO;
    private boolean OoooOoo;
    private boolean Ooooo00;
    private boolean Ooooo0o;
    private boolean OooooO0;
    private int OooooOO;
    private int OooooOo;
    private Paint Oooooo;
    private boolean Oooooo0;
    private Rect OoooooO;
    private List<Animatable2Compat.AnimationCallback> Ooooooo;

    public static final class OooO00o extends Drawable.ConstantState {

        @VisibleForTesting
        public final v OooO00o;

        public OooO00o(v vVar) {
            this.OooO00o = vVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new r(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }
    }

    public r(Context context, o0O00OO o0o00oo, o0O0o000<Bitmap> o0o0o000, int i, int i2, Bitmap bitmap) {
        this(new OooO00o(new v(o00Oo00.OooO0Oo(context), o0o00oo, i, i2, o0o0o000, bitmap)));
    }

    @Deprecated
    public r(Context context, o0O00OO o0o00oo, oO000o00 oo000o00, o0O0o000<Bitmap> o0o0o000, int i, int i2, Bitmap bitmap) {
        this(context, o0o00oo, o0o0o000, i, i2, bitmap);
    }

    public r(OooO00o oooO00o) {
        this.OooooO0 = true;
        this.OooooOo = -1;
        this.OoooOoO = (OooO00o) r2.OooO0Oo(oooO00o);
    }

    @VisibleForTesting
    public r(v vVar, Paint paint) {
        this(new OooO00o(vVar));
        this.Oooooo = paint;
    }

    private Paint OooO() {
        if (this.Oooooo == null) {
            this.Oooooo = new Paint(2);
        }
        return this.Oooooo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Drawable.Callback OooO0O0() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    private Rect OooO0Oo() {
        if (this.OoooooO == null) {
            this.OoooooO = new Rect();
        }
        return this.OoooooO;
    }

    private void OooOO0o() {
        List<Animatable2Compat.AnimationCallback> list = this.Ooooooo;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.Ooooooo.get(i).onAnimationEnd(this);
            }
        }
    }

    private void OooOOO() {
        this.OooooOO = 0;
    }

    private void OooOOoo() {
        r2.OooO00o(!this.Ooooo0o, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.OoooOoO.OooO00o.OooO0o() != 1) {
            if (this.OoooOoo) {
                return;
            }
            this.OoooOoo = true;
            this.OoooOoO.OooO00o.OooOo0o(this);
        }
        invalidateSelf();
    }

    private void OooOo00() {
        this.OoooOoo = false;
        this.OoooOoO.OooO00o.OooOo(this);
    }

    @Override // z2.v.OooO0O0
    public void OooO00o() {
        if (OooO0O0() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (OooO0oO() == OooO0o() - 1) {
            this.OooooOO++;
        }
        int i = this.OooooOo;
        if (i == -1 || this.OooooOO < i) {
            return;
        }
        OooOO0o();
        stop();
    }

    public ByteBuffer OooO0OO() {
        return this.OoooOoO.OooO00o.OooO0O0();
    }

    public int OooO0o() {
        return this.OoooOoO.OooO00o.OooO0o();
    }

    public Bitmap OooO0o0() {
        return this.OoooOoO.OooO00o.OooO0o0();
    }

    public int OooO0oO() {
        return this.OoooOoO.OooO00o.OooO0Oo();
    }

    public o0O0o000<Bitmap> OooO0oo() {
        return this.OoooOoO.OooO00o.OooO();
    }

    public int OooOO0() {
        return this.OoooOoO.OooO00o.OooOOO0();
    }

    public boolean OooOO0O() {
        return this.Ooooo0o;
    }

    public void OooOOO0() {
        this.Ooooo0o = true;
        this.OoooOoO.OooO00o.OooO00o();
    }

    public void OooOOOO(o0O0o000<Bitmap> o0o0o000, Bitmap bitmap) {
        this.OoooOoO.OooO00o.OooOOo(o0o0o000, bitmap);
    }

    public void OooOOOo(boolean z) {
        this.OoooOoo = z;
    }

    public void OooOOo() {
        r2.OooO00o(!this.OoooOoo, "You cannot restart a currently running animation.");
        this.OoooOoO.OooO00o.OooOOoo();
        start();
    }

    public void OooOOo0(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i != 0) {
            this.OooooOo = i;
        } else {
            int iOooOO0O = this.OoooOoO.OooO00o.OooOO0O();
            this.OooooOo = iOooOO0O != 0 ? iOooOO0O : -1;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.Ooooooo;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.Ooooo0o) {
            return;
        }
        if (this.Oooooo0) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), OooO0Oo());
            this.Oooooo0 = false;
        }
        canvas.drawBitmap(this.OoooOoO.OooO00o.OooO0OO(), (Rect) null, OooO0Oo(), OooO());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.OoooOoO;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.OoooOoO.OooO00o.OooOO0();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.OoooOoO.OooO00o.OooOOO();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.OoooOoo;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.Oooooo0 = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.Ooooooo == null) {
            this.Ooooooo = new ArrayList();
        }
        this.Ooooooo.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        OooO().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        OooO().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z3) {
        r2.OooO00o(!this.Ooooo0o, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.OooooO0 = z;
        if (!z) {
            OooOo00();
        } else if (this.Ooooo00) {
            OooOOoo();
        }
        return super.setVisible(z, z3);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.Ooooo00 = true;
        OooOOO();
        if (this.OooooO0) {
            OooOOoo();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.Ooooo00 = false;
        OooOo00();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.Ooooooo;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }
}
