package cn.haorui.sdk.platform;

import android.content.Context;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.IAdLoadListener;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.cache.c;
import cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.core.loader.e;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasePlatformLoader<Loader extends b, LoaderListener extends IAdLoadListener> implements d<Loader> {
    public Loader adLoader;
    private c cacheAdListener;
    public IConCurrentLoadListener conCurrentListener;
    public Context context;
    private int groupIndex;
    public LoaderListener loadListener;
    public d next;
    public SdkAdInfo sdkAdInfo;
    public Map<String, Object> localParams = new HashMap();
    private int index = -1;

    public BasePlatformLoader(Loader loader, SdkAdInfo sdkAdInfo) {
        this.adLoader = loader;
        this.sdkAdInfo = sdkAdInfo;
        this.context = loader.getContext();
        this.loadListener = (LoaderListener) e.a(this, loader.getLoaderListener());
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void destroy() {
    }

    public Loader getAdLoader() {
        return this.adLoader;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public c getCacheAdListener() {
        return this.cacheAdListener;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public IConCurrentLoadListener getConCurrentListener() {
        return this.conCurrentListener;
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public Context getContext() {
        return this.context;
    }

    public int getGroupIndex() {
        return this.groupIndex;
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public LoaderListener getLoaderListener() {
        return this.loadListener;
    }

    public Map<String, Object> getLocalParams() {
        return this.localParams;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public SdkAdInfo getSdkAdInfo() {
        return this.sdkAdInfo;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public int getTag() {
        return this.index;
    }

    public d next() {
        return this.next;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public void setCacheAdListener(c cVar) {
        this.cacheAdListener = cVar;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public void setConCurrentLoadListener(IConCurrentLoadListener iConCurrentLoadListener) {
        this.conCurrentListener = iConCurrentLoadListener;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public void setGroupIndex(int i) {
        this.groupIndex = i;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public void setLocalParams(Map<String, Object> map) {
        this.localParams = map;
    }

    public void setNext(d dVar) {
        this.next = dVar;
    }

    @Override // cn.haorui.sdk.core.loader.d
    public void setTag(int i) {
        this.index = i;
    }
}
