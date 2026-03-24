package com.anythink.china.common.c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.anythink.china.common.a.e;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.h;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static String a = "a";

    public static String a(Context context, File file) {
        if (context != null && file != null) {
            try {
                return context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 1).packageName;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return "";
    }

    public static void a(Context context, l lVar, m mVar) throws Throwable {
        int i;
        if (TextUtils.equals(String.valueOf(mVar.j), "0") && !mVar.o) {
            if (!(lVar instanceof j) || TextUtils.isEmpty(((j) lVar).a())) {
                String strA = h.a(lVar);
                String strF = lVar.F();
                if (!TextUtils.isEmpty(strF) && a(context, strF)) {
                    StringBuilder sb = new StringBuilder("readDownloadStatus, offerId: ");
                    sb.append(lVar.t());
                    sb.append(", apk has installed");
                    lVar.l(2);
                    return;
                }
                String strA2 = b.a(strA);
                if (new File(strA2 + com.anythink.china.common.a.a.g).exists()) {
                    StringBuilder sb2 = new StringBuilder("readDownloadStatus, offerId: ");
                    sb2.append(lVar.t());
                    sb2.append(", apk has download finished");
                    lVar.l(5);
                    return;
                }
                File file = new File(strA2 + ".log");
                File file2 = new File(strA2 + com.anythink.china.common.a.a.e);
                if (!file.exists() || !file2.exists()) {
                    if (file.exists() || file2.exists()) {
                        StringBuilder sb3 = new StringBuilder("readDownloadStatus, offerId: ");
                        sb3.append(lVar.t());
                        sb3.append(", apk download delete");
                        lVar.l(8);
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder("readDownloadStatus, offerId: ");
                    sb4.append(lVar.t());
                    sb4.append(", apk not downloaded 2");
                    lVar.l(1);
                    return;
                }
                String strA3 = b.a(file);
                if (TextUtils.isEmpty(strA3)) {
                    StringBuilder sb5 = new StringBuilder("readDownloadStatus, offerId: ");
                    sb5.append(lVar.t());
                    sb5.append(", apk not downloaded 1");
                    lVar.l(1);
                    return;
                }
                String[] strArrSplit = strA3.split("\\|");
                if (strArrSplit != null && strArrSplit.length == 3) {
                    String str = strArrSplit[0];
                    String str2 = strArrSplit[2];
                    String str3 = strArrSplit[2];
                    try {
                        i = ((int) ((Long.parseLong(str) * 1.0f) / Long.parseLong(str2))) * 100;
                    } catch (Throwable unused) {
                        i = 0;
                    }
                    if (TextUtils.equals(str3, e.a.FAIL.toString())) {
                        StringBuilder sb6 = new StringBuilder("readDownloadStatus, offerId: ");
                        sb6.append(lVar.t());
                        sb6.append(", apk download failed, progress: ");
                        sb6.append(i);
                        lVar.l(6);
                        return;
                    }
                    if (TextUtils.equals(str3, e.a.PAUSE.toString())) {
                        StringBuilder sb7 = new StringBuilder("readDownloadStatus, offerId: ");
                        sb7.append(lVar.t());
                        sb7.append(", apk download pause or stop, progress: ");
                        sb7.append(i);
                        lVar.l(7);
                        return;
                    }
                    if (TextUtils.equals(str3, e.a.LOADING.toString())) {
                        StringBuilder sb8 = new StringBuilder("readDownloadStatus, offerId: ");
                        sb8.append(lVar.t());
                        sb8.append(", apk is downloading, progress: ");
                        sb8.append(i);
                        lVar.l(4);
                        return;
                    }
                }
                StringBuilder sb9 = new StringBuilder("readDownloadStatus, offerId: ");
                sb9.append(lVar.t());
                sb9.append(", unknown apk status");
                lVar.l(0);
            }
        }
    }

    public static boolean a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                context.getPackageManager().getApplicationInfo(str, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static void b(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(268435456);
                context.startActivity(launchIntentForPackage);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean b(Context context, File file) {
        if (context != null && file != null) {
            String strA = a(context, file);
            if (!TextUtils.isEmpty(strA)) {
                return a(context, strA);
            }
        }
        return false;
    }
}
