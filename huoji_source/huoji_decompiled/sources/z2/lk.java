package z2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.internal.VisibilityAwareImageButton;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(21)
public class lk extends kk {
    private InsetDrawable OoooO;

    public static class OooO00o extends GradientDrawable {
        @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public lk(VisibilityAwareImageButton visibilityAwareImageButton, gl glVar) {
        super(visibilityAwareImageButton, glVar);
    }

    @NonNull
    private Animator OoooOOo(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.OooOo0, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.OooOo0, (Property<VisibilityAwareImageButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(kk.OooOoo0);
        return animatorSet;
    }

    @Override // z2.kk
    public float OooOO0o() {
        return this.OooOo0.getElevation();
    }

    @Override // z2.kk
    public void OooOOOO(Rect rect) {
        if (!this.OooOo0O.OooO00o()) {
            rect.set(0, 0, 0, 0);
            return;
        }
        float fOooO0O0 = this.OooOo0O.OooO0O0();
        float fOooOO0o = OooOO0o() + this.OooOOOo;
        int iCeil = (int) Math.ceil(fl.OooO0OO(fOooOO0o, fOooO0O0, false));
        int iCeil2 = (int) Math.ceil(fl.OooO0Oo(fOooOO0o, fOooO0O0, false));
        rect.set(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // z2.kk
    public void OooOo0() {
    }

    @Override // z2.kk
    public mk OooOo0O() {
        return new nk();
    }

    @Override // z2.kk
    public GradientDrawable OooOo0o() {
        return new OooO00o();
    }

    @Override // z2.kk
    public void OooOoO0() {
        OoooOOO();
    }

    @Override // z2.kk
    public void OooOoOO(int[] iArr) {
        VisibilityAwareImageButton visibilityAwareImageButton;
        if (Build.VERSION.SDK_INT == 21) {
            float f = 0.0f;
            if (this.OooOo0.isEnabled()) {
                this.OooOo0.setElevation(this.OooOOO);
                if (this.OooOo0.isPressed()) {
                    visibilityAwareImageButton = this.OooOo0;
                    f = this.OooOOOo;
                } else if (this.OooOo0.isFocused() || this.OooOo0.isHovered()) {
                    visibilityAwareImageButton = this.OooOo0;
                    f = this.OooOOOO;
                }
                visibilityAwareImageButton.setTranslationZ(f);
            }
            this.OooOo0.setElevation(0.0f);
            visibilityAwareImageButton = this.OooOo0;
            visibilityAwareImageButton.setTranslationZ(f);
        }
    }

    @Override // z2.kk
    public void OooOoo(Rect rect) {
        gl glVar;
        Drawable drawable;
        if (this.OooOo0O.OooO00o()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.OooOO0O, rect.left, rect.top, rect.right, rect.bottom);
            this.OoooO = insetDrawable;
            drawable = insetDrawable;
            glVar = this.OooOo0O;
        } else {
            gl glVar2 = this.OooOo0O;
            drawable = this.OooOO0O;
            glVar = glVar2;
        }
        glVar.setBackgroundDrawable(drawable);
    }

    @Override // z2.kk
    public void OooOoo0(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.OooOo0.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(kk.Oooo0oO, OoooOOo(f, f3));
            stateListAnimator.addState(kk.Oooo0oo, OoooOOo(f, f2));
            stateListAnimator.addState(kk.Oooo, OoooOOo(f, f2));
            stateListAnimator.addState(kk.OoooO00, OoooOOo(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.OooOo0, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                VisibilityAwareImageButton visibilityAwareImageButton = this.OooOo0;
                arrayList.add(ObjectAnimator.ofFloat(visibilityAwareImageButton, (Property<VisibilityAwareImageButton, Float>) View.TRANSLATION_Z, visibilityAwareImageButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.OooOo0, (Property<VisibilityAwareImageButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(kk.OooOoo0);
            stateListAnimator.addState(kk.OoooO0, animatorSet);
            stateListAnimator.addState(kk.OoooO0O, OoooOOo(0.0f, 0.0f));
            this.OooOo0.setStateListAnimator(stateListAnimator);
        }
        if (this.OooOo0O.OooO00o()) {
            OoooOOO();
        }
    }

    @Override // z2.kk
    public boolean Oooo00O() {
        return false;
    }

    @Override // z2.kk
    public void Oooo00o(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable layerDrawable;
        Drawable drawableWrap = DrawableCompat.wrap(OooO0oO());
        this.OooOO0 = drawableWrap;
        DrawableCompat.setTintList(drawableWrap, colorStateList);
        if (mode != null) {
            DrawableCompat.setTintMode(this.OooOO0, mode);
        }
        if (i > 0) {
            this.OooOO0o = OooO0o0(i, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{this.OooOO0o, this.OooOO0});
        } else {
            this.OooOO0o = null;
            layerDrawable = this.OooOO0;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(el.OooO00o(colorStateList2), layerDrawable, null);
        this.OooOO0O = rippleDrawable;
        this.OooOOO0 = rippleDrawable;
        this.OooOo0O.setBackgroundDrawable(rippleDrawable);
    }

    @Override // z2.kk
    public void OoooO00(ColorStateList colorStateList) {
        Drawable drawable = this.OooOO0O;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(el.OooO00o(colorStateList));
        } else {
            super.OoooO00(colorStateList);
        }
    }
}
