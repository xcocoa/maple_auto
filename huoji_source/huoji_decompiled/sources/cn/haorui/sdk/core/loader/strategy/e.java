package cn.haorui.sdk.core.loader.strategy;

import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.cache.CacheManager;

/* JADX INFO: loaded from: classes.dex */
public class e implements Runnable {
    public final /* synthetic */ c a;

    public e(c cVar) {
        this.a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.b.getCache() > 0) {
            String cacheKey = this.a.b.getCacheKey();
            if (this.a.n.size() > 0) {
                for (int i = 0; i < this.a.n.size(); i++) {
                    if (i != 0 || this.a.o) {
                        cn.haorui.sdk.core.loader.loadbean.a aVar = this.a.n.get(i);
                        if (aVar.g) {
                            this.a.i.cacheApi();
                        } else {
                            c cVar = this.a;
                            cVar.getClass();
                            SdkAdInfo sdkAdInfo = aVar.a;
                            cn.haorui.sdk.core.loader.cache.a aVar2 = new cn.haorui.sdk.core.loader.cache.a();
                            aVar2.d = aVar.b;
                            aVar2.h = cVar.b;
                            sdkAdInfo.setCache(true);
                            aVar2.b = sdkAdInfo;
                            aVar2.a = cVar.b.getCacheKey();
                            aVar2.c = aVar.a();
                            cVar.c.add(aVar2);
                        }
                    }
                }
            }
            CacheManager cacheManager = CacheManager.INSTANCE;
            c cVar2 = this.a;
            cacheManager.handleCurrentList(cacheKey, cVar2.c, cVar2.b.getCache());
        }
    }
}
