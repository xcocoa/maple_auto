package com.iflytek.voiceads.utils;

import android.content.Context;
import android.media.MediaRecorder;
import java.io.File;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class m {
    private Context a;

    m(Context context) {
        this.a = context;
    }

    public boolean a() throws Throwable {
        File fileCreateTempFile = null;
        MediaRecorder mediaRecorder = new MediaRecorder();
        try {
            try {
                fileCreateTempFile = File.createTempFile("permission", "test");
                mediaRecorder.setAudioSource(1);
                mediaRecorder.setOutputFormat(3);
                mediaRecorder.setAudioEncoder(1);
                mediaRecorder.setOutputFile(fileCreateTempFile.getAbsolutePath());
                mediaRecorder.prepare();
                mediaRecorder.start();
                try {
                    mediaRecorder.stop();
                } catch (Exception e) {
                }
                try {
                    mediaRecorder.release();
                } catch (Exception e2) {
                }
                if (fileCreateTempFile != null && fileCreateTempFile.exists()) {
                    fileCreateTempFile.delete();
                }
            } catch (Throwable th) {
                z = this.a.getPackageManager().hasSystemFeature("android.hardware.microphone") ? false : true;
                try {
                    mediaRecorder.stop();
                } catch (Exception e3) {
                }
                try {
                    mediaRecorder.release();
                } catch (Exception e4) {
                }
                if (fileCreateTempFile != null && fileCreateTempFile.exists()) {
                    fileCreateTempFile.delete();
                }
            }
            return z;
        } finally {
        }
    }
}
