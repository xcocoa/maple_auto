package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import z2.uj;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
public class BottomNavigationView extends FrameLayout {
    private static final int OooooOo = 1;
    private final MenuBuilder OoooOoO;
    private final BottomNavigationMenuView OoooOoo;
    private final BottomNavigationPresenter Ooooo00;
    private MenuInflater Ooooo0o;
    private OooO0OO OooooO0;
    private OooO0O0 OooooOO;

    public class OooO00o implements MenuBuilder.Callback {
        public OooO00o() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            if (BottomNavigationView.this.OooooOO == null || menuItem.getItemId() != BottomNavigationView.this.getSelectedItemId()) {
                return (BottomNavigationView.this.OooooO0 == null || BottomNavigationView.this.OooooO0.OooO00o(menuItem)) ? false : true;
            }
            BottomNavigationView.this.OooooOO.OooO00o(menuItem);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    public interface OooO0O0 {
        void OooO00o(@NonNull MenuItem menuItem);
    }

    public interface OooO0OO {
        boolean OooO00o(@NonNull MenuItem menuItem);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public Bundle menuPresenterState;

        public static class OooO00o implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel, classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
            this.menuPresenterState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuPresenterState);
        }
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        BottomNavigationPresenter bottomNavigationPresenter = new BottomNavigationPresenter();
        this.Ooooo00 = bottomNavigationPresenter;
        MenuBuilder ujVar = new uj(context);
        this.OoooOoO = ujVar;
        BottomNavigationMenuView bottomNavigationMenuView = new BottomNavigationMenuView(context);
        this.OoooOoo = bottomNavigationMenuView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        bottomNavigationMenuView.setLayoutParams(layoutParams);
        bottomNavigationPresenter.OooO00o(bottomNavigationMenuView);
        bottomNavigationPresenter.OooO0O0(1);
        bottomNavigationMenuView.setPresenter(bottomNavigationPresenter);
        ujVar.addMenuPresenter(bottomNavigationPresenter);
        bottomNavigationPresenter.initForMenu(getContext(), ujVar);
        int[] iArr = R.styleable.BottomNavigationView;
        int i2 = R.style.Widget_Design_BottomNavigationView;
        int i3 = R.styleable.BottomNavigationView_itemTextAppearanceInactive;
        int i4 = R.styleable.BottomNavigationView_itemTextAppearanceActive;
        TintTypedArray tintTypedArrayOooOO0O = xk.OooOO0O(context, attributeSet, iArr, i, i2, i3, i4);
        int i5 = R.styleable.BottomNavigationView_itemIconTint;
        bottomNavigationMenuView.setIconTintList(tintTypedArrayOooOO0O.hasValue(i5) ? tintTypedArrayOooOO0O.getColorStateList(i5) : bottomNavigationMenuView.OooO0Oo(android.R.attr.textColorSecondary));
        setItemIconSize(tintTypedArrayOooOO0O.getDimensionPixelSize(R.styleable.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_icon_size)));
        if (tintTypedArrayOooOO0O.hasValue(i3)) {
            setItemTextAppearanceInactive(tintTypedArrayOooOO0O.getResourceId(i3, 0));
        }
        if (tintTypedArrayOooOO0O.hasValue(i4)) {
            setItemTextAppearanceActive(tintTypedArrayOooOO0O.getResourceId(i4, 0));
        }
        int i6 = R.styleable.BottomNavigationView_itemTextColor;
        if (tintTypedArrayOooOO0O.hasValue(i6)) {
            setItemTextColor(tintTypedArrayOooOO0O.getColorStateList(i6));
        }
        if (tintTypedArrayOooOO0O.hasValue(R.styleable.BottomNavigationView_elevation)) {
            ViewCompat.setElevation(this, tintTypedArrayOooOO0O.getDimensionPixelSize(r2, 0));
        }
        setLabelVisibilityMode(tintTypedArrayOooOO0O.getInteger(R.styleable.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(tintTypedArrayOooOO0O.getBoolean(R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        bottomNavigationMenuView.setItemBackgroundRes(tintTypedArrayOooOO0O.getResourceId(R.styleable.BottomNavigationView_itemBackground, 0));
        int i7 = R.styleable.BottomNavigationView_menu;
        if (tintTypedArrayOooOO0O.hasValue(i7)) {
            OooO0Oo(tintTypedArrayOooOO0O.getResourceId(i7, 0));
        }
        tintTypedArrayOooOO0O.recycle();
        addView(bottomNavigationMenuView, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            OooO0OO(context);
        }
        ujVar.setCallback(new OooO00o());
    }

    private void OooO0OO(Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private MenuInflater getMenuInflater() {
        if (this.Ooooo0o == null) {
            this.Ooooo0o = new SupportMenuInflater(getContext());
        }
        return this.Ooooo0o;
    }

    public void OooO0Oo(int i) {
        this.Ooooo00.OooO0OO(true);
        getMenuInflater().inflate(i, this.OoooOoO);
        this.Ooooo00.OooO0OO(false);
        this.Ooooo00.updateMenuView(true);
    }

    public boolean OooO0o0() {
        return this.OoooOoo.OooO0o0();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.OoooOoo.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.OoooOoo.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.OoooOoo.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.OoooOoo.getIconTintList();
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.OoooOoo.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.OoooOoo.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.OoooOoo.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.OoooOoo.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    @NonNull
    public Menu getMenu() {
        return this.OoooOoO;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.OoooOoo.getSelectedItemId();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.OoooOoO.restorePresenterStates(savedState.menuPresenterState);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuPresenterState = bundle;
        this.OoooOoO.savePresenterStates(bundle);
        return savedState;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.OoooOoo.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        this.OoooOoo.setItemBackgroundRes(i);
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.OoooOoo.OooO0o0() != z) {
            this.OoooOoo.setItemHorizontalTranslationEnabled(z);
            this.Ooooo00.updateMenuView(false);
        }
    }

    public void setItemIconSize(@Dimension int i) {
        this.OoooOoo.setItemIconSize(i);
    }

    public void setItemIconSizeRes(@DimenRes int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.OoooOoo.setIconTintList(colorStateList);
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.OoooOoo.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.OoooOoo.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.OoooOoo.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.OoooOoo.getLabelVisibilityMode() != i) {
            this.OoooOoo.setLabelVisibilityMode(i);
            this.Ooooo00.updateMenuView(false);
        }
    }

    public void setOnNavigationItemReselectedListener(@Nullable OooO0O0 oooO0O0) {
        this.OooooOO = oooO0O0;
    }

    public void setOnNavigationItemSelectedListener(@Nullable OooO0OO oooO0OO) {
        this.OooooO0 = oooO0OO;
    }

    public void setSelectedItemId(@IdRes int i) {
        MenuItem menuItemFindItem = this.OoooOoO.findItem(i);
        if (menuItemFindItem == null || this.OoooOoO.performItemAction(menuItemFindItem, this.Ooooo00, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
