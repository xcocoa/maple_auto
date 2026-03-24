package cn.haorui.sdk.adsail_ad;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.utils.ClickHandler;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.hr.IAdSailAd;

/* JADX INFO: loaded from: classes.dex */
public class NativeDownloadListenerImpl implements NativeDownloadListener {
    private static final String TAG = "NativeDownloadListenerI";
    private IAdSailAd nativeAd;

    public NativeDownloadListenerImpl(@NonNull IAdSailAd iAdSailAd) {
        this.nativeAd = iAdSailAd;
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onDownloadFailed() {
        LogUtil.d(TAG, "onDownloadFailed: 下载失败");
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onDownloadStart() {
        String[] dn_start = this.nativeAd.getAdSlot().getDn_start();
        if (dn_start != null) {
            LogUtil.d(TAG, "send dn_start");
            for (String str : dn_start) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.nativeAd.getAdView().getContext(), ClickHandler.replaceMacros(str, this.nativeAd), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        LogUtil.d(TAG, "onDownloaded: 下载开始");
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onDownloaded() {
        String[] dn_succ = this.nativeAd.getAdSlot().getDn_succ();
        if (dn_succ != null) {
            LogUtil.d(TAG, "send dn_succ");
            for (String str : dn_succ) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.nativeAd.getAdView().getContext(), ClickHandler.replaceMacros(str, this.nativeAd), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        LogUtil.d(TAG, "onDownloaded: 下载完成");
    }

    @Override // cn.haorui.sdk.adsail_ad.NativeDownloadListener
    public void onInstallStart() {
        String[] dn_inst_start = this.nativeAd.getAdSlot().getDn_inst_start();
        if (dn_inst_start != null) {
            LogUtil.d(TAG, "send dn_inst_start");
            for (String str : dn_inst_start) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.nativeAd.getAdView().getContext(), ClickHandler.replaceMacros(str, this.nativeAd), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        LogUtil.d(TAG, "onInstallStart: 开始安装");
    }
}
