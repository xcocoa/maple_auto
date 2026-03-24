package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.internal.FlowLayout;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
public class ChipGroup extends FlowLayout {

    @Dimension
    private int Ooooo0o;

    @Dimension
    private int OooooO0;
    private boolean OooooOO;

    @Nullable
    private OooO0o OooooOo;
    private OooO Oooooo;
    private final OooO0O0 Oooooo0;

    @IdRes
    private int OoooooO;
    private boolean Ooooooo;

    public class OooO implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener OoooOoO;

        private OooO() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(Build.VERSION.SDK_INT >= 17 ? View.generateViewId() : view2.hashCode());
                }
                ((Chip) view2).setOnCheckedChangeListenerInternal(ChipGroup.this.Oooooo0);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.OoooOoO;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.OoooOoO;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public class OooO0O0 implements CompoundButton.OnCheckedChangeListener {
        private OooO0O0() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.Ooooooo) {
                return;
            }
            int id = compoundButton.getId();
            if (!z) {
                if (ChipGroup.this.OoooooO == id) {
                    ChipGroup.this.setCheckedId(-1);
                }
            } else {
                if (ChipGroup.this.OoooooO != -1 && ChipGroup.this.OoooooO != id && ChipGroup.this.OooooOO) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.OooOOO0(chipGroup.OoooooO, false);
                }
                ChipGroup.this.setCheckedId(id);
            }
        }
    }

    public static class OooO0OO extends ViewGroup.MarginLayoutParams {
        public OooO0OO(int i, int i2) {
            super(i, i2);
        }

        public OooO0OO(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public OooO0OO(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public OooO0OO(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public interface OooO0o {
        void OooO00o(ChipGroup chipGroup, @IdRes int i);
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Oooooo0 = new OooO0O0();
        this.Oooooo = new OooO();
        this.OoooooO = -1;
        this.Ooooooo = false;
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.ChipGroup, i, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = typedArrayOooOO0.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayOooOO0.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayOooOO0.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayOooOO0.getBoolean(R.styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayOooOO0.getBoolean(R.styleable.ChipGroup_singleSelection, false));
        int resourceId = typedArrayOooOO0.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.OoooooO = resourceId;
        }
        typedArrayOooOO0.recycle();
        super.setOnHierarchyChangeListener(this.Oooooo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOO0(@IdRes int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof Chip) {
            this.Ooooooo = true;
            ((Chip) viewFindViewById).setChecked(z);
            this.Ooooooo = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i) {
        this.OoooooO = i;
        OooO0o oooO0o = this.OooooOo;
        if (oooO0o == null || !this.OooooOO) {
            return;
        }
        oooO0o.OooO00o(this, i);
    }

    public void OooOO0(@IdRes int i) {
        int i2 = this.OoooooO;
        if (i == i2) {
            return;
        }
        if (i2 != -1 && this.OooooOO) {
            OooOOO0(i2, false);
        }
        if (i != -1) {
            OooOOO0(i, true);
        }
        setCheckedId(i);
    }

    public void OooOO0O() {
        this.Ooooooo = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.Ooooooo = false;
        setCheckedId(-1);
    }

    public boolean OooOO0o() {
        return this.OooooOO;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.OoooooO;
                if (i2 != -1 && this.OooooOO) {
                    OooOOO0(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof OooO0OO);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new OooO0OO(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new OooO0OO(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new OooO0OO(layoutParams);
    }

    @IdRes
    public int getCheckedChipId() {
        if (this.OooooOO) {
            return this.OoooooO;
        }
        return -1;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.Ooooo0o;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.OooooO0;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.OoooooO;
        if (i != -1) {
            OooOOO0(i, true);
            setCheckedId(this.OoooooO);
        }
    }

    public void setChipSpacing(@Dimension int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(@Dimension int i) {
        if (this.Ooooo0o != i) {
            this.Ooooo0o = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingResource(@DimenRes int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingVertical(@Dimension int i) {
        if (this.OooooO0 != i) {
            this.OooooO0 = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(OooO0o oooO0o) {
        this.OooooOo = oooO0o;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.Oooooo.OoooOoO = onHierarchyChangeListener;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(@BoolRes int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSingleSelection(boolean z) {
        if (this.OooooOO != z) {
            this.OooooOO = z;
            OooOO0O();
        }
    }
}
