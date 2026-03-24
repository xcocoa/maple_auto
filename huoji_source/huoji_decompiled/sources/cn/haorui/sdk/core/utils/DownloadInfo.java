package cn.haorui.sdk.core.utils;

import android.content.Context;
import android.text.TextUtils;
import cn.haorui.sdk.adsail_ad.NativeDownloadListener;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.platform.hr.IAdSailAd;
import com.anythink.china.common.a.a;
import java.io.File;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public class DownloadInfo implements Serializable, NativeDownloadListener {
    public static final int STATUS_COMPLETE = 2;
    public static final int STATUS_INTERRUPTED = 1;
    public static final int STATUS_NONE = 0;
    private static final String TAG = "Download.DownloadInfo";
    public String cacheFile;
    public String deeplinkUrl;
    public String displayName;
    public String downloadFile;
    public String fileName;
    public String key;
    public int notificationId;
    public String packageName;
    public String[] reportDownloadStart;
    public String[] reportDownloadSuccess;
    public String[] reportInstallStart;
    public String[] reportInstallSucc;
    public String url;
    public int retryTime = 0;
    private Context context = AdSdk.getContext();
    public boolean downloadStartReported = false;
    public boolean downloadSuccessReported = false;
    public boolean installStartReported = false;
    public boolean installSuccessReported = false;
    public boolean hasNotifiedOpen = false;

    public DownloadInfo(String str, File file, String str2, IAdSailAd iAdSailAd) {
        this.url = null;
        this.fileName = null;
        this.downloadFile = null;
        this.cacheFile = null;
        this.packageName = null;
        int i = 0;
        this.displayName = null;
        this.key = iAdSailAd.toString();
        this.packageName = iAdSailAd.getAdSlot().getPackageName();
        this.url = str;
        this.displayName = str2;
        this.fileName = makeFileName(str);
        this.cacheFile = new File(file, this.fileName + ".TempFile").getAbsolutePath();
        this.downloadFile = new File(file, this.fileName).getAbsolutePath();
        String[] dn_start = iAdSailAd.getAdSlot().getDn_start();
        this.reportDownloadStart = dn_start;
        if (dn_start != null) {
            int i2 = 0;
            while (true) {
                String[] strArr = this.reportDownloadStart;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = ClickHandler.replaceMacros(strArr[i2], iAdSailAd);
                i2++;
            }
        }
        String[] dn_succ = iAdSailAd.getAdSlot().getDn_succ();
        this.reportDownloadSuccess = dn_succ;
        if (dn_succ != null) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.reportDownloadSuccess;
                if (i3 >= strArr2.length) {
                    break;
                }
                strArr2[i3] = ClickHandler.replaceMacros(strArr2[i3], iAdSailAd);
                i3++;
            }
        }
        String[] dn_inst_start = iAdSailAd.getAdSlot().getDn_inst_start();
        this.reportInstallStart = dn_inst_start;
        if (dn_inst_start != null) {
            int i4 = 0;
            while (true) {
                String[] strArr3 = this.reportInstallStart;
                if (i4 >= strArr3.length) {
                    break;
                }
                strArr3[i4] = ClickHandler.replaceMacros(strArr3[i4], iAdSailAd);
                i4++;
            }
        }
        String[] dn_inst_succ = iAdSailAd.getAdSlot().getDn_inst_succ();
        this.reportInstallSucc = dn_inst_succ;
        if (dn_inst_succ != null) {
            while (true) {
                String[] strArr4 = this.reportInstallSucc;
                if (i >= strArr4.length) {
                    break;
                }
                strArr4[i] = ClickHandler.replaceMacros(strArr4[i], iAdSailAd);
                i++;
            }
        }
        this.deeplinkUrl = iAdSailAd.getAdSlot().getDeep_link();
    }

    private static final String makeFileName(String str) {
        try {
            return StringUtils.byte2hex(MessageDigest.getInstance("MD5").digest(str.getBytes())).toLowerCase() + a.g;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "tempName.apk";
        }
    }

    public int downloadStatus() {
        if (new File(this.downloadFile).exists()) {
            return 2;
        }
        return new File(this.cacheFile).exists() ? 1 : 0;
    }

    public String getDisplayName() {
        String str = this.displayName;
        return str == null ? "" : str;
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onDownloadFailed() {
        LogUtil.d(TAG, "onDownloadFailed: 下载失败");
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onDownloadStart() {
        String str;
        if (this.downloadStartReported) {
            str = "Report dn_start reported abandon(reported)";
        } else {
            this.downloadStartReported = true;
            String[] strArr = this.reportDownloadStart;
            if (strArr != null) {
                LogUtil.d(TAG, "Report send dn_start");
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2)) {
                        HttpUtil.asyncGetWithWebViewUA(this.context, str2, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            str = "onDownloaded: 下载开始";
        }
        LogUtil.d(TAG, str);
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onDownloaded() {
        String str;
        if (this.downloadSuccessReported) {
            str = "Report dn_succ reported abandon(reported)";
        } else {
            this.downloadSuccessReported = true;
            String[] strArr = this.reportDownloadSuccess;
            if (strArr != null) {
                LogUtil.d(TAG, "Report send dn_succ");
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2)) {
                        HttpUtil.asyncGetWithWebViewUA(this.context, str2, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            str = "onDownloaded: 下载完成";
        }
        LogUtil.d(TAG, str);
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onInstallStart() {
        String str;
        if (this.installStartReported) {
            str = "Report dn_inst_start abandon(reported)";
        } else {
            this.installStartReported = true;
            String[] strArr = this.reportInstallStart;
            if (strArr != null) {
                LogUtil.d(TAG, "Report send dn_inst_start");
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2)) {
                        HttpUtil.asyncGetWithWebViewUA(this.context, str2, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            str = "onInstallStart: 开始安装";
        }
        LogUtil.d(TAG, str);
    }

    public void onInstallSucc() {
        String str;
        if (this.installSuccessReported) {
            str = "Report dn_inst_succ abandon(reported)";
        } else {
            this.installSuccessReported = true;
            String[] strArr = this.reportInstallSucc;
            if (strArr != null) {
                LogUtil.d(TAG, "Report send dn_inst_succ");
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2)) {
                        HttpUtil.asyncGetWithWebViewUA(this.context, str2, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
            str = "onInstallStart: 安装成功";
        }
        LogUtil.d(TAG, str);
    }

    public String toString() {
        return String.format("DownloadInfo: DisplayName: %s\r\nUrl: %s\r\nDownloadFile:%s", this.displayName, this.url, this.downloadFile);
    }
}
