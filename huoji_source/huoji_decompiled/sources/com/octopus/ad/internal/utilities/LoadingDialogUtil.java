package com.octopus.ad.internal.utilities;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.view.KeyEvent;
import com.octopus.ad.R;

/* JADX INFO: loaded from: classes2.dex */
public class LoadingDialogUtil {
    private static LoadingDialogUtil loadingDialogInstance;
    private AlertDialog alertDialog;
    private Activity lastActivity;

    private LoadingDialogUtil() {
    }

    public static LoadingDialogUtil getInstance() {
        LoadingDialogUtil loadingDialogUtil;
        synchronized (LoadingDialogUtil.class) {
            if (loadingDialogInstance == null) {
                loadingDialogInstance = new LoadingDialogUtil();
            }
            loadingDialogUtil = loadingDialogInstance;
        }
        return loadingDialogUtil;
    }

    public void dismissLoadingDialog() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.alertDialog.dismiss();
    }

    public void showLoadingDialog(Activity activity) {
        try {
            if (activity != this.lastActivity || this.alertDialog == null) {
                this.lastActivity = activity;
                AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).create();
                this.alertDialog = alertDialogCreate;
                alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable());
                this.alertDialog.setCancelable(false);
                this.alertDialog.setCanceledOnTouchOutside(false);
                this.alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.octopus.ad.internal.utilities.LoadingDialogUtil.1
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        return i == 84 || i == 4;
                    }
                });
            }
            if (this.alertDialog.isShowing()) {
                return;
            }
            this.alertDialog.show();
            this.alertDialog.setContentView(R.layout.oct_loading_alert);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
