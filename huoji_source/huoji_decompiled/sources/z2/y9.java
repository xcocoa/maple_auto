package z2;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.ac.R;

/* JADX INFO: loaded from: classes.dex */
public class y9 extends w9 implements View.OnClickListener {
    private Button Ooooo0o;
    private OooO00o OooooO0;

    public interface OooO00o {
        void OooO00o(boolean z);
    }

    public y9(Context context) {
        super(context, R.style.Theme_Dialog);
    }

    private void OooO0o0() {
        Button button = (Button) findViewById(R.id.dialog_miuiguide_button_open);
        this.Ooooo0o = button;
        button.setOnClickListener(this);
    }

    public void OooO0o(OooO00o oooO00o) {
        this.OooooO0 = oooO00o;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OooO00o oooO00o;
        if (view.getId() == R.id.dialog_miuiguide_button_open && (oooO00o = this.OooooO0) != null) {
            oooO00o.OooO00o(true);
        }
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_float_guide);
        OooO0Oo(0.8f, 0.4f);
        OooO0o0();
    }
}
