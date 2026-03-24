package z2;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import com.ac.R;

/* JADX INFO: loaded from: classes.dex */
public class aa extends w9 implements View.OnClickListener {
    public static final int OooooOO = 100;
    public static final int OooooOo = 101;
    public static final String Oooooo0 = "first_open_float_permission";
    private Button Ooooo0o;
    private OooO00o OooooO0;

    public interface OooO00o {
        void OooO00o(int i);
    }

    public aa(Context context) {
        super(context, R.style.Theme_Dialog);
    }

    public aa(Context context, OooO00o oooO00o) {
        super(context, R.style.Theme_Dialog);
        this.OooooO0 = oooO00o;
    }

    private void OooO() {
        getContext().startActivity(OooO0o0());
        OooO00o oooO00o = this.OooooO0;
        if (oooO00o != null) {
            oooO00o.OooO00o(100);
        }
        x4.OooO0O0().OooO0o(Oooooo0, Boolean.FALSE);
        dismiss();
    }

    private void OooO0o() {
        Point pointOooOoo0 = w3.OooOoo0(getContext());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = (int) (((double) pointOooOoo0.x) * 0.8d);
        attributes.height = -2;
        getWindow().setAttributes(attributes);
    }

    private Intent OooO0o0() {
        Intent intent = new Intent();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 || i >= 23) {
            intent.setAction("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        } else {
            if (i < 9) {
                if (i <= 8) {
                    intent.addFlags(268435456);
                    intent.setAction("android.intent.action.VIEW");
                    intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
                    intent.putExtra("com.android.settings.ApplicationPkgName", getContext().getPackageName());
                }
                return intent;
            }
            intent.addFlags(268435456);
            intent.setAction("android.settings.action.MANAGE_WRITE_SETTINGS");
        }
        intent.setData(Uri.fromParts("package", getContext().getPackageName(), null));
        return intent;
    }

    private void OooO0oO() {
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: z2.s9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.OoooOoO.OooOO0O(dialogInterface);
            }
        });
    }

    private void OooO0oo() {
        Button button = (Button) findViewById(R.id.dialog_miuiguide_button_open);
        this.Ooooo0o = button;
        button.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: OooOO0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void OooOO0O(DialogInterface dialogInterface) {
        OooO00o oooO00o = this.OooooO0;
        if (oooO00o != null) {
            oooO00o.OooO00o(101);
        }
    }

    public void OooOO0o(OooO00o oooO00o) {
        this.OooooO0 = oooO00o;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.dialog_miuiguide_button_open) {
            return;
        }
        OooO();
    }

    @Override // z2.w9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_miuifloatview);
        OooO0oo();
        OooO0o();
        OooO0oO();
    }
}
