package razerdp.basepopup;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import razerdp.basepopup.BasePopupWindow;
import razerdp.library.R;
import z2.gf0;
import z2.if0;
import z2.ne0;
import z2.ue0;
import z2.xe0;
import z2.ye0;
import z2.ze0;

/* JADX INFO: loaded from: classes2.dex */
public final class BasePopupHelper implements xe0, ye0, ze0, ue0, ne0 {
    private static final int o00000Oo = R.id.base_popup_content_root;
    public static final int o00000o0 = -2;
    private static int o00000oO = 0;
    public static final int o0000Ooo = -2;
    private Animation Ooooo0o;
    private Animator OooooO0;
    private Animation OooooOO;
    private Animator OooooOo;
    private BasePopupWindow.OooOOO0 Oooooo;
    private BasePopupWindow.OooOOOO Oooooo0;
    private int o00000;
    private ViewGroup.MarginLayoutParams o000000;
    private int o000000o;
    private int o00000O;
    private int o00000O0;
    private OooO00o o00000OO;
    private int o00O0O;
    private int o00Oo0;
    private int o00Ooo;
    private int o00o0O;
    private gf0 o00oO0O;
    private int o00oO0o;
    private if0 o0O0O00;
    private ze0 o0OO00O;
    private xe0 o0OOO0o;
    private ye0 o0Oo0oo;
    private int o0OoOo0;
    private View o0ooOoO;
    private int oo000o;
    private ue0 oo0o0Oo;
    private int ooOO;
    private ShowMode OoooOoO = ShowMode.SCREEN;
    private int OoooOoo = o00000Oo;
    private int Ooooo00 = 125;
    private BasePopupWindow.GravityMode OoooooO = BasePopupWindow.GravityMode.RELATIVE_TO_ANCHOR;
    private int Ooooooo = 0;
    private Drawable o0ooOO0 = new ColorDrawable(BasePopupWindow.o00Ooo);
    private int o0ooOOo = 48;
    private int o000OOo = 16;
    private Point o000000O = new Point();
    private int[] o00ooo = new int[2];

    public static class OooO00o {
        public WeakReference<View> OooO00o;
        public boolean OooO0O0;

        public OooO00o(View view, boolean z) {
            this.OooO00o = new WeakReference<>(view);
            this.OooO0O0 = z;
        }
    }

    public enum ShowMode {
        RELATIVE_TO_ANCHOR,
        SCREEN,
        POSITION
    }

    public BasePopupHelper(xe0 xe0Var) {
        this.o0OOO0o = xe0Var;
    }

