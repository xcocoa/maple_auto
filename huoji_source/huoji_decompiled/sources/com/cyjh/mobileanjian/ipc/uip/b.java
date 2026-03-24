package com.cyjh.mobileanjian.ipc.uip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import com.cyjh.mqsdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
public final class b extends ViewGroup {
    private int OoooOoO;
    private final List<List<View>> OoooOoo;
    private final List<Integer> Ooooo00;
    private final List<Integer> Ooooo0o;

    public static class OooO00o extends ViewGroup.MarginLayoutParams {
        public int OooO00o;

        public OooO00o(int i, int i2) {
            super(i, i2);
            this.OooO00o = -1;
        }

        public OooO00o(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.OooO00o = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlowLayout_Layout);
            try {
                this.OooO00o = typedArrayObtainStyledAttributes.getInt(R.styleable.FlowLayout_Layout_android_layout_gravity, -1);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }

        public OooO00o(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.OooO00o = -1;
        }
    }

    public b(Context context) {
        this(context, (byte) 0);
    }

    private b(Context context, byte b) {
        this(context, (char) 0);
    }

    private b(Context context, char c) {
        super(context, null, 0);
        this.OoooOoO = (OooO0Oo() ? GravityCompat.START : 3) | 48;
        this.OoooOoo = new ArrayList();
        this.Ooooo00 = new ArrayList();
        this.Ooooo0o = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.FlowLayout, 0, 0);
        try {
            int i = typedArrayObtainStyledAttributes.getInt(R.styleable.FlowLayout_android_gravity, -1);
            if (i > 0) {
                setGravity(i);
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static OooO00o OooO00o() {
        return new OooO00o(-1, -1);
    }

    private OooO00o OooO0O0(AttributeSet attributeSet) {
        return new OooO00o(getContext(), attributeSet);
    }

    private static OooO00o OooO0OO(ViewGroup.LayoutParams layoutParams) {
        return new OooO00o(layoutParams);
    }

    private static boolean OooO0Oo() {
        return Build.VERSION.SDK_INT >= 14;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof OooO00o);
    }

    @Override // android.view.ViewGroup
    public final /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new OooO00o(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new OooO00o(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new OooO00o(layoutParams);
    }

    public final int getGravity() {
        return this.OoooOoO;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0170  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        List<View> list;
        int i8;
        int i9;
        b bVar = this;
        bVar.OoooOoo.clear();
        bVar.Ooooo00.clear();
        bVar.Ooooo0o.clear();
        int width = getWidth();
        int height = getHeight();
        int paddingTop = getPaddingTop();
        ArrayList arrayList = new ArrayList();
        int i10 = bVar.OoooOoO & 7;
        float f = i10 != 1 ? i10 != 5 ? 0.0f : 1.0f : 0.5f;
        int i11 = 0;
        int iMax = 0;
        int i12 = 0;
        while (true) {
            i5 = 8;
            if (i11 >= getChildCount()) {
                break;
            }
            View childAt = bVar.getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                OooO00o oooO00o = (OooO00o) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) oooO00o).leftMargin + ((ViewGroup.MarginLayoutParams) oooO00o).rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) oooO00o).bottomMargin + ((ViewGroup.MarginLayoutParams) oooO00o).topMargin;
                if (i12 + measuredWidth > width) {
                    bVar.Ooooo00.add(Integer.valueOf(iMax));
                    bVar.OoooOoo.add(arrayList);
                    bVar.Ooooo0o.add(Integer.valueOf(((int) ((width - i12) * f)) + getPaddingLeft()));
                    paddingTop += iMax;
                    arrayList = new ArrayList();
                    iMax = 0;
                    i12 = 0;
                }
                i12 += measuredWidth;
                iMax = Math.max(iMax, measuredHeight);
                arrayList.add(childAt);
            }
            i11++;
        }
        bVar.Ooooo00.add(Integer.valueOf(iMax));
        bVar.OoooOoo.add(arrayList);
        bVar.Ooooo0o.add(Integer.valueOf(((int) ((width - i12) * f)) + getPaddingLeft()));
        int i13 = paddingTop + iMax;
        int i14 = bVar.OoooOoO & 112;
        int i15 = i14 != 16 ? i14 != 80 ? 0 : height - i13 : (height - i13) / 2;
        int size = bVar.OoooOoo.size();
        int paddingTop2 = getPaddingTop();
        int i16 = 0;
        while (i16 < size) {
            int iIntValue = bVar.Ooooo00.get(i16).intValue();
            List<View> list2 = bVar.OoooOoo.get(i16);
            int iIntValue2 = bVar.Ooooo0o.get(i16).intValue();
            int size2 = list2.size();
            int i17 = 0;
            while (i17 < size2) {
                View view = list2.get(i17);
                if (view.getVisibility() != i5) {
                    OooO00o oooO00o2 = (OooO00o) view.getLayoutParams();
                    if (((ViewGroup.MarginLayoutParams) oooO00o2).height == -1) {
                        int i18 = ((ViewGroup.MarginLayoutParams) oooO00o2).width;
                        if (i18 == -1) {
                            i18 = i12;
                        } else {
                            if (i18 < 0) {
                                i18 = i12;
                                i9 = Integer.MIN_VALUE;
                            }
                            view.measure(View.MeasureSpec.makeMeasureSpec(i18, i9), View.MeasureSpec.makeMeasureSpec((iIntValue - ((ViewGroup.MarginLayoutParams) oooO00o2).topMargin) - ((ViewGroup.MarginLayoutParams) oooO00o2).bottomMargin, 1073741824));
                        }
                        i9 = 1073741824;
                        view.measure(View.MeasureSpec.makeMeasureSpec(i18, i9), View.MeasureSpec.makeMeasureSpec((iIntValue - ((ViewGroup.MarginLayoutParams) oooO00o2).topMargin) - ((ViewGroup.MarginLayoutParams) oooO00o2).bottomMargin, 1073741824));
                    }
                    int measuredWidth2 = view.getMeasuredWidth();
                    int measuredHeight2 = view.getMeasuredHeight();
                    if (Gravity.isVertical(oooO00o2.OooO00o)) {
                        int i19 = oooO00o2.OooO00o;
                        if (i19 == 16 || i19 == 17) {
                            i8 = (((iIntValue - measuredHeight2) - ((ViewGroup.MarginLayoutParams) oooO00o2).topMargin) - ((ViewGroup.MarginLayoutParams) oooO00o2).bottomMargin) / 2;
                        } else if (i19 == 80) {
                            i8 = ((iIntValue - measuredHeight2) - ((ViewGroup.MarginLayoutParams) oooO00o2).topMargin) - ((ViewGroup.MarginLayoutParams) oooO00o2).bottomMargin;
                        }
                        int i20 = ((ViewGroup.MarginLayoutParams) oooO00o2).leftMargin;
                        i6 = size;
                        i7 = i12;
                        int i21 = ((ViewGroup.MarginLayoutParams) oooO00o2).topMargin;
                        list = list2;
                        view.layout(iIntValue2 + i20, paddingTop2 + i21 + i8 + i15, iIntValue2 + measuredWidth2 + i20, measuredHeight2 + paddingTop2 + i21 + i8 + i15);
                        iIntValue2 += measuredWidth2 + ((ViewGroup.MarginLayoutParams) oooO00o2).leftMargin + ((ViewGroup.MarginLayoutParams) oooO00o2).rightMargin;
                    } else {
                        i8 = 0;
                        int i202 = ((ViewGroup.MarginLayoutParams) oooO00o2).leftMargin;
                        i6 = size;
                        i7 = i12;
                        int i212 = ((ViewGroup.MarginLayoutParams) oooO00o2).topMargin;
                        list = list2;
                        view.layout(iIntValue2 + i202, paddingTop2 + i212 + i8 + i15, iIntValue2 + measuredWidth2 + i202, measuredHeight2 + paddingTop2 + i212 + i8 + i15);
                        iIntValue2 += measuredWidth2 + ((ViewGroup.MarginLayoutParams) oooO00o2).leftMargin + ((ViewGroup.MarginLayoutParams) oooO00o2).rightMargin;
                    }
                } else {
                    i6 = size;
                    i7 = i12;
                    list = list2;
                }
                i17++;
                size = i6;
                i12 = i7;
                list2 = list;
                i5 = 8;
            }
            paddingTop2 += iIntValue;
            i16++;
            bVar = this;
            i5 = 8;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9 A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        super.onMeasure(i, i2);
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childCount = getChildCount();
        int i6 = paddingTop;
        int iMax = 0;
        int i7 = 0;
        int i8 = 0;
        int iMax2 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            boolean z = i8 == childCount + (-1);
            if (childAt.getVisibility() == 8) {
                if (z) {
                    iMax2 = Math.max(iMax2, i7);
                    i6 += iMax;
                }
                i3 = size2;
            } else {
                int i9 = iMax;
                i3 = size2;
                int i10 = i7;
                measureChildWithMargins(childAt, i, i7, i2, i6);
                OooO00o oooO00o = (OooO00o) childAt.getLayoutParams();
                int i11 = ((ViewGroup.MarginLayoutParams) oooO00o).width;
                int i12 = Integer.MIN_VALUE;
                if (i11 == -1) {
                    i11 = size - (((ViewGroup.MarginLayoutParams) oooO00o).leftMargin + ((ViewGroup.MarginLayoutParams) oooO00o).rightMargin);
                } else {
                    if (i11 < 0) {
                        i11 = size;
                        i4 = Integer.MIN_VALUE;
                    }
                    i5 = ((ViewGroup.MarginLayoutParams) oooO00o).height;
                    if (i5 < 0) {
                        i12 = 1073741824;
                    } else if (mode2 == 0) {
                        i12 = 0;
                        i5 = 0;
                    } else {
                        i5 = i3;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i4), View.MeasureSpec.makeMeasureSpec(i5, i12));
                    int measuredWidth = childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) oooO00o).leftMargin + ((ViewGroup.MarginLayoutParams) oooO00o).rightMargin;
                    i7 = i10 + measuredWidth;
                    if (i7 <= size) {
                        iMax2 = Math.max(iMax2, i10);
                        i6 += i9;
                        i7 = measuredWidth;
                        iMax = childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) oooO00o).topMargin + ((ViewGroup.MarginLayoutParams) oooO00o).bottomMargin;
                    } else {
                        iMax = Math.max(i9, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) oooO00o).topMargin + ((ViewGroup.MarginLayoutParams) oooO00o).bottomMargin);
                    }
                    if (!z) {
                        iMax2 = Math.max(iMax2, i7);
                        i6 += iMax;
                    }
                }
                i4 = 1073741824;
                i5 = ((ViewGroup.MarginLayoutParams) oooO00o).height;
                if (i5 < 0) {
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i4), View.MeasureSpec.makeMeasureSpec(i5, i12));
                int measuredWidth2 = childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) oooO00o).leftMargin + ((ViewGroup.MarginLayoutParams) oooO00o).rightMargin;
                i7 = i10 + measuredWidth2;
                if (i7 <= size) {
                }
                if (!z) {
                }
            }
            i8++;
            size2 = i3;
        }
        int i13 = size2;
        int paddingLeft = iMax2 + getPaddingLeft() + getPaddingRight();
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i13 : i6);
    }

    @TargetApi(14)
    public final void setGravity(int i) {
        if (this.OoooOoO != i) {
            if ((8388615 & i) == 0) {
                i |= OooO0Oo() ? GravityCompat.START : 3;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.OoooOoO = i;
            requestLayout();
        }
    }
}
