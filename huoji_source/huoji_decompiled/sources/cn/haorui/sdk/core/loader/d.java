package cn.haorui.sdk.core.loader;

import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface d<Loader extends b> extends IAdLoader {
    cn.haorui.sdk.core.loader.cache.c getCacheAdListener();

    IConCurrentLoadListener getConCurrentListener();

    SdkAdInfo getSdkAdInfo();

    int getTag();

    void setCacheAdListener(cn.haorui.sdk.core.loader.cache.c cVar);

    void setConCurrentLoadListener(IConCurrentLoadListener iConCurrentLoadListener);

    void setGroupIndex(int i);

    void setLocalParams(Map<String, Object> map);

    void setTag(int i);
}
