package z2;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.ac.R;

/* JADX INFO: loaded from: classes.dex */
public class x9 {
    private static x9 OooO0O0;
    private ProgressDialog OooO00o;

    private x9() {
    }

    public static x9 OooO0O0() {
        if (OooO0O0 == null) {
            OooO0O0 = new x9();
        }
        return OooO0O0;
    }

    private void OooO0Oo(AlertDialog alertDialog) {
        Window window = alertDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    private void OooO0oO(Context context, String str) {
        if (this.OooO00o == null) {
            this.OooO00o = new ProgressDialog(context);
        }
        this.OooO00o.setMessage(str);
        this.OooO00o.show();
    }

    public void OooO00o(int i, String str, Context context, ka kaVar) {
        AlertDialog alertDialogOooO0o0 = OooO0o0(context, R.layout.dialog_version_inspection, R.style.Theme_Dialog);
        alertDialogOooO0o0.setCancelable(false);
        alertDialogOooO0o0.show();
        ((TextView) alertDialogOooO0o0.findViewById(R.id.id_tv_message)).setText("" + str);
        TextView textView = (TextView) alertDialogOooO0o0.findViewById(R.id.id_tv_known);
        kaVar.OooO0OO(alertDialogOooO0o0);
        kaVar.OooO0Oo(i);
        textView.setOnClickListener(kaVar);
    }

    public void OooO0OO() {
        ProgressDialog progressDialog = this.OooO00o;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.OooO00o.dismiss();
        this.OooO00o = null;
    }

    public void OooO0o(Context context, int i) {
        OooO0oO(context, context.getString(i));
    }

    public AlertDialog OooO0o0(Context context, int i, int i2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context, i2);
        builder.setView(LayoutInflater.from(context).inflate(i, (ViewGroup) null));
        AlertDialog alertDialogCreate = builder.create();
        OooO0Oo(alertDialogCreate);
        return alertDialogCreate;
    }
}
