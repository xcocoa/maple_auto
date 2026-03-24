package z2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ParcelableSparseArray;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class tk implements MenuPresenter {
    private static final String o00oO0o = "android:menu:header";
    private static final String o00ooo = "android:menu:list";
    private static final String oo000o = "android:menu:adapter";
    private NavigationMenuView OoooOoO;
    public LinearLayout OoooOoo;
    private MenuPresenter.Callback Ooooo00;
    public MenuBuilder Ooooo0o;
    private int OooooO0;
    public OooO0OO OooooOO;
    public LayoutInflater OooooOo;
    public boolean Oooooo;
    public int Oooooo0;
    public ColorStateList OoooooO;
    public ColorStateList Ooooooo;
    public int o00O0O;
    private int o00Oo0;
    public int o00Ooo;
    public final View.OnClickListener o00o0O = new OooO00o();
    public Drawable o0OoOo0;
    public int ooOO;

    public interface OooO {
    }

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            tk.this.OooOo0(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            tk tkVar = tk.this;
            boolean zPerformItemAction = tkVar.Ooooo0o.performItemAction(itemData, tkVar, 0);
            if (itemData != null && itemData.isCheckable() && zPerformItemAction) {
                tk.this.OooooOO.OooO(itemData);
            }
            tk.this.OooOo0(false);
            tk.this.updateMenuView(false);
        }
    }

    public static class OooO0O0 extends OooOo00 {
        public OooO0O0(View view) {
            super(view);
        }
    }

    public class OooO0OO extends RecyclerView.Adapter<OooOo00> {
        private static final int OooO = 2;
        private static final String OooO0o = "android:menu:action_views";
        private static final String OooO0o0 = "android:menu:checked";
        private static final int OooO0oO = 0;
        private static final int OooO0oo = 1;
        private static final int OooOO0 = 3;
        private final ArrayList<OooO> OooO00o = new ArrayList<>();
        private MenuItemImpl OooO0O0;
        private boolean OooO0OO;

        public OooO0OO() {
            OooO0oO();
        }

        private void OooO00o(int i, int i2) {
            while (i < i2) {
                ((OooOO0O) this.OooO00o.get(i)).OooO0O0 = true;
                i++;
            }
        }

        private void OooO0oO() {
            if (this.OooO0OO) {
                return;
            }
            this.OooO0OO = true;
            this.OooO00o.clear();
            this.OooO00o.add(new OooO0o());
            int i = -1;
            int size = tk.this.Ooooo0o.getVisibleItems().size();
            boolean z = false;
            int size2 = 0;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItemImpl menuItemImpl = tk.this.Ooooo0o.getVisibleItems().get(i2);
                if (menuItemImpl.isChecked()) {
                    OooO(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i2 != 0) {
                            this.OooO00o.add(new OooOO0(tk.this.o00Ooo, 0));
                        }
                        this.OooO00o.add(new OooOO0O(menuItemImpl));
                        int size3 = this.OooO00o.size();
                        int size4 = subMenu.size();
                        boolean z3 = false;
                        for (int i3 = 0; i3 < size4; i3++) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i3);
                            if (menuItemImpl2.isVisible()) {
                                if (!z3 && menuItemImpl2.getIcon() != null) {
                                    z3 = true;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    OooO(menuItemImpl);
                                }
                                this.OooO00o.add(new OooOO0O(menuItemImpl2));
                            }
                        }
                        if (z3) {
                            OooO00o(size3, this.OooO00o.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i) {
                        size2 = this.OooO00o.size();
                        z = menuItemImpl.getIcon() != null;
                        if (i2 != 0) {
                            size2++;
                            ArrayList<OooO> arrayList = this.OooO00o;
                            int i4 = tk.this.o00Ooo;
                            arrayList.add(new OooOO0(i4, i4));
                        }
                    } else if (!z && menuItemImpl.getIcon() != null) {
                        OooO00o(size2, this.OooO00o.size());
                        z = true;
                    }
                    OooOO0O oooOO0O = new OooOO0O(menuItemImpl);
                    oooOO0O.OooO0O0 = z;
                    this.OooO00o.add(oooOO0O);
                    i = groupId;
                }
            }
            this.OooO0OO = false;
        }

        public void OooO(MenuItemImpl menuItemImpl) {
            if (this.OooO0O0 == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.OooO0O0;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.OooO0O0 = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        public Bundle OooO0O0() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.OooO0O0;
            if (menuItemImpl != null) {
                bundle.putInt(OooO0o0, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.OooO00o.size();
            for (int i = 0; i < size; i++) {
                OooO oooO = this.OooO00o.get(i);
                if (oooO instanceof OooOO0O) {
                    MenuItemImpl menuItemImplOooO00o = ((OooOO0O) oooO).OooO00o();
                    View actionView = menuItemImplOooO00o != null ? menuItemImplOooO00o.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItemImplOooO00o.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(OooO0o, sparseArray);
            return bundle;
        }

        public MenuItemImpl OooO0OO() {
            return this.OooO0O0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(OooOo00 oooOo00, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((TextView) oooOo00.itemView).setText(((OooOO0O) this.OooO00o.get(i)).OooO00o().getTitle());
                    return;
                } else {
                    if (itemViewType != 2) {
                        return;
                    }
                    OooOO0 oooOO0 = (OooOO0) this.OooO00o.get(i);
                    oooOo00.itemView.setPadding(0, oooOO0.OooO0O0(), 0, oooOO0.OooO00o());
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) oooOo00.itemView;
            navigationMenuItemView.setIconTintList(tk.this.Ooooooo);
            tk tkVar = tk.this;
            if (tkVar.Oooooo) {
                navigationMenuItemView.setTextAppearance(tkVar.Oooooo0);
            }
            ColorStateList colorStateList = tk.this.OoooooO;
            if (colorStateList != null) {
                navigationMenuItemView.setTextColor(colorStateList);
            }
            Drawable drawable = tk.this.o0OoOo0;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            OooOO0O oooOO0O = (OooOO0O) this.OooO00o.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(oooOO0O.OooO0O0);
            navigationMenuItemView.setHorizontalPadding(tk.this.ooOO);
            navigationMenuItemView.setIconPadding(tk.this.o00O0O);
            navigationMenuItemView.initialize(oooOO0O.OooO00o(), 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
        public void onViewRecycled(OooOo00 oooOo00) {
            if (oooOo00 instanceof OooOOO0) {
                ((NavigationMenuItemView) oooOo00.itemView).OooO0OO();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public OooOo00 onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                tk tkVar = tk.this;
                return new OooOOO0(tkVar.OooooOo, viewGroup, tkVar.o00o0O);
            }
            if (i == 1) {
                return new OooOOOO(tk.this.OooooOo, viewGroup);
            }
            if (i == 2) {
                return new OooOOO(tk.this.OooooOo, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new OooO0O0(tk.this.OoooOoo);
        }

        public void OooO0oo(Bundle bundle) {
            MenuItemImpl menuItemImplOooO00o;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl menuItemImplOooO00o2;
            int i = bundle.getInt(OooO0o0, 0);
            if (i != 0) {
                this.OooO0OO = true;
                int size = this.OooO00o.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    OooO oooO = this.OooO00o.get(i2);
                    if ((oooO instanceof OooOO0O) && (menuItemImplOooO00o2 = ((OooOO0O) oooO).OooO00o()) != null && menuItemImplOooO00o2.getItemId() == i) {
                        OooO(menuItemImplOooO00o2);
                        break;
                    }
                    i2++;
                }
                this.OooO0OO = false;
                OooO0oO();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(OooO0o);
            if (sparseParcelableArray != null) {
                int size2 = this.OooO00o.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    OooO oooO2 = this.OooO00o.get(i3);
                    if ((oooO2 instanceof OooOO0O) && (menuItemImplOooO00o = ((OooOO0O) oooO2).OooO00o()) != null && (actionView = menuItemImplOooO00o.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItemImplOooO00o.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void OooOO0(boolean z) {
            this.OooO0OO = z;
        }

        public void OooOO0O() {
            OooO0oO();
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.OooO00o.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            OooO oooO = this.OooO00o.get(i);
            if (oooO instanceof OooOO0) {
                return 2;
            }
            if (oooO instanceof OooO0o) {
                return 3;
            }
            if (oooO instanceof OooOO0O) {
                return ((OooOO0O) oooO).OooO00o().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }
    }

    public static class OooO0o implements OooO {
    }

    public static class OooOO0 implements OooO {
        private final int OooO00o;
        private final int OooO0O0;

        public OooOO0(int i, int i2) {
            this.OooO00o = i;
            this.OooO0O0 = i2;
        }

        public int OooO00o() {
            return this.OooO0O0;
        }

        public int OooO0O0() {
            return this.OooO00o;
        }
    }

    public static class OooOO0O implements OooO {
        private final MenuItemImpl OooO00o;
        public boolean OooO0O0;

        public OooOO0O(MenuItemImpl menuItemImpl) {
            this.OooO00o = menuItemImpl;
        }

        public MenuItemImpl OooO00o() {
            return this.OooO00o;
        }
    }

    public static class OooOOO extends OooOo00 {
        public OooOOO(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    public static class OooOOO0 extends OooOo00 {
        public OooOOO0(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    public static class OooOOOO extends OooOo00 {
        public OooOOOO(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    public static abstract class OooOo00 extends RecyclerView.ViewHolder {
        public OooOo00(View view) {
            super(view);
        }
    }

    @Nullable
    public ColorStateList OooO() {
        return this.OoooooO;
    }

    public void OooO00o(@NonNull View view) {
        this.OoooOoo.addView(view);
        NavigationMenuView navigationMenuView = this.OoooOoO;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void OooO0O0(WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.o00Oo0 != systemWindowInsetTop) {
            this.o00Oo0 = systemWindowInsetTop;
            if (this.OoooOoo.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.OoooOoO;
                navigationMenuView.setPadding(0, this.o00Oo0, 0, navigationMenuView.getPaddingBottom());
            }
        }
        ViewCompat.dispatchApplyWindowInsets(this.OoooOoo, windowInsetsCompat);
    }

    @Nullable
    public MenuItemImpl OooO0OO() {
        return this.OooooOO.OooO0OO();
    }

    public int OooO0Oo() {
        return this.OoooOoo.getChildCount();
    }

    @Nullable
    public Drawable OooO0o() {
        return this.o0OoOo0;
    }

    public View OooO0o0(int i) {
        return this.OoooOoo.getChildAt(i);
    }

    public int OooO0oO() {
        return this.ooOO;
    }

    public int OooO0oo() {
        return this.o00O0O;
    }

    @Nullable
    public ColorStateList OooOO0() {
        return this.Ooooooo;
    }

    public View OooOO0O(@LayoutRes int i) {
        View viewInflate = this.OooooOo.inflate(i, (ViewGroup) this.OoooOoo, false);
        OooO00o(viewInflate);
        return viewInflate;
    }

    public void OooOO0o(@NonNull View view) {
        this.OoooOoo.removeView(view);
        if (this.OoooOoo.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.OoooOoO;
            navigationMenuView.setPadding(0, this.o00Oo0, 0, navigationMenuView.getPaddingBottom());
        }
    }

    public void OooOOO(int i) {
        this.OooooO0 = i;
    }

    public void OooOOO0(@NonNull MenuItemImpl menuItemImpl) {
        this.OooooOO.OooO(menuItemImpl);
    }

    public void OooOOOO(@Nullable Drawable drawable) {
        this.o0OoOo0 = drawable;
        updateMenuView(false);
    }

    public void OooOOOo(int i) {
        this.ooOO = i;
        updateMenuView(false);
    }

    public void OooOOo(@Nullable ColorStateList colorStateList) {
        this.Ooooooo = colorStateList;
        updateMenuView(false);
    }

    public void OooOOo0(int i) {
        this.o00O0O = i;
        updateMenuView(false);
    }

    public void OooOOoo(@StyleRes int i) {
        this.Oooooo0 = i;
        this.Oooooo = true;
        updateMenuView(false);
    }

    public void OooOo0(boolean z) {
        OooO0OO oooO0OO = this.OooooOO;
        if (oooO0OO != null) {
            oooO0OO.OooOO0(z);
        }
    }

    public void OooOo00(@Nullable ColorStateList colorStateList) {
        this.OoooooO = colorStateList;
        updateMenuView(false);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.OooooO0;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.OoooOoO == null) {
            this.OoooOoO = (NavigationMenuView) this.OooooOo.inflate(R.layout.design_navigation_menu, viewGroup, false);
            if (this.OooooOO == null) {
                this.OooooOO = new OooO0OO();
            }
            this.OoooOoo = (LinearLayout) this.OooooOo.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.OoooOoO, false);
            this.OoooOoO.setAdapter(this.OooooOO);
        }
        return this.OoooOoO;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.OooooOo = LayoutInflater.from(context);
        this.Ooooo0o = menuBuilder;
        this.o00Ooo = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.Ooooo00;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.OoooOoO.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(oo000o);
            if (bundle2 != null) {
                this.OooooOO.OooO0oo(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray(o00oO0o);
            if (sparseParcelableArray2 != null) {
                this.OoooOoo.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.OoooOoO != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.OoooOoO.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        OooO0OO oooO0OO = this.OooooOO;
        if (oooO0OO != null) {
            bundle.putBundle(oo000o, oooO0OO.OooO0O0());
        }
        if (this.OoooOoo != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.OoooOoo.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(o00oO0o, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.Ooooo00 = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        OooO0OO oooO0OO = this.OooooOO;
        if (oooO0OO != null) {
            oooO0OO.OooOO0O();
        }
    }
}
