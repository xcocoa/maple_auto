package z2;

import android.content.Context;
import android.view.WindowManager;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.floatview.DeleteFloatView;
import com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView;

/* JADX INFO: loaded from: classes.dex */
public class z6 {
    private static final z6 OooO0Oo = new z6();
    public ElfinFloatView OooO00o;
    private WindowManager OooO0O0;
    private Context OooO0OO;

    public static z6 OooO0Oo() {
        return OooO0Oo;
    }

    public void OooO00o() {
        this.OooO0O0 = (WindowManager) AppContext.OooO00o().getSystemService("window");
        DeleteFloatView deleteFloatView = new DeleteFloatView(this.OooO0OO);
        this.OooO00o = new ElfinFloatView(this.OooO0OO, deleteFloatView);
        this.OooO0O0.addView(deleteFloatView, deleteFloatView.getLayoutParams());
        WindowManager windowManager = this.OooO0O0;
        ElfinFloatView elfinFloatView = this.OooO00o;
        windowManager.addView(elfinFloatView, elfinFloatView.getLayoutParams());
        if (2 == AppContext.OooO00o().getResources().getConfiguration().orientation) {
            this.OooO00o.OoooOOo();
        }
    }

    public void OooO0O0() {
        ElfinFloatView elfinFloatView = this.OooO00o;
        if (elfinFloatView != null) {
            if (elfinFloatView.getVisibility() == 0) {
                this.OooO00o.setVisibility(8);
            }
            this.OooO00o = null;
        }
    }

    public ElfinFloatView OooO0OO() {
        return this.OooO00o;
    }

    public void OooO0o(Context context) {
        this.OooO0OO = context;
    }

    public void OooO0o0() {
        if (this.OooO00o == null || x4.OooO0O0().OooO00o(f6.OooOOO, Boolean.TRUE)) {
            return;
        }
        this.OooO00o.setVisibility(8);
    }

    public void OooO0oO() {
        ElfinFloatView elfinFloatView;
        int i;
        ElfinFloatView elfinFloatView2 = this.OooO00o;
        if (elfinFloatView2 == null) {
            OooO00o();
        } else {
            elfinFloatView2.OoooOOo();
        }
        if (x4.OooO0O0().OooO00o(f6.OooOOO, Boolean.TRUE)) {
            elfinFloatView = this.OooO00o;
            i = 0;
        } else {
            elfinFloatView = this.OooO00o;
            i = 8;
        }
        elfinFloatView.setVisibility(i);
    }
}
