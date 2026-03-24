package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import z2.ql;

/* JADX INFO: loaded from: classes2.dex */
public final class Snackbar extends BaseTransientBottomBar<Snackbar> {
    public static final int OooOo = -1;
    public static final int OooOo0o = -2;
    private static final int[] OooOoO = {R.attr.snackbarButtonStyle};
    public static final int OooOoO0 = 0;
    private boolean OooOo0;
    private final AccessibilityManager OooOo00;

    @Nullable
    private BaseTransientBottomBar.OooOo<Snackbar> OooOo0O;

    public class OooO00o implements View.OnClickListener {
        public final /* synthetic */ View.OnClickListener OoooOoO;

        public OooO00o(View.OnClickListener onClickListener) {
            this.OoooOoO = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.OoooOoO.onClick(view);
            Snackbar.this.OooO0oO(1);
        }
    }

    public static class OooO0O0 extends BaseTransientBottomBar.OooOo<Snackbar> {
        public static final int OooO = 3;
        public static final int OooO0o = 0;
        public static final int OooO0oO = 1;
        public static final int OooO0oo = 2;
        public static final int OooOO0 = 4;

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OooOo
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public void OooO00o(Snackbar snackbar, int i) {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OooOo
        /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
        public void OooO0O0(Snackbar snackbar) {
        }
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OooO0OO {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }
    }

    private Snackbar(ViewGroup viewGroup, View view, ql qlVar) {
        super(viewGroup, view, qlVar);
        this.OooOo00 = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    private static ViewGroup OooOoOO(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    @NonNull
    public static Snackbar OooOoo(@NonNull View view, @StringRes int i, int i2) {
        return OooOooO(view, view.getResources().getText(i), i2);
    }

    public static boolean OooOoo0(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(OooOoO);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    @NonNull
    public static Snackbar OooOooO(@NonNull View view, @NonNull CharSequence charSequence, int i) {
        ViewGroup viewGroupOooOoOO = OooOoOO(view);
        if (viewGroupOooOoOO == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(viewGroupOooOoOO.getContext()).inflate(OooOoo0(viewGroupOooOoOO.getContext()) ? R.layout.mtrl_layout_snackbar_include : R.layout.design_layout_snackbar_include, viewGroupOooOoOO, false);
        Snackbar snackbar = new Snackbar(viewGroupOooOoOO, snackbarContentLayout, snackbarContentLayout);
        snackbar.Oooo0OO(charSequence);
        snackbar.OooOo0o(i);
        return snackbar;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void OooO0o() {
        super.OooO0o();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public int OooOO0() {
        if (this.OooOo0 && this.OooOo00.isTouchExplorationEnabled()) {
            return -2;
        }
        return super.OooOO0();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public boolean OooOOo0() {
        return super.OooOOo0();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void OooOoO0() {
        super.OooOoO0();
    }

    @NonNull
    public Snackbar OooOooo(@StringRes int i, View.OnClickListener onClickListener) {
        return Oooo000(OooO().getText(i), onClickListener);
    }

    @NonNull
    @Deprecated
    public Snackbar Oooo0(OooO0O0 oooO0O0) {
        BaseTransientBottomBar.OooOo<Snackbar> oooOo = this.OooOo0O;
        if (oooOo != null) {
            OooOo0(oooOo);
        }
        if (oooO0O0 != null) {
            OooO0OO(oooO0O0);
        }
        this.OooOo0O = oooO0O0;
        return this;
    }

    @NonNull
    public Snackbar Oooo000(CharSequence charSequence, View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.OooO0OO.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.OooOo0 = false;
        } else {
            this.OooOo0 = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new OooO00o(onClickListener));
        }
        return this;
    }

    @NonNull
    public Snackbar Oooo00O(@ColorInt int i) {
        ((SnackbarContentLayout) this.OooO0OO.getChildAt(0)).getActionView().setTextColor(i);
        return this;
    }

    @NonNull
    public Snackbar Oooo00o(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.OooO0OO.getChildAt(0)).getActionView().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar Oooo0O0(@StringRes int i) {
        return Oooo0OO(OooO().getText(i));
    }

    @NonNull
    public Snackbar Oooo0OO(@NonNull CharSequence charSequence) {
        ((SnackbarContentLayout) this.OooO0OO.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }
}
