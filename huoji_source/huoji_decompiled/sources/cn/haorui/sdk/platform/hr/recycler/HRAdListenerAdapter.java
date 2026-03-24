package cn.haorui.sdk.platform.hr.recycler;

import android.text.TextUtils;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdData;
import cn.haorui.sdk.core.ad.prerender.PreRenderAdLoader;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdLoader;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.platform.hr.HRPlatformError;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRAdListenerAdapter implements INativeAdListener {
    private static final String TAG = "AdSailAdListenerAdapter";
    private HRHRAdNativeWrapper adWrapper;
    private RecyclerAdListener apiAdListener;
    private volatile boolean hasExposed;

    public HRAdListenerAdapter(HRHRAdNativeWrapper hRHRAdNativeWrapper, RecyclerAdListener recyclerAdListener) {
        this.adWrapper = hRHRAdNativeWrapper;
        this.apiAdListener = recyclerAdListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADError(String str, Integer num) {
        if (this.adWrapper.getAdSlot().getErrorUrl() != null) {
            HttpUtil.asyncGetErrorReport(this.adWrapper.getAdSlot().getErrorUrl()[0], num, str);
        }
        new HRPlatformError(str, num).post(this.apiAdListener);
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADExposure() {
        if (this.hasExposed) {
            return;
        }
        this.hasExposed = true;
        RecordUtil.saveAction(this.adWrapper.getAdSlot().getPosId(), 3);
        String[] monitorUrl = this.adWrapper.getAdSlot().getMonitorUrl();
        if (monitorUrl != null) {
            LogUtil.d(TAG, "send onADExposure");
            for (String str : monitorUrl) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.adWrapper.getContext(), MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        RecyclerAdListener recyclerAdListener = this.apiAdListener;
        if (recyclerAdListener != null) {
            recyclerAdListener.onAdExposure();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADLoaded(List<NativeAdData> list) {
        if (this.apiAdListener == null || list == null) {
            return;
        }
        int drawing = this.adWrapper.getAdSlot().getDrawing();
        boolean z = false;
        if (!(this.adWrapper.getAdLoader() instanceof RecyclerMixAdLoader) ? (this.adWrapper.getAdLoader() instanceof PreRenderAdLoader) : drawing != 1) {
            z = true;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAdData nativeAdData : list) {
            arrayList.add(z ? new HRPreRenderAdapter(this.adWrapper, nativeAdData) : new HRRecyclerAdDataAdapter(this.adWrapper, nativeAdData));
        }
        this.apiAdListener.onAdReady(arrayList);
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onAdRenderFail(String str, int i) {
        if (this.adWrapper.getAdSlot().getErrorUrl() != null) {
            HttpUtil.asyncGetErrorReport(this.adWrapper.getAdSlot().getErrorUrl()[0], Integer.valueOf(i), str);
        }
        RecyclerAdListener recyclerAdListener = this.apiAdListener;
        if (recyclerAdListener != null) {
            recyclerAdListener.onAdPlatformError(new HRPlatformError(str, Integer.valueOf(i)));
            this.apiAdListener.onAdRenderFail(str, i);
        }
    }
}
