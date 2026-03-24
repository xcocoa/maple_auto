package z2;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class za extends LinearLayout {
    private static final int[] OooooOO = {R.attr.divider, R.attr.showDividers, R.attr.dividerPadding};
    private static final int OooooOo = 0;
    private static final int Oooooo = 2;
    private static final int Oooooo0 = 1;
    private Drawable OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private int Ooooo0o;
    private int OooooO0;

    public za(Context context, int i) {
        super(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, OooooOO, i, 0);
        setDividerDrawable(typedArrayObtainStyledAttributes.getDrawable(0));
        this.OooooO0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.Ooooo0o = typedArrayObtainStyledAttributes.getInteger(1, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void OooO00o(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && OooO0o0(i)) {
                OooO0Oo(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (OooO0o0(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            OooO0Oo(canvas, childAt2 == null ? (getWidth() - getPaddingRight()) - this.OoooOoo : childAt2.getRight());
        }
    }

    private void OooO0O0(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && OooO0o0(i)) {
                OooO0OO(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (OooO0o0(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            OooO0OO(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.Ooooo00 : childAt2.getBottom());
        }
    }

    private void OooO0OO(Canvas canvas, int i) {
        this.OoooOoO.setBounds(getPaddingLeft() + this.OooooO0, i, (getWidth() - getPaddingRight()) - this.OooooO0, this.Ooooo00 + i);
        this.OoooOoO.draw(canvas);
    }

    private void OooO0Oo(Canvas canvas, int i) {
        this.OoooOoO.setBounds(i, getPaddingTop() + this.OooooO0, this.OoooOoo + i, (getHeight() - getPaddingBottom()) - this.OooooO0);
        this.OoooOoO.draw(canvas);
    }

    private boolean OooO0o0(int i) {
        if (i == 0 || i == getChildCount() || (this.Ooooo0o & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int iIndexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (OooO0o0(iIndexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.Ooooo00;
            } else {
                layoutParams.leftMargin = this.OoooOoo;
            }
        }
        int childCount = getChildCount();
        if (iIndexOfChild == childCount - 1 && OooO0o0(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.Ooooo00;
            } else {
                layoutParams.rightMargin = this.OoooOoo;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.OoooOoO != null) {
            if (getOrientation() == 1) {
                OooO0O0(canvas);
            } else {
                OooO00o(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.OoooOoO) {
            return;
        }
        this.OoooOoO = drawable;
        if (drawable != null) {
            this.OoooOoo = drawable.getIntrinsicWidth();
            this.Ooooo00 = drawable.getIntrinsicHeight();
        } else {
            this.OoooOoo = 0;
            this.Ooooo00 = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }
}
