package com.google.android.material.bottomnavigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationItemView extends FrameLayout implements MenuView.ItemView {
    private static final int[] o00O0O = {R.attr.state_checked};
    public static final int ooOO = -1;
    private final int OoooOoO;
    private float OoooOoo;
    private float Ooooo00;
    private float Ooooo0o;
    private int OooooO0;
    private boolean OooooOO;
    private ImageView OooooOo;
    private final TextView Oooooo;
    private final TextView Oooooo0;
    private int OoooooO;
    private MenuItemImpl Ooooooo;
    private ColorStateList o0OoOo0;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooooO = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(com.google.android.material.R.drawable.design_bottom_navigation_item_background);
        this.OoooOoO = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_margin);
        this.OooooOo = (ImageView) findViewById(com.google.android.material.R.id.icon);
        TextView textView = (TextView) findViewById(com.google.android.material.R.id.smallLabel);
        this.Oooooo0 = textView;
        TextView textView2 = (TextView) findViewById(com.google.android.material.R.id.largeLabel);
        this.Oooooo = textView2;
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        OooO00o(textView.getTextSize(), textView2.getTextSize());
    }

    private void OooO00o(float f, float f2) {
        this.OoooOoo = f - f2;
        this.Ooooo00 = (f2 * 1.0f) / f;
        this.Ooooo0o = (f * 1.0f) / f2;
    }

    private void OooO0O0(@NonNull View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    private void OooO0OO(@NonNull View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.Ooooooo;
    }

    public int getItemPosition() {
        return this.OoooooO;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.Ooooooo = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.Ooooooo;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.Ooooooo.isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, o00O0O);
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
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c A[PHI: r0 r1
      0x008c: PHI (r0v10 android.widget.ImageView) = (r0v6 android.widget.ImageView), (r0v18 android.widget.ImageView) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]
      0x008c: PHI (r1v13 int) = (r1v11 int), (r1v21 int) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0095 A[PHI: r0 r1
      0x0095: PHI (r0v7 android.widget.ImageView) = (r0v6 android.widget.ImageView), (r0v18 android.widget.ImageView) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]
      0x0095: PHI (r1v12 int) = (r1v11 int), (r1v21 int) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setChecked(boolean z) {
        ImageView imageView;
        int i;
        this.Oooooo.setPivotX(r0.getWidth() / 2);
        this.Oooooo.setPivotY(r0.getBaseline());
        this.Oooooo0.setPivotX(r0.getWidth() / 2);
        this.Oooooo0.setPivotY(r0.getBaseline());
        int i2 = this.OooooO0;
        if (i2 != -1) {
            if (i2 == 0) {
                imageView = this.OooooOo;
                i = this.OoooOoO;
                if (z) {
                    OooO0O0(imageView, i, 49);
                    OooO0OO(this.Oooooo, 1.0f, 1.0f, 0);
                } else {
                    OooO0O0(imageView, i, 17);
                    OooO0OO(this.Oooooo, 0.5f, 0.5f, 4);
                }
                this.Oooooo0.setVisibility(4);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    OooO0O0(this.OooooOo, this.OoooOoO, 17);
                    this.Oooooo.setVisibility(8);
                    this.Oooooo0.setVisibility(8);
                }
            } else if (z) {
                OooO0O0(this.OooooOo, (int) (this.OoooOoO + this.OoooOoo), 49);
                OooO0OO(this.Oooooo, 1.0f, 1.0f, 0);
                TextView textView = this.Oooooo0;
                float f = this.Ooooo00;
                OooO0OO(textView, f, f, 4);
            } else {
                OooO0O0(this.OooooOo, this.OoooOoO, 49);
                TextView textView2 = this.Oooooo;
                float f2 = this.Ooooo0o;
                OooO0OO(textView2, f2, f2, 4);
                OooO0OO(this.Oooooo0, 1.0f, 1.0f, 0);
            }
        } else if (this.OooooOO) {
            imageView = this.OooooOo;
            i = this.OoooOoO;
            if (z) {
            }
            this.Oooooo0.setVisibility(4);
        } else if (z) {
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.Oooooo0.setEnabled(z);
        this.Oooooo.setEnabled(z);
        this.OooooOo.setEnabled(z);
        ViewCompat.setPointerIcon(this, z ? PointerIconCompat.getSystemIcon(getContext(), 1002) : null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable, this.o0OoOo0);
        }
        this.OooooOo.setImageDrawable(drawable);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.OooooOo.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.OooooOo.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.o0OoOo0 = colorStateList;
        MenuItemImpl menuItemImpl = this.Ooooooo;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        ViewCompat.setBackground(this, drawable);
    }

    public void setItemPosition(int i) {
        this.OoooooO = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.OooooO0 != i) {
            this.OooooO0 = i;
            MenuItemImpl menuItemImpl = this.Ooooooo;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.OooooOO != z) {
            this.OooooOO = z;
            MenuItemImpl menuItemImpl = this.Ooooooo;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.Oooooo, i);
        OooO00o(this.Oooooo0.getTextSize(), this.Oooooo.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.Oooooo0, i);
        OooO00o(this.Oooooo0.getTextSize(), this.Oooooo.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.Oooooo0.setTextColor(colorStateList);
            this.Oooooo.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.Oooooo0.setText(charSequence);
        this.Oooooo.setText(charSequence);
        MenuItemImpl menuItemImpl = this.Ooooooo;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }
}
