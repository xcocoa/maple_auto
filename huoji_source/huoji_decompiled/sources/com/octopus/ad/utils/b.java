package com.octopus.ad.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import androidx.appcompat.app.AlertDialog;
import com.octopus.ad.DownloadService;
import com.octopus.ad.R;
import com.octopus.ad.b.b;
import com.octopus.ad.internal.m;
import com.octopus.ad.utils.b.k;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static b b;
    private Context a;
    private boolean c;
    private a d;
    private b.i e;

    private b(Context context) {
        this.a = context;
    }

    public static b a(Context context) {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b(context);
                }
            }
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        String str;
        if (!f()) {
            str = "startDownloadService download:下载必要参数为null";
        } else {
            if (k.a(this.a)) {
                try {
                    this.a.startService(new Intent(this.a, (Class<?>) DownloadService.class));
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            str = "startDownloadService:checkStoragePermission false";
        }
        Log.d("octopus", str);
    }

    private void e() {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.a, R.style.OctopusAlertDialogStyle);
            builder.setTitle("应用详情");
            String strE = g6.OooO00o;
            if (!TextUtils.isEmpty(this.d.e())) {
                strE = this.d.e();
            }
            builder.setMessage("下载" + strE + "观看更多内容");
            builder.setPositiveButton(R.string.octopus_confirm, new DialogInterface.OnClickListener() { // from class: com.octopus.ad.utils.b.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    b.this.d();
                }
            });
            builder.setNegativeButton(R.string.octopus_cancel, new DialogInterface.OnClickListener() { // from class: com.octopus.ad.utils.b.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
            builder.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean f() {
        String str;
        a aVar = this.d;
        if (aVar == null) {
            return false;
        }
        if (TextUtils.isEmpty(aVar.a())) {
            str = "apkUrl can not be empty!";
        } else if (TextUtils.isEmpty(this.d.b())) {
            str = "apkName can not be empty!";
        } else {
            if (this.d.b().endsWith(com.anythink.china.common.a.a.g)) {
                return true;
            }
            str = "apkName must endsWith .apk!";
        }
        com.octopus.ad.utils.b.f.c("DownloadManager", str);
        return false;
    }

    public a a() {
        return this.d;
    }

    public b a(b.i iVar) {
        this.e = iVar;
        return this;
    }

    public b a(a aVar) {
        this.d = aVar;
        return this;
    }

    public b a(boolean z) {
        this.c = z;
        return this;
    }

    public b b(Context context) {
        this.a = context;
        return this;
    }

    public void b() {
        if (m.a().q() || this.c) {
            d();
        } else {
            e();
        }
    }

    public void c() {
        this.a = null;
        b = null;
    }
}
