package z2;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import com.ac.R;

/* JADX INFO: loaded from: classes.dex */
public class q6 extends w9 implements View.OnClickListener {
    private Button Ooooo0o;
    private Button OooooO0;
    private OooO0O0 OooooOO;
    private OooO00o OooooOo;

    public interface OooO00o {
        void onClick(View view);
    }

    public interface OooO0O0 {
        void onClick(View view);
    }

    public q6(Context context) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            window = getWindow();
            i = 2038;
        } else if (i2 < 19 || i2 >= 24) {
            window = getWindow();
            i = 2002;
        } else {
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    private void OooO0o0() {
        this.Ooooo0o = (Button) findViewById(R.id.hidefw_button_ok);
        this.OooooO0 = (Button) findViewById(R.id.hidefw_button_cancel);
        this.Ooooo0o.setOnClickListener(this);
        this.OooooO0.setOnClickListener(this);
    }

    public void OooO0o(OooO00o oooO00o) {
        this.OooooOo = oooO00o;
    }

    public void OooO0oO(OooO0O0 oooO0O0) {
        this.OooooOO = oooO0O0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.hidefw_button_cancel /* 2131296956 */:
                OooO00o oooO00o = this.OooooOo;
                if (oooO00o != null) {
                    oooO00o.onClick(view);
                }
                break;
            case R.id.hidefw_button_ok /* 2131296957 */:
                OooO0O0 oooO0O0 = this.OooooOO;
                if (oooO0O0 != null) {
                    oooO0O0.onClick(view);
                }
                break;
        }
        dismiss();
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_hidefw);
        OooO0O0(0.1f);
        OooO0Oo(0.8f, 0.3f);
        OooO0o0();
    }
}