    private void OooOOo0(ViewGroup.LayoutParams layoutParams) {
        BasePopupWindow.GravityMode gravityMode;
        int i;
        if (layoutParams == null) {
            return;
        }
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            gravityMode = this.OoooooO;
            i = ((LinearLayout.LayoutParams) layoutParams).gravity;
        } else {
            if (!(layoutParams instanceof FrameLayout.LayoutParams)) {
                return;
            }
            gravityMode = this.OoooooO;
            i = ((FrameLayout.LayoutParams) layoutParams).gravity;
        }
        o0000O(gravityMode, i);
    }

    private long Oooo000(Animator animator) {
        if (animator == null) {
            return -1L;
        }
        if (!(animator instanceof AnimatorSet)) {
            return animator.getDuration();
        }
        AnimatorSet animatorSet = (AnimatorSet) animator;
        long duration = animatorSet.getDuration();
        if (duration >= 0) {
            return duration;
        }
        Iterator<Animator> it = animatorSet.getChildAnimations().iterator();
        while (it.hasNext()) {
            duration = Math.max(duration, it.next().getDuration());
        }
        return duration;
    }

    private void o00000o0(int i, boolean z) {
        int i2;
        if (z) {
            int i3 = this.Ooooo00 | i;
            this.Ooooo00 = i3;
            if (i != 128) {
                return;
            } else {
                i2 = i3 | 256;
            }
        } else {
            i2 = (~i) & this.Ooooo00;
        }
        this.Ooooo00 = i2;
    }

    @Override // z2.xe0
    public boolean OooO() {
        return this.o0OOO0o.OooO();
    }

    @Override // z2.ue0
    public void OooO00o(int i, int i2, boolean z, boolean z3) {
        ue0 ue0Var = this.oo0o0Oo;
        if (ue0Var != null) {
            ue0Var.OooO00o(i, i2, z, z3);
        }
    }

    @Override // z2.ye0
    public void OooO0O0(boolean z) {
        ye0 ye0Var = this.o0Oo0oo;
        if (ye0Var != null) {
            ye0Var.OooO0O0(z);
        }
    }

    @Override // z2.xe0
    public boolean OooO0OO() {
        return this.o0OOO0o.OooO0OO();
    }

    @Override // z2.ye0
    public boolean OooO0Oo() {
        OooO00o oooO00o = this.o00000OO;
        if (oooO00o == null) {
            return false;
        }
        WeakReference<View> weakReference = oooO00o.OooO00o;
        o0Oo0oo(weakReference == null ? null : weakReference.get(), this.o00000OO.OooO0O0);
        return false;
    }

    @Override // z2.ze0
    public void OooO0o() {
        ze0 ze0Var = this.o0OO00O;
        if (ze0Var != null) {
            ze0Var.OooO0o();
        }
    }

    @Override // z2.ze0
    public void OooO0o0() {
        ze0 ze0Var = this.o0OO00O;
        if (ze0Var != null) {
            ze0Var.OooO0o0();
        }
    }

    @Override // z2.xe0
    public boolean OooO0oO() {
        return this.o0OOO0o.OooO0oO();
    }

    @Override // z2.xe0
    public boolean OooO0oo(KeyEvent keyEvent) {
        return this.o0OOO0o.OooO0oo(keyEvent);
    }

    @Override // z2.xe0
    public boolean OooOO0(MotionEvent motionEvent) {
        return this.o0OOO0o.OooOO0(motionEvent);
    }

    @Override // z2.xe0
    public boolean OooOO0O() {
        return this.o0OOO0o.OooOO0O();
    }

    @Override // z2.ye0
    public void OooOO0o(boolean z) {
        ye0 ye0Var = this.o0Oo0oo;
        if (ye0Var != null) {
            ye0Var.OooOO0o(z);
        }
    }

    public BasePopupHelper OooOOO(boolean z) {
        o00000o0(128, z);
        return this;
    }

    public BasePopupHelper OooOOO0(gf0 gf0Var) {
        this.o00oO0O = gf0Var;
        if (gf0Var != null) {
            if (gf0Var.OooO00o() <= 0) {
                long jOoooOo0 = OoooOo0();
                if (jOoooOo0 > 0) {
                    gf0Var.OooOO0(jOoooOo0);
                }
            }
            if (gf0Var.OooO0O0() <= 0) {
                long jOooOooO = OooOooO();
                if (jOooOooO > 0) {
                    gf0Var.OooOO0O(jOooOooO);
                }
            }
        }
        return this;
    }

    public BasePopupHelper OooOOOO(PopupWindow popupWindow, boolean z) {
        if (popupWindow == null) {
            return this;
        }
        o00000o0(512, z);
        popupWindow.setSoftInputMode(z ? 16 : 1);
        return this;
    }

    public BasePopupHelper OooOOOo(PopupWindow popupWindow, boolean z) {
        if (popupWindow == null) {
            return this;
        }
        o00000o0(4, z);
        return this;
    }

    public BasePopupHelper OooOOo(PopupWindow popupWindow, boolean z) {
        if (popupWindow == null) {
            return this;
        }
        o00000o0(1, z);
        return this;
    }

    public BasePopupHelper OooOOoo(boolean z) {
        o00000o0(8, z);
        return this;
    }

    public int OooOo() {
        return this.o00ooo[0];
    }

    public int OooOo0() {
        return this.oo000o;
    }

    public int OooOo00() {
        if (OoooooO() && this.o0ooOOo == 0) {
            this.o0ooOOo = 48;
        }
        return this.o0ooOOo;
    }

    public BasePopupHelper OooOo0O(View view) {
        if (view == null) {
            return this;
        }
        view.getLocationOnScreen(this.o00ooo);
        this.o00oO0o = view.getWidth();
        this.oo000o = view.getHeight();
        return this;
    }

    public int OooOo0o() {
        return this.o00oO0o;
    }

    public View OooOoO() {
        return this.o0ooOoO;
    }

    public int OooOoO0() {
        return this.o00ooo[1];
    }

    public gf0 OooOoOO() {
        return this.o00oO0O;
    }

    public Animation OooOoo() {
        return this.OooooOO;
    }

    public int OooOoo0() {
        return this.OoooOoo;
    }

    public long OooOooO() {
        long jOooo000;
        Animation animation = this.OooooOO;
        if (animation != null) {
            jOooo000 = animation.getDuration();
        } else {
            Animator animator = this.OooooOo;
            jOooo000 = animator != null ? Oooo000(animator) : 0L;
        }
        if (jOooo000 < 0) {
            return 500L;
        }
        return jOooo000;
    }

    public Animator OooOooo() {
        return this.OooooOo;
    }

    public BasePopupWindow.OooOOOO Oooo() {
        return this.Oooooo0;
    }

    public int Oooo0() {
        return this.o00000;
    }

    public if0 Oooo00O() {
        return this.o0O0O00;
    }

    public BasePopupWindow.GravityMode Oooo00o() {
        return this.OoooooO;
    }

    public int Oooo0O0() {
        return this.o000000o;
    }

    public int Oooo0OO() {
        return this.o00000O;
    }

    public int Oooo0o() {
        return this.o0OoOo0;
    }

    public int Oooo0o0() {
        return this.o00000O0;
    }

    public int Oooo0oO() {
        return this.ooOO;
    }

    public BasePopupWindow.OooOOO0 Oooo0oo() {
        return this.Oooooo;
    }

    public int OoooO() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        if ((this.Ooooo00 & ne0.OoooOOo) == 0 && (marginLayoutParams = this.o000000) != null) {
            return marginLayoutParams.height;
        }
        return this.o00o0O;
    }

    public Drawable OoooO0() {
        return this.o0ooOO0;
    }

    public ViewGroup.MarginLayoutParams OoooO00() {
        return this.o000000;
    }

    public int OoooO0O() {
        return this.Ooooooo;
    }

    public int OoooOO0() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        if ((this.Ooooo00 & 16777216) == 0 && (marginLayoutParams = this.o000000) != null) {
            return marginLayoutParams.width;
        }
        return this.o00Ooo;
    }

    public int OoooOOO() {
        return this.o00O0O;
    }

    public Animation OoooOOo() {
        return this.Ooooo0o;
    }

    public long OoooOo0() {
        long jOooo000;
        Animation animation = this.Ooooo0o;
        if (animation != null) {
            jOooo000 = animation.getDuration();
        } else {
            Animator animator = this.OooooO0;
            jOooo000 = animator != null ? Oooo000(animator) : 0L;
        }
        if (jOooo000 < 0) {
            return 500L;
        }
        return jOooo000;
    }

    public Animator OoooOoO() {
        return this.OooooO0;
    }

    public int OoooOoo() {
        return o00000oO;
    }

    public ShowMode Ooooo00() {
        return this.OoooOoO;
    }

    public int Ooooo0o() {
        return this.o000OOo;
    }

    public Point OooooO0() {
        return this.o000000O;
    }

    public Point OooooOO(int i, int i2) {
        this.o000000O.set(i, i2);
        return this.o000000O;
    }

    public void OooooOo() {
        int i = Build.VERSION.SDK_INT;
        if (i == 21 || i == 22) {
            int i2 = o00000oO - 1;
            o00000oO = i2;
            o00000oO = Math.max(0, i2);
        }
    }

    public View Oooooo(Context context, int i) {
        try {
            View viewInflate = LayoutInflater.from(context).inflate(i, (ViewGroup) new FrameLayout(context), false);
            ViewGroup.LayoutParams layoutParams = viewInflate.getLayoutParams();
            if (layoutParams == null) {
                return null;
            }
            OooOOo0(layoutParams);
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
                this.o000000 = marginLayoutParams;
                int i2 = this.Ooooo00;
                if ((16777216 & i2) != 0) {
                    marginLayoutParams.width = this.o00Ooo;
                }
                if ((i2 & ne0.OoooOOo) != 0) {
                    marginLayoutParams.height = this.o00o0O;
                }
                return viewInflate;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(layoutParams);
            this.o000000 = marginLayoutParams2;
            int i3 = this.Ooooo00;
            if ((16777216 & i3) != 0) {
                marginLayoutParams2.width = this.o00Ooo;
            }
            if ((i3 & ne0.OoooOOo) != 0) {
                marginLayoutParams2.height = this.o00o0O;
            }
            return viewInflate;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void Oooooo0() {
        int i = Build.VERSION.SDK_INT;
        if (i == 21 || i == 22) {
            o00000oO++;
        }
    }

    public boolean OoooooO() {
        return (this.Ooooo00 & 1024) != 0;
    }

    public boolean Ooooooo() {
        gf0 gf0Var = this.o00oO0O;
        return gf0Var != null && gf0Var.OooO0o();
    }

    public BasePopupHelper o0000(int i) {
        this.o00000O0 = i;
        return this;
    }

    public BasePopupHelper o00000(boolean z) {
        o00000o0(32, z);
        return this;
    }

    public BasePopupHelper o000000(int i) {
        this.o0ooOOo = i;
        return this;
    }

    public BasePopupHelper o000000O(View view) {
        this.o0ooOoO = view;
        return this;
    }

    public BasePopupHelper o000000o(boolean z) {
        o00000o0(16, z);
        return this;
    }

    public BasePopupHelper o00000O(Animation animation) {
        Animation animation2 = this.OooooOO;
        if (animation2 == animation) {
            return this;
        }
        if (animation2 != null) {
            animation2.cancel();
        }
        this.OooooOO = animation;
        OooOOO0(this.o00oO0O);
        return this;
    }

    public BasePopupHelper o00000O0(View view) {
        if (view == null) {
            return this;
        }
        if (view.getId() == -1) {
            view.setId(o00000Oo);
        }
        this.OoooOoo = view.getId();
        return this;
    }

    public BasePopupHelper o00000OO(Animator animator) {
        Animator animator2 = this.OooooOo;
        if (animator2 == animator) {
            return this;
        }
        if (animator2 != null) {
            animator2.cancel();
        }
        this.OooooOo = animator;
        OooOOO0(this.o00oO0O);
        return this;
    }

    public BasePopupHelper o00000Oo(if0 if0Var) {
        this.o0O0O00 = if0Var;
        return this;
    }

    public BasePopupHelper o00000oO(int i) {
        this.o000000o = i;
        return this;
    }

    public BasePopupHelper o00000oo(int i) {
        this.o00000O = i;
        return this;
    }

    public BasePopupHelper o0000O(BasePopupWindow.GravityMode gravityMode, int i) {
        if (i == this.Ooooooo && this.OoooooO == gravityMode) {
            return this;
        }
        this.OoooooO = gravityMode;
        this.Ooooooo = i;
        return this;
    }

    public BasePopupHelper o0000O0(BasePopupWindow.OooOOOO oooOOOO) {
        this.Oooooo0 = oooOOOO;
        return this;
    }

    public BasePopupHelper o0000O00(int i) {
        this.o0OoOo0 = i;
        return this;
    }

    public BasePopupHelper o0000O0O(Drawable drawable) {
        this.o0ooOO0 = drawable;
        return this;
    }

    public BasePopupHelper o0000OO(int i) {
        this.o00Ooo = i;
        if (i != -2) {
            o00000o0(16777216, true);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.o000000;
            if (marginLayoutParams != null) {
                marginLayoutParams.width = i;
            }
        } else {
            o00000o0(16777216, false);
        }
        return this;
    }

    public BasePopupHelper o0000OO0(int i) {
        this.o00o0O = i;
        if (i != -2) {
            o00000o0(ne0.OoooOOo, true);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.o000000;
            if (marginLayoutParams != null) {
                marginLayoutParams.height = i;
            }
        } else {
            o00000o0(ne0.OoooOOo, false);
        }
        return this;
    }

    public BasePopupHelper o0000OOO(int i) {
        this.o00Oo0 = i;
        return this;
    }

    public BasePopupHelper o0000OOo(int i) {
        this.o00O0O = i;
        return this;
    }

    public BasePopupHelper o0000Oo(Animator animator) {
        Animator animator2 = this.OooooO0;
        if (animator2 == animator) {
            return this;
        }
        if (animator2 != null) {
            animator2.cancel();
        }
        this.OooooO0 = animator;
        OooOOO0(this.o00oO0O);
        return this;
    }

    public BasePopupHelper o0000Oo0(Animation animation) {
        Animation animation2 = this.Ooooo0o;
        if (animation2 == animation) {
            return this;
        }
        if (animation2 != null) {
            animation2.cancel();
        }
        this.Ooooo0o = animation;
        OooOOO0(this.o00oO0O);
        return this;
    }

    public BasePopupHelper o0000OoO(boolean z) {
        o00000o0(256, z);
        return this;
    }

    public BasePopupHelper o0000Ooo(int i) {
        this.o00000 = i;
        return this;
    }

    public BasePopupHelper o0000o0(int i, int i2) {
        int[] iArr = this.o00ooo;
        iArr[0] = i;
        iArr[1] = i2;
        this.o00oO0o = 1;
        this.oo000o = 1;
        return this;
    }

    public BasePopupHelper o0000o0O(ShowMode showMode) {
        this.OoooOoO = showMode;
        return this;
    }

    public BasePopupHelper o0000o0o(int i) {
        this.o000OOo = i;
        return this;
    }

    public BasePopupHelper o0000oO(BasePopupWindow.OooOOO0 oooOOO0) {
        this.Oooooo = oooOOO0;
        return this;
    }

    public BasePopupHelper o0000oo(int i) {
        this.ooOO = i;
        return this;
    }

    public BasePopupHelper o000OO(PopupWindow popupWindow, boolean z) {
        if (popupWindow == null) {
            return this;
        }
        o00000o0(64, z);
        return this;
    }

    public BasePopupHelper o000OOo(boolean z) {
        o00000o0(1024, z);
        if (!z) {
            o000000(0);
        }
        return this;
    }

    public int o000oOoO() {
        return this.o00Oo0;
    }

    public boolean o00O0O() {
        return (this.Ooooo00 & 4) != 0;
    }

    public boolean o00Oo0() {
        return (this.Ooooo00 & 16) != 0;
    }

    public boolean o00Ooo() {
        return (this.Ooooo00 & 32) != 0;
    }

    public boolean o00o0O() {
        return (this.Ooooo00 & 50331648) != 0;
    }

    public boolean o00oO0O() {
        return (this.Ooooo00 & 2) != 0;
    }

    public boolean o00oO0o() {
        return (this.Ooooo00 & 1) != 0;
    }

    public boolean o00ooo() {
        return (this.Ooooo00 & 8) != 0;
    }

    public BasePopupHelper o0O0O00(ze0 ze0Var) {
        this.o0OO00O = ze0Var;
        return this;
    }

    public BasePopupHelper o0OO00O(ye0 ye0Var) {
        this.o0Oo0oo = ye0Var;
        return this;
    }

    public BasePopupHelper o0OOO0o(PopupWindow popupWindow, boolean z) {
        if (popupWindow == null) {
            return this;
        }
        o00000o0(2, z);
        return this;
    }

    public void o0Oo0oo(View view, boolean z) {
        this.o00000OO = new OooO00o(view, z);
        o0000o0O(z ? ShowMode.POSITION : view == null ? ShowMode.SCREEN : ShowMode.RELATIVE_TO_ANCHOR);
        OooOo0O(view);
    }

    public boolean o0OoOo0() {
        return (this.Ooooo00 & 128) != 0;
    }

    public boolean o0ooOO0() {
        return (this.Ooooo00 & 64) != 0;
    }

    public boolean o0ooOOo() {
        return (this.Ooooo00 & 256) != 0;
    }

    public BasePopupHelper o0ooOoO(boolean z) {
        o00000o0(2048, z);
        return this;
    }

    @Override // z2.xe0
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.o0OOO0o.onTouchEvent(motionEvent);
    }

    public boolean oo000o() {
        return (this.Ooooo00 & 2048) != 0;
    }

    public BasePopupHelper oo0o0Oo(ue0 ue0Var) {
        this.oo0o0Oo = ue0Var;
        return this;
    }

    public boolean ooOO() {
        return (this.Ooooo00 & 512) != 0;
    }
}
