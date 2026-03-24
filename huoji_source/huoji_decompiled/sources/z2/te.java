package z2;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.cyjh.mqsdk.R;

/* JADX INFO: loaded from: classes2.dex */
public final class te {
    public View OooO00o;
    public EditText OooO0O0;
    public OooO0O0 OooO0OO;
    public WindowManager OooO0Oo;
    private WindowManager.LayoutParams OooO0o0;

    public class OooO00o implements View.OnClickListener {
        public OooO00o() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            te teVar = te.this;
            OooO0O0 oooO0O0 = teVar.OooO0OO;
            if (oooO0O0 != null) {
                oooO0O0.a(teVar.OooO0O0.getText().toString());
            }
            te teVar2 = te.this;
            teVar2.OooO0Oo.removeView(teVar2.OooO00o);
        }
    }

    public interface OooO0O0 {
        void a(String str);
    }

    public te(Context context, String str, OooO0O0 oooO0O0) {
        this.OooO0OO = oooO0O0;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_input, (ViewGroup) null);
        this.OooO00o = viewInflate;
        ((TextView) viewInflate.findViewById(R.id.prompt)).setText(str);
        this.OooO0O0 = (EditText) this.OooO00o.findViewById(R.id.et_input);
        this.OooO00o.findViewById(R.id.single_ok_button).setOnClickListener(new OooO00o());
        this.OooO0Oo = (WindowManager) context.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.OooO0o0 = layoutParams;
        int i = Build.VERSION.SDK_INT;
        layoutParams.type = i >= 26 ? 2038 : (i < 19 || i >= 24) ? 2002 : 2005;
        layoutParams.format = 1;
        layoutParams.gravity = 17;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.alpha = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -1;
    }

    private void OooO0Oo() {
        this.OooO0Oo.removeView(this.OooO00o);
    }

    private void OooO0o0() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.OooO0o0 = layoutParams;
        int i = Build.VERSION.SDK_INT;
        layoutParams.type = i >= 26 ? 2038 : (i < 19 || i >= 24) ? 2002 : 2005;
        layoutParams.format = 1;
        layoutParams.gravity = 17;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.alpha = 1.0f;
        layoutParams.width = -1;
        layoutParams.height = -1;
    }

    public final void OooO0O0() {
        this.OooO0Oo.addView(this.OooO00o, this.OooO0o0);
    }
}
