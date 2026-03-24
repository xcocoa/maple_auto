package com.octopus.ad.utils.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.octopus.ad.internal.utilities.HaoboLog;
import java.io.File;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static final File a = b(g6.OoooOOo);

    private static File a() {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return null;
        }
        File file = new File(Environment.getExternalStorageDirectory(), "Octopus");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static final File a(Context context) {
        File fileB = b(context);
        if (fileB == null) {
            return null;
        }
        File file = new File(fileB.getPath() + "/Octopus/download/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void a(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return context.getPackageManager().getApplicationInfo(str, 0) != null;
    }

    public static File b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT < 19) {
                return context.getFilesDir();
            }
            File externalFilesDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? context.getExternalFilesDir(null) : null;
            return externalFilesDir == null ? context.getFilesDir() : externalFilesDir;
        } catch (Exception unused) {
            return context.getFilesDir();
        }
    }

    private static File b(String str) {
        File file = new File(a(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void b(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(268435456);
                context.startActivity(launchIntentForPackage);
            }
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, "启动失败:" + str, 1).show();
        }
    }

    public static File c(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            File externalCacheDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? context.getExternalCacheDir() : null;
            return externalCacheDir == null ? context.getCacheDir() : externalCacheDir;
        }
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            return cacheDir;
        }
        String str = com.umeng.analytics.pro.c.a + context.getPackageName() + "/cache/";
        HaoboLog.w(HaoboLog.storageUtilsLogTag, "Can't define system cache directory! '" + str + "%s' will be used.");
        return new File(str);
    }
}
