package z2;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import com.ac.R;

/* JADX INFO: loaded from: classes.dex */
public class p6 extends w9 {

    public class OooO00o implements View.OnClickListener {
        public final /* synthetic */ EditText OoooOoO;

        public OooO00o(EditText editText) {
            this.OoooOoO = editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.isEmpty(this.OoooOoO.getText().toString())) {
                t5.o000oOoO("输入不能为空！");
                return;
            }
            x4.OooO0O0().OooO0oo(f6.OooOo00, this.OoooOoO.getText().toString());
            t5.o000oOoO("已保存！");
            p6.this.dismiss();
        }
    }

    public p6(Context context) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
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

    private void OooO0o0() {
        EditText editText = (EditText) findViewById(R.id.et_adb_command);
        editText.setText(x4.OooO0O0().OooO0Oo(f6.OooOo00, "logcat -v time"));
        findViewById(R.id.dialog_save_command).setOnClickListener(new OooO00o(editText));
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_adb_command);
        OooO0O0(0.5f);
        OooO0Oo(0.9f, 0.3f);
        OooO0o0();
    }
}
