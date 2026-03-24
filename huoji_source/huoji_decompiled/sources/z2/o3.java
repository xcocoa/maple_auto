package z2;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.cyjh.common.R;
import com.cyjh.common.view.SlLoadingView;

/* JADX INFO: loaded from: classes.dex */
public class o3 extends n3 implements View.OnClickListener {
    public static final String OooooOO = o3.class.getSimpleName();
    private static final int OooooOo = 19;
    private static final int Oooooo0 = 24;
    public Context Ooooo0o;
    private SlLoadingView OooooO0;

    public o3(Context context, boolean z) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        this.Ooooo0o = context;
        if (z) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26) {
                window = getWindow();
                i = 2038;
            } else if (i2 < 19 || i2 >= 24) {
                if (getWindow() == null) {
                    return;
                }
                window = getWindow();
                i = 2002;
            } else {
                if (getWindow() == null) {
                    return;
                }
                window = getWindow();
                i = 2005;
            }
            window.setType(i);
        }
    }

    private void OooO0o0() {
        this.OooooO0 = (SlLoadingView) findViewById(R.id.slLoadingView);
        setCancelable(false);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // z2.n3, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_library_ui_loading);
        OooO0O0(0.2f);
        OooO0Oo(0.8f, 0.6f);
        OooO0o0();
    }
}
