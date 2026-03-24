package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.anythink.expressad.foundation.h.i;
import com.google.android.material.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import z2.al;
import z2.dk;
import z2.ej;
import z2.ek;
import z2.fj;
import z2.fk;
import z2.gj;
import z2.hj;
import z2.ij;
import z2.lj;
import z2.mj;
import z2.nj;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    private final int[] OooO;
    private final Rect OooO0o;
    private final RectF OooO0oO;
    private final RectF OooO0oo;

    public static class OooO {
        public lj OooO00o;
        public nj OooO0O0;
    }

    public class OooO00o extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean OooO00o;
        public final /* synthetic */ View OooO0O0;
        public final /* synthetic */ View OooO0OO;

        public OooO00o(boolean z, View view, View view2) {
            this.OooO00o = z;
            this.OooO0O0 = view;
            this.OooO0OO = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.OooO00o) {
                return;
            }
            this.OooO0O0.setVisibility(4);
            this.OooO0OO.setAlpha(1.0f);
            this.OooO0OO.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.OooO00o) {
                this.OooO0O0.setVisibility(0);
                this.OooO0OO.setAlpha(0.0f);
                this.OooO0OO.setVisibility(4);
            }
        }
    }

    public class OooO0O0 implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ View OooO00o;

        public OooO0O0(View view) {
            this.OooO00o = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.OooO00o.invalidate();
        }
    }

    public class OooO0OO extends AnimatorListenerAdapter {
        public final /* synthetic */ fk OooO00o;
        public final /* synthetic */ Drawable OooO0O0;

        public OooO0OO(fk fkVar, Drawable drawable) {
            this.OooO00o = fkVar;
            this.OooO0O0 = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.OooO00o.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.OooO00o.setCircularRevealOverlayDrawable(this.OooO0O0);
        }
    }

    public class OooO0o extends AnimatorListenerAdapter {
        public final /* synthetic */ fk OooO00o;

        public OooO0o(fk fkVar) {
            this.OooO00o = fkVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            fk.OooO revealInfo = this.OooO00o.getRevealInfo();
            revealInfo.OooO0OO = Float.MAX_VALUE;
            this.OooO00o.setRevealInfo(revealInfo);
        }
    }

    public FabTransformationBehavior() {
        this.OooO0o = new Rect();
        this.OooO0oO = new RectF();
        this.OooO0oo = new RectF();
        this.OooO = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO0o = new Rect();
        this.OooO0oO = new RectF();
        this.OooO0oo = new RectF();
        this.OooO = new int[2];
    }

    private void OooO(View view, OooO oooO, mj mjVar, mj mjVar2, float f, float f2, float f3, float f4, RectF rectF) {
        float fOooOOO = OooOOO(oooO, mjVar, f, f3);
        float fOooOOO2 = OooOOO(oooO, mjVar2, f2, f4);
        Rect rect = this.OooO0o;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.OooO0oO;
        rectF2.set(rect);
        RectF rectF3 = this.OooO0oo;
        OooOOOO(view, rectF3);
        rectF3.offset(fOooOOO, fOooOOO2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    @Nullable
    private ViewGroup OooO0oo(View view) {
        View viewFindViewById = view.findViewById(R.id.mtrl_child_content_container);
        return viewFindViewById != null ? OooOoO(viewFindViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? OooOoO(((ViewGroup) view).getChildAt(0)) : OooOoO(view);
    }

    private float OooOO0(View view, View view2, nj njVar) {
        RectF rectF = this.OooO0oO;
        RectF rectF2 = this.OooO0oo;
        OooOOOO(view, rectF);
        OooOOOO(view2, rectF2);
        rectF2.offset(-OooOO0o(view, view2, njVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float OooOO0O(View view, View view2, nj njVar) {
        RectF rectF = this.OooO0oO;
        RectF rectF2 = this.OooO0oo;
        OooOOOO(view, rectF);
        OooOOOO(view2, rectF2);
        rectF2.offset(0.0f, -OooOOO0(view, view2, njVar));
        return rectF.centerY() - rectF2.top;
    }

    private float OooOO0o(View view, View view2, nj njVar) {
        float fCenterX;
        float fCenterX2;
        float f;
        RectF rectF = this.OooO0oO;
        RectF rectF2 = this.OooO0oo;
        OooOOOO(view, rectF);
        OooOOOO(view2, rectF2);
        int i = njVar.OooO00o & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i != 5) {
                f = 0.0f;
                return f + njVar.OooO0O0;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f = fCenterX - fCenterX2;
        return f + njVar.OooO0O0;
    }

    private float OooOOO(OooO oooO, mj mjVar, float f, float f2) {
        long jOooO0OO = mjVar.OooO0OO();
        long jOooO0Oo = mjVar.OooO0Oo();
        mj mjVarOooO0o0 = oooO.OooO00o.OooO0o0("expansion");
        return ej.OooO00o(f, f2, mjVar.OooO0o0().getInterpolation((((mjVarOooO0o0.OooO0OO() + mjVarOooO0o0.OooO0Oo()) + 17) - jOooO0OO) / jOooO0Oo));
    }

    private float OooOOO0(View view, View view2, nj njVar) {
        float fCenterY;
        float fCenterY2;
        float f;
        RectF rectF = this.OooO0oO;
        RectF rectF2 = this.OooO0oo;
        OooOOOO(view, rectF);
        OooOOOO(view2, rectF2);
        int i = njVar.OooO00o & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i != 80) {
                f = 0.0f;
                return f + njVar.OooO0OO;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f = fCenterY - fCenterY2;
        return f + njVar.OooO0OO;
    }

    private void OooOOOO(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.OooO);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void OooOOOo(View view, View view2, boolean z, boolean z3, OooO oooO, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupOooO0oo;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof fk) && ek.OooOOOO == 0) || (viewGroupOooO0oo = OooO0oo(view2)) == null) {
                return;
            }
            if (z) {
                if (!z3) {
                    hj.OooO00o.set(viewGroupOooO0oo, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupOooO0oo, hj.OooO00o, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupOooO0oo, hj.OooO00o, 0.0f);
            }
            oooO.OooO00o.OooO0o0("contentFade").OooO00o(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    @TargetApi(21)
    private void OooOOo(View view, View view2, boolean z, boolean z3, OooO oooO, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z) {
            if (!z3) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        oooO.OooO00o.OooO0o0("elevation").OooO00o(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void OooOOo0(View view, View view2, boolean z, boolean z3, OooO oooO, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof fk) {
            fk fkVar = (fk) view2;
            int iOooOo = OooOo(view);
            int i = 16777215 & iOooOo;
            if (z) {
                if (!z3) {
                    fkVar.setCircularRevealScrimColor(iOooOo);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(fkVar, fk.OooO0o.OooO00o, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(fkVar, fk.OooO0o.OooO00o, iOooOo);
            }
            objectAnimatorOfInt.setEvaluator(gj.OooO0O0());
            oooO.OooO00o.OooO0o0(i.d).OooO00o(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void OooOOoo(View view, View view2, boolean z, boolean z3, OooO oooO, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animatorOooO00o;
        if (view2 instanceof fk) {
            fk fkVar = (fk) view2;
            float fOooOO0 = OooOO0(view, view2, oooO.OooO0O0);
            float fOooOO0O = OooOO0O(view, view2, oooO.OooO0O0);
            ((FloatingActionButton) view).OooOO0(this.OooO0o);
            float fWidth = this.OooO0o.width() / 2.0f;
            mj mjVarOooO0o0 = oooO.OooO00o.OooO0o0("expansion");
            if (z) {
                if (!z3) {
                    fkVar.setRevealInfo(new fk.OooO(fOooOO0, fOooOO0O, fWidth));
                }
                if (z3) {
                    fWidth = fkVar.getRevealInfo().OooO0OO;
                }
                animatorOooO00o = dk.OooO00o(fkVar, fOooOO0, fOooOO0O, al.OooO0O0(fOooOO0, fOooOO0O, 0.0f, 0.0f, f, f2));
                animatorOooO00o.addListener(new OooO0o(fkVar));
                OooOo0O(view2, mjVarOooO0o0.OooO0OO(), (int) fOooOO0, (int) fOooOO0O, fWidth, list);
            } else {
                float f3 = fkVar.getRevealInfo().OooO0OO;
                Animator animatorOooO00o2 = dk.OooO00o(fkVar, fOooOO0, fOooOO0O, fWidth);
                int i = (int) fOooOO0;
                int i2 = (int) fOooOO0O;
                OooOo0O(view2, mjVarOooO0o0.OooO0OO(), i, i2, f3, list);
                OooOo0(view2, mjVarOooO0o0.OooO0OO(), mjVarOooO0o0.OooO0Oo(), oooO.OooO00o.OooO0o(), i, i2, fWidth, list);
                animatorOooO00o = animatorOooO00o2;
            }
            mjVarOooO0o0.OooO00o(animatorOooO00o);
            list.add(animatorOooO00o);
            list2.add(dk.OooO0OO(fkVar));
        }
    }

    private int OooOo(View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    private void OooOo0(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
                animatorCreateCircularReveal.setStartDelay(j4);
                animatorCreateCircularReveal.setDuration(j3 - j4);
                list.add(animatorCreateCircularReveal);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void OooOo00(View view, View view2, boolean z, boolean z3, OooO oooO, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof fk) && (view instanceof ImageView)) {
            fk fkVar = (fk) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z3) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, ij.OooO0O0, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, ij.OooO0O0, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new OooO0O0(view2));
            oooO.OooO00o.OooO0o0("iconFade").OooO00o(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new OooO0OO(fkVar, drawable));
        }
    }

    private void OooOo0O(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    private void OooOo0o(View view, View view2, boolean z, boolean z3, OooO oooO, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        mj mjVarOooO0o0;
        lj ljVar;
        String str;
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fOooOO0o = OooOO0o(view, view2, oooO.OooO0O0);
        float fOooOOO0 = OooOOO0(view, view2, oooO.OooO0O0);
        if (fOooOO0o == 0.0f || fOooOOO0 == 0.0f) {
            mjVarOooO0o0 = oooO.OooO00o.OooO0o0("translationXLinear");
            ljVar = oooO.OooO00o;
            str = "translationYLinear";
        } else if ((!z || fOooOOO0 >= 0.0f) && (z || fOooOOO0 <= 0.0f)) {
            mjVarOooO0o0 = oooO.OooO00o.OooO0o0("translationXCurveDownwards");
            ljVar = oooO.OooO00o;
            str = "translationYCurveDownwards";
        } else {
            mjVarOooO0o0 = oooO.OooO00o.OooO0o0("translationXCurveUpwards");
            ljVar = oooO.OooO00o;
            str = "translationYCurveUpwards";
        }
        mj mjVarOooO0o02 = ljVar.OooO0o0(str);
        mj mjVar = mjVarOooO0o0;
        if (z) {
            if (!z3) {
                view2.setTranslationX(-fOooOO0o);
                view2.setTranslationY(-fOooOOO0);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            OooO(view2, oooO, mjVar, mjVarOooO0o02, -fOooOO0o, -fOooOOO0, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fOooOO0o);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fOooOOO0);
        }
        mjVar.OooO00o(objectAnimatorOfFloat);
        mjVarOooO0o02.OooO00o(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @Nullable
    private ViewGroup OooOoO(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    public AnimatorSet OooO0oO(View view, View view2, boolean z, boolean z3) {
        OooO oooOOooOoO0 = OooOoO0(view2.getContext(), z);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            OooOOo(view, view2, z, z3, oooOOooOoO0, arrayList, arrayList2);
        }
        RectF rectF = this.OooO0oO;
        OooOo0o(view, view2, z, z3, oooOOooOoO0, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        OooOo00(view, view2, z, z3, oooOOooOoO0, arrayList, arrayList2);
        OooOOoo(view, view2, z, z3, oooOOooOoO0, fWidth, fHeight, arrayList, arrayList2);
        OooOOo0(view, view2, z, z3, oooOOooOoO0, arrayList, arrayList2);
        OooOOOo(view, view2, z, z3, oooOOooOoO0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        fj.OooO00o(animatorSet, arrayList);
        animatorSet.addListener(new OooO00o(z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    public abstract OooO OooOoO0(Context context, boolean z);

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }
}
