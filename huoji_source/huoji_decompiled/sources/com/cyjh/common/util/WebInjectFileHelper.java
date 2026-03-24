package com.cyjh.common.util;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import z2.j4;
import z2.p4;
import z2.y4;

/* JADX INFO: loaded from: classes.dex */
public enum WebInjectFileHelper {
    INSTANCE;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void copyWebInjectFile(Context context) {
        boolean z;
        byte[] bArr = new byte[20];
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (new FileInputStream(new File("/system/lib/libc.so")).read(bArr) != -1) {
            z = bArr[18] != 3;
        }
        boolean zOooO0O0 = y4.OooO0O0();
        Log.e("xygtest", "isRoot=" + zOooO0O0);
        if (!z) {
            if (zOooO0O0) {
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("mkdir -p /sdcard/data/local/tmp/");
                    arrayList.add("mkdir -p /data/local/tmp/");
                    arrayList.add("mkdir -p /sdcard/com.cyjh.mrpa/script/");
                    y4.OooO0o0(arrayList, true, 0);
                    p4.OooO(context).OooO0oo("inject/x86/Inject", "data/local/tmp/a");
                    p4.OooO(context).OooO0oo("inject/x86/libnullso2.so", "data/local/tmp/c");
                    p4.OooO(context).OooO0oo("inject/test.apk", "test.apk");
                    if (!new File("/sdcard/com.cyjh.mrpa/script/.config").exists()) {
                        File file = new File("/sdcard/com.cyjh.mrpa/script/");
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        p4.OooO(context).OooO0oo("inject/config.txt", "com.cyjh.mrpa/script/.config");
                    }
                    arrayList.clear();
                    arrayList.add("cp /sdcard/data/local/tmp/* /data/local/tmp/");
                    arrayList.add("chmod 777 /data/local/tmp/*");
                    Log.e("xygtest", "result=" + y4.OooO0o0(arrayList, true, 0).OooO00o);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        String str = y4.OooO0OO("getprop phone.id", true, 100).OooO0O0;
        try {
            if (str == null || str.length() <= 0) {
                if (zOooO0O0) {
                    y4.OooO0OO("mkdir -p /sdcard/data/local/tmp/", true, 0);
                    y4.OooO0OO("mkdir -p /data/local/tmp/", true, 0);
                    y4.OooO0OO("mkdir -p /sdcard/com.cyjh.mrpa/script/", true, 0);
                    p4.OooO(context).OooO0oo("inject/armeabi-v7a/Inject", "data/local/tmp/a");
                    p4.OooO(context).OooO0oo("inject/armeabi-v7a/libnullso2.so", "data/local/tmp/c");
                    p4.OooO(context).OooO0oo("inject/test.apk", "test.apk");
                    if (!new File("/sdcard/com.cyjh.mrpa/script/.config").exists()) {
                        File file2 = new File("/sdcard/com.cyjh.mrpa/script/");
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        p4.OooO(context).OooO0oo("inject/config.txt", "com.cyjh.mrpa/script/.config");
                    }
                    Log.e("xygtest", "result=" + y4.OooO0OO("cp /sdcard/data/local/tmp/* /data/local/tmp/", true, 0).OooO00o);
                    Log.e("xygtest", "result=" + y4.OooO0OO("chmod 777 /data/local/tmp/*", true, 0).OooO00o);
                    return;
                }
                return;
            }
            if (zOooO0O0) {
                Log.e("xygtest", "result=" + y4.OooO0OO("mkdir -p /sdcard/data/local/tmp/", true, 0).OooO00o);
                p4.OooO(context).OooO0oo("injectDDY/test.apk", "data/local/tmp/test.apk");
                p4.OooO(context).OooO0oo("injectDDY/ddyinject.apk", "data/local/tmp/ddyinject.apk");
                if (!new File("/sdcard/com.cyjh.mrpa/script/.config").exists()) {
                    File file3 = new File("/sdcard/com.cyjh.mrpa/script/");
                    if (!file3.exists()) {
                        file3.mkdirs();
                    }
                    p4.OooO(context).OooO0oo("injectDDY/config.txt", "com.cyjh.mrpa/script/.config");
                }
                File file4 = new File("/data/local/tmp/ddyinject.apk");
                File file5 = new File("/data/local/tmp/test.apk");
                if (file4.exists() && j4.OooOOO0(file4).trim().equals(j4.OooOOO0(new File("/sdcard/data/local/tmp/ddyinject.apk"))) && file5.exists() && j4.OooOOO0(file5).trim().equals(j4.OooOOO0(new File("/sdcard/data/local/tmp/test.apk")))) {
                    return;
                }
                Log.e("xygtest", "cp result=" + y4.OooO0OO("cp /sdcard/data/local/tmp/* /data/local/tmp/", true, 0).OooO00o);
                Log.e("xygtest", "chmod result=" + y4.OooO0OO("chmod 777 /data/local/tmp/*", true, 0).OooO00o);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
