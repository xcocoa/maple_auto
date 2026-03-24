package cn.haorui.sdk.core.loader.concurrent;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.ad.splash.SplashAd;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.domain.SdkMonitor;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.cache.CacheManager;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ConCurrentManager implements cn.haorui.sdk.core.loader.concurrent.a {
    private static final String TAG = "ConCurrentManager";
    private HRAdInfo HRAdInfo;
    private cn.haorui.sdk.core.loader.d adDelegate;
    private cn.haorui.sdk.core.loader.b adLoader;
    private Context context;
    private List<List<cn.haorui.sdk.core.loader.loadbean.a>> groupList;
    private boolean isAdError;
    private boolean isAdFinished;
    private boolean loadCacheSuccess;
    private cn.haorui.sdk.core.loader.strategy.a loadStrategy;
    private Map<String, Object> localParams;
    private long startTime;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private List<cn.haorui.sdk.core.loader.cache.a> cacheList = new LinkedList();
    private List<cn.haorui.sdk.core.loader.loadbean.a> allList = new ArrayList();

    public class a implements cn.haorui.sdk.core.loader.cache.c {
        public final /* synthetic */ cn.haorui.sdk.core.loader.cache.a a;

        public a(cn.haorui.sdk.core.loader.cache.a aVar) {
            this.a = aVar;
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ Object a;

        public b(Object obj) {
            this.a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConCurrentManager.this.handleSplashAd(this.a);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ Object a;

        public c(Object obj) {
            this.a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConCurrentManager.this.handleSplashAd(this.a);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConCurrentManager.this.handleLoadMeshu(true);
        }
    }

    public class e implements IConCurrentLoadListener {
        public final /* synthetic */ boolean a;

        public e(boolean z) {
            this.a = z;
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onAdError(AdPlatformError adPlatformError, int i) {
            if (this.a || ConCurrentManager.this.adLoader.getLoaderListener() == null) {
                return;
            }
            LogUtil.e(ConCurrentManager.TAG, "AdSail___onAdError");
            ConCurrentManager.this.adLoader.getLoaderListener().onAdError();
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onAdLoaded(Object obj, int i) {
            if (this.a || ConCurrentManager.this.adLoader.getLoaderListener() == null) {
                return;
            }
            ConCurrentManager.this.adLoader.getLoaderListener().onAdLoaded(obj);
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onRenderFail(String str, int i, int i2) {
            if (this.a || ConCurrentManager.this.adLoader.getLoaderListener() == null) {
                return;
            }
            ConCurrentManager.this.adLoader.getLoaderListener().onAdRenderFail(str, i);
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onRenderSuccess(Object obj, int i) {
            if (!this.a) {
                if (ConCurrentManager.this.loadCacheSuccess) {
                    return;
                }
                ConCurrentManager.this.loadCacheSuccess = true;
                if (ConCurrentManager.this.loadStrategy != null) {
                    ((cn.haorui.sdk.core.loader.strategy.c) ConCurrentManager.this.loadStrategy).o = true;
                }
                if (ConCurrentManager.this.adLoader.getLoaderListener() != null) {
                    ConCurrentManager.this.adLoader.getLoaderListener().onAdReady(obj);
                }
                ConCurrentManager.this.handleSplashAd(obj);
                return;
            }
            String cacheKey = ConCurrentManager.this.HRAdInfo.getCacheKey();
            ConCurrentManager.this.cacheList.clear();
            cn.haorui.sdk.core.loader.cache.a aVar = new cn.haorui.sdk.core.loader.cache.a();
            aVar.h = ConCurrentManager.this.HRAdInfo;
            aVar.d = obj;
            aVar.a = cacheKey;
            aVar.e = true;
            aVar.f = ConCurrentManager.this.HRAdInfo.getLoadedTime();
            aVar.g = ConCurrentManager.this.HRAdInfo.getExpire_timestamp();
            SdkAdInfo sdkAdInfo = new SdkAdInfo();
            sdkAdInfo.setSdk(HRConstants.PLATFORM_HR);
            aVar.b = sdkAdInfo;
            aVar.c = ConCurrentManager.this.HRAdInfo.getCacheScore();
            ConCurrentManager.this.cacheList.add(aVar);
            CacheManager.INSTANCE.handleCurrentList(cacheKey, ConCurrentManager.this.cacheList, ConCurrentManager.this.HRAdInfo.getCache());
        }
    }

    public ConCurrentManager(Context context, cn.haorui.sdk.core.loader.b bVar, HRAdInfo hRAdInfo, Map<String, Object> map) {
        this.context = context;
        this.HRAdInfo = hRAdInfo;
        this.localParams = map;
        this.adLoader = bVar;
    }

    private int generateRandom8Num() {
        return (int) (((Math.random() * 9.0d) + 1.0d) * 1.0E7d);
    }

    private List<cn.haorui.sdk.core.loader.loadbean.a> getCacheList() {
        List<WeakReference<cn.haorui.sdk.core.loader.cache.a>> cacheListByKey;
        ArrayList arrayList = new ArrayList();
        try {
            String cacheKey = this.HRAdInfo.getCacheKey();
            if (this.HRAdInfo.getCache() > 0 && (cacheListByKey = CacheManager.INSTANCE.getCacheListByKey(cacheKey)) != null && cacheListByKey.size() > 0) {
                Iterator<WeakReference<cn.haorui.sdk.core.loader.cache.a>> it = cacheListByKey.iterator();
                while (it.hasNext()) {
                    cn.haorui.sdk.core.loader.cache.a aVar = it.next().get();
                    if (aVar.a()) {
                        cn.haorui.sdk.core.loader.loadbean.a aVar2 = new cn.haorui.sdk.core.loader.loadbean.a();
                        aVar2.a = aVar.b;
                        aVar2.b = aVar.d;
                        aVar2.f = aVar.c;
                        synchronized (aVar2) {
                            aVar2.c = 2;
                        }
                        aVar2.g = aVar.e;
                        aVar2.h = true;
                        arrayList.add(aVar2);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    private List<List<cn.haorui.sdk.core.loader.loadbean.a>> getGroupList(SdkAdInfo[] sdkAdInfoArr, HRAdInfo hRAdInfo) {
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listAsList = Arrays.asList(sdkAdInfoArr);
        SdkMonitor sdk_monitor = hRAdInfo.getSdk_monitor();
        for (int i = 0; i < listAsList.size(); i++) {
            SdkAdInfo sdkAdInfo = (SdkAdInfo) listAsList.get(i);
            sdkAdInfo.setReq_uid(generateRandom8Num());
            if (sdk_monitor != null) {
                restoreMonitor(sdkAdInfo, sdk_monitor);
            }
            sdkAdInfo.setCache_req(sdkAdInfo.getReq());
            sdkAdInfo.setCache_clk(sdkAdInfo.getClk());
            sdkAdInfo.setCache_err(sdkAdInfo.getErr());
            sdkAdInfo.setCache_imp(sdkAdInfo.getImp());
            sdkAdInfo.setCache_rsp(sdkAdInfo.getRsp());
            replaceUUid(sdkAdInfo);
            sdkAdInfo.setFinalRsp(sdkAdInfo.getRsp());
            cn.haorui.sdk.core.loader.loadbean.a aVar = new cn.haorui.sdk.core.loader.loadbean.a();
            aVar.a = sdkAdInfo;
            aVar.e = (1000 - sdkAdInfo.getPriority()) * 1000000;
            this.allList.add(aVar);
            String group = sdkAdInfo.getGroup();
            if (TextUtils.isEmpty(group)) {
                group = "null_" + i;
            }
            if (linkedHashMap.containsKey(group)) {
                ((List) linkedHashMap.get(group)).add(aVar);
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(aVar);
                linkedHashMap.put(group, arrayList2);
            }
        }
        if (linkedHashMap.size() > 0) {
            arrayList.addAll(linkedHashMap.values());
        }
        return arrayList;
    }

    private boolean handleCache(SdkAdInfo[] sdkAdInfoArr, HRAdInfo hRAdInfo) {
        String cacheKey = hRAdInfo.getCacheKey();
        if (hRAdInfo.getCache() > 0) {
            CacheManager cacheManager = CacheManager.INSTANCE;
            if (cacheManager.getFirstEntity(cacheKey) != null) {
                cacheManager.getFirstEntity(cacheKey);
            }
            while (true) {
                CacheManager cacheManager2 = CacheManager.INSTANCE;
                if (cacheManager2.getCacheListByKey(cacheKey) == null || cacheManager2.getCacheListByKey(cacheKey).size() <= 0) {
                    break;
                }
                cn.haorui.sdk.core.loader.cache.a firstEntity = cacheManager2.getFirstEntity(cacheKey);
                if (firstEntity != null && firstEntity.a()) {
                    if (this.adDelegate != null && firstEntity.c <= hRAdInfo.getCacheScore()) {
                        this.isAdFinished = true;
                        hRAdInfo.setUsed(true);
                        handleLoadMeshu(false);
                        return true;
                    }
                    cacheManager2.removeFirstEntity(cacheKey);
                    loadCacheSuccess(firstEntity);
                    if (sdkAdInfoArr == null) {
                        handleLoadMeshu(true);
                        return true;
                    }
                }
            }
        } else {
            CacheManager.INSTANCE.remove(cacheKey);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLoadMeshu(boolean z) {
        if (this.adDelegate == null) {
            if (this.adLoader.getLoaderListener() == null || z || this.isAdError) {
                return;
            }
            this.isAdError = true;
            LogUtil.e(TAG, "no HR ad,load error");
            this.adLoader.getLoaderListener().onAdError();
            return;
        }
        String[] responUrl = this.HRAdInfo.getResponUrl();
        if (!z && responUrl != null && responUrl.length > 0) {
            LogUtil.d(TAG, "send onAdLoaded");
            for (String str : responUrl) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.context, MacroUtil.replaceExposureMacros(MacroUtil.replaceFinalLoadedMacros(str, System.currentTimeMillis() - this.adLoader.startLoadTime)), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        this.adDelegate.setLocalParams(this.localParams);
        this.adDelegate.setConCurrentLoadListener(new e(z));
        this.adDelegate.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSplashAd(Object obj) {
        if ((obj instanceof SplashAd) && ((Boolean) this.localParams.get(SplashAdLoader.KEY_AUTO_SHOW)).booleanValue()) {
            cn.haorui.sdk.core.loader.b bVar = this.adLoader;
            if (bVar instanceof SplashAdLoader) {
                ((SplashAd) obj).showAd(((SplashAdLoader) bVar).getAdContainer());
            }
        }
    }

    private void handleTimeout() {
        int fetchDelay;
        long all_timeout = this.HRAdInfo.getAll_timeout();
        cn.haorui.sdk.core.loader.b bVar = this.adLoader;
        if (!(bVar instanceof SplashAdLoader) || (fetchDelay = ((SplashAdLoader) bVar).getFetchDelay()) < 0) {
            return;
        }
        long j = fetchDelay;
        if (j < all_timeout) {
            this.HRAdInfo.setAll_timeout(j);
        }
    }

    private synchronized void loadBigGroup() {
        List<List<cn.haorui.sdk.core.loader.loadbean.a>> list = this.groupList;
        if (list != null && list.size() != 0) {
            cn.haorui.sdk.core.loader.strategy.c cVar = new cn.haorui.sdk.core.loader.strategy.c(this.adLoader, this.HRAdInfo);
            this.loadStrategy = cVar;
            if (this.loadCacheSuccess) {
                cVar.o = true;
            }
            cVar.i = this;
            List<List<cn.haorui.sdk.core.loader.loadbean.a>> list2 = this.groupList;
            List<cn.haorui.sdk.core.loader.loadbean.a> list3 = this.allList;
            Map<String, Object> map = this.localParams;
            long j = this.startTime;
            cVar.f = list3;
            cVar.g = map;
            cVar.e = list2;
            cVar.c.clear();
            cVar.d = 0;
            if (list2 != null && list2.size() != 0) {
                if (cVar.b.isHasAdSailAd() && !cVar.b.isUsed()) {
                    cn.haorui.sdk.core.loader.loadbean.a aVar = new cn.haorui.sdk.core.loader.loadbean.a();
                    aVar.e = (1000 - cVar.b.getPriority()) * 1000000;
                    aVar.f = cVar.b.getCacheScore();
                    synchronized (aVar) {
                        aVar.c = 2;
                    }
                    aVar.g = true;
                    cVar.f.add(aVar);
                }
                List<cn.haorui.sdk.core.loader.loadbean.a> list4 = list2.get(cVar.d);
                cVar.k = j;
                HRAdInfo hRAdInfo = cVar.b;
                if (hRAdInfo != null) {
                    cVar.p = hRAdInfo.getAll_timeout() <= 0 ? UMAmapConfig.AMAP_CACHE_WRITE_TIME : cVar.b.getAll_timeout();
                }
                cVar.a(list4);
            }
        }
    }

    private void loadCacheSuccess(cn.haorui.sdk.core.loader.cache.a aVar) {
        String strReplaceExposureMacros;
        DefaultHttpGetWithNoHandlerCallback defaultHttpGetWithNoHandlerCallback;
        String strReplaceExposureMacros2;
        DefaultHttpGetWithNoHandlerCallback defaultHttpGetWithNoHandlerCallback2;
        String cache_imp;
        HRAdInfo hRAdInfo;
        String cache_clk;
        HRAdInfo hRAdInfo2;
        String cache_err;
        HRAdInfo hRAdInfo3;
        this.isAdFinished = true;
        this.loadCacheSuccess = true;
        Object obj = aVar.d;
        cn.haorui.sdk.core.loader.cache.b bVar = new cn.haorui.sdk.core.loader.cache.b();
        Context context = this.context;
        String req_id = this.HRAdInfo.getReq_id();
        long j = this.adLoader.startLoadTime;
        SdkMonitor sdk_monitor = this.HRAdInfo.getSdk_monitor();
        try {
            if (aVar.e) {
                String[] responUrl = aVar.h.getResponUrl();
                if (responUrl != null && responUrl.length > 0) {
                    for (String str : responUrl) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(context, MacroUtil.replaceExposureMacros(MacroUtil.replaceFinalLoadedMacros(MacroUtil.replaceUUIDMacros(str, req_id, aVar.h.getReq_id()), System.currentTimeMillis() - j)), new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
                bVar.a(aVar.h.getMonitorUrl(), req_id, aVar.h);
                bVar.a(aVar.h.getClickUrl(), req_id, aVar.h);
                bVar.a(aVar.h.getDn_active(), req_id, aVar.h);
                bVar.a(aVar.h.getDn_inst_start(), req_id, aVar.h);
                bVar.a(aVar.h.getDn_inst_succ(), req_id, aVar.h);
                bVar.a(aVar.h.getDn_start(), req_id, aVar.h);
                bVar.a(aVar.h.getDn_succ(), req_id, aVar.h);
                bVar.a(aVar.h.getErrorUrl(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_complete(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_mute(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_one_half(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_one_quarter(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_pause(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_replay(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_resume(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_start(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_three_quarter(), req_id, aVar.h);
                bVar.a(aVar.h.getVideo_unmute(), req_id, aVar.h);
                bVar.a(aVar.h.getDp_fail(), req_id, aVar.h);
                bVar.a(aVar.h.getDp_start(), req_id, aVar.h);
                bVar.a(aVar.h.getDp_succ(), req_id, aVar.h);
                bVar.a(aVar.h.getWx_fail(), req_id, aVar.h);
                bVar.a(aVar.h.getWx_start(), req_id, aVar.h);
                bVar.a(aVar.h.getWx_succ(), req_id, aVar.h);
            } else {
                if (sdk_monitor == null || TextUtils.isEmpty(sdk_monitor.getReq())) {
                    strReplaceExposureMacros = MacroUtil.replaceExposureMacros(MacroUtil.replaceUUIDMacros(aVar.b.getCache_req(), req_id, aVar.h.getReq_id()));
                    defaultHttpGetWithNoHandlerCallback = new DefaultHttpGetWithNoHandlerCallback();
                } else {
                    strReplaceExposureMacros = MacroUtil.replaceExposureMacros(MacroUtil.replaceUUIDMacros(bVar.a(aVar.b, sdk_monitor.getReq()), req_id, aVar.h.getReq_id()));
                    defaultHttpGetWithNoHandlerCallback = new DefaultHttpGetWithNoHandlerCallback();
                }
                HttpUtil.asyncGetWithWebViewUA(context, strReplaceExposureMacros, defaultHttpGetWithNoHandlerCallback);
                if (sdk_monitor == null || TextUtils.isEmpty(sdk_monitor.getRsp())) {
                    HttpUtil.asyncGetWithWebViewUA(context, MacroUtil.replaceExposureMacros(MacroUtil.replaceUUIDMacros(aVar.b.getCache_rsp(), req_id, aVar.h.getReq_id())), new DefaultHttpGetWithNoHandlerCallback());
                    strReplaceExposureMacros2 = MacroUtil.replaceExposureMacros(MacroUtil.replaceFinalLoadedMacros(MacroUtil.replaceUUIDMacros(aVar.b.getFinalRsp(), req_id, aVar.h.getReq_id()), System.currentTimeMillis() - j));
                    defaultHttpGetWithNoHandlerCallback2 = new DefaultHttpGetWithNoHandlerCallback();
                } else {
                    String strA = bVar.a(aVar.b, sdk_monitor.getRsp().replace("__PRICE__", aVar.b.get_price()).replace("__S__", aVar.b.get_s()));
                    String strReplaceUUIDMacros = MacroUtil.replaceUUIDMacros(strA.replace("__PST__", aVar.b.get_pst()), req_id, aVar.h.getReq_id());
                    String strReplaceUUIDMacros2 = MacroUtil.replaceUUIDMacros(strA, req_id, aVar.h.getReq_id());
                    HttpUtil.asyncGetWithWebViewUA(context, MacroUtil.replaceExposureMacros(strReplaceUUIDMacros), new DefaultHttpGetWithNoHandlerCallback());
                    strReplaceExposureMacros2 = MacroUtil.replaceExposureMacros(MacroUtil.replaceFinalLoadedMacros(strReplaceUUIDMacros2, System.currentTimeMillis() - j));
                    defaultHttpGetWithNoHandlerCallback2 = new DefaultHttpGetWithNoHandlerCallback();
                }
                HttpUtil.asyncGetWithWebViewUA(context, strReplaceExposureMacros2, defaultHttpGetWithNoHandlerCallback2);
                if (sdk_monitor == null || TextUtils.isEmpty(sdk_monitor.getImp())) {
                    cache_imp = aVar.b.getCache_imp();
                    hRAdInfo = aVar.h;
                } else {
                    cache_imp = bVar.a(aVar.b, sdk_monitor.getImp()).replace("__PRICE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.b.getEcpm() * 10).getBytes(), 2)).replace("__PRE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.b.getPre() * 10).getBytes(), 2));
                    hRAdInfo = aVar.h;
                }
                aVar.b.setImp(MacroUtil.replaceUUIDMacros(cache_imp, req_id, hRAdInfo.getReq_id()));
                if (sdk_monitor == null || TextUtils.isEmpty(sdk_monitor.getClk())) {
                    cache_clk = aVar.b.getCache_clk();
                    hRAdInfo2 = aVar.h;
                } else {
                    cache_clk = bVar.a(aVar.b, MacroUtil.replaceUUIDMacros(sdk_monitor.getClk().replace("__PRICE__", aVar.b.get_price()).replace("__S__", aVar.b.get_s()).replace("__PST__", aVar.b.get_pst()).replace("__PRICE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.b.getPrice() * 10).getBytes(), 2)).replace("__PRE__", "ssp" + Base64.encodeToString(String.valueOf(aVar.b.getPre() * 10).getBytes(), 2)), req_id, aVar.h.getReq_id()));
                    hRAdInfo2 = aVar.h;
                }
                aVar.b.setClk(MacroUtil.replaceUUIDMacros(cache_clk, req_id, hRAdInfo2.getReq_id()));
                if (sdk_monitor == null || TextUtils.isEmpty(sdk_monitor.getErr())) {
                    cache_err = aVar.b.getCache_err();
                    hRAdInfo3 = aVar.h;
                } else {
                    String strReplace = sdk_monitor.getErr().replace("__PRICE__", aVar.b.get_price()).replace("__S__", aVar.b.get_s());
                    if (TextUtils.isEmpty(aVar.b.get_err_pst())) {
                        strReplace = strReplace.replace("__PST__", aVar.b.get_err_pst());
                    }
                    cache_err = bVar.a(aVar.b, strReplace);
                    hRAdInfo3 = aVar.h;
                }
                aVar.b.setErr(MacroUtil.replaceUUIDMacros(cache_err, req_id, hRAdInfo3.getReq_id()));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.adLoader.getLoaderListener() != null) {
            this.adLoader.getLoaderListener().onAdLoaded(obj);
            this.adLoader.getLoaderListener().onAdReady(obj);
            if (obj instanceof BaseAd) {
                ((BaseAd) obj).setCacheAdListener(new a(aVar));
            }
            this.mHandler.post(new b(obj));
        }
    }

    private String replaceMonitor(SdkAdInfo sdkAdInfo, String str) {
        String[] strArr = {"__ACCEPT_ID__", "__STRATEGY_DEALID__", "__ACCEPT_APPID__", "__ACCEPT_PID__", "__SDK__", "__GROUP_ID__", "__P__"};
        String[] strArr2 = new String[7];
        strArr2[0] = sdkAdInfo.getAccept_id() == null ? "" : sdkAdInfo.getAccept_id();
        strArr2[1] = sdkAdInfo.getStrategy_dealid() == null ? "" : sdkAdInfo.getStrategy_dealid();
        strArr2[2] = sdkAdInfo.getApp_id() == null ? "" : sdkAdInfo.getApp_id();
        strArr2[3] = sdkAdInfo.getPid() == null ? "" : sdkAdInfo.getPid();
        strArr2[4] = sdkAdInfo.getSdk() == null ? "" : sdkAdInfo.getSdk();
        strArr2[5] = sdkAdInfo.getGroup_id() != null ? sdkAdInfo.getGroup_id() : "";
        strArr2[6] = String.valueOf(sdkAdInfo.getPrice());
        return TextUtils.replace(str, strArr, strArr2).toString();
    }

    private void replaceUUid(SdkAdInfo sdkAdInfo) {
        sdkAdInfo.setReq(sdkAdInfo.getReq().replace("__UUID__", this.HRAdInfo.getReq_id()));
        sdkAdInfo.setRsp(sdkAdInfo.getRsp().replace("__UUID__", this.HRAdInfo.getReq_id()));
        sdkAdInfo.setClk(sdkAdInfo.getClk().replace("__UUID__", this.HRAdInfo.getReq_id()));
        sdkAdInfo.setErr(sdkAdInfo.getErr().replace("__UUID__", this.HRAdInfo.getReq_id()));
        sdkAdInfo.setImp(sdkAdInfo.getImp().replace("__UUID__", this.HRAdInfo.getReq_id()));
    }

    private void restoreMonitor(SdkAdInfo sdkAdInfo, SdkMonitor sdkMonitor) {
        if (sdkAdInfo == null || sdkMonitor == null) {
            return;
        }
        try {
            sdkAdInfo.getAccept_id();
            sdkAdInfo.getStrategy_dealid();
            String clk = sdkMonitor.getClk();
            String err = sdkMonitor.getErr();
            String imp = sdkMonitor.getImp();
            String req = sdkMonitor.getReq();
            String rsp = sdkMonitor.getRsp();
            if (imp.contains("__PRE__")) {
                imp = imp.replace("__PRE__", "ssp" + Base64.encodeToString(String.valueOf(sdkAdInfo.getPre() * 10).getBytes(), 2));
            }
            if (imp.contains("__PRICE__")) {
                imp = imp.replace("__PRICE__", "ssp" + Base64.encodeToString(String.valueOf(sdkAdInfo.getPrice() * 10).getBytes(), 2));
            }
            sdkAdInfo.setClk(replaceMonitor(sdkAdInfo, clk));
            sdkAdInfo.setErr(replaceMonitor(sdkAdInfo, err));
            sdkAdInfo.setImp(replaceMonitor(sdkAdInfo, imp));
            sdkAdInfo.setReq(replaceMonitor(sdkAdInfo, req));
            sdkAdInfo.setRsp(replaceMonitor(sdkAdInfo, rsp));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // cn.haorui.sdk.core.loader.concurrent.a
    public void cacheApi() {
        this.mHandler.post(new d());
    }

    public void destroy() {
        cn.haorui.sdk.core.loader.strategy.a aVar = this.loadStrategy;
        if (aVar != null) {
            cn.haorui.sdk.core.loader.strategy.c cVar = (cn.haorui.sdk.core.loader.strategy.c) aVar;
            Handler handler = cVar.j;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            ArrayList<cn.haorui.sdk.core.loader.d> arrayList = cVar.q;
            if (arrayList != null && arrayList.size() > 0) {
                for (cn.haorui.sdk.core.loader.d dVar : cVar.q) {
                    if (dVar != null) {
                        dVar.destroy();
                    }
                }
                cVar.q.clear();
            }
        }
        cn.haorui.sdk.core.loader.d dVar2 = this.adDelegate;
        if (dVar2 != null) {
            dVar2.destroy();
        }
    }

    public synchronized void filterAd(SdkAdInfo[] sdkAdInfoArr, HRAdInfo hRAdInfo) {
        this.startTime = SystemClock.uptimeMillis();
        handleTimeout();
        this.groupList = getGroupList(sdkAdInfoArr, hRAdInfo);
        handleCache(sdkAdInfoArr, hRAdInfo);
        loadBigGroup();
    }

    public void loadMeshuAd() {
        if (handleCache(null, this.HRAdInfo)) {
            return;
        }
        handleLoadMeshu(false);
    }

    @Override // cn.haorui.sdk.core.loader.concurrent.a
    public void onAllError() {
        if (this.isAdFinished) {
            return;
        }
        this.isAdFinished = true;
        handleLoadMeshu(false);
    }

    @Override // cn.haorui.sdk.core.loader.concurrent.a
    public void onFinalAdLoaded(Object obj, SdkAdInfo sdkAdInfo) {
        if (this.isAdFinished) {
            return;
        }
        this.isAdFinished = true;
        HttpUtil.asyncGetWithWebViewUA(this.adLoader.getContext(), MacroUtil.replaceExposureMacros(MacroUtil.replaceFinalLoadedMacros(sdkAdInfo.getFinalRsp().replace("__TIMEOUT__", String.valueOf(0)), System.currentTimeMillis() - this.adLoader.startLoadTime)), new DefaultHttpGetWithNoHandlerCallback());
        if (this.adLoader.getLoaderListener() != null) {
            this.adLoader.getLoaderListener().onAdLoaded(obj);
        }
        if (this.loadCacheSuccess) {
            return;
        }
        this.mHandler.post(new c(obj));
    }

    @Override // cn.haorui.sdk.core.loader.concurrent.a
    public void onRenderFail(String str) {
        if (this.adLoader.getLoaderListener() == null || this.loadCacheSuccess) {
            return;
        }
        LogUtil.d(TAG, "onRenderFail");
        this.adLoader.getLoaderListener().onAdRenderFail(str, -1);
    }

    @Override // cn.haorui.sdk.core.loader.concurrent.a
    public void onRenderSuccess(Object obj) {
        if (this.adLoader.getLoaderListener() == null || this.loadCacheSuccess) {
            return;
        }
        LogUtil.d(TAG, "onAdReady");
        this.adLoader.getLoaderListener().onAdReady(obj);
    }

    public void setAdDelegate(cn.haorui.sdk.core.loader.d dVar) {
        this.adDelegate = dVar;
    }
}
