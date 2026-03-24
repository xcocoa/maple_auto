package z2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes2.dex */
public class qj<V extends View> extends CoordinatorLayout.Behavior<V> {
    private rj OooO00o;
    private int OooO0O0;
    private int OooO0OO;

    public qj() {
        this.OooO0O0 = 0;
        this.OooO0OO = 0;
    }

    public qj(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO0O0 = 0;
        this.OooO0OO = 0;
    }

    public int OooO00o() {
        rj rjVar = this.OooO00o;
        if (rjVar != null) {
            return rjVar.OooO0OO();
        }
        return 0;
    }

    public int OooO0O0() {
        rj rjVar = this.OooO00o;
        if (rjVar != null) {
            return rjVar.OooO0Oo();
        }
        return 0;
    }

    public void OooO0OO(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    public boolean OooO0Oo(int i) {
        rj rjVar = this.OooO00o;
        if (rjVar != null) {
            return rjVar.OooO0o(i);
        }
        this.OooO0OO = i;
        return false;
    }

    public boolean OooO0o0(int i) {
        rj rjVar = this.OooO00o;
        if (rjVar != null) {
            return rjVar.OooO0oO(i);
        }
        this.OooO0O0 = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        OooO0OO(coordinatorLayout, v, i);
        if (this.OooO00o == null) {
            this.OooO00o = new rj(v);
        }
        this.OooO00o.OooO0o0();
        int i2 = this.OooO0O0;
        if (i2 != 0) {
            this.OooO00o.OooO0oO(i2);
            this.OooO0O0 = 0;
        }
        int i3 = this.OooO0OO;
        if (i3 == 0) {
            return true;
        }
        this.OooO00o.OooO0o(i3);
        this.OooO0OO = 0;
        return true;
    }
}
