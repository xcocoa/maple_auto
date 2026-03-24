package cn.haorui.sdk.core.loader;

import cn.haorui.sdk.core.loader.IAdLoadListener;
import cn.haorui.sdk.core.loader.concurrent.ConCurrentManager;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.platform.hr.HRAdLoader;

/* JADX INFO: loaded from: classes.dex */
public class a<T, K extends IAdLoadListener<T>> implements IAdLoadListener<T> {
    private static final String TAG = "AdLoadListenerProxy";
    public K listener;
    public d loader;

    public a(d dVar, K k) {
        this.loader = dVar;
        this.listener = k;
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
        IAdLoadListener loaderListener;
        LogUtil.d(TAG, "send onAdClosed");
        if (this.loader.getCacheAdListener() != null) {
            ConCurrentManager.a aVar = (ConCurrentManager.a) this.loader.getCacheAdListener();
            if (ConCurrentManager.this.adLoader.getLoaderListener() == null) {
                return;
            } else {
                loaderListener = ConCurrentManager.this.adLoader.getLoaderListener();
            }
        } else {
            loaderListener = this.listener;
            if (loaderListener == null) {
                return;
            }
        }
        loaderListener.onAdClosed();
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdError() {
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
        IAdLoadListener loaderListener;
        LogUtil.d(TAG, "send onAdExposure");
        d dVar = this.loader;
        if (!(dVar instanceof HRAdLoader)) {
            HttpUtil.asyncGetWithWebViewUA(dVar.getContext(), MacroUtil.replaceExposureMacros(this.loader.getSdkAdInfo().getImp()), new DefaultHttpGetWithNoHandlerCallback());
        }
        if (this.loader.getCacheAdListener() != null) {
            ConCurrentManager.a aVar = (ConCurrentManager.a) this.loader.getCacheAdListener();
            if (ConCurrentManager.this.adLoader.getLoaderListener() == null) {
                return;
            } else {
                loaderListener = ConCurrentManager.this.adLoader.getLoaderListener();
            }
        } else {
            loaderListener = this.listener;
            if (loaderListener == null) {
                return;
            }
        }
        loaderListener.onAdExposure();
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdLoaded(T t) {
        if (this.loader.getConCurrentListener() != null) {
            this.loader.getConCurrentListener().onAdLoaded(t, this.loader.getTag());
        }
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
        LogUtil.d(TAG, "send onAdPlatformError");
        K k = this.listener;
        if (k != null) {
            k.onAdPlatformError(adPlatformError);
        }
        if (this.loader.getConCurrentListener() != null) {
            this.loader.getConCurrentListener().onAdError(adPlatformError, this.loader.getTag());
        }
        if (this.loader.getCacheAdListener() != null) {
            cn.haorui.sdk.core.loader.cache.c cacheAdListener = this.loader.getCacheAdListener();
            String message = adPlatformError.getMessage();
            int iIntValue = adPlatformError.getCode().intValue();
            long loadedTime = this.loader.getSdkAdInfo().getLoadedTime();
            ConCurrentManager.a aVar = (ConCurrentManager.a) cacheAdListener;
            aVar.getClass();
            LogUtil.e("ConCurrentManager", "onAdRenderFail");
            cn.haorui.sdk.core.loader.cache.a aVar2 = aVar.a;
            if ((aVar2.e ? aVar2.f : aVar2.b.getLoadedTime()) != loadedTime || ConCurrentManager.this.adLoader.getLoaderListener() == null) {
                return;
            }
            ConCurrentManager.this.adLoader.getLoaderListener().onAdRenderFail(message, iIntValue);
        }
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdReady(T t) {
        if (this.loader.getConCurrentListener() != null) {
            this.loader.getConCurrentListener().onRenderSuccess(t, this.loader.getTag());
        }
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i) {
        if (this.loader.getConCurrentListener() != null) {
            this.loader.getConCurrentListener().onRenderFail(str, i, this.loader.getTag());
        }
    }
}
