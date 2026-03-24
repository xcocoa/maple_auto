package cn.haorui.sdk.core.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class AppStoreUtil {
    private static final String TAG = "AppStoreUtil";
    private static Context context = null;
    private static String[] downloadSucc = null;
    private static String[] installStart = null;
    private static String[] installSuccess = null;
    private static String packageName = "";

    public static class InstallReceiver extends BroadcastReceiver {
        private void clearData() {
            String unused = AppStoreUtil.packageName = null;
            String[] unused2 = AppStoreUtil.downloadSucc = null;
            String[] unused3 = AppStoreUtil.installStart = null;
            String[] unused4 = AppStoreUtil.installSuccess = null;
        }

        private void downloadSuccess() {
            String[] strArr = AppStoreUtil.downloadSucc;
            if (strArr != null) {
                LogUtil.d(AppStoreUtil.TAG, "Report send dn_succ");
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetWithWebViewUA(AppStoreUtil.context, str, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            LogUtil.d(AppStoreUtil.TAG, "onDownloaded: 下载完成");
        }

        private void installSucc() {
            String[] strArr = AppStoreUtil.installSuccess;
            if (strArr != null) {
                LogUtil.d(AppStoreUtil.TAG, "Report send dn_inst_succ");
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetWithWebViewUA(AppStoreUtil.context, str, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            LogUtil.d(AppStoreUtil.TAG, "onInstallStart: 安装成功");
        }

        private void startInstall() {
            String[] strArr = AppStoreUtil.installStart;
            if (strArr != null) {
                LogUtil.d(AppStoreUtil.TAG, "Report send dn_inst_start");
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetWithWebViewUA(AppStoreUtil.context, str, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            LogUtil.d(AppStoreUtil.TAG, "onInstallStart: 开始安装");
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                context.getPackageManager();
                if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
                    String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                    Log.e(AppStoreUtil.TAG, "onReceive:  app_added  " + schemeSpecificPart);
                    int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", 0);
                    if (AppStoreUtil.packageName == null || !TextUtils.equals(schemeSpecificPart, AppStoreUtil.packageName)) {
                        return;
                    }
                    downloadSuccess();
                    startInstall();
                    if (intExtra == 1) {
                        Log.e(AppStoreUtil.TAG, "install fail ");
                    } else {
                        Log.e(AppStoreUtil.TAG, "install success ");
                        installSucc();
                    }
                    clearData();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void registerBroadCast(Context context2) {
        context = context2;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        context2.registerReceiver(new InstallReceiver(), intentFilter);
    }

    public static void setInfo(String str, String[] strArr, String[] strArr2, String[] strArr3) {
        packageName = str;
        downloadSucc = strArr;
        installStart = strArr2;
        installSuccess = strArr3;
    }
}
