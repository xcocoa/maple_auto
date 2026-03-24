package z2;

import android.animation.Animator;
import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.animation.Animation;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import razerdp.basepopup.BasePopupWindow;
import z2.bf0;

/* JADX INFO: loaded from: classes2.dex */
public class sf0 extends BasePopupWindow {
    private cf0 o0ooOO0;
    private bf0.OooO00o o0ooOOo;

    public class OooO00o implements View.OnClickListener {
        public final /* synthetic */ Pair OoooOoO;

        public OooO00o(Pair pair) {
            this.OoooOoO = pair;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Object obj = this.OoooOoO.first;
            if (obj != null) {
                if (obj instanceof rf0) {
                    ((rf0) obj).OoooOoO = sf0.this;
                }
                ((View.OnClickListener) obj).onClick(view);
            }
            sf0.this.OooOoOO();
        }
    }

    private sf0(Context context) {
        super(context);
    }

    private sf0(Context context, int i, int i2) {
        super(context, i, i2);
    }

    private sf0(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
    }

    public sf0(Context context, cf0 cf0Var, bf0.OooO00o oooO00o, int i, int i2) {
        super(context, i, i2, true);
        this.o0ooOO0 = cf0Var;
        this.o0ooOOo = oooO00o;
        Objects.requireNonNull(cf0Var, "QuickPopupConfig must be not null!");
        OooOoO0();
        o000OOo0(this.o0ooOO0);
    }

    private sf0(Context context, boolean z) {
        super(context, z);
    }

    private void o000OOO() {
        HashMap<Integer, Pair<View.OnClickListener, Boolean>> mapOooOoO = this.o0ooOO0.OooOoO();
        if (mapOooOoO == null || mapOooOoO.isEmpty()) {
            return;
        }
        for (Map.Entry<Integer, Pair<View.OnClickListener, Boolean>> entry : mapOooOoO.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            Pair<View.OnClickListener, Boolean> value = entry.getValue();
            View viewOooOooo = OooOooo(iIntValue);
            if (viewOooOooo != null) {
                if (((Boolean) value.second).booleanValue()) {
                    viewOooOooo.setOnClickListener(new OooO00o(value));
                } else {
                    viewOooOooo.setOnClickListener((View.OnClickListener) value.first);
                }
            }
        }
    }

    @Override // z2.me0
    public View OooO00o() {
        return OooOo(this.o0ooOO0.OooOo00());
    }

    public <C extends cf0> void o000OOo0(C c) {
        if (c.Oooo00o() != null) {
            o0000O0(c.Oooo00o());
        } else {
            o0000oO((c.OooooOO & 2048) != 0, c.Oooo00O());
        }
        o000((c.OooooOO & 64) != 0);
        o000OOO();
        o0000o0o(c.OooOooo());
        o0000o(c.Oooo000());
        o0000O0O((c.OooooOO & 16) != 0);
        o000OO((c.OooooOO & 32) != 0);
        o0000oOo((c.OooooOO & 1) != 0);
        o0000oo0((c.OooooOO & 2) != 0);
        o000O000(c.OooOo());
        o00000((c.OooooOO & 1024) != 0);
        o00000O0(c.OooOOo());
        o00000Oo((c.OooooOO & 128) != 0);
        o000O0o((c.OooooOO & 8) != 0);
        o0000oOO(c.OooOo0o());
        o00000oo(c.OooOOoo());
        o00Ooo(c.OooOoO0());
        o0000o0O(c.OooOooO());
        o0000OoO(c.OooOoo0());
        o0000o0(c.OooOoo());
        o0000Oo(c.OooOoOO());
        o0000Oo0((c.OooooOO & 2048) != 0);
        bf0.OooO00o oooO00o = this.o0ooOOo;
        if (oooO00o != null) {
            oooO00o.OooO00o(this, c);
        }
    }

    public cf0 o000OOoO() {
        return this.o0ooOO0;
    }

    @Override // razerdp.basepopup.BasePopupWindow
    public Animator o00oO0O() {
        return this.o0ooOO0.OooOo0O();
    }

    @Override // razerdp.basepopup.BasePopupWindow
    public Animation o00oO0o() {
        return this.o0ooOO0.OooOo0();
    }

    @Override // razerdp.basepopup.BasePopupWindow
    public Animation o0ooOO0() {
        return this.o0ooOO0.Oooo0();
    }

    @Override // razerdp.basepopup.BasePopupWindow
    public Animator o0ooOOo() {
        return this.o0ooOO0.Oooo0O0();
    }
}
