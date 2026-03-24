package z2;

import android.app.AlertDialog;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class ka implements View.OnClickListener {
    private AlertDialog OoooOoO;
    private int OoooOoo;

    public abstract void OooO00o();

    public abstract void OooO0O0();

    public void OooO0OO(AlertDialog alertDialog) {
        this.OoooOoO = alertDialog;
    }

    public void OooO0Oo(int i) {
        this.OoooOoo = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.OoooOoo == 0) {
            OooO00o();
        } else {
            OooO0O0();
        }
        this.OoooOoO.dismiss();
    }
}
