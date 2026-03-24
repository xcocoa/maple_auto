package z2;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class qd0 extends rd0 {
    public qd0(ed0 ed0Var) {
        super(ed0Var);
    }

    @Override // z2.rd0
    public void OooO00o() {
        ed0 ed0Var = this.OoooOoO;
        long jOooOoo0 = ed0Var.OooooOo.OooOoo0(ed0Var.OooooOO);
        if (jOooOoo0 >= 0) {
            this.OoooOoO.Ooooo00 = SystemClock.uptimeMillis() + jOooOoo0;
            if (this.OoooOoO.isVisible() && this.OoooOoO.OoooOoo) {
                ed0 ed0Var2 = this.OoooOoO;
                if (!ed0Var2.o0OoOo0) {
                    ed0Var2.OoooOoO.remove(this);
                    ed0 ed0Var3 = this.OoooOoO;
                    ed0Var3.o00Ooo = ed0Var3.OoooOoO.schedule(this, jOooOoo0, TimeUnit.MILLISECONDS);
                }
            }
            if (!this.OoooOoO.Oooooo0.isEmpty() && this.OoooOoO.OooO0oo() == this.OoooOoO.OooooOo.OooOOO() - 1) {
                ed0 ed0Var4 = this.OoooOoO;
                ed0Var4.ooOO.sendEmptyMessageAtTime(ed0Var4.OooO(), this.OoooOoO.Ooooo00);
            }
        } else {
            ed0 ed0Var5 = this.OoooOoO;
            ed0Var5.Ooooo00 = Long.MIN_VALUE;
            ed0Var5.OoooOoo = false;
        }
        if (!this.OoooOoO.isVisible() || this.OoooOoO.ooOO.hasMessages(-1)) {
            return;
        }
        this.OoooOoO.ooOO.sendEmptyMessageAtTime(-1, 0L);
    }
}
