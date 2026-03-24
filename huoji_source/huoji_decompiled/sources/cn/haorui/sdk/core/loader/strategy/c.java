package cn.haorui.sdk.core.loader.strategy;

import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LocalThreadPools;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.core.utils.SdkHandler;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c implements cn.haorui.sdk.core.loader.strategy.a {
    public cn.haorui.sdk.core.loader.b a;
    public HRAdInfo b;
    public List<List<cn.haorui.sdk.core.loader.loadbean.a>> e;
    public List<cn.haorui.sdk.core.loader.loadbean.a> f;
    public Map<String, Object> g;
    public boolean h;
    public cn.haorui.sdk.core.loader.concurrent.a i;
    public long k;
    public List<cn.haorui.sdk.core.loader.loadbean.a> n;
    public boolean o;
    public long p;
    public ArrayList<cn.haorui.sdk.core.loader.d> q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public List<cn.haorui.sdk.core.loader.cache.a> c = new LinkedList();
    public volatile int d = 0;
    public Handler j = new Handler();
    public List<cn.haorui.sdk.core.loader.loadbean.a> l = new ArrayList();
    public List<cn.haorui.sdk.core.loader.loadbean.a> m = new ArrayList();

    public class a implements IConCurrentLoadListener {
        public final /* synthetic */ cn.haorui.sdk.core.loader.d a;
        public final /* synthetic */ cn.haorui.sdk.core.loader.loadbean.a b;

        public a(cn.haorui.sdk.core.loader.d dVar, cn.haorui.sdk.core.loader.loadbean.a aVar) {
            this.a = dVar;
            this.b = aVar;
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onAdError(AdPlatformError adPlatformError, int i) {
            LogUtil.e("PriceFirstStrategy", "onAdError: " + adPlatformError.getPlatform() + "  " + adPlatformError.getMessage());
            c.this.a(this.b, adPlatformError);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x016c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onAdLoaded(Object obj, int i) {
            c cVar = c.this;
            cn.haorui.sdk.core.loader.d dVar = this.a;
            cn.haorui.sdk.core.loader.loadbean.a aVar = this.b;
            cVar.getClass();
            aVar.a.setLoadedTime(SystemClock.uptimeMillis());
            aVar.a.replace();
            aVar.b = obj;
            if (!"bidding".equals(aVar.a.getOtype())) {
                if (cVar.h) {
                    if (SystemClock.uptimeMillis() - cVar.k > cVar.p) {
                        cVar.u = true;
                        aVar.d = aVar.d == 2 ? 10 : 8;
                        if (aVar.a != null) {
                            cVar.f.remove(aVar);
                            String err = aVar.a.getErr();
                            if (err.contains("__MS_ERRNO__")) {
                                String strReplace = err.replace("__MS_ERRNO__", "1025").replace("__TIMEOUT__", aVar.d + "");
                                aVar.a.setErr(strReplace);
                                if (!TextUtils.isEmpty(strReplace)) {
                                    HttpUtil.asyncGetWithWebViewUA(cVar.a.getContext().getApplicationContext(), MacroUtil.replaceExposureMacros(strReplace), new DefaultHttpGetWithNoHandlerCallback());
                                }
                            }
                        }
                    } else {
                        aVar.d = aVar.d == 2 ? 6 : 4;
                    }
                }
                if (!cVar.u) {
                    if (!cVar.h) {
                        HttpUtil.asyncGetWithWebViewUA(dVar.getContext(), MacroUtil.replaceExposureMacros(aVar.a.getRsp().replace("__TIMEOUT__", String.valueOf(aVar.d))), new DefaultHttpGetWithNoHandlerCallback());
                        cVar.f.remove(aVar);
                        cVar.l.add(aVar);
                    } else if (aVar.a != null) {
                        cVar.f.remove(aVar);
                        String err2 = aVar.a.getErr();
                        if (err2.contains("__MS_ERRNO__")) {
                            String strReplace2 = err2.replace("__MS_ERRNO__", "1025").replace("__TIMEOUT__", aVar.d + "");
                            aVar.a.setErr(strReplace2);
                            if (!TextUtils.isEmpty(strReplace2)) {
                                HttpUtil.asyncGetWithWebViewUA(cVar.a.getContext().getApplicationContext(), MacroUtil.replaceExposureMacros(strReplace2), new DefaultHttpGetWithNoHandlerCallback());
                            }
                        }
                    }
                }
                if (aVar.c == 4 && !cVar.h) {
                    synchronized (aVar) {
                        aVar.c = 2;
                    }
                    if (cVar.c(aVar)) {
                        cVar.b(aVar);
                    } else {
                        cVar.l.add(aVar);
                        cVar.f.remove(aVar);
                        if (!cVar.h) {
                            Collections.sort(cVar.l, new d(cVar));
                            cVar.g();
                        }
                    }
                }
                if (!cVar.e()) {
                    return;
                }
            } else if (cVar.a(aVar)) {
                cVar.f.remove(aVar);
                cVar.g();
                synchronized (aVar) {
                    aVar.c = 3;
                }
                if (!cVar.e()) {
                    return;
                }
            } else {
                aVar.f = aVar.e + aVar.a.getEcpm();
                if (cVar.h) {
                }
                if (!cVar.u) {
                }
                if (aVar.c == 4) {
                    synchronized (aVar) {
                    }
                }
                if (!cVar.e()) {
                }
            }
            cVar.f();
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onRenderFail(String str, int i, int i2) {
            cn.haorui.sdk.core.loader.concurrent.a aVar;
            SdkAdInfo sdkAdInfo;
            LogUtil.e("PriceFirstStrategy", "onRenderFail :" + str);
            c cVar = c.this;
            cn.haorui.sdk.core.loader.loadbean.a aVar2 = this.b;
            cVar.f.remove(aVar2);
            if (aVar2 != null && (sdkAdInfo = aVar2.a) != null) {
                String strReplace = sdkAdInfo.getErr().replace("__MS_ERRNO__", "1026").replace("__ERROR_CODE__", String.valueOf(i)).replace("__TIMEOUT__", String.valueOf(aVar2.d));
                if (!TextUtils.isEmpty(strReplace)) {
                    HttpUtil.asyncGetWithWebViewUA(cVar.a.getContext().getApplicationContext(), MacroUtil.replaceExposureMacros(strReplace), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
            if (cVar.h && cVar.n.size() > 0 && aVar2.equals(cVar.n.get(0))) {
                if ((cVar.b.getCache() <= 0 || (cVar.b.getCache() > 0 && !cVar.o)) && (aVar = cVar.i) != null) {
                    aVar.onRenderFail(str);
                }
            }
        }

        @Override // cn.haorui.sdk.core.loader.concurrent.IConCurrentLoadListener
        public void onRenderSuccess(Object obj, int i) {
            c cVar = c.this;
            cVar.m.add(this.b);
            cVar.a();
        }
    }

    public class b implements Comparator<cn.haorui.sdk.core.loader.loadbean.a> {
        public b(c cVar) {
        }

        @Override // java.util.Comparator
        public int compare(cn.haorui.sdk.core.loader.loadbean.a aVar, cn.haorui.sdk.core.loader.loadbean.a aVar2) {
            return aVar2.a() - aVar.a();
        }
    }

    /* JADX INFO: renamed from: cn.haorui.sdk.core.loader.strategy.c$c, reason: collision with other inner class name */
    public class RunnableC0009c implements Runnable {
        public RunnableC0009c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            cVar.a(cVar.e.get(cVar.d));
        }
    }

    public c(cn.haorui.sdk.core.loader.b bVar, HRAdInfo hRAdInfo) {
        new ArrayList();
        new ArrayList();
        this.n = new ArrayList();
        this.p = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
        this.q = new ArrayList<>();
        new ArrayList();
        new ArrayList();
        this.a = bVar;
        this.b = hRAdInfo;
    }

    public final void a() {
        if (!this.s && this.n.size() > 0) {
            cn.haorui.sdk.core.loader.loadbean.a aVar = this.n.get(0);
            if (this.m.contains(aVar)) {
                if ((this.b.getCache() <= 0 || (this.b.getCache() > 0 && !this.o)) && this.i != null) {
                    this.s = true;
                    LogUtil.e("PriceFirstStrategy", "回调adReady,成功的平台为：" + aVar.a.getSdk() + ", readyAd=" + aVar.b);
                    this.i.onRenderSuccess(aVar.b);
                }
            }
        }
    }

    public final void a(cn.haorui.sdk.core.loader.loadbean.a aVar, AdPlatformError adPlatformError) {
        synchronized (aVar) {
            aVar.c = 3;
        }
        aVar.a.replaceErrorPst(adPlatformError);
        this.f.remove(aVar);
        g();
        if (e()) {
            f();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(List<cn.haorui.sdk.core.loader.loadbean.a> list) {
        long j;
        long all_timeout;
        long once_timeout = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
        long jMin = 0;
        try {
            all_timeout = this.b.getAll_timeout() > 0 ? this.b.getAll_timeout() : 10000L;
        } catch (Exception e) {
            e = e;
            j = 10000;
        }
        try {
            if (this.b.getOnce_timeout() > 0) {
                once_timeout = this.b.getOnce_timeout();
            }
        } catch (Exception e2) {
            long j2 = all_timeout;
            e = e2;
            j = j2;
            e.printStackTrace();
            all_timeout = j;
        }
        try {
            long jUptimeMillis = all_timeout - (SystemClock.uptimeMillis() - this.k);
            if (jUptimeMillis > 0) {
                jMin = Math.min(jUptimeMillis, once_timeout);
            }
            this.j.postDelayed(new cn.haorui.sdk.core.loader.strategy.b(this), jMin);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        for (int i = 0; i < list.size(); i++) {
            cn.haorui.sdk.core.loader.loadbean.a aVar = list.get(i);
            SdkAdInfo sdkAdInfo = aVar.a;
            AdSdk.initSdkIfNot(this.a.getContext(), sdkAdInfo);
            cn.haorui.sdk.core.loader.d dVarCreateDelegate = this.a.createDelegate(sdkAdInfo, this.b);
            if (dVarCreateDelegate == null) {
                a(aVar, null);
            } else if (this.b.getCache() > 0 || this.l.size() <= 0) {
                boolean z = "".equals(aVar.a.getS2sb());
                if (!z) {
                    dVarCreateDelegate.setLocalParams(this.g);
                    dVarCreateDelegate.setTag(i);
                    dVarCreateDelegate.setGroupIndex(this.d);
                    dVarCreateDelegate.setConCurrentLoadListener(new a(dVarCreateDelegate, aVar));
                    sdkAdInfo.setLoadTime(SystemClock.uptimeMillis());
                    sdkAdInfo.setAlreadyLoaded(true);
                    synchronized (aVar) {
                        aVar.c = 4;
                    }
                    dVarCreateDelegate.loadAd();
                    this.q.add(dVarCreateDelegate);
                }
            } else {
                Collections.sort(this.l, new f(this));
                cn.haorui.sdk.core.loader.loadbean.a aVar2 = this.l.get(0);
                if (aVar2.e <= aVar.e && (aVar.a() == -1 || aVar2.a() < aVar.a())) {
                }
            }
        }
    }

    public final boolean a(cn.haorui.sdk.core.loader.loadbean.a aVar) {
        boolean z = false;
        try {
            SdkAdInfo sdkAdInfo = aVar.a;
            int ecpm = sdkAdInfo.getEcpm();
            if (!"bidding".equals(sdkAdInfo.getOtype())) {
                return false;
            }
            if (sdkAdInfo.getPrice() <= ecpm) {
                return false;
            }
            try {
                SdkAdInfo sdkAdInfo2 = aVar.a;
                if (sdkAdInfo2 != null && sdkAdInfo2.getErr().contains("__MS_ERRNO__")) {
                    String strReplace = aVar.a.getErr().replace("__MS_ERRNO__", "1027").replace("__ERROR_CODE__", String.valueOf(0)).replace("__TIMEOUT__", String.valueOf(aVar.d)).replace("__P__", String.valueOf(sdkAdInfo.getPrice())).replace("__S__", String.valueOf(ecpm));
                    if (!TextUtils.isEmpty(strReplace)) {
                        HttpUtil.asyncGetWithWebViewUA(this.a.getContext().getApplicationContext(), MacroUtil.replaceExposureMacros(strReplace), new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
                return true;
            } catch (Exception e) {
                e = e;
                z = true;
            }
        } catch (Exception e2) {
            e = e2;
        }
        e.printStackTrace();
        return z;
    }

    public final void b() {
        if (this.t) {
            return;
        }
        this.t = true;
        this.h = true;
        LocalThreadPools.getInstance().execute(new e(this));
    }

    public final void b(cn.haorui.sdk.core.loader.loadbean.a aVar) {
        if (this.b.getCache() <= 0 || !this.o) {
            if (!this.n.contains(aVar)) {
                this.n.add(aVar);
            }
            this.f.remove(aVar);
            this.l.remove(aVar);
            d();
            return;
        }
        if (this.n.size() >= (this.b.getCache() <= 0 ? 1 : this.b.getCache()) && !this.h) {
            this.h = true;
            b();
            return;
        }
        this.f.remove(aVar);
        this.l.remove(aVar);
        if (!this.n.contains(aVar)) {
            this.n.add(aVar);
        }
        Collections.sort(this.n, new b(this));
    }

    public final void c() {
        if (this.n.size() == 0 && this.l.size() == 0) {
            this.h = true;
            synchronized (this) {
                cn.haorui.sdk.core.loader.concurrent.a aVar = this.i;
                if (aVar != null) {
                    aVar.onAllError();
                }
            }
            return;
        }
        g();
        if (!this.h) {
            this.n.addAll(this.l);
            Collections.sort(this.n, new f(this));
        }
        d();
        b();
    }

    public final boolean c(cn.haorui.sdk.core.loader.loadbean.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f);
        arrayList.addAll(this.l);
        if (arrayList.size() <= 0) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cn.haorui.sdk.core.loader.loadbean.a aVar2 = (cn.haorui.sdk.core.loader.loadbean.a) it.next();
            if (!aVar2.equals(aVar) && aVar2.c == 2 && !this.l.contains(aVar2)) {
                this.l.add(aVar2);
                it.remove();
            }
            int i = aVar2.e;
            int i2 = aVar.e;
            if (i > i2) {
                return false;
            }
            if (i == i2 && ((!aVar2.g && "bidding".equals(aVar2.a.getOtype()) && aVar2.a() == -1) || aVar2.a() > aVar.a())) {
                return false;
            }
        }
        return true;
    }

    public final void d() {
        cn.haorui.sdk.core.loader.concurrent.a aVar;
        if (this.r) {
            return;
        }
        if (this.n.size() <= 0) {
            if (this.i != null) {
                this.r = true;
                LogUtil.e("PriceFirstStrategy", "无广告返回，onAllError");
                this.i.onAllError();
                return;
            }
            return;
        }
        cn.haorui.sdk.core.loader.loadbean.a aVar2 = this.n.get(0);
        if ((this.b.getCache() <= 0 || (this.b.getCache() > 0 && !this.o)) && (aVar = this.i) != null) {
            if (aVar2.g && !this.h) {
                if (aVar != null) {
                    this.r = true;
                    aVar.onAllError();
                    return;
                }
                return;
            }
            if (this.b.getCache() <= 0) {
                this.h = true;
            }
            this.r = true;
            LogUtil.e("PriceFirstStrategy", "回调onFinalAdLoaded,成功的平台为：" + aVar2.a.getSdk() + ", loadedAd=" + aVar2.b);
            this.i.onFinalAdLoaded(aVar2.b, aVar2.a);
            a();
        }
    }

    public final boolean e() {
        if (this.e.size() <= this.d) {
            return true;
        }
        Iterator<cn.haorui.sdk.core.loader.loadbean.a> it = this.e.get(this.d).iterator();
        while (it.hasNext()) {
            int i = it.next().c;
            if (i != 2 && i != 3) {
                return false;
            }
        }
        return true;
    }

    public final void f() {
        if (this.h) {
            return;
        }
        try {
            if (this.u) {
                c();
                return;
            }
            this.d++;
            List<List<cn.haorui.sdk.core.loader.loadbean.a>> list = this.e;
            if (list == null || list.size() <= this.d) {
                c();
            } else {
                SdkHandler.getInstance().runOnUiThread(new RunnableC0009c());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void g() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.l);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cn.haorui.sdk.core.loader.loadbean.a aVar = (cn.haorui.sdk.core.loader.loadbean.a) it.next();
            if (!this.h && c(aVar)) {
                b(aVar);
                it.remove();
            }
        }
    }
}
