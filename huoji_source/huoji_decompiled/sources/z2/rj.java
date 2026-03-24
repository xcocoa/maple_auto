package z2;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class rj {
    private final View OooO00o;
    private int OooO0O0;
    private int OooO0OO;
    private int OooO0Oo;
    private int OooO0o0;

    public rj(View view) {
        this.OooO00o = view;
    }

    private void OooO0oo() {
        View view = this.OooO00o;
        ViewCompat.offsetTopAndBottom(view, this.OooO0Oo - (view.getTop() - this.OooO0O0));
        View view2 = this.OooO00o;
        ViewCompat.offsetLeftAndRight(view2, this.OooO0o0 - (view2.getLeft() - this.OooO0OO));
    }

    public int OooO00o() {
        return this.OooO0OO;
    }

    public int OooO0O0() {
        return this.OooO0O0;
    }

    public int OooO0OO() {
        return this.OooO0o0;
    }

    public int OooO0Oo() {
        return this.OooO0Oo;
    }

    public boolean OooO0o(int i) {
        if (this.OooO0o0 == i) {
            return false;
        }
        this.OooO0o0 = i;
        OooO0oo();
        return true;
    }

    public void OooO0o0() {
        this.OooO0O0 = this.OooO00o.getTop();
        this.OooO0OO = this.OooO00o.getLeft();
        OooO0oo();
    }

    public boolean OooO0oO(int i) {
        if (this.OooO0Oo == i) {
            return false;
        }
        this.OooO0Oo = i;
        OooO0oo();
        return true;
    }
}
