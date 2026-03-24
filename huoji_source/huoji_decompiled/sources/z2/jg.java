package z2;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class jg {
    public static final String OooO00o = "ModifyCaptureModeHelper";

    private static String OooO00o() {
        return Build.VERSION.SDK_INT >= 21 ? Build.SUPPORTED_ABIS[0] : Build.CPU_ABI;
    }

    public static void OooO0O0(Context context) {
        if (Build.VERSION.SDK_INT < 28) {
            OooO0OO(context, "x86");
        } else {
            OooO0o0(context, "x86");
            OooO0o0(context, "x86_64");
        }
    }

    private static void OooO0OO(Context context, String str) {
        String str2 = "injectModifyCaptureMode/LowerThanAndroid9/" + str + "/";
        OooO0Oo(context, str2 + "inject7", "data/local/tmp/a");
        OooO0Oo(context, str2 + "libzygote.so", "data/local/tmp/c");
        OooO0Oo(context, str2 + "libyafa.so", "data/local/tmp/libyafa.so");
        OooO0Oo(context, "injectModifyCaptureMode/LowerThanAndroid9/hookzygote.apk", "data/local/tmp/hookzygote.apk");
        ArrayList arrayList = new ArrayList();
        arrayList.add("mkdir -p /data/local/plugs/");
        arrayList.add("cp -r /sdcard/data/local/tmp/* /data/local/tmp/");
        arrayList.add("chmod 777 /data/local/tmp/*");
        arrayList.add("/data/local/tmp/a zygote /data/local/tmp/c c d d");
        Log.i(OooO00o, "/data/local/tmp/a zygote /data/local/tmp/c c d d result=" + mg.OooO0O0(arrayList).OooO0O0);
    }

    private static void OooO0Oo(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                File file = new File(Environment.getExternalStorageDirectory(), str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                for (String str3 : list) {
                    if (str.equals("")) {
                        OooO0Oo(context, str3, str2 + File.separator + str3);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        String str4 = File.separator;
                        sb.append(str4);
                        sb.append(str3);
                        OooO0Oo(context, sb.toString(), str2 + str4 + str3);
                    }
                }
                return;
            }
            File file2 = new File(Environment.getExternalStorageDirectory(), str2);
            InputStream inputStreamOpen = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    fileOutputStream.flush();
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    Log.i(OooO00o, "copy success srcPath " + str + " dstPath =" + str2);
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e) {
            Log.i(OooO00o, "copy fail srcPath =" + str + " dstPath =" + str2);
            e.printStackTrace();
        }
    }

    private static void OooO0o0(Context context, String str) {
        String str2 = "injectModifyCaptureMode/HigherThanAndroid9/" + str + "/";
        OooO0Oo(context, str2 + "inject9", "data/local/tmp/inject9");
        OooO0Oo(context, str2 + "libzygote.so", "data/local/tmp/libzygote.so");
        OooO0Oo(context, str2 + "libyafa.so", "data/local/tmp/libyafa.so");
        OooO0Oo(context, "injectModifyCaptureMode/HigherThanAndroid9/hookzygote.apk", "data/local/tmp/hookzygote.apk");
        ArrayList arrayList = new ArrayList();
        arrayList.add("mkdir -p /data/local/plugs/");
        arrayList.add("cp -r /sdcard/data/local/tmp/* /data/local/tmp/");
        arrayList.add("chmod 777 /data/local/tmp/*");
        arrayList.add("/data/local/tmp/inject9 --libpath /data/local/tmp/libzygote.so");
        Log.i(OooO00o, "/data/local/tmp/inject9 --libpath /data/local/tmp/libzygote.so result=" + mg.OooO0O0(arrayList).OooO0O0);
    }
}
