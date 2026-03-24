package z2;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import java.util.Objects;
import razerdp.basepopup.BasePopupHelper;
import razerdp.basepopup.BasePopupWindow;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public final class te0 extends ViewGroup implements ue0 {
    private static final String o00o0O = "PopupDecorViewProxy";
    private static int o00ooo;
    private ve0 OoooOoO;
    private BasePopupHelper OoooOoo;
    private View Ooooo00;
    private Rect Ooooo0o;
    private int OooooO0;
    private int OooooOO;
    private int OooooOo;
    private OooO0o Oooooo;
    private int Oooooo0;
    private df0 OoooooO;
    private OooO Ooooooo;
    private int o00O0O;
    private ValueAnimator o00Oo0;
    private boolean o00Ooo;
    private Rect o0OoOo0;
    private int ooOO;

    public static class OooO {
        public static final int OooO0O0 = 0;
        public static final int OooO0OO = 1;
        public static final int OooO0Oo = 16;
        public static final int OooO0o0 = 256;
        public int OooO00o;
    }

    public class OooO00o implements View.OnTouchListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                return te0.this.OoooOoo.o00oO0o();
            }
            if (action != 1 || !te0.this.OoooOoo.o00oO0o()) {
                return false;
            }
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (te0.this.Ooooo00 != null) {
                View viewFindViewById = te0.this.Ooooo00.findViewById(te0.this.OoooOoo.OooOoo0());
                if (viewFindViewById == null) {
                    viewFindViewById = te0.this.Ooooo00;
                }
                viewFindViewById.getGlobalVisibleRect(te0.this.Ooooo0o);
            }
            if (te0.this.Ooooo0o.contains(x, y)) {
                return false;
            }
            te0.this.OoooOoo.OooO();
            return false;
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            te0.this.OooOo0o();
        }
    }

    public class OooO0OO implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ ViewGroup.LayoutParams OooO00o;

        public OooO0OO(ViewGroup.LayoutParams layoutParams) {
            this.OooO00o = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ViewGroup.LayoutParams layoutParams = this.OooO00o;
            if (layoutParams instanceof WindowManager.LayoutParams) {
                ((WindowManager.LayoutParams) layoutParams).y = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                te0.this.OoooooO.OooOO0O(te0.this, this.OooO00o);
            }
        }
    }

    public final class OooO0o implements Runnable {
        private boolean OoooOoO;
        private boolean OoooOoo;

        public OooO0o(boolean z) {
            this.OoooOoO = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (te0.this.OoooOoo == null || this.OoooOoo) {
                return;
            }
            if (this.OoooOoO) {
                te0.this.OoooOoo.OooO0o0();
            } else {
                te0.this.OoooOoo.OooO0o();
            }
            this.OoooOoo = true;
        }
    }

    private te0(Context context) {
        this(context, null);
    }

    private te0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private te0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Ooooo0o = new Rect();
        this.Ooooooo = new OooO();
        this.o0OoOo0 = new Rect();
    }

    public static te0 OooO(Context context, df0 df0Var, BasePopupHelper basePopupHelper) {
        te0 te0Var = new te0(context);
        te0Var.OooOOO(basePopupHelper, df0Var);
        return te0Var;
    }

    private void OooO0o(Window window) {
        View decorView = window == null ? null : window.getDecorView();
        if (decorView instanceof ViewGroup) {
            ((ViewGroup) decorView).addView(this.OoooOoO, -1, -1);
            return;
        }
        ve0 ve0Var = this.OoooOoO;
        if (ve0Var != null) {
            ve0Var.onDetachedFromWindow();
            this.OoooOoO = null;
        }
    }

    private void OooO0oo(Activity activity) {
        if (activity == null || activity.getWindow() == null) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        if (decorView instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) decorView;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ve0) {
                    viewGroup.removeViewInLayout(childAt);
                }
            }
        }
    }

    private View OooOO0(View view) {
        View childAt = null;
        if (view == null) {
            return null;
        }
        if (!(view instanceof ViewGroup)) {
            return view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getChildCount() <= 0) {
            return view;
        }
        String simpleName = viewGroup.getClass().getSimpleName();
        while (!OooOOOO(simpleName)) {
            childAt = viewGroup.getChildAt(0);
            simpleName = childAt.getClass().getSimpleName();
            if (!(childAt instanceof ViewGroup)) {
                break;
            }
            viewGroup = (ViewGroup) childAt;
        }
        return childAt;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void OooOOO(BasePopupHelper basePopupHelper, df0 df0Var) {
        this.OoooooO = df0Var;
        this.OoooOoo = basePopupHelper;
        basePopupHelper.oo0o0Oo(this);
        setClipChildren(this.OoooOoo.o00Oo0());
        this.OoooOoO = ve0.OooO0O0(getContext(), this.OoooOoo);
        this.Ooooooo.OooO00o = 0;
        if (!this.OoooOoo.o00oO0O()) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            addViewInLayout(this.OoooOoO, -1, new ViewGroup.LayoutParams(-1, -1));
            this.OoooOoO.setOnTouchListener(new OooO00o());
        } else {
            setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            Activity activityOooO0oo = nf0.OooO0oo(getContext(), 15);
            if (activityOooO0oo == null) {
                return;
            }
            OooO0oo(activityOooO0oo);
            OooO0o(activityOooO0oo.getWindow());
        }
    }

    private boolean OooOOOO(String str) {
        return (TextUtils.equals(str, "PopupDecorView") || TextUtils.equals(str, "PopupViewContainer") || TextUtils.equals(str, "PopupBackgroundView")) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01a9  */
    @SuppressLint({"RtlHardcoded"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void OooOOOo(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int iOooOo;
        int iOooOoO0;
        int measuredHeight;
        int iOooOoO02;
        boolean z;
        int measuredHeight2;
        int i7;
        int i8;
        int i9 = i;
        int i10 = i2;
        int childCount = getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 8) {
                i5 = childCount;
                i6 = i11;
            } else {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight3 = childAt.getMeasuredHeight();
                int iOoooO0O = this.OoooOoo.OoooO0O();
                int iOooo0o = this.OoooOoo.Oooo0o();
                int iOooo0oO = this.OoooOoo.Oooo0oO();
                boolean z3 = this.OoooOoo.OoooooO() && this.OoooOoo.OooOo00() != 0;
                getMeasuredWidth();
                int measuredHeight4 = getMeasuredHeight();
                if (childAt == this.OoooOoO) {
                    childAt.layout(i9, i10, measuredWidth + i9, measuredHeight3 + i10);
                    i5 = childCount;
                    i6 = i11;
                } else {
                    boolean zO0ooOOo = this.OoooOoo.o0ooOOo();
                    boolean z4 = this.OoooOoo.Oooo00o() == BasePopupWindow.GravityMode.ALIGN_TO_ANCHOR_SIDE;
                    i5 = childCount;
                    int iOooOoO03 = measuredHeight4;
                    int iOooOo2 = this.OoooOoo.OooOo() + (this.OoooOoo.OooOo0o() >> 1);
                    i6 = i11;
                    int iOooOoO04 = this.OoooOoo.OooOoO0() + (this.OoooOoo.OooOo0() >> 1);
                    int i12 = iOoooO0O & 7;
                    if (i12 != 1) {
                        if (i12 == 3) {
                            if (zO0ooOOo) {
                                if (!z4) {
                                    iOooOo = this.OoooOoo.OooOo();
                                    iOooOo -= measuredWidth;
                                }
                            }
                        } else if (i12 != 5) {
                            iOooOo = zO0ooOOo ? this.OoooOoo.OooOo() : i9;
                        } else {
                            if (zO0ooOOo) {
                                iOooOo = this.OoooOoo.OooOo() + this.OoooOoo.OooOo0o();
                                if (z4) {
                                }
                            } else {
                                iOooOo = getMeasuredWidth();
                            }
                            iOooOo -= measuredWidth;
                        }
                    } else if (zO0ooOOo) {
                        iOooOo = this.OoooOoo.OooOo();
                        iOooo0o += iOooOo2 - ((measuredWidth >> 1) + iOooOo);
                    } else {
                        iOooOo = ((i3 - i9) - measuredWidth) >> 1;
                    }
                    int measuredWidth2 = getMeasuredWidth();
                    int i13 = (iOooOo + this.OooooO0) - this.OooooOo;
                    int i14 = iOoooO0O & 112;
                    if (i14 != 16) {
                        if (i14 == 48) {
                            if (zO0ooOOo) {
                                int iOooOoO05 = this.OoooOoo.OooOoO0();
                                if (!z4) {
                                    iOooOoO05 -= measuredHeight3;
                                }
                                iOooOoO0 = iOooOoO05;
                                iOooOoO02 = z4 ? this.OoooOoo.OooOoO0() : 0;
                                iOooOoO03 = z4 ? getMeasuredHeight() : this.OoooOoo.OooOoO0();
                            }
                            iOooOoO0 = i10;
                            iOooOoO02 = 0;
                        } else if (i14 != 80) {
                            if (zO0ooOOo) {
                                measuredHeight = getMeasuredHeight();
                                iOooOoO0 = this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0();
                                iOooOoO03 = measuredHeight;
                                iOooOoO02 = 0;
                            }
                            iOooOoO0 = i10;
                            iOooOoO02 = 0;
                        } else if (zO0ooOOo) {
                            iOooOoO0 = this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0();
                            if (z4) {
                                iOooOoO0 -= measuredHeight3;
                            }
                            iOooOoO02 = z4 ? 0 : this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0();
                            iOooOoO03 = z4 ? this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0() : getMeasuredHeight();
                        } else {
                            iOooOoO0 = (i4 - i10) - measuredHeight3;
                            iOooOoO02 = 0;
                        }
                        int i15 = (iOooOoO0 + this.OooooOO) - this.Oooooo0;
                        if (this.OoooOoo.o0OoOo0() && this.OoooOoo.o00Ooo()) {
                            int i16 = i15 + iOooo0oO + (this.OoooOoo.o00ooo() ? 0 : -mf0.OooOO0(getContext()));
                            if (i14 != 48) {
                                if (measuredHeight3 > (z4 ? this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0() : getMeasuredHeight() - (this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0()))) {
                                    iOooo0oO -= z4 ? 0 : i16 - this.OoooOoo.OooOoO0();
                                    iOooOoO03 = this.OoooOoo.OooOoO0();
                                    z = true;
                                    OooOo0(true);
                                    iOooOoO02 = 0;
                                    measuredHeight2 = iOooOoO03;
                                } else {
                                    z = true;
                                    measuredHeight2 = iOooOoO03;
                                }
                            } else {
                                z = true;
                                if (measuredHeight3 > (z4 ? getMeasuredHeight() - this.OoooOoo.OooOoO0() : this.OoooOoo.OooOoO0())) {
                                    iOooo0oO += z4 ? 0 : (this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0()) - i15;
                                    iOooOoO02 = this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0();
                                    OooOo0(false);
                                }
                                measuredHeight2 = iOooOoO03;
                            }
                        } else {
                            z = true;
                            measuredWidth2 = getMeasuredWidth();
                            measuredHeight2 = getMeasuredHeight();
                            iOooOoO02 = 0;
                        }
                        i7 = i13 + iOooo0o;
                        int i17 = i15 + iOooo0oO + (!this.OoooOoo.o00ooo() ? 0 : -mf0.OooOO0(getContext()));
                        i8 = i7 + measuredWidth;
                        int i18 = i17 + measuredHeight3;
                        if (i7 >= 0 && i17 >= 0 && i8 <= getMeasuredWidth() && i18 <= getMeasuredHeight()) {
                            z = false;
                        }
                        if (this.OoooOoo.o00Ooo() || !z) {
                            measuredWidth2 = i8;
                        } else {
                            if (i7 < 0) {
                                int i19 = 0 - i7;
                                if (i19 <= measuredWidth2 - i8) {
                                    i7 += i19;
                                    i8 = i7 + measuredWidth;
                                } else {
                                    i7 = 0;
                                }
                            }
                            if (i8 > measuredWidth2) {
                                int i20 = i8 - measuredWidth2;
                                if (i20 <= i7) {
                                    i7 -= i20;
                                    measuredWidth2 = i7 + measuredWidth;
                                }
                            } else {
                                measuredWidth2 = i8;
                            }
                            if (i17 < iOooOoO02) {
                                int i21 = iOooOoO02 - i17;
                                if (i21 <= measuredHeight2 - i18) {
                                    i17 += i21;
                                    i18 = i17 + measuredHeight3;
                                } else {
                                    i17 = iOooOoO02;
                                }
                            }
                            if (i18 > measuredHeight2) {
                                int i22 = i18 - measuredHeight2;
                                if (iOooOoO02 == 0) {
                                    i17 -= i22;
                                }
                                i18 = i17 + measuredHeight3;
                            }
                        }
                        childAt.layout(i7, i17, measuredWidth2, i18);
                        if (!z3) {
                            this.OoooOoO.OooO0OO(this.OoooOoo.OooOo00(), i7, i17, measuredWidth2, i18);
                        }
                    } else if (zO0ooOOo) {
                        int iOooOoO06 = this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0();
                        iOooo0oO += iOooOoO04 - ((measuredHeight3 >> 1) + iOooOoO06);
                        measuredHeight = getMeasuredHeight();
                        iOooOoO0 = iOooOoO06;
                        iOooOoO03 = measuredHeight;
                        iOooOoO02 = 0;
                        int i152 = (iOooOoO0 + this.OooooOO) - this.Oooooo0;
                        if (this.OoooOoo.o0OoOo0()) {
                            z = true;
                            measuredWidth2 = getMeasuredWidth();
                            measuredHeight2 = getMeasuredHeight();
                            iOooOoO02 = 0;
                            i7 = i13 + iOooo0o;
                            int i172 = i152 + iOooo0oO + (!this.OoooOoo.o00ooo() ? 0 : -mf0.OooOO0(getContext()));
                            i8 = i7 + measuredWidth;
                            int i182 = i172 + measuredHeight3;
                            if (i7 >= 0) {
                                z = false;
                            }
                            if (this.OoooOoo.o00Ooo()) {
                                measuredWidth2 = i8;
                                childAt.layout(i7, i172, measuredWidth2, i182);
                                if (!z3) {
                                }
                            }
                        }
                    } else {
                        iOooOoO0 = ((i4 - i10) - measuredHeight3) >> 1;
                        iOooOoO02 = 0;
                        int i1522 = (iOooOoO0 + this.OooooOO) - this.Oooooo0;
                        if (this.OoooOoo.o0OoOo0()) {
                        }
                    }
                }
            }
            i11 = i6 + 1;
            i9 = i;
            i10 = i2;
            childCount = i5;
        }
    }

    private void OooOOo(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (getResources().getConfiguration().orientation != 2 ? size > size2 : size < size2) {
            i = View.MeasureSpec.makeMeasureSpec(size2, mode2);
            i2 = View.MeasureSpec.makeMeasureSpec(size, mode);
        }
        PopupLog.OooO("measureWithIntercept", Integer.valueOf(View.MeasureSpec.getSize(i)), Integer.valueOf(View.MeasureSpec.getSize(i2)));
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt == this.OoooOoO) {
                measureChild(childAt, View.MeasureSpec.makeMeasureSpec(OooOOO0(), 1073741824), View.MeasureSpec.makeMeasureSpec(OooOO0o(), 1073741824));
            } else {
                OooOo00(childAt, i, i2);
            }
        }
        setMeasuredDimension(OooOOO0(), OooOO0o());
    }

    private void OooOOo0(int i, int i2, int i3, int i4) {
        if ((this.Ooooooo.OooO00o & 256) != 0 && (getLayoutParams() instanceof WindowManager.LayoutParams)) {
            this.OoooooO.updateViewLayout(this, getLayoutParams());
        }
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(i, i2, i3, i4);
                if (childAt == this.Ooooo00 && this.OoooOoO != null && this.OoooOoo.OoooooO() && this.OoooOoo.OooOo00() != 0) {
                    if (getLayoutParams() instanceof WindowManager.LayoutParams) {
                        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) getLayoutParams();
                        int i6 = layoutParams.x;
                        i += i6;
                        int i7 = layoutParams.y;
                        i2 += i7;
                        i3 += i6;
                        i4 += i7;
                    }
                    this.OoooOoO.OooO0OO(this.OoooOoo.OooOo00(), i, i2, i3, i4);
                }
            }
        }
    }

    private void OooOOoo(int i, int i2) {
        int childCount = getChildCount();
        int iMax = 0;
        int iCombineMeasuredStates = 0;
        int iMax2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            View view = this.Ooooo00;
            if (childAt == view) {
                OooOo00(view, i, i2);
            } else {
                measureChild(childAt, i, i2);
            }
            iMax = Math.max(iMax, childAt.getMeasuredWidth());
            iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
            iCombineMeasuredStates = ViewGroup.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
        }
        setMeasuredDimension(ViewGroup.resolveSizeAndState(iMax, i, iCombineMeasuredStates), ViewGroup.resolveSizeAndState(iMax2, i2, iCombineMeasuredStates << 16));
    }

    private void OooOo0(boolean z) {
        if (this.Oooooo == null) {
            this.Oooooo = new OooO0o(z);
        } else {
            OooOo0O();
        }
        this.Oooooo.OoooOoO = z;
        postDelayed(this.Oooooo, 32L);
    }

    private void OooOo00(View view, int i, int i2) {
        int iOooOO0o;
        int iOooO0o;
        int iOooO0o2;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        boolean z = false;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, 0, layoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, 0, layoutParams.height);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        int size2 = View.MeasureSpec.getSize(childMeasureSpec2);
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(childMeasureSpec2);
        int iOoooO0O = this.OoooOoo.OoooO0O();
        boolean z3 = this.OoooOoo.Oooo00o() == BasePopupWindow.GravityMode.ALIGN_TO_ANCHOR_SIDE;
        if (this.OoooOoo.o00Ooo() && this.OoooOoo.o0ooOOo()) {
            z = true;
        }
        if (z && size > (iOooO0o2 = nf0.OooO0o(size, this.OoooOoo.Oooo0o0(), size)) && !this.OoooOoo.oo000o()) {
            OooO oooO = this.Ooooooo;
            oooO.OooO00o = 1 | oooO.OooO00o;
            size = iOooO0o2;
        }
        if (this.OoooOoo.Oooo0o0() > 0 && size2 < this.OoooOoo.Oooo0o0()) {
            size = this.OoooOoo.Oooo0o0();
        }
        if (this.OoooOoo.Oooo0O0() > 0 && size > this.OoooOoo.Oooo0O0()) {
            size = this.OoooOoo.Oooo0O0();
        }
        if (z) {
            if ((iOoooO0O & 112) != 48) {
                iOooOO0o = z3 ? this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0() : OooOO0o() - (this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0());
                if (this.OoooOoo.o0OoOo0() && ((this.OoooOoo.Oooo0OO() > 0 && iOooOO0o < this.OoooOoo.Oooo0OO()) || iOooOO0o <= (size2 >> 2))) {
                    iOooOO0o = this.OoooOoo.OooOoO0();
                    if (z3) {
                        iOooOO0o += this.OoooOoo.OooOo0();
                    }
                }
            } else {
                iOooOO0o = z3 ? OooOO0o() - this.OoooOoo.OooOoO0() : this.OoooOoo.OooOoO0();
                if (this.OoooOoo.o0OoOo0() && ((this.OoooOoo.Oooo0OO() > 0 && iOooOO0o < this.OoooOoo.Oooo0OO()) || iOooOO0o <= (size2 >> 2))) {
                    int iOooOO0o2 = OooOO0o();
                    int iOooOoO0 = this.OoooOoo.OooOoO0();
                    if (!z3) {
                        iOooOoO0 += this.OoooOoo.OooOo0();
                    }
                    iOooOO0o = iOooOO0o2 - iOooOoO0;
                }
            }
            int i3 = (iOooOO0o - this.OooooOO) - this.Oooooo0;
            if (i3 <= 0) {
                Log.e(o00o0O, "BasePopup 可用展示空间小于或等于0，高度将按原测量值设定，不进行调整适配");
                this.Ooooooo.OooO00o |= 16;
                iOooO0o = size2;
            } else {
                iOooO0o = nf0.OooO0o(i3, this.OoooOoo.Oooo0OO(), i3);
            }
            if (size2 > iOooO0o && !this.OoooOoo.oo000o()) {
                this.Ooooooo.OooO00o |= 16;
                size2 = iOooO0o;
            }
        }
        if (this.OoooOoo.Oooo0OO() > 0 && size2 < this.OoooOoo.Oooo0OO()) {
            size2 = this.OoooOoo.Oooo0OO();
        }
        if (this.OoooOoo.Oooo0() > 0 && size2 > this.OoooOoo.Oooo0()) {
            size2 = this.OoooOoo.Oooo0();
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2));
    }

    private void OooOo0O() {
        OooO0o oooO0o = this.Oooooo;
        if (oooO0o != null) {
            removeCallbacks(oooO0o);
        }
    }

    @Override // z2.ue0
    public void OooO00o(int i, int i2, boolean z, boolean z3) {
        View viewFindFocus;
        int iOooO0O0;
        if (mf0.OooO0oo(getContext()) == 2) {
            return;
        }
        if ((this.OoooOoo.Ooooo0o() != 32 && this.OoooOoo.Ooooo0o() != 16) || (viewFindFocus = findFocus()) == null || this.o00Ooo == z) {
            return;
        }
        viewFindFocus.getGlobalVisibleRect(this.o0OoOo0);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int top = this.OoooOoo.o00oO0O() ? layoutParams instanceof WindowManager.LayoutParams ? ((WindowManager.LayoutParams) layoutParams).y : this.Ooooo00.getTop() : 0;
        if (!z3) {
            top -= mf0.OooOO0(getContext());
        }
        if (!z || i <= 0) {
            this.ooOO = 0;
        } else {
            int bottom = (this.Ooooo00.getBottom() + top) - i;
            if (bottom > 0 && this.o0OoOo0.top + top >= bottom) {
                this.ooOO = bottom;
            } else {
                int i3 = this.o0OoOo0.bottom;
                if (i3 > i) {
                    bottom = i3 - i;
                    this.ooOO = bottom;
                }
            }
        }
        if (this.OoooOoo.Oooo00O() != null && (iOooO0O0 = this.OoooOoo.Oooo00O().OooO0O0(i2, z, this.ooOO)) != 0) {
            this.ooOO = iOooO0O0;
        }
        if (this.OoooOoo.o00oO0O()) {
            ValueAnimator valueAnimator = this.o00Oo0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            int[] iArr = new int[2];
            iArr[0] = top;
            iArr[1] = z ? top - this.ooOO : this.o00O0O;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(iArr);
            this.o00Oo0 = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(300L);
            this.o00Oo0.addUpdateListener(new OooO0OO(layoutParams));
            this.o00Oo0.start();
        } else {
            this.Ooooo00.animate().cancel();
            this.Ooooo00.animate().translationY(-this.ooOO).setDuration(300L).start();
            PopupLog.OooO("onKeyboardChange", Boolean.valueOf(z), Integer.valueOf(i2), Integer.valueOf(this.ooOO));
        }
        this.o00Ooo = z;
    }

    public void OooO0oO(View view, WindowManager.LayoutParams layoutParams) {
        View childAt;
        int iOoooO;
        Objects.requireNonNull(view, "contentView不能为空");
        if (getChildCount() == 2) {
            removeViewsInLayout(1, 1);
        }
        this.Ooooo00 = view;
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
        layoutParams2.copyFrom(layoutParams);
        layoutParams2.x = 0;
        layoutParams2.y = 0;
        if (this.OoooOoo.OoooO00() == null) {
            View viewOooOO0 = OooOO0(view);
            if (viewOooOO0 != null) {
                if (this.OoooOoo.o00o0O()) {
                    layoutParams2.width = this.OoooOoo.OoooOO0();
                } else {
                    if (layoutParams2.width <= 0) {
                        layoutParams2.width = viewOooOO0.getMeasuredWidth() <= 0 ? this.OoooOoo.OoooOO0() : viewOooOO0.getMeasuredWidth();
                    }
                    if (layoutParams2.height <= 0) {
                        if (viewOooOO0.getMeasuredHeight() > 0) {
                            iOoooO = viewOooOO0.getMeasuredHeight();
                        }
                        layoutParams2.height = iOoooO;
                    }
                }
                iOoooO = this.OoooOoo.OoooO();
                layoutParams2.height = iOoooO;
            }
        } else {
            if ((view instanceof ViewGroup) && (childAt = ((ViewGroup) view).getChildAt(0)) != null) {
                childAt.setLayoutParams(new FrameLayout.LayoutParams(this.OoooOoo.OoooO00()));
            }
            layoutParams2.width = this.OoooOoo.OoooOO0();
            layoutParams2.height = this.OoooOoo.OoooO();
            this.OooooO0 = this.OoooOoo.OoooO00().leftMargin;
            this.OooooOO = this.OoooOoo.OoooO00().topMargin;
            this.OooooOo = this.OoooOoo.OoooO00().rightMargin;
            this.Oooooo0 = this.OoooOoo.OoooO00().bottomMargin;
        }
        addView(view, layoutParams2);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e0 A[PHI: r5
      0x00e0: PHI (r5v32 int) = (r5v30 int), (r5v42 int) binds: [B:52:0x00dd, B:45:0x00c1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooOO0O(WindowManager.LayoutParams layoutParams) {
        OooO oooO;
        int i;
        int iOooOo;
        int i2;
        int iOoooO0O;
        int iOooOoO0;
        int i3;
        int iOooOoO02;
        int iOooOoO03;
        if (getMeasuredWidth() == 0 || getMeasuredHeight() == 0) {
            oooO = this.Ooooooo;
            i = oooO.OooO00o | 256;
        } else {
            int iOoooO0O2 = this.OoooOoo.OoooO0O();
            boolean z = this.OoooOoo.Oooo00o() == BasePopupWindow.GravityMode.ALIGN_TO_ANCHOR_SIDE;
            int iOoooO0O3 = this.OoooOoo.OoooO0O() & 7;
            if (iOoooO0O3 == 1) {
                iOooOo = this.OoooOoo.o0ooOOo() ? this.OoooOoo.OooOo() + ((this.OoooOoo.OooOo0o() - getMeasuredWidth()) >> 1) : (OooOOO0() - getMeasuredWidth()) >> 1;
            } else if (iOoooO0O3 != 3) {
                if (iOoooO0O3 == 5) {
                    if (this.OoooOoo.o0ooOOo()) {
                        iOooOo = this.OoooOoo.OooOo() + this.OoooOoo.OooOo0o();
                        if (z) {
                        }
                    } else {
                        iOooOo = OooOOO0();
                    }
                    iOooOo -= getMeasuredWidth();
                }
                i2 = 0;
                int i4 = (i2 + this.OooooO0) - this.OooooOo;
                iOoooO0O = this.OoooOoo.OoooO0O() & 112;
                if (iOoooO0O == 16) {
                    iOooOoO0 = this.OoooOoo.o0ooOOo() ? this.OoooOoo.OooOoO0() + ((this.OoooOoo.OooOo0() - getMeasuredHeight()) >> 1) : (OooOO0o() - getMeasuredHeight()) >> 1;
                } else if (iOoooO0O != 48) {
                    if (iOoooO0O == 80) {
                        if (this.OoooOoo.o0ooOOo()) {
                            iOooOoO03 = this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0();
                            if (z) {
                                iOooOoO03 -= getMeasuredHeight();
                            }
                            i3 = iOooOoO03 + 0;
                            iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
                            PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i4 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
                            if (this.OoooOoo.o0OoOo0() && this.OoooOoo.o00Ooo()) {
                                int i5 = (!this.OoooOoo.o00ooo() ? 0 : -mf0.OooOO0(getContext())) + iOooOoO02;
                                if ((iOoooO0O2 & 112) == 48) {
                                    if (getMeasuredHeight() > (z ? this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0() : OooOO0o() - (this.OoooOoo.OooOoO0() + this.OoooOoo.OooOo0()))) {
                                        iOooOoO02 -= z ? 0 : i5 - this.OoooOoo.OooOoO0();
                                        OooOo0(true);
                                    }
                                } else {
                                    if (getMeasuredHeight() > (z ? OooOO0o() - this.OoooOoo.OooOoO0() : this.OoooOoo.OooOoO0())) {
                                        iOooOoO02 += z ? 0 : (this.OoooOoo.OooOoO0() + this.OoooOoo.Oooo0OO()) - iOooOoO02;
                                        OooOo0(false);
                                    }
                                }
                            }
                            layoutParams.x = i4 + this.OoooOoo.Oooo0o();
                            int iOooo0oO = iOooOoO02 + this.OoooOoo.Oooo0oO();
                            layoutParams.y = iOooo0oO;
                            this.o00O0O = iOooo0oO;
                            oooO = this.Ooooooo;
                            i = oooO.OooO00o & (-257);
                        } else {
                            iOooOoO0 = OooOO0o() - getMeasuredHeight();
                        }
                    }
                    i3 = 0;
                    iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
                    PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i4 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
                    if (this.OoooOoo.o0OoOo0()) {
                        int i52 = (!this.OoooOoo.o00ooo() ? 0 : -mf0.OooOO0(getContext())) + iOooOoO02;
                        if ((iOoooO0O2 & 112) == 48) {
                        }
                    }
                    layoutParams.x = i4 + this.OoooOoo.Oooo0o();
                    int iOooo0oO2 = iOooOoO02 + this.OoooOoo.Oooo0oO();
                    layoutParams.y = iOooo0oO2;
                    this.o00O0O = iOooo0oO2;
                    oooO = this.Ooooooo;
                    i = oooO.OooO00o & (-257);
                } else {
                    if (this.OoooOoo.o0ooOOo()) {
                        iOooOoO03 = this.OoooOoo.OooOoO0();
                        if (!z) {
                        }
                        i3 = iOooOoO03 + 0;
                        iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
                        PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i4 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
                        if (this.OoooOoo.o0OoOo0()) {
                        }
                        layoutParams.x = i4 + this.OoooOoo.Oooo0o();
                        int iOooo0oO22 = iOooOoO02 + this.OoooOoo.Oooo0oO();
                        layoutParams.y = iOooo0oO22;
                        this.o00O0O = iOooo0oO22;
                        oooO = this.Ooooooo;
                        i = oooO.OooO00o & (-257);
                    }
                    i3 = 0;
                    iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
                    PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i4 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
                    if (this.OoooOoo.o0OoOo0()) {
                    }
                    layoutParams.x = i4 + this.OoooOoo.Oooo0o();
                    int iOooo0oO222 = iOooOoO02 + this.OoooOoo.Oooo0oO();
                    layoutParams.y = iOooo0oO222;
                    this.o00O0O = iOooo0oO222;
                    oooO = this.Ooooooo;
                    i = oooO.OooO00o & (-257);
                }
                i3 = iOooOoO0 + 0;
                iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
                PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i4 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
                if (this.OoooOoo.o0OoOo0()) {
                }
                layoutParams.x = i4 + this.OoooOoo.Oooo0o();
                int iOooo0oO2222 = iOooOoO02 + this.OoooOoo.Oooo0oO();
                layoutParams.y = iOooo0oO2222;
                this.o00O0O = iOooo0oO2222;
                oooO = this.Ooooooo;
                i = oooO.OooO00o & (-257);
            } else {
                if (this.OoooOoo.o0ooOOo()) {
                    iOooOo = this.OoooOoo.OooOo();
                    if (!z) {
                        iOooOo -= getMeasuredWidth();
                    }
                }
                i2 = 0;
                int i42 = (i2 + this.OooooO0) - this.OooooOo;
                iOoooO0O = this.OoooOoo.OoooO0O() & 112;
                if (iOoooO0O == 16) {
                }
                i3 = iOooOoO0 + 0;
                iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
                PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i42 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
                if (this.OoooOoo.o0OoOo0()) {
                }
                layoutParams.x = i42 + this.OoooOoo.Oooo0o();
                int iOooo0oO22222 = iOooOoO02 + this.OoooOoo.Oooo0oO();
                layoutParams.y = iOooo0oO22222;
                this.o00O0O = iOooo0oO22222;
                oooO = this.Ooooooo;
                i = oooO.OooO00o & (-257);
            }
            i2 = iOooOo + 0;
            int i422 = (i2 + this.OooooO0) - this.OooooOo;
            iOoooO0O = this.OoooOoo.OoooO0O() & 112;
            if (iOoooO0O == 16) {
            }
            i3 = iOooOoO0 + 0;
            iOooOoO02 = (i3 + this.OooooOO) - this.Oooooo0;
            PopupLog.OooO0oo("fitWindowParams  ::  {\n\t\tscreenWidth = " + OooOOO0() + "\n\t\tscreenHeight = " + OooOO0o() + "\n\t\tanchorX = " + this.OoooOoo.OooOo() + "\n\t\tanchorY = " + this.OoooOoo.OooOoO0() + "\n\t\tviewWidth = " + getMeasuredWidth() + "\n\t\tviewHeight = " + getMeasuredHeight() + "\n\t\toffsetX = " + i422 + "\n\t\toffsetY = " + iOooOoO02 + "\n}");
            if (this.OoooOoo.o0OoOo0()) {
            }
            layoutParams.x = i422 + this.OoooOoo.Oooo0o();
            int iOooo0oO222222 = iOooOoO02 + this.OoooOoo.Oooo0oO();
            layoutParams.y = iOooo0oO222222;
            this.o00O0O = iOooo0oO222222;
            oooO = this.Ooooooo;
            i = oooO.OooO00o & (-257);
        }
        oooO.OooO00o = i;
    }

    public int OooOO0o() {
        int iOooO0oO = mf0.OooO0oO(getContext());
        PopupLog.OooO0oo("autoSize  height = " + iOooO0oO);
        return iOooO0oO;
    }

    public int OooOOO0() {
        int iOooO = mf0.OooO(getContext());
        PopupLog.OooO0oo("autoSize  width = " + iOooO);
        return iOooO;
    }

    public void OooOo0o() {
        BasePopupHelper basePopupHelper = this.OoooOoo;
        if (basePopupHelper != null) {
            basePopupHelper.OooO0Oo();
        }
        ve0 ve0Var = this.OoooOoO;
        if (ve0Var != null) {
            ve0Var.OooO0oO();
        }
        if (isLayoutRequested()) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState;
        BasePopupHelper basePopupHelper = this.OoooOoo;
        if (basePopupHelper != null && basePopupHelper.OooO0oo(keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 4 && getKeyDispatcherState() != null) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                }
                return true;
            }
            if (keyEvent.getAction() != 1 || (keyDispatcherState = getKeyDispatcherState()) == null || !keyDispatcherState.isTracking(keyEvent) || keyEvent.isCanceled() || this.OoooOoo == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            PopupLog.OooO(o00o0O, "dispatchKeyEvent: >>> onBackPressed");
            return this.OoooOoo.OooOO0O();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ve0 ve0Var = this.OoooOoO;
        if (ve0Var != null) {
            ve0Var.OooO0o0(-2L);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        (getContext() instanceof Activity ? ((Activity) getContext()).getWindow().getDecorView() : this).post(new OooO0O0());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ve0 ve0Var;
        super.onDetachedFromWindow();
        if (this.OoooOoo.o00oO0O() && (ve0Var = this.OoooOoO) != null && ve0Var.getParent() != null) {
            ((ViewGroup) this.OoooOoO.getParent()).removeViewInLayout(this.OoooOoO);
        }
        this.OoooOoo.oo0o0Oo(null);
        OooO0o oooO0o = this.Oooooo;
        if (oooO0o != null) {
            removeCallbacks(oooO0o);
            this.Oooooo = null;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        BasePopupHelper basePopupHelper = this.OoooOoo;
        if (basePopupHelper != null) {
            return basePopupHelper.OooOO0(motionEvent);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        PopupLog.OooO("onLayout", Boolean.valueOf(z), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        if (this.OoooOoo.o00oO0O()) {
            OooOOo0(i, i2, i3, i4);
        } else {
            OooOOOo(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        OooO oooO = this.Ooooooo;
        int i3 = oooO.OooO00o & (-2);
        oooO.OooO00o = i3;
        oooO.OooO00o = i3 & (-17);
        PopupLog.OooO("onMeasure", Integer.valueOf(View.MeasureSpec.getSize(i)), Integer.valueOf(View.MeasureSpec.getSize(i2)));
        if (this.OoooOoo.o00oO0O()) {
            OooOOoo(i, i2);
        } else {
            OooOOo(i, i2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        BasePopupHelper basePopupHelper = this.OoooOoo;
        if (basePopupHelper != null && basePopupHelper.onTouchEvent(motionEvent)) {
            return true;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0 && (x < 0 || x >= getWidth() || y < 0 || y >= getHeight())) {
            if (this.OoooOoo != null) {
                PopupLog.OooO(o00o0O, "onTouchEvent:[ACTION_DOWN] >>> onOutSideTouch");
                return this.OoooOoo.OooO();
            }
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 4 && this.OoooOoo != null) {
            PopupLog.OooO(o00o0O, "onTouchEvent:[ACTION_OUTSIDE] >>> onOutSideTouch");
            return this.OoooOoo.OooO();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
