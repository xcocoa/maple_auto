package z2;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import com.cyjh.elfin.base.AppContext;

/* JADX INFO: loaded from: classes.dex */
public class w9 extends Dialog implements f6 {
    public AppContext OoooOoO;
    private float OoooOoo;
    private float Ooooo00;

    public w9(Context context, int i) {
        super(context, i);
        this.OoooOoo = 0.8f;
        this.Ooooo00 = 0.8f;
        this.OoooOoO = (AppContext) context.getApplicationContext();
    }

    public void OooO00o() {
        OooO0O0(0.5f);
    }

    public void OooO0O0(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    public void OooO0OO() {
        Point pointOooOoo0 = w3.OooOoo0(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (pointOooOoo0.x * this.OoooOoo);
        attributes.height = (int) (pointOooOoo0.y * this.Ooooo00);
        getWindow().setAttributes(attributes);
    }

    public void OooO0Oo(float f, float f2) {
        this.OoooOoo = f;
        this.Ooooo00 = f2;
        OooO0OO();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        OooO00o();
    }
}
