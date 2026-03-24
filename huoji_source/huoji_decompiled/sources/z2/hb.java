package z2;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class hb extends Dialog {
    public static final String Ooooo0o = "BaseDialog";
    private float OoooOoO;
    private float OoooOoo;
    public Context Ooooo00;

    public hb(Context context, int i) {
        super(context, i);
        this.OoooOoO = 0.8f;
        this.OoooOoo = 0.8f;
        this.Ooooo00 = context;
    }

    private void OooOo0() {
        Point pointOooO0o = ub.OooO0o(this.Ooooo00);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (pointOooO0o.x * this.OoooOoO);
        attributes.height = (int) (pointOooO0o.y * this.OoooOoo);
        getWindow().setAttributes(attributes);
    }

    public void OooOo00(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    public void OooOo0O(float f, float f2) {
        this.OoooOoO = f;
        this.OoooOoo = f2;
        OooOo0();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
