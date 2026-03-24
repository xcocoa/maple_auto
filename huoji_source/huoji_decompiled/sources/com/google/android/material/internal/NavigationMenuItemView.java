package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {
    private static final int[] o00o0O = {R.attr.state_checked};
    private final int OooooOo;
    public boolean Oooooo;
    private boolean Oooooo0;
    private final CheckedTextView OoooooO;
    private FrameLayout Ooooooo;
    private boolean o00O0O;
    private Drawable o00Oo0;
    private final AccessibilityDelegateCompat o00Ooo;
    private MenuItemImpl o0OoOo0;
    private ColorStateList ooOO;

    public class OooO00o extends AccessibilityDelegateCompat {
        public OooO00o() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.Oooooo);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO00o oooO00o = new OooO00o();
        this.o00Ooo = oooO00o;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.OooooOo = context.getResources().getDimensionPixelSize(com.google.android.material.R.dimen.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.google.android.material.R.id.design_menu_item_text);
        this.OoooooO = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, oooO00o);
    }

    private void OooO00o() {
        LinearLayoutCompat.LayoutParams layoutParams;
        int i;
        if (OooO0Oo()) {
            this.OoooooO.setVisibility(8);
            FrameLayout frameLayout = this.Ooooooo;
            if (frameLayout == null) {
                return;
            }
            layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
            i = -1;
        } else {
            this.OoooooO.setVisibility(0);
            FrameLayout frameLayout2 = this.Ooooooo;
            if (frameLayout2 == null) {
                return;
            }
            layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            i = -2;
        }
        ((ViewGroup.MarginLayoutParams) layoutParams).width = i;
        this.Ooooooo.setLayoutParams(layoutParams);
    }

    private StateListDrawable OooO0O0() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(o00o0O, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean OooO0Oo() {
        return this.o0OoOo0.getTitle() == null && this.o0OoOo0.getIcon() == null && this.o0OoOo0.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.Ooooooo == null) {
                this.Ooooooo = (FrameLayout) ((ViewStub) findViewById(com.google.android.material.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.Ooooooo.removeAllViews();
            this.Ooooooo.addView(view);
        }
    }

    public void OooO0OO() {
        FrameLayout frameLayout = this.Ooooooo;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.OoooooO.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.o0OoOo0;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.o0OoOo0 = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, OooO0O0());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        OooO00o();
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.o0OoOo0;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.o0OoOo0.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, o00o0O);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.Oooooo != z) {
            this.Oooooo = z;
            this.o00Ooo.sendAccessibilityEvent(this.OoooooO, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        refreshDrawableState();
        this.OoooooO.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.o00O0O) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.ooOO);
            }
            int i = this.OooooOo;
            drawable.setBounds(0, 0, i, i);
        } else if (this.Oooooo0) {
            if (this.o00Oo0 == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), com.google.android.material.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.o00Oo0 = drawable2;
                if (drawable2 != null) {
                    int i2 = this.OooooOo;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.o00Oo0;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.OoooooO, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.OoooooO.setCompoundDrawablePadding(i);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.ooOO = colorStateList;
        this.o00O0O = colorStateList != null;
        MenuItemImpl menuItemImpl = this.o0OoOo0;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.Oooooo0 = z;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.OoooooO, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.OoooooO.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.OoooooO.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }
}
