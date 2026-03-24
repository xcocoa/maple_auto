package cn.haorui.sdk.activity;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import cn.haorui.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class HRAlertDialogActivity extends AppCompatActivity implements View.OnClickListener {
    private static CancelHandler cancelHandler;
    private static ConfirmHandler confirmHandler;

    public interface CancelHandler {
        void handle();
    }

    public interface ConfirmHandler {
        void handle();
    }

    public static void setCancelHandler(CancelHandler cancelHandler2) {
        cancelHandler = cancelHandler2;
    }

    public static void setConfirmHandler(ConfirmHandler confirmHandler2) {
        confirmHandler = confirmHandler2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ConfirmHandler confirmHandler2;
        int id = view.getId();
        if (id == R.id.adsail_cancel_button) {
            CancelHandler cancelHandler2 = cancelHandler;
            if (cancelHandler2 != null) {
                cancelHandler2.handle();
            }
        } else if (id == R.id.adsail_confirm_button && (confirmHandler2 = confirmHandler) != null) {
            confirmHandler2.handle();
        }
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        supportRequestWindowFeature(1);
        setContentView(R.layout.adsail_activity_alert_dialog);
        findViewById(R.id.adsail_cancel_button).setOnClickListener(this);
        findViewById(R.id.adsail_confirm_button).setOnClickListener(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        confirmHandler = null;
        cancelHandler = null;
    }
}
