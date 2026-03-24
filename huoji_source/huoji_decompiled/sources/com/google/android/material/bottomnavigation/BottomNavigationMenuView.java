package com.google.android.material.bottomnavigation;

import android.R;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import z2.wk;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationMenuView extends ViewGroup implements MenuView {
    private static final long o0OOO0o = 115;
    private final TransitionSet OoooOoO;
    private final int OoooOoo;
    private final int Ooooo00;
    private final int Ooooo0o;
    private final int OooooO0;
    private final int OooooOO;
    private final View.OnClickListener OooooOo;
    private boolean Oooooo;
    private final Pools.Pool<BottomNavigationItemView> Oooooo0;
    private int OoooooO;
    private BottomNavigationItemView[] Ooooooo;
    private ColorStateList o00O0O;

    @Dimension
    private int o00Oo0;
    private ColorStateList o00Ooo;
    private final ColorStateList o00o0O;
    private int o00oO0O;
    private Drawable o00oO0o;

    @StyleRes
    private int o00ooo;
    private int o0OoOo0;
    private int[] o0ooOO0;
    private BottomNavigationPresenter o0ooOOo;
    private MenuBuilder o0ooOoO;

    @StyleRes
    private int oo000o;
    private int ooOO;
    private static final int[] o0Oo0oo = {R.attr.state_checked};
    private static final int[] o0OO00O = {-16842910};

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((BottomNavigationItemView) view).getItemData();
            if (BottomNavigationMenuView.this.o0ooOoO.performItemAction(itemData, BottomNavigationMenuView.this.o0ooOOo, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Oooooo0 = new Pools.SynchronizedPool(5);
        this.o0OoOo0 = 0;
        this.ooOO = 0;
        Resources resources = getResources();
        this.OoooOoo = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_item_max_width);
        this.Ooooo00 = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_item_min_width);
        this.Ooooo0o = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_active_item_max_width);
        this.OooooO0 = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_active_item_min_width);
        this.OooooOO = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_height);
        this.o00o0O = OooO0Oo(R.attr.textColorSecondary);
        AutoTransition autoTransition = new AutoTransition();
        this.OoooOoO = autoTransition;
        autoTransition.setOrdering(0);
        autoTransition.setDuration(o0OOO0o);
        autoTransition.setInterpolator((TimeInterpolator) new FastOutSlowInInterpolator());
        autoTransition.addTransition(new wk());
        this.OooooOo = new OooO00o();
        this.o0ooOO0 = new int[5];
    }

    private boolean OooO0o(int i, int i2) {
        if (i == -1) {
            if (i2 > 3) {
                return true;
            }
        } else if (i == 0) {
            return true;
        }
        return false;
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView bottomNavigationItemViewAcquire = this.Oooooo0.acquire();
        return bottomNavigationItemViewAcquire == null ? new BottomNavigationItemView(getContext()) : bottomNavigationItemViewAcquire;
    }

    public void OooO0OO() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.Oooooo0.release(bottomNavigationItemView);
                }
            }
        }
        if (this.o0ooOoO.size() == 0) {
            this.o0OoOo0 = 0;
            this.ooOO = 0;
            this.Ooooooo = null;
            return;
        }
        this.Ooooooo = new BottomNavigationItemView[this.o0ooOoO.size()];
        boolean zOooO0o = OooO0o(this.OoooooO, this.o0ooOoO.getVisibleItems().size());
        for (int i = 0; i < this.o0ooOoO.size(); i++) {
            this.o0ooOOo.OooO0OO(true);
            this.o0ooOoO.getItem(i).setCheckable(true);
            this.o0ooOOo.OooO0OO(false);
            BottomNavigationItemView newItem = getNewItem();
            this.Ooooooo[i] = newItem;
            newItem.setIconTintList(this.o00O0O);
            newItem.setIconSize(this.o00Oo0);
            newItem.setTextColor(this.o00o0O);
            newItem.setTextAppearanceInactive(this.o00ooo);
            newItem.setTextAppearanceActive(this.oo000o);
            newItem.setTextColor(this.o00Ooo);
            Drawable drawable = this.o00oO0o;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.o00oO0O);
            }
            newItem.setShifting(zOooO0o);
            newItem.setLabelVisibilityMode(this.OoooooO);
            newItem.initialize((MenuItemImpl) this.o0ooOoO.getItem(i), 0);
            newItem.setItemPosition(i);
            newItem.setOnClickListener(this.OooooOo);
            addView(newItem);
        }
        int iMin = Math.min(this.o0ooOoO.size() - 1, this.ooOO);
        this.ooOO = iMin;
        this.o0ooOoO.getItem(iMin).setChecked(true);
    }

    public ColorStateList OooO0Oo(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = o0OO00O;
        return new ColorStateList(new int[][]{iArr, o0Oo0oo, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    public boolean OooO0o0() {
        return this.Oooooo;
    }

    public void OooO0oO(int i) {
        int size = this.o0ooOoO.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.o0ooOoO.getItem(i2);
            if (i == item.getItemId()) {
                this.o0OoOo0 = i;
                this.ooOO = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    public void OooO0oo() {
        MenuBuilder menuBuilder = this.o0ooOoO;
        if (menuBuilder == null || this.Ooooooo == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.Ooooooo.length) {
            OooO0OO();
            return;
        }
        int i = this.o0OoOo0;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.o0ooOoO.getItem(i2);
            if (item.isChecked()) {
                this.o0OoOo0 = item.getItemId();
                this.ooOO = i2;
            }
        }
        if (i != this.o0OoOo0) {
            TransitionManager.beginDelayedTransition(this, this.OoooOoO);
        }
        boolean zOooO0o = OooO0o(this.OoooooO, this.o0ooOoO.getVisibleItems().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.o0ooOOo.OooO0OO(true);
            this.Ooooooo[i3].setLabelVisibilityMode(this.OoooooO);
            this.Ooooooo[i3].setShifting(zOooO0o);
            this.Ooooooo[i3].initialize((MenuItemImpl) this.o0ooOoO.getItem(i3), 0);
            this.o0ooOOo.OooO0OO(false);
        }
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.o00O0O;
    }

    @Nullable
    public Drawable getItemBackground() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        return (bottomNavigationItemViewArr == null || bottomNavigationItemViewArr.length <= 0) ? this.o00oO0o : bottomNavigationItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.o00oO0O;
    }

    @Dimension
    public int getItemIconSize() {
        return this.o00Oo0;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.oo000o;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.o00ooo;
    }

    public ColorStateList getItemTextColor() {
        return this.o00Ooo;
    }

    public int getLabelVisibilityMode() {
        return this.OoooooO;
    }

    public int getSelectedItemId() {
        return this.o0OoOo0;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.o0ooOoO = menuBuilder;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int measuredWidth = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i8 = i5 - measuredWidth;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i6);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, i6);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.o0ooOoO.getVisibleItems().size();
        int childCount = getChildCount();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.OooooOO, 1073741824);
        if (OooO0o(this.OoooooO, size2) && this.Oooooo) {
            View childAt = getChildAt(this.ooOO);
            int iMax = this.OooooO0;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.Ooooo0o, Integer.MIN_VALUE), iMakeMeasureSpec);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
            int i3 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int iMin = Math.min(size - (this.Ooooo00 * i3), Math.min(iMax, this.Ooooo0o));
            int i4 = size - iMin;
            int iMin2 = Math.min(i4 / (i3 == 0 ? 1 : i3), this.OoooOoo);
            int i5 = i4 - (i3 * iMin2);
            int i6 = 0;
            while (i6 < childCount) {
                if (getChildAt(i6).getVisibility() != 8) {
                    int[] iArr = this.o0ooOO0;
                    iArr[i6] = i6 == this.ooOO ? iMin : iMin2;
                    if (i5 > 0) {
                        iArr[i6] = iArr[i6] + 1;
                        i5--;
                    }
                } else {
                    this.o0ooOO0[i6] = 0;
                }
                i6++;
            }
        } else {
            int iMin3 = Math.min(size / (size2 == 0 ? 1 : size2), this.Ooooo0o);
            int i7 = size - (size2 * iMin3);
            for (int i8 = 0; i8 < childCount; i8++) {
                if (getChildAt(i8).getVisibility() != 8) {
                    int[] iArr2 = this.o0ooOO0;
                    iArr2[i8] = iMin3;
                    if (i7 > 0) {
                        iArr2[i8] = iArr2[i8] + 1;
                        i7--;
                    }
                } else {
                    this.o0ooOO0[i8] = 0;
                }
            }
        }
        int measuredWidth = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.o0ooOO0[i9], 1073741824), iMakeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), 0), View.resolveSizeAndState(this.OooooOO, iMakeMeasureSpec, 0));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.o00O0O = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.o00oO0o = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.o00oO0O = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setItemBackground(i);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.Oooooo = z;
    }

    public void setItemIconSize(@Dimension int i) {
        this.o00Oo0 = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setIconSize(i);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.oo000o = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.o00Ooo;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.o00ooo = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.o00Ooo;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.o00Ooo = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.Ooooooo;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.OoooooO = i;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.o0ooOOo = bottomNavigationPresenter;
    }
}
