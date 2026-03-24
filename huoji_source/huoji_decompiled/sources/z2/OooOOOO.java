package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class OooOOOO implements View.OnClickListener, View.OnLongClickListener, CompoundButton.OnCheckedChangeListener {
    public final SparseArray<View> OoooOoO = new SparseArray<>();
    public OooO0o OoooOoo;
    public OooO Ooooo00;
    public OooO0OO Ooooo0o;
    public View OooooO0;
    public Context OooooOO;
    public int OooooOo;
    public RecyclerView Oooooo;
    public OooOOO Oooooo0;
    public ViewGroup OoooooO;
    public Object Ooooooo;

    public OooOOOO(ViewGroup viewGroup, View view) {
        this.OoooooO = viewGroup;
        this.OooooO0 = view;
        this.OooooOO = view.getContext();
    }

    public OooOOOO(RecyclerView recyclerView, View view) {
        this.Oooooo = recyclerView;
        this.OooooO0 = view;
        this.OooooOO = view.getContext();
    }

    public OooOOOO OooO(@IdRes int i, @ColorRes int i2) {
        OooO0oO(i).setBackgroundColor(this.OooooOO.getResources().getColor(i2));
        return this;
    }

    public View OooO00o() {
        return this.OooooO0;
    }

    public ImageView OooO0O0(@IdRes int i) {
        return (ImageView) OooO0oO(i);
    }

    public Object OooO0OO() {
        return this.Ooooooo;
    }

    public int OooO0Oo() {
        OooOOO oooOOO = this.Oooooo0;
        return oooOOO != null ? oooOOO.getAdapterPosition() : this.OooooOo;
    }

    public TextView OooO0o(@IdRes int i) {
        return (TextView) OooO0oO(i);
    }

    public OooOOO OooO0o0() {
        return this.Oooooo0;
    }

    public <T extends View> T OooO0oO(@IdRes int i) {
        T t = (T) this.OoooOoO.get(i);
        if (t != null) {
            return t;
        }
        T t2 = (T) this.OooooO0.findViewById(i);
        this.OoooOoO.put(i, t2);
        return t2;
    }

    public OooOOOO OooO0oo(@IdRes int i, int i2) {
        OooO0oO(i).setBackgroundColor(i2);
        return this;
    }

    public OooOOOO OooOO0(@IdRes int i, int i2) {
        OooO0oO(i).setBackgroundResource(i2);
        return this;
    }

    public OooOOOO OooOO0O(@IdRes int i, boolean z) {
        ((Checkable) OooO0oO(i)).setChecked(z);
        return this;
    }

    public OooOOOO OooOO0o(@IdRes int i, String str) {
        ((TextView) OooO0oO(i)).setText(Html.fromHtml(str));
        return this;
    }

    public OooOOOO OooOOO(@IdRes int i, Drawable drawable) {
        ((ImageView) OooO0oO(i)).setImageDrawable(drawable);
        return this;
    }

    public OooOOOO OooOOO0(@IdRes int i, Bitmap bitmap) {
        ((ImageView) OooO0oO(i)).setImageBitmap(bitmap);
        return this;
    }

    public OooOOOO OooOOOO(@IdRes int i, @DrawableRes int i2) {
        ((ImageView) OooO0oO(i)).setImageResource(i2);
        return this;
    }

    public void OooOOOo(@IdRes int i) {
        if (OooO0oO(i) instanceof CompoundButton) {
            ((CompoundButton) OooO0oO(i)).setOnCheckedChangeListener(this);
        }
    }

    public void OooOOo(@IdRes int i) {
        OooO0oO(i).setOnLongClickListener(this);
    }

    public void OooOOo0(@IdRes int i) {
        OooO0oO(i).setOnClickListener(this);
    }

    public void OooOOoo(Object obj) {
        this.Ooooooo = obj;
    }

    public void OooOo(OooOOO oooOOO) {
        this.Oooooo0 = oooOOO;
    }

    public void OooOo0(OooO0o oooO0o) {
        this.OoooOoo = oooO0o;
    }

    public void OooOo00(OooO0OO oooO0OO) {
        this.Ooooo0o = oooO0OO;
    }

    public void OooOo0O(OooO oooO) {
        this.Ooooo00 = oooO;
    }

    public void OooOo0o(int i) {
        this.OooooOo = i;
    }

    public OooOOOO OooOoO(@IdRes int i, Object obj) {
        OooO0oO(i).setTag(obj);
        return this;
    }

    public OooOOOO OooOoO0(@IdRes int i, int i2, Object obj) {
        OooO0oO(i).setTag(i2, obj);
        return this;
    }

    public OooOOOO OooOoOO(@IdRes int i, @StringRes int i2) {
        ((TextView) OooO0oO(i)).setText(i2);
        return this;
    }

    public OooOOOO OooOoo(@IdRes int i, int i2) {
        ((TextView) OooO0oO(i)).setTextColor(i2);
        return this;
    }

    public OooOOOO OooOoo0(@IdRes int i, CharSequence charSequence) {
        ((TextView) OooO0oO(i)).setText(charSequence);
        return this;
    }

    public OooOOOO OooOooO(@IdRes int i, @ColorRes int i2) {
        ((TextView) OooO0oO(i)).setTextColor(this.OooooOO.getResources().getColor(i2));
        return this;
    }

    public OooOOOO OooOooo(@IdRes int i, int i2) {
        OooO0oO(i).setVisibility(i2);
        return this;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        OooO0OO oooO0OO = this.Ooooo0o;
        if (oooO0OO != null) {
            ViewGroup viewGroup = this.Oooooo;
            if (viewGroup == null && (viewGroup = this.OoooooO) == null) {
                return;
            }
            oooO0OO.OooO00o(viewGroup, compoundButton, OooO0Oo(), z);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OooO0o oooO0o = this.OoooOoo;
        if (oooO0o != null) {
            ViewGroup viewGroup = this.Oooooo;
            if (viewGroup == null && (viewGroup = this.OoooooO) == null) {
                return;
            }
            oooO0o.OooO00o(viewGroup, view, OooO0Oo());
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        OooO oooO = this.Ooooo00;
        if (oooO == null) {
            return false;
        }
        ViewGroup viewGroup = this.Oooooo;
        if (viewGroup == null && (viewGroup = this.OoooooO) == null) {
            return false;
        }
        return oooO.OooO00o(viewGroup, view, OooO0Oo());
    }
}
