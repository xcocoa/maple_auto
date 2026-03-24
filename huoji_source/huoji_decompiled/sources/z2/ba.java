package z2;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.ac.R;
import com.cyjh.elfin.entity.MsgItem;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class ba extends Dialog {
    public static boolean Ooooo0o = false;
    public static boolean OooooO0 = true;
    private String OoooOoO;
    private View.OnClickListener OoooOoo;
    private TextView Ooooo00;

    public ba(Context context, boolean z, String str) {
        Window window;
        int i;
        super(context, R.style.Theme_Dialog);
        if (z) {
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
        this.OoooOoO = str;
        OooooO0 = z;
    }

    private void OooO00o(Dialog dialog) {
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        window.addFlags(2);
    }

    public void OooO0O0(View.OnClickListener onClickListener) {
        this.OoooOoo = onClickListener;
    }

    public void OooO0OO(String str) {
        this.Ooooo00.setText(str);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        l10.OooO0o().OooOoO0(this);
        Ooooo0o = false;
        OooooO0 = true;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_version_inspection);
        l10.OooO0o().OooOo00(this);
        OooO00o(this);
        TextView textView = (TextView) findViewById(R.id.id_tv_message);
        this.Ooooo00 = textView;
        textView.setText(this.OoooOoO);
        ((TextView) findViewById(R.id.id_tv_known)).setOnClickListener(this.OoooOoo);
        setCancelable(false);
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem.UpdateMessageToDialog updateMessageToDialog) {
        if (TextUtils.isEmpty(updateMessageToDialog.getMessage())) {
            return;
        }
        this.Ooooo00.setText(updateMessageToDialog.getMessage());
    }

    @r10(threadMode = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        if (msgItem.getMsgType() == 1005) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Ooooo0o = true;
    }
}
