package com.iflytek.voiceads.download;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class c {
    private static final String a = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "IFlyAdDownload";

    public static String a(Context context) {
        try {
            File file = com.iflytek.voiceads.utils.l.a(context, com.anythink.china.common.d.b) ? new File(a) : new File(context.getFilesDir().getAbsolutePath() + File.separator + "IFlyAdDownload");
            if (!file.exists()) {
                file.mkdir();
            }
            long length = 0;
            for (File file2 : file.listFiles()) {
                length += file2.length();
            }
            if (length > 314572800) {
                a.a(context).b();
                for (File file3 : file.listFiles()) {
                    file3.delete();
                }
            }
            return file.getAbsolutePath();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get pre path:" + e.getMessage());
            return "";
        }
    }
}
