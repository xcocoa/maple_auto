package z2;

import android.animation.Animator;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Pair;
import android.view.View;
import android.view.animation.Animation;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import razerdp.basepopup.BasePopupWindow;

/* JADX INFO: loaded from: classes2.dex */
public class cf0 implements ne0 {
    public int OoooOoO;
    public Animation OoooOoo;
    public Animation Ooooo00;
    public Animator Ooooo0o;
    public Animator OooooO0;
    public BasePopupWindow.OooOOOO OooooOo;
    public gf0 Oooooo;
    public WeakReference<BasePopupWindow.OooOOO> Oooooo0;
    public int o00O0O;
    public int o00Oo0;
    public int o00Ooo;
    public int o00o0O;
    public HashMap<Integer, Pair<View.OnClickListener, Boolean>> o00oO0o;
    public int o0OoOo0;
    public View oo000o;
    public int ooOO;
    public int OooooOO = 125;
    public int OoooooO = 17;
    public int Ooooooo = 48;
    public Drawable o00ooo = new ColorDrawable(BasePopupWindow.o00Ooo);

    public cf0() {
        if (Build.VERSION.SDK_INT == 23) {
            this.OooooOO &= -65;
        }
    }

    public static cf0 OooOOo0() {
        return new cf0().OoooOoo(of0.OooO0O0(true)).OoooOo0(of0.OooO0O0(false)).OooOOOO(Build.VERSION.SDK_INT != 23);
    }

    private void OoooOO0(int i, boolean z) {
        int i2;
        if (z) {
            i2 = i | this.OooooOO;
        } else {
            i2 = (~i) & this.OooooOO;
        }
        this.OooooOO = i2;
    }

    public cf0 OooO(boolean z, BasePopupWindow.OooOOO oooOOO) {
        OoooOO0(2048, z);
        this.Oooooo0 = new WeakReference<>(oooOOO);
        return this;
    }

    public cf0 OooO00o(boolean z) {
        OoooOO0(1024, z);
        return this;
    }

    public cf0 OooO0O0(int i) {
        this.Ooooooo = i;
        return this;
    }

    @Deprecated
    public cf0 OooO0OO(boolean z) {
        OoooOO0(2, !z);
        return this;
    }

    public cf0 OooO0Oo(boolean z) {
        OoooOO0(128, z);
        return this;
    }

    public cf0 OooO0o(int i) {
        return OooO0o0(new ColorDrawable(i));
    }

    public cf0 OooO0o0(Drawable drawable) {
        this.o00ooo = drawable;
        return this;
    }

    public cf0 OooO0oO(boolean z) {
        OoooOO0(4, z);
        return this;
    }

    public cf0 OooO0oo(boolean z) {
        return OooO(z, null);
    }

    public cf0 OooOO0(boolean z) {
        OoooOO0(16, z);
        return this;
    }

    public cf0 OooOO0O(boolean z) {
        OoooOO0(32, z);
        return this;
    }

    public cf0 OooOO0o(int i) {
        this.OoooOoO = i;
        return this;
    }

    public cf0 OooOOO(boolean z) {
        OoooOO0(1, z);
        return this;
    }

    public cf0 OooOOO0(BasePopupWindow.OooOOOO oooOOOO) {
        this.OooooOo = oooOOOO;
        return this;
    }

    public cf0 OooOOOO(boolean z) {
        OoooOO0(64, z);
        return this;
    }

    public cf0 OooOOOo(boolean z) {
        OoooOO0(8, z);
        return this;
    }

    public int OooOOo() {
        return this.Ooooooo;
    }

    public Drawable OooOOoo() {
        return this.o00ooo;
    }

    public int OooOo() {
        return this.OoooooO;
    }

    public Animation OooOo0() {
        return this.Ooooo00;
    }

    public int OooOo00() {
        return this.OoooOoO;
    }

    public Animator OooOo0O() {
        return this.OooooO0;
    }

    public BasePopupWindow.OooOOOO OooOo0o() {
        return this.OooooOo;
    }

    public HashMap<Integer, Pair<View.OnClickListener, Boolean>> OooOoO() {
        return this.o00oO0o;
    }

    public View OooOoO0() {
        return this.oo000o;
    }

    public int OooOoOO() {
        return this.o00o0O;
    }

    public int OooOoo() {
        return this.o00Ooo;
    }

    public int OooOoo0() {
        return this.o00Oo0;
    }

    public int OooOooO() {
        return this.o00O0O;
    }

    public int OooOooo() {
        return this.o0OoOo0;
    }

    public cf0 Oooo(int i) {
        this.o00Ooo = i;
        return this;
    }

    public Animation Oooo0() {
        return this.OoooOoo;
    }

    public int Oooo000() {
        return this.ooOO;
    }

    public BasePopupWindow.OooOOO Oooo00O() {
        WeakReference<BasePopupWindow.OooOOO> weakReference = this.Oooooo0;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public gf0 Oooo00o() {
        return this.Oooooo;
    }

    public Animator Oooo0O0() {
        return this.Ooooo0o;
    }

    public cf0 Oooo0OO(int i) {
        this.OoooooO = i;
        return this;
    }

    public cf0 Oooo0o(View view) {
        this.oo000o = view;
        return this;
    }

    public cf0 Oooo0o0(boolean z) {
        OoooOO0(2048, z);
        return this;
    }

    public cf0 Oooo0oO(int i) {
        this.o00o0O = i;
        return this;
    }

    public cf0 Oooo0oo(int i) {
        this.o00Oo0 = i;
        return this;
    }

    public cf0 OoooO(boolean z) {
        OoooOO0(2, z);
        return this;
    }

    public cf0 OoooO0(int i) {
        this.o0OoOo0 = i;
        return this;
    }

    public cf0 OoooO00(int i) {
        this.o00O0O = i;
        return this;
    }

    public cf0 OoooO0O(int i) {
        this.ooOO = i;
        return this;
    }

    public cf0 OoooOOO(int i, View.OnClickListener onClickListener) {
        return OoooOOo(i, onClickListener, false);
    }

    public cf0 OoooOOo(int i, View.OnClickListener onClickListener, boolean z) {
        if (this.o00oO0o == null) {
            this.o00oO0o = new HashMap<>();
        }
        this.o00oO0o.put(Integer.valueOf(i), Pair.create(onClickListener, Boolean.valueOf(z)));
        return this;
    }

    public cf0 OoooOo0(Animation animation) {
        this.Ooooo00 = animation;
        return this;
    }

    public cf0 OoooOoO(Animator animator) {
        this.OooooO0 = animator;
        return this;
    }

    public cf0 OoooOoo(Animation animation) {
        this.OoooOoo = animation;
        return this;
    }

    public cf0 Ooooo00(Animator animator) {
        this.Ooooo0o = animator;
        return this;
    }

    public cf0 o000oOoO(gf0 gf0Var) {
        this.Oooooo = gf0Var;
        return this;
    }
}
