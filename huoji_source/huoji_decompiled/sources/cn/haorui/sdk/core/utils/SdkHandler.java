package cn.haorui.sdk.core.utils;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class SdkHandler {
    private Handler mHandler;

    public static class b {
        public static final SdkHandler a = new SdkHandler();
    }

    private SdkHandler() {
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public static SdkHandler getInstance() {
        return b.a;
    }

    public void runOnUiThread(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }
}
