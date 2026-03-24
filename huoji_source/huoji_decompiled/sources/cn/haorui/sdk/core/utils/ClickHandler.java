package cn.haorui.sdk.core.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.content.FileProvider;
import cn.haorui.sdk.activity.HRWebviewActivity;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdDataImpl;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.adsail_ad.view.DownLoadDialogActivity;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.AdSlot;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.BaseAdSlot;
import cn.haorui.sdk.core.ad.IAd;
import cn.haorui.sdk.core.download.a;
import cn.haorui.sdk.core.loader.ShareInteractionListener;
import cn.haorui.sdk.core.uri.b;
import cn.haorui.sdk.core.uri.c;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.core.view.TouchPositionListener;
import cn.haorui.sdk.platform.hr.IAdSailAd;
import com.anythink.expressad.exoplayer.f;
import java.io.File;
import java.lang.ref.SoftReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ClickHandler {
    private static final String TAG = "ClickHandler";
    public static SoftReference<Activity> activitySoftReference = null;
    private static final String wx_BaseReq = "com.tencent.mm.opensdk.modelbase.BaseReq";
    private static final String wx_BaseWXApiImplV10 = "com.tencent.mm.opensdk.openapi.BaseWXApiImplV10";

    public static class a implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ AdSlot b;
        public final /* synthetic */ IAdSailAd c;

        public a(Context context, AdSlot adSlot, IAdSailAd iAdSailAd) {
            this.a = context;
            this.b = adSlot;
            this.c = iAdSailAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            String[] dp_succ;
            long jUptimeMillis = SystemClock.uptimeMillis();
            while (SystemClock.uptimeMillis() - jUptimeMillis <= f.a) {
                if (ClickHandler.isSelfBackground(this.a)) {
                    try {
                        Thread.sleep(com.anythink.expressad.exoplayer.i.a.f);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    if (!ClickHandler.isSelfBackground(this.a) || (dp_succ = this.b.getDp_succ()) == null) {
                        return;
                    }
                    LogUtil.d(ClickHandler.TAG, "send dp_succ");
                    for (String str : dp_succ) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(this.a, ClickHandler.replaceMacros(str, this.c), new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                    return;
                }
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            LogUtil.d(ClickHandler.TAG, "check self background timeout");
        }
    }

    public static void clearShowDialogActivity() {
        activitySoftReference = null;
    }

    private static void downloadApp(Context context, String str, String str2, String str3, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        DownloadUtils.getInstance().startDownload(context.getApplicationContext(), str, str2, str3, strArr, strArr2, strArr3, strArr4);
    }

    private static void downloadInAppStore(Context context, IAdSailAd iAdSailAd) {
        try {
            AdSlot adSlot = iAdSailAd.getAdSlot();
            AppStoreUtil.setInfo(adSlot.getPackageName(), adSlot.getDn_succ(), adSlot.getDn_inst_start(), adSlot.getDn_inst_succ());
            String[] dn_start = adSlot.getDn_start();
            if (dn_start != null) {
                LogUtil.d(TAG, "Report send dn_start");
                for (String str : dn_start) {
                    if (!TextUtils.isEmpty(str)) {
                        HttpUtil.asyncGetWithWebViewUA(context, str, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + adSlot.getPackageName()));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    public static void gotoDownload(Context context, IAdSailAd iAdSailAd) {
        Uri uriFromFile;
        if (!isInternetConnected(context)) {
            Toast.makeText(context.getApplicationContext(), "请检查网络连接", 0).show();
            return;
        }
        AdSlot adSlot = iAdSailAd.getAdSlot();
        if (adSlot.getdUrl() == null || adSlot.getdUrl().length <= 0) {
            LogUtil.w(TAG, "Unexpected data.");
            return;
        }
        String str = a.C0007a.a.c;
        String strReplace = adSlot.getdUrl()[0].substring(adSlot.getdUrl()[0].lastIndexOf("/")).replace("/", "");
        try {
            strReplace = StringUtils.byte2hex(MessageDigest.getInstance("MD5").digest(adSlot.getdUrl()[0].getBytes())).toLowerCase() + com.anythink.china.common.a.a.g;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        File file = new File(str, strReplace);
        if (!file.exists()) {
            gotoDownloadInner(context, iAdSailAd);
            return;
        }
        LogUtil.i(TAG, "File exist.");
        Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
        intent.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
            uriFromFile = FileProvider.getUriForFile(context, context.getPackageName() + ".HRFileProvider", file);
        } else {
            uriFromFile = Uri.fromFile(file);
        }
        intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    private static void gotoDownloadInner(Context context, IAdSailAd iAdSailAd) {
        if (AdSdk.adConfig().downloadConfirm() == 1 || (AdSdk.adConfig().downloadConfirm() == 0 && !isWifiConnected(context))) {
            DownLoadDialogActivity.nativeAd = iAdSailAd;
            Intent intent = new Intent(context, (Class<?>) DownLoadDialogActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            return;
        }
        String[] dn_start = iAdSailAd.getAdSlot().getDn_start();
        if (dn_start != null) {
            for (int i = 0; i < dn_start.length; i++) {
                dn_start[i] = replaceMacros(dn_start[i], iAdSailAd);
            }
        }
        String[] dn_succ = iAdSailAd.getAdSlot().getDn_succ();
        if (dn_succ != null) {
            for (int i2 = 0; i2 < dn_succ.length; i2++) {
                dn_succ[i2] = replaceMacros(dn_succ[i2], iAdSailAd);
            }
        }
        String[] dn_inst_start = iAdSailAd.getAdSlot().getDn_inst_start();
        if (dn_inst_start != null) {
            for (int i3 = 0; i3 < dn_inst_start.length; i3++) {
                dn_inst_start[i3] = replaceMacros(dn_inst_start[i3], iAdSailAd);
            }
        }
        String[] dn_inst_succ = iAdSailAd.getAdSlot().getDn_inst_succ();
        if (dn_inst_succ != null) {
            for (int i4 = 0; i4 < dn_inst_succ.length; i4++) {
                dn_inst_succ[i4] = replaceMacros(dn_inst_succ[i4], iAdSailAd);
            }
        }
        downloadApp(context, iAdSailAd.getAdSlot().getdUrl()[0], iAdSailAd.getAdSlot().getAppName(), iAdSailAd.getAdSlot().getPackageName(), dn_start, dn_succ, dn_inst_start, dn_inst_succ);
        Toast.makeText(context.getApplicationContext(), "开始下载", 0).show();
    }

    public static void handleClick(IAdSailAd iAdSailAd) {
        boolean zIsDynamicClick;
        LogUtil.d(TAG, "handleClick");
        AdSlot adSlot = iAdSailAd.getAdSlot();
        String[] clickUrl = adSlot.getClickUrl();
        boolean z = false;
        if (clickUrl != null) {
            LogUtil.d(TAG, "send handleClick");
            if (adSlot instanceof BaseAdSlot) {
                BaseAdSlot baseAdSlot = (BaseAdSlot) adSlot;
                String posId = baseAdSlot.getPosId();
                RecordUtil.saveAction(posId, 4);
                RecordUtil.RecordClick recordClick = RecordUtil.recordClickMap.get(posId + baseAdSlot.getLoadedTime());
                if (recordClick == null) {
                    recordClick = new RecordUtil.RecordClick();
                }
                zIsDynamicClick = !recordClick.isClicked() ? recordClick.isDynamicClick() : false;
                if (!zIsDynamicClick) {
                    RecordUtil.saveAction(posId, 8);
                }
                recordClick.setClicked(true);
                RecordUtil.recordClickMap.put(posId + baseAdSlot.getLoadedTime(), recordClick);
            } else {
                zIsDynamicClick = false;
            }
            for (String strReplace : clickUrl) {
                if (!TextUtils.isEmpty(strReplace)) {
                    if (iAdSailAd.getAdView() != null) {
                        strReplace = MacroUtil.doReplaceUrl(strReplace, iAdSailAd.getAdView().getWidth(), iAdSailAd.getAdView().getHeight());
                    }
                    if (zIsDynamicClick) {
                        strReplace = strReplace.replace("__MS_DCLK_S__", "1");
                    }
                    HttpUtil.asyncGetWithWebViewUA(iAdSailAd.getAdView().getContext(), replaceMacros(strReplace, iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        String[] strArr = adSlot.getdUrl();
        if (strArr != null) {
            String[] strArr2 = new String[strArr.length];
            int length = strArr.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                strArr2[i2] = replaceMacros(strArr[i], iAdSailAd);
                i++;
                i2++;
            }
            adSlot.setdUrl(strArr2);
        }
        Context context = iAdSailAd.getContext();
        if (iAdSailAd.getAdType() == AdType.FEED && (iAdSailAd instanceof NativeAdDataImpl)) {
            NativeAdDataImpl nativeAdDataImpl = (NativeAdDataImpl) iAdSailAd;
            if (nativeAdDataImpl.getAdPatternType() == 2 && nativeAdDataImpl.isShowDetail() && (iAdSailAd.getAdView() instanceof NormalMediaView)) {
                ((NormalMediaView) iAdSailAd.getAdView()).openDetail();
                return;
            }
        }
        if (!TextUtils.isEmpty(adSlot.getWx_username())) {
            try {
                String[] wx_start = adSlot.getWx_start();
                if (wx_start != null) {
                    LogUtil.d(TAG, "send wx_start");
                    for (String str : wx_start) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(context, replaceMacros(MacroUtil.replaceExposureMacros(str), iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
                String wxAppid = AdSdk.adConfig().getWxAppid();
                Class<?> cls = Class.forName(wx_BaseWXApiImplV10);
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, String.class, Boolean.TYPE, Integer.TYPE);
                declaredConstructor.setAccessible(true);
                Object objNewInstance = declaredConstructor.newInstance(context, wxAppid, Boolean.TRUE, 2);
                Class<?> cls2 = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
                Object objNewInstance2 = cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
                Field declaredField = cls2.getDeclaredField("userName");
                declaredField.setAccessible(true);
                declaredField.set(objNewInstance2, adSlot.getWx_username());
                Field declaredField2 = cls2.getDeclaredField("path");
                declaredField2.setAccessible(true);
                declaredField2.set(objNewInstance2, adSlot.getWx_path());
                Method declaredMethod = cls.getDeclaredMethod("sendReq", Class.forName(wx_BaseReq));
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(objNewInstance, objNewInstance2);
                if (objInvoke instanceof Boolean) {
                    if (((Boolean) objInvoke).booleanValue()) {
                        String[] wx_succ = adSlot.getWx_succ();
                        if (wx_succ != null) {
                            LogUtil.d(TAG, "send wx_success");
                            for (String str2 : wx_succ) {
                                if (!TextUtils.isEmpty(str2)) {
                                    HttpUtil.asyncGetWithWebViewUA(context, replaceMacros(MacroUtil.replaceExposureMacros(str2), iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                                }
                            }
                            return;
                        }
                        return;
                    }
                    String[] wx_fail = adSlot.getWx_fail();
                    if (wx_fail != null) {
                        LogUtil.d(TAG, "send wx_start");
                        for (String str3 : wx_fail) {
                            if (!TextUtils.isEmpty(str3)) {
                                HttpUtil.asyncGetWithWebViewUA(context, replaceMacros(MacroUtil.replaceExposureMacros(str3), iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                            }
                        }
                    }
                }
            } catch (Exception e) {
                LogUtil.e(TAG, "wx loadfail=" + e.toString());
                String[] wx_fail2 = adSlot.getWx_fail();
                if (wx_fail2 != null) {
                    LogUtil.d(TAG, "send wx_start");
                    for (String str4 : wx_fail2) {
                        if (!TextUtils.isEmpty(str4)) {
                            HttpUtil.asyncGetWithWebViewUA(context, replaceMacros(MacroUtil.replaceExposureMacros(str4), iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(adSlot.getDeep_link())) {
            try {
                Intent uri = Intent.parseUri(adSlot.getDeep_link(), 0);
                if (uri.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                    uri.setFlags(268435456);
                    if (openDeepLink(AdSdk.getContext(), adSlot, iAdSailAd, uri)) {
                        return;
                    }
                }
            } catch (URISyntaxException e2) {
                e2.printStackTrace();
            }
        }
        if (iAdSailAd.getInteractionType() == 1) {
            if (iAdSailAd.getAdSlot().getDirect_market() != 1 || TextUtils.isEmpty(iAdSailAd.getAdSlot().getPackageName())) {
                gotoDownload(context, iAdSailAd);
                return;
            } else {
                downloadInAppStore(context, iAdSailAd);
                return;
            }
        }
        if (iAdSailAd.getInteractionType() != 0 || iAdSailAd.getAdSlot().getdUrl() == null || iAdSailAd.getAdSlot().getdUrl().length <= 0) {
            return;
        }
        if (iAdSailAd.getInteractionListener() instanceof ShareInteractionListener) {
            try {
                Class<? extends Activity> clsWebViewActivity = AdSdk.adConfig().webViewActivity();
                if (clsWebViewActivity == null) {
                    clsWebViewActivity = HRWebviewActivity.class;
                }
                clsWebViewActivity.getDeclaredMethod("setShareListener", ShareInteractionListener.class).invoke(null, (ShareInteractionListener) iAdSailAd.getInteractionListener());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        c cVar = c.c;
        String strReplaceOtherMacros = replaceOtherMacros(iAdSailAd.getAdSlot().getdUrl()[0], iAdSailAd);
        cVar.getClass();
        Uri uri2 = Uri.parse(strReplaceOtherMacros);
        if (uri2.getScheme() == null) {
            LogUtil.e(cVar.a, "uri scheme error");
            return;
        }
        Iterator<b> it = cVar.b.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().a(context, uri2, adSlot)) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (z) {
            return;
        }
        LogUtil.e(cVar.a, "uri cannot process: " + strReplaceOtherMacros);
    }

    private static boolean isInstall(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    private static boolean isInternetConnected(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSelfBackground(Context context) {
        String packageName = context.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return false;
            }
        }
        return true;
    }

    private static boolean isWifiConnected(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI");
    }

    private static boolean openDeepLink(Context context, AdSlot adSlot, IAdSailAd iAdSailAd, Intent intent) {
        String[] dp_start = adSlot.getDp_start();
        if (dp_start != null) {
            LogUtil.d(TAG, "send dp_start");
            for (String str : dp_start) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(context, replaceMacros(str, iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        try {
            context.startActivity(intent);
            new Thread(new a(context, adSlot, iAdSailAd)).start();
            return true;
        } catch (Exception e) {
            String[] dp_fail = adSlot.getDp_fail();
            if (dp_fail != null) {
                LogUtil.d(TAG, "send dp_fail");
                for (String str2 : dp_fail) {
                    if (!TextUtils.isEmpty(str2)) {
                        HttpUtil.asyncGetWithWebViewUA(context, replaceMacros(str2, iAdSailAd), new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            e.printStackTrace();
            return false;
        }
    }

    public static String replaceMacros(@NonNull String str, IAdSailAd iAdSailAd) {
        AdSlot adSlot = iAdSailAd.getAdSlot();
        String strReplaceOtherMacros = replaceOtherMacros(str, iAdSailAd);
        String[] strArr = {"__CLICK_ID__"};
        String[] strArr2 = new String[1];
        strArr2[0] = TextUtils.isEmpty(adSlot.getClickid()) ? "__CLICK_ID__" : adSlot.getClickid();
        return TextUtils.replace(strReplaceOtherMacros, strArr, strArr2).toString();
    }

    public static String replaceOtherMacros(@NonNull String str, IAd iAd) {
        TouchPositionListener.TouchPosition touchPosition = iAd.getTouchData().getTouchPosition();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String[] strArr = {"__DOWN_X__", "__DOWN_Y__", "__UP_X__", "__UP_Y__", "__MS_EVENT_SEC__", "__MS_EVENT_MSEC__"};
        String[] strArr2 = new String[6];
        int upY = com.anythink.expressad.video.bt.a.c.a;
        strArr2[0] = String.valueOf((touchPosition == null || touchPosition.getDownX() == 0) ? com.anythink.expressad.video.bt.a.c.a : touchPosition.getDownX());
        strArr2[1] = String.valueOf((touchPosition == null || touchPosition.getDownY() == 0) ? com.anythink.expressad.video.bt.a.c.a : touchPosition.getDownY());
        strArr2[2] = String.valueOf((touchPosition == null || touchPosition.getUpX() == 0) ? com.anythink.expressad.video.bt.a.c.a : touchPosition.getUpX());
        if (touchPosition != null && touchPosition.getUpY() != 0) {
            upY = touchPosition.getUpY();
        }
        strArr2[3] = String.valueOf(upY);
        strArr2[4] = String.valueOf((touchPosition == null || touchPosition.getTouchTime() == null) ? jCurrentTimeMillis / 1000 : touchPosition.getTouchTime().getTime() / 1000);
        if (touchPosition != null && touchPosition.getTouchTime() != null) {
            jCurrentTimeMillis = touchPosition.getTouchTime().getTime();
        }
        strArr2[5] = String.valueOf(jCurrentTimeMillis);
        return TextUtils.replace(str, strArr, strArr2).toString();
    }

    public static void setShowDialogActivity(Activity activity) {
        activitySoftReference = new SoftReference<>(activity);
    }
}
