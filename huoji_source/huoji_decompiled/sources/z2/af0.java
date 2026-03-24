package z2;

import android.os.Build;
import android.view.View;
import razerdp.basepopup.BasePopupHelper;

/* JADX INFO: loaded from: classes2.dex */
public class af0 extends qe0 {
    private static final String OooO0oO = "PopupWindowProxy";

    public af0(View view, int i, int i2, BasePopupHelper basePopupHelper) {
        super(view, i, i2, basePopupHelper);
    }

    @Override // z2.qe0
    public boolean OooO0OO() {
        return super.isShowing();
    }

    @Override // z2.qe0
    public void OooO0Oo(View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            super.showAsDropDown(view, i, i2, i3);
        } else {
            super.showAsDropDown(view, i, i2);
        }
    }

    @Override // z2.qe0
    public void OooO0o0(View view, int i, int i2, int i3) {
        super.showAtLocation(view, i, i2, i3);
    }

    public void OooOOOo(View view, int i, int i2) {
        OooOOo0(view, i, i2, 0);
    }

    public void OooOOo(View view, int i, int i2, int i3) {
        se0.OooO0o0(this, view, i, i2, i3);
    }

    public void OooOOo0(View view, int i, int i2, int i3) {
        se0.OooO0Oo(this, view, i, i2, i3);
    }
}
