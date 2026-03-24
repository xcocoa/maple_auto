package z2;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class pj extends qj<View> {
    public final Rect OooO0Oo;
    private int OooO0o;
    public final Rect OooO0o0;
    private int OooO0oO;

    public pj() {
        this.OooO0Oo = new Rect();
        this.OooO0o0 = new Rect();
        this.OooO0o = 0;
    }

    public pj(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO0Oo = new Rect();
        this.OooO0o0 = new Rect();
        this.OooO0o = 0;
    }

    private static int OooOO0o(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    public final int OooO() {
        return this.OooO0oO;
    }

    @Override // z2.qj
    public void OooO0OO(CoordinatorLayout coordinatorLayout, View view, int i) {
        int bottom;
        View viewOooO0o = OooO0o(coordinatorLayout.getDependencies(view));
        if (viewOooO0o != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.OooO0Oo;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewOooO0o.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + viewOooO0o.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += lastWindowInsets.getSystemWindowInsetLeft();
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.OooO0o0;
            GravityCompat.apply(OooOO0o(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int iOooO0oO = OooO0oO(viewOooO0o);
            view.layout(rect2.left, rect2.top - iOooO0oO, rect2.right, rect2.bottom - iOooO0oO);
            bottom = rect2.top - viewOooO0o.getBottom();
        } else {
            super.OooO0OO(coordinatorLayout, view, i);
            bottom = 0;
        }
        this.OooO0o = bottom;
    }

    public abstract View OooO0o(List<View> list);

    public final int OooO0oO(View view) {
        if (this.OooO0oO == 0) {
            return 0;
        }
        float fOooO0oo = OooO0oo(view);
        int i = this.OooO0oO;
        return MathUtils.clamp((int) (fOooO0oo * i), 0, i);
    }

    public float OooO0oo(View view) {
        return 1.0f;
    }

    public int OooOO0(View view) {
        return view.getMeasuredHeight();
    }

    public final int OooOO0O() {
        return this.OooO0o;
    }

    public final void OooOOO0(int i) {
        this.OooO0oO = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View viewOooO0o;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (viewOooO0o = OooO0o(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.getFitsSystemWindows(viewOooO0o) && !ViewCompat.getFitsSystemWindows(view)) {
            ViewCompat.setFitsSystemWindows(view, true);
            if (ViewCompat.getFitsSystemWindows(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec((size - viewOooO0o.getMeasuredHeight()) + OooOO0(viewOooO0o), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }
}
