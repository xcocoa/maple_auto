package com.cyjh.bootdex;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.anythink.expressad.exoplayer.f;
import com.anythink.expressad.video.module.a.a.m;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: assets/AppReboot.dex */
public class DexMain {
    private static final String TAG = "DexMain";
    private static boolean isLive = true;
    private static String launchActivity;
    private static String packageName;

    public static void main(String[] args) {
        Log.i(TAG, "DexMain -- start pid:" + Process.myPid());
        for (int i = 0; i < args.length; i++) {
            Log.d(TAG, i + "=====arg: " + args[i]);
        }
        if (args.length > 0) {
            packageName = args[0];
        }
        if (args.length > 1) {
            launchActivity = args[1];
        }
        try {
            Runtime.getRuntime().exec("su");
            Runtime.getRuntime().exec("am broadcast -a com.cyjh.boot.MY_ACTION --es pid " + Process.myPid() + " --es packageName " + packageName);
        } catch (IOException e) {
            e.printStackTrace();
        }
        while (isLive) {
            Log.i(TAG, "=====定时轮询：" + packageName);
            if (getAliveForPackname(packageName)) {
                Log.i(TAG, "=====appAlive: " + packageName);
            } else {
                Log.i(TAG, "=====appDie: " + packageName);
                isLive = false;
                try {
                    SystemClock.sleep(f.a);
                    Runtime.getRuntime().exec("am start -n " + packageName + "/" + launchActivity + " --es type AppReboot");
                    return;
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            SystemClock.sleep(m.ag);
        }
    }

    public static boolean getAliveForPackname(String packageName2) {
        Field field = null;
        try {
            field = ActivityManager.RunningAppProcessInfo.class.getDeclaredField("processState");
        } catch (Exception e) {
            e.printStackTrace();
        }
        IActivityManager iam = ActivityManagerNative.getDefault();
        try {
            List<ActivityManager.RunningAppProcessInfo> rapis = iam.getRunningAppProcesses();
            for (ActivityManager.RunningAppProcessInfo info : rapis) {
                try {
                    Integer.valueOf(field.getInt(info));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (info.processName.contains(packageName2)) {
                    return true;
                }
            }
        } catch (RemoteException e3) {
            e3.printStackTrace();
        }
        return false;
    }
}
