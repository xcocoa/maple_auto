package com.iflytek.voiceads.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.iflytek.voiceads.utils.g;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d {
    private String a;
    private Context b;

    public d(Context context, String str) {
        this.b = context;
        this.a = str;
    }

    private String a(String str) {
        return str.split("/")[r0.length - 1];
    }

    private String b() {
        return c() + File.separator + "ifly_image_cache";
    }

    private String c() {
        File cacheDir = this.b.getCacheDir();
        return (cacheDir == null || TextUtils.isEmpty(cacheDir.getPath())) ? "" : cacheDir.getPath();
    }

    public Bitmap a() {
        String str = c() + File.separator + "ifly_image_cache" + File.separator + a(this.a) + ".cache";
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        if (bitmapDecodeFile != null) {
            return bitmapDecodeFile;
        }
        file.delete();
        return null;
    }

    public void a(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        String str = a(this.a) + ".cache";
        String strB = b();
        File file = new File(strB);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(strB + File.separator + str);
        try {
            file2.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            if (this.a.contains("png")) {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            } else if (this.a.contains("jpg")) {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "saveBitmap:" + e.getMessage());
        }
    }
}
