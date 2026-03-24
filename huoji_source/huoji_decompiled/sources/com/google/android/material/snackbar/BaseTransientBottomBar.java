package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import z2.ej;
import z2.ql;
import z2.rl;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    public static final int OooOO0 = -2;
    public static final int OooOO0O = -1;
    public static final int OooOO0o = 0;
    public static final int OooOOO = 180;
    public static final int OooOOO0 = 250;
    public static final Handler OooOOOO;
    public static final int OooOOOo = 0;
    private static final boolean OooOOo;
    public static final int OooOOo0 = 1;
    private static final int[] OooOOoo;
    public final rl.OooO0O0 OooO = new OooOO0();
    private final ViewGroup OooO00o;
    private final Context OooO0O0;
    public final SnackbarBaseLayout OooO0OO;
    private final ql OooO0Oo;
    private List<OooOo<B>> OooO0o;
    private int OooO0o0;
    private Behavior OooO0oO;
    private final AccessibilityManager OooO0oo;

    public static class Behavior extends SwipeDismissBehavior<View> {
        private final Oooo000 OooOo00 = new Oooo000(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void OooOOO(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.OooOo00.OooO0OO(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean OooO00o(View view) {
            return this.OooOo00.OooO00o(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.OooOo00.OooO0O0(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    public class OooO extends AccessibilityDelegateCompat {
        public OooO() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            BaseTransientBottomBar.this.OooO0o();
            return true;
        }
    }

    public class OooO00o extends AnimatorListenerAdapter {
        public final /* synthetic */ int OooO00o;

        public OooO00o(int i) {
            this.OooO00o = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.OooOOoo(this.OooO00o);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.OooO0Oo.OooO0O0(0, 180);
        }
    }

    public class OooO0O0 implements ValueAnimator.AnimatorUpdateListener {
        private int OooO00o = 0;

        public OooO0O0() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.OooOOo) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.OooO0OO, iIntValue - this.OooO00o);
            } else {
                BaseTransientBottomBar.this.OooO0OO.setTranslationY(iIntValue);
            }
            this.OooO00o = iIntValue;
        }
    }

    public static class OooO0OO implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                ((BaseTransientBottomBar) message.obj).OooOoO();
                return true;
            }
            if (i != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).OooOOOo(message.arg1);
            return true;
        }
    }

    public class OooO0o implements OnApplyWindowInsetsListener {
        public OooO0o() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            return windowInsetsCompat;
        }
    }

    public class OooOO0 implements rl.OooO0O0 {
        public OooOO0() {
        }

        @Override // z2.rl.OooO0O0
        public void OooO00o(int i) {
            Handler handler = BaseTransientBottomBar.OooOOOO;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // z2.rl.OooO0O0
        public void show() {
            Handler handler = BaseTransientBottomBar.OooOOOO;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    public class OooOO0O implements SwipeDismissBehavior.OooO0O0 {
        public OooOO0O() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.OooO0O0
        public void OooO00o(View view) {
            view.setVisibility(8);
            BaseTransientBottomBar.this.OooO0oO(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.OooO0O0
        public void OooO0O0(int i) {
            if (i == 0) {
                rl.OooO0OO().OooOO0o(BaseTransientBottomBar.this.OooO);
            } else if (i == 1 || i == 2) {
                rl.OooO0OO().OooOO0O(BaseTransientBottomBar.this.OooO);
            }
        }
    }

    public class OooOOO implements o00O0O {
        public OooOOO() {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.o00O0O
        public void OooO00o(View view, int i, int i2, int i3, int i4) {
            BaseTransientBottomBar.this.OooO0OO.setOnLayoutChangeListener(null);
            if (BaseTransientBottomBar.this.OooOo()) {
                BaseTransientBottomBar.this.OooO0Oo();
            } else {
                BaseTransientBottomBar.this.OooOo00();
            }
        }
    }

    public class OooOOO0 implements o0OoOo0 {

        public class OooO00o implements Runnable {
            public OooO00o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BaseTransientBottomBar.this.OooOOoo(3);
            }
        }

        public OooOOO0() {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.o0OoOo0
        public void onViewAttachedToWindow(View view) {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.o0OoOo0
        public void onViewDetachedFromWindow(View view) {
            if (BaseTransientBottomBar.this.OooOOo()) {
                BaseTransientBottomBar.OooOOOO.post(new OooO00o());
            }
        }
    }

    public class OooOOOO extends AnimatorListenerAdapter {
        public OooOOOO() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.OooOo00();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.OooO0Oo.OooO00o(70, 180);
        }
    }

    public static abstract class OooOo<B> {
        public static final int OooO00o = 0;
        public static final int OooO0O0 = 1;
        public static final int OooO0OO = 2;
        public static final int OooO0Oo = 3;
        public static final int OooO0o0 = 4;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface OooO00o {
        }

        public void OooO00o(B b, int i) {
        }

        public void OooO0O0(B b) {
        }
    }

    public class OooOo00 implements ValueAnimator.AnimatorUpdateListener {
        private int OooO00o;
        public final /* synthetic */ int OooO0O0;

        public OooOo00(int i) {
            this.OooO0O0 = i;
            this.OooO00o = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.OooOOo) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.OooO0OO, iIntValue - this.OooO00o);
            } else {
                BaseTransientBottomBar.this.OooO0OO.setTranslationY(iIntValue);
            }
            this.OooO00o = iIntValue;
        }
    }

    @Deprecated
    public interface Oooo0 extends ql {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class Oooo000 {
        private rl.OooO0O0 OooO00o;

        public Oooo000(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.OooOO0O(0.1f);
            swipeDismissBehavior.OooO0oo(0.6f);
            swipeDismissBehavior.OooOO0o(0);
        }

        public boolean OooO00o(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void OooO0O0(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    rl.OooO0OO().OooOO0O(this.OooO00o);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                rl.OooO0OO().OooOO0o(this.OooO00o);
            }
        }

        public void OooO0OO(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.OooO00o = baseTransientBottomBar.OooO;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SnackbarBaseLayout extends FrameLayout {
        private final AccessibilityManager OoooOoO;
        private final AccessibilityManagerCompat.TouchExplorationStateChangeListener OoooOoo;
        private o00O0O Ooooo00;
        private o0OoOo0 Ooooo0o;

        public class OooO00o implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
            public OooO00o() {
            }

            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public void onTouchExplorationStateChanged(boolean z) {
                SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
            }
        }

        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(r0, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            this.OoooOoO = accessibilityManager;
            OooO00o oooO00o = new OooO00o();
            this.OoooOoo = oooO00o;
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(accessibilityManager, oooO00o);
            setClickableOrFocusableBasedOnAccessibility(accessibilityManager.isTouchExplorationEnabled());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            o0OoOo0 o0oooo0 = this.Ooooo0o;
            if (o0oooo0 != null) {
                o0oooo0.onViewAttachedToWindow(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            o0OoOo0 o0oooo0 = this.Ooooo0o;
            if (o0oooo0 != null) {
                o0oooo0.onViewDetachedFromWindow(this);
            }
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.OoooOoO, this.OoooOoo);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            o00O0O o00o0o = this.Ooooo00;
            if (o00o0o != null) {
                o00o0o.OooO00o(this, i, i2, i3, i4);
            }
        }

        public void setOnAttachStateChangeListener(o0OoOo0 o0oooo0) {
            this.Ooooo0o = o0oooo0;
        }

        public void setOnLayoutChangeListener(o00O0O o00o0o) {
            this.Ooooo00 = o00o0o;
        }
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface o000oOoO {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface o00O0O {
        void OooO00o(View view, int i, int i2, int i3, int i4);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface o0OoOo0 {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        OooOOo = i >= 16 && i <= 19;
        OooOOoo = new int[]{R.attr.snackbarStyle};
        OooOOOO = new Handler(Looper.getMainLooper(), new OooO0OO());
    }

    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull ql qlVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (qlVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.OooO00o = viewGroup;
        this.OooO0Oo = qlVar;
        Context context = viewGroup.getContext();
        this.OooO0O0 = context;
        xk.OooO00o(context);
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(OooOO0o(), viewGroup, false);
        this.OooO0OO = snackbarBaseLayout;
        snackbarBaseLayout.addView(view);
        ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
        ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
        ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
        ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new OooO0o());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new OooO());
        this.OooO0oo = (AccessibilityManager) context.getSystemService("accessibility");
    }

    private void OooO0o0(int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, OooOOO0());
        valueAnimator.setInterpolator(ej.OooO0O0);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new OooO00o(i));
        valueAnimator.addUpdateListener(new OooO0O0());
        valueAnimator.start();
    }

    private int OooOOO0() {
        int height = this.OooO0OO.getHeight();
        ViewGroup.LayoutParams layoutParams = this.OooO0OO.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    @NonNull
    public Context OooO() {
        return this.OooO0O0;
    }

    @NonNull
    public B OooO0OO(@NonNull OooOo<B> oooOo) {
        if (oooOo == null) {
            return this;
        }
        if (this.OooO0o == null) {
            this.OooO0o = new ArrayList();
        }
        this.OooO0o.add(oooOo);
        return this;
    }

    public void OooO0Oo() {
        int iOooOOO0 = OooOOO0();
        if (OooOOo) {
            ViewCompat.offsetTopAndBottom(this.OooO0OO, iOooOOO0);
        } else {
            this.OooO0OO.setTranslationY(iOooOOO0);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iOooOOO0, 0);
        valueAnimator.setInterpolator(ej.OooO0O0);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new OooOOOO());
        valueAnimator.addUpdateListener(new OooOo00(iOooOOO0));
        valueAnimator.start();
    }

    public void OooO0o() {
        OooO0oO(3);
    }

    public void OooO0oO(int i) {
        rl.OooO0OO().OooO0O0(this.OooO, i);
    }

    public Behavior OooO0oo() {
        return this.OooO0oO;
    }

    public int OooOO0() {
        return this.OooO0o0;
    }

    public SwipeDismissBehavior<? extends View> OooOO0O() {
        return new Behavior();
    }

    @LayoutRes
    public int OooOO0o() {
        return OooOOOO() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    @NonNull
    public View OooOOO() {
        return this.OooO0OO;
    }

    public boolean OooOOOO() {
        TypedArray typedArrayObtainStyledAttributes = this.OooO0O0.obtainStyledAttributes(OooOOoo);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    public final void OooOOOo(int i) {
        if (OooOo() && this.OooO0OO.getVisibility() == 0) {
            OooO0o0(i);
        } else {
            OooOOoo(i);
        }
    }

    public boolean OooOOo() {
        return rl.OooO0OO().OooO0o(this.OooO);
    }

    public boolean OooOOo0() {
        return rl.OooO0OO().OooO0o0(this.OooO);
    }

    public void OooOOoo(int i) {
        rl.OooO0OO().OooO(this.OooO);
        List<OooOo<B>> list = this.OooO0o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.OooO0o.get(size).OooO00o(this, i);
            }
        }
        ViewParent parent = this.OooO0OO.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.OooO0OO);
        }
    }

    public boolean OooOo() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.OooO0oo.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    @NonNull
    public B OooOo0(@NonNull OooOo<B> oooOo) {
        List<OooOo<B>> list;
        if (oooOo == null || (list = this.OooO0o) == null) {
            return this;
        }
        list.remove(oooOo);
        return this;
    }

    public void OooOo00() {
        rl.OooO0OO().OooOO0(this.OooO);
        List<OooOo<B>> list = this.OooO0o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.OooO0o.get(size).OooO0O0(this);
            }
        }
    }

    public B OooOo0O(Behavior behavior) {
        this.OooO0oO = behavior;
        return this;
    }

    @NonNull
    public B OooOo0o(int i) {
        this.OooO0o0 = i;
        return this;
    }

    public final void OooOoO() {
        if (this.OooO0OO.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.OooO0OO.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                SwipeDismissBehavior<? extends View> swipeDismissBehaviorOooOO0O = this.OooO0oO;
                if (swipeDismissBehaviorOooOO0O == null) {
                    swipeDismissBehaviorOooOO0O = OooOO0O();
                }
                if (swipeDismissBehaviorOooOO0O instanceof Behavior) {
                    ((Behavior) swipeDismissBehaviorOooOO0O).OooOOO(this);
                }
                swipeDismissBehaviorOooOO0O.OooO(new OooOO0O());
                layoutParams2.setBehavior(swipeDismissBehaviorOooOO0O);
                layoutParams2.insetEdge = 80;
            }
            this.OooO00o.addView(this.OooO0OO);
        }
        this.OooO0OO.setOnAttachStateChangeListener(new OooOOO0());
        if (!ViewCompat.isLaidOut(this.OooO0OO)) {
            this.OooO0OO.setOnLayoutChangeListener(new OooOOO());
        } else if (OooOo()) {
            OooO0Oo();
        } else {
            OooOo00();
        }
    }

    public void OooOoO0() {
        rl.OooO0OO().OooOOO(OooOO0(), this.OooO);
    }
}
