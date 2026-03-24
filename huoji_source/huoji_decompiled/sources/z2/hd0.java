package z2;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class hd0 {
    public char OooO00o;
    public boolean OooO0O0;

    public hd0() {
        OooO00o();
    }

    private void OooO00o() {
        this.OooO00o = (char) 1;
        this.OooO0O0 = false;
    }

    public void OooO0O0(@Nullable hd0 hd0Var) {
        if (hd0Var == null) {
            OooO00o();
        } else {
            this.OooO0O0 = hd0Var.OooO0O0;
            this.OooO00o = hd0Var.OooO00o;
        }
    }

    public void OooO0OO(boolean z) {
        this.OooO0O0 = z;
    }

    public void OooO0Oo(@IntRange(from = 1, to = d00.OooOOoo) int i) {
        if (i < 1 || i > 65535) {
            this.OooO00o = (char) 1;
        } else {
            this.OooO00o = (char) i;
        }
    }
}
