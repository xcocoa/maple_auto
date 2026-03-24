package com.cyjh.file;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;

/* JADX INFO: loaded from: assets/AppReboot.dex */
public class FileDexMain {
    private static final String TAG = "FileDexMain";
    private static String packageNames = "";

    public static void main(String[] args) {
        Log.i(TAG, "FileDexMain -- start pid:" + Process.myPid());
        for (int i = 0; i < args.length; i++) {
            Log.d(TAG, i + "=====arg: " + args[i]);
        }
        if (args.length > 0) {
            packageNames = args[0];
        }
        File file = new File("/sdcard/Android/data/com.cyjh.startapp/files/elfinReboot");
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        writeStringToFile(file, packageNames, "UTF-8");
    }

    public static boolean writeStringToFile(File file, String content, String encodeFormat) {
        try {
            if (TextUtils.isEmpty(encodeFormat)) {
                encodeFormat = "UTF-8";
            }
            Writer fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), encodeFormat));
            fw.write(content);
            fw.flush();
            fw.close();
            return true;
        } catch (IOException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
