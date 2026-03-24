package com.umeng.commonsdk.proguard;

import android.os.Build;
import com.umeng.commonsdk.proguard.m;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    private boolean b() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private boolean c() {
        try {
            return new File("/system/app/Superuser.apk").exists();
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean d() {
        return new m().a(m.a.check_su_binary) != null;
    }

    private boolean e() {
        String[] strArr = {"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/", "/su/bin/"};
        for (int i = 0; i < 7; i++) {
            if (new File(strArr[i] + "su").exists()) {
                return true;
            }
        }
        return false;
    }

    public boolean a() {
        return b() || c() || d() || e();
    }
}
