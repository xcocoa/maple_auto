package com.didi.virtualapk.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import android.util.Pair;
import androidx.appcompat.widget.ActivityChooserModel;
import com.didi.virtualapk.internal.Constants;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class RunUtil {
    private static final int MESSAGE_RUN_ON_UITHREAD = 1;
    private static Handler sHandler;

    public static class InternalHandler extends Handler {
        public InternalHandler() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                Pair pair = (Pair) message.obj;
                try {
                    ((Runnable) pair.first).run();
                } finally {
                    Object obj = pair.second;
                    if (obj != null) {
                        ((CountDownLatch) obj).countDown();
                    }
                }
            }
        }
    }

    private static Handler getHandler() {
        Handler handler;
        synchronized (RunUtil.class) {
            if (sHandler == null) {
                sHandler = new InternalHandler();
            }
            handler = sHandler;
        }
        return handler;
    }

    private static String getProcessNameByPid(Context context, int i) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return null;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (i == runningAppProcessInfo.pid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return null;
        } catch (Throwable th) {
            Log.w(Constants.TAG, th);
            return null;
        }
    }

    public static Executor getThreadPool() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }

    public static boolean isMainProcess(Context context) {
        return context.getPackageName().equals(getProcessNameByPid(context, Process.myPid()));
    }

    public static void runOnUiThread(Runnable runnable) {
        runOnUiThread(runnable, false);
    }

    public static void runOnUiThread(Runnable runnable, boolean z) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
            return;
        }
        CountDownLatch countDownLatch = z ? new CountDownLatch(1) : null;
        getHandler().obtainMessage(1, new Pair(runnable, countDownLatch)).sendToTarget();
        if (z) {
            try {
                countDownLatch.await();
            } catch (InterruptedException e) {
                Log.w(Constants.TAG, e);
            }
        }
    }
}
