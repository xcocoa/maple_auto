package com.anythink.core.common;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATSharedPlacementConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class w {
    public static final String a = "w";
    private static volatile w v;
    private volatile Handler d;
    private com.anythink.core.common.l.d e;
    private List<com.anythink.core.common.l.e> f;
    private Map<String, com.anythink.core.common.l.b> j;
    private Map<String, a> k;
    private int l;
    private ATSharedPlacementConfig m;
    private List<com.anythink.core.common.l.e> n;
    private final AtomicBoolean c = new AtomicBoolean(false);
    private final int o = 0;
    private final int p = 1;
    private final int q = 2;
    private final int r = 3;
    private int s = 0;
    private long t = -1;
    private final int u = 30000;
    private Context b = com.anythink.core.common.b.n.a().f();
    private final Map<String, com.anythink.core.common.l.e> g = new ConcurrentHashMap(5);
    private final Set<String> i = Collections.synchronizedSet(new HashSet());
    private Set<String> h = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: com.anythink.core.common.w$6, reason: invalid class name */
    public class AnonymousClass6 implements Runnable {
        public final /* synthetic */ com.anythink.core.common.l.e a;
        public final /* synthetic */ int b;
        public final /* synthetic */ com.anythink.core.common.l.b c;

        public AnonymousClass6(com.anythink.core.common.l.e eVar, int i, com.anythink.core.common.l.b bVar) {
            this.a = eVar;
            this.b = i;
            this.c = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.l.a aVar = new com.anythink.core.common.l.a(this.a, this.b);
            if (this.b == 10) {
                aVar.a();
                aVar.a(w.this.e.c());
            }
            aVar.a(new com.anythink.core.common.l.c() { // from class: com.anythink.core.common.w.6.1
                @Override // com.anythink.core.common.l.c
                public final void a(final String str, final com.anythink.core.common.l.e eVar) {
                    synchronized (w.this) {
                        w.this.c().post(new Runnable() { // from class: com.anythink.core.common.w.6.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                w.this.a(str, eVar);
                            }
                        });
                    }
                }

                @Override // com.anythink.core.common.l.c
                public final void a(final String str, final com.anythink.core.common.l.e eVar, final AdError adError) {
                    synchronized (w.this) {
                        w.this.c().post(new Runnable() { // from class: com.anythink.core.common.w.6.1.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                w.this.a(str, eVar, adError);
                            }
                        });
                    }
                }

                @Override // com.anythink.core.common.l.c
                public final void b(final String str, final com.anythink.core.common.l.e eVar) {
                    synchronized (w.this) {
                        w.this.c().post(new Runnable() { // from class: com.anythink.core.common.w.6.1.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                w.this.b(str, eVar);
                            }
                        });
                    }
                }
            });
            this.c.a(aVar);
            this.c.c();
        }
    }

    public class a implements Runnable {
        public String a;

        public a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (w.this) {
                if (w.this.c(this.a)) {
                    w.this.a((com.anythink.core.common.l.e) w.this.g.get(this.a), 11);
                }
            }
        }
    }

    private w() {
    }

    public static f a(String str, String str2) {
        return u.a().a(str, str2);
    }

    public static w a() {
        if (v == null) {
            synchronized (w.class) {
                if (v == null) {
                    v = new w();
                }
            }
        }
        return v;
    }

    private List<com.anythink.core.common.l.e> a(List<com.anythink.core.common.l.e> list) {
        ArrayList arrayList = new ArrayList(3);
        int iMin = Math.min(this.e.b(), list.size());
        for (int i = 0; i < iMin; i++) {
            arrayList.add(list.get(i));
            new StringBuilder("getNeedRequestList, ").append(list.get(i).toString());
        }
        list.removeAll(arrayList);
        return arrayList;
    }

    private void a(com.anythink.core.common.l.b bVar) {
        this.i.add(bVar.e());
        if (bVar.d() == 10 && bVar.b()) {
            this.l--;
            new StringBuilder("checkToRequestNextAd, current requestingCount: ").append(this.l);
            int iB = this.e.b();
            if (this.l >= iB) {
                StringBuilder sb = new StringBuilder("checkToRequestNextAd, requestingCount>parallelReqNum, requestingCount: ");
                sb.append(this.l);
                sb.append(", parallelReqNum: ");
                sb.append(iB);
                return;
            }
            if (this.n.size() > 0) {
                com.anythink.core.common.l.e eVarRemove = this.n.remove(0);
                new StringBuilder("checkToRequestNextAd, next ad: ").append(eVarRemove.toString());
                a(eVarRemove, 10);
            } else if (this.l == 0) {
                this.s = 3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.anythink.core.common.l.e eVar, int i) {
        if (eVar == null) {
            Log.e(a, "loadSharedPlacement: sharedPlaceInfo = null");
            return;
        }
        StringBuilder sb = new StringBuilder("loadSharedPlacement, loadType: ");
        sb.append(i);
        sb.append(", ");
        sb.append(eVar.toString());
        e(eVar.b);
        if (i == 10 || i == 12) {
            if (i == 10) {
                this.l++;
                StringBuilder sb2 = new StringBuilder("loadSharedPlacement, requestingCount: ");
                sb2.append(this.l);
                sb2.append(", loadType: ");
                sb2.append(i);
                sb2.append(", ");
                sb2.append(eVar.toString());
            }
            this.h.add(eVar.b);
        }
        com.anythink.core.common.l.b bVar = new com.anythink.core.common.l.b(eVar.b);
        if (this.j == null) {
            this.j = new ConcurrentHashMap();
        }
        this.j.put(bVar.a(), bVar);
        com.anythink.core.common.o.b.b.a().a((Runnable) new AnonymousClass6(eVar, i, bVar), 2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, com.anythink.core.common.l.e eVar) {
        List<ATAdInfo> listA;
        new StringBuilder("onAdLoaded, ").append(eVar.toString());
        com.anythink.core.common.l.b bVarRemove = this.j.remove(str);
        if (bVarRemove == null) {
            return;
        }
        new StringBuilder("isNeedToScheduleLoadTask, ").append(eVar.toString());
        String str2 = eVar.b;
        f fVarA = c(str2) ? a(str2, String.valueOf(eVar.a)) : null;
        boolean z = false;
        if (fVarA != null) {
            int i = eVar.d;
            double d = eVar.e;
            if (i > 0 && (listA = fVarA.a(this.b)) != null && listA.size() < i) {
                StringBuilder sb = new StringBuilder("isNeedToScheduleLoadTask, need to schedule load task because cache num not meet. current ad cache size: ");
                sb.append(listA.size());
                sb.append("\n");
                sb.append(eVar.toString());
                z = true;
            }
            if (z) {
                z = true;
            } else if (d > 0.0d) {
                com.anythink.core.common.f.b bVarA = fVarA.a(this.b, false, false, (Map<String, Object>) new HashMap(), (com.anythink.core.common.f.c) null);
                if (bVarA != null && bVarA.m() < d) {
                    StringBuilder sb2 = new StringBuilder("isNeedToScheduleLoadTask, need to schedule load task because cache price not meet. current ad cache price: ");
                    sb2.append(bVarA.m());
                    sb2.append("\n");
                    sb2.append(eVar.toString());
                    z = true;
                }
            }
        }
        new StringBuilder("isNeedToScheduleLoadTask, commonAdManagerForSharedPlacement = null, ").append(eVar.toString());
        if (z) {
            d(bVarRemove.e());
        }
        a(bVarRemove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, com.anythink.core.common.l.e eVar, AdError adError) {
        StringBuilder sb = new StringBuilder("onAdError, ");
        sb.append(eVar.toString());
        sb.append(", \n");
        sb.append(adError.getFullErrorInfo());
        com.anythink.core.common.l.b bVarRemove = this.j.remove(str);
        if (bVarRemove == null) {
            return;
        }
        d(bVarRemove.e());
        a(bVarRemove);
    }

    private boolean a(com.anythink.core.common.l.e eVar) {
        List<ATAdInfo> listA;
        new StringBuilder("isNeedToScheduleLoadTask, ").append(eVar.toString());
        String str = eVar.b;
        f fVarA = c(str) ? a(str, String.valueOf(eVar.a)) : null;
        boolean z = false;
        if (fVarA == null) {
            new StringBuilder("isNeedToScheduleLoadTask, commonAdManagerForSharedPlacement = null, ").append(eVar.toString());
            return false;
        }
        int i = eVar.d;
        double d = eVar.e;
        if (i > 0 && (listA = fVarA.a(this.b)) != null && listA.size() < i) {
            StringBuilder sb = new StringBuilder("isNeedToScheduleLoadTask, need to schedule load task because cache num not meet. current ad cache size: ");
            sb.append(listA.size());
            sb.append("\n");
            sb.append(eVar.toString());
            z = true;
        }
        if (z) {
            return true;
        }
        if (d > 0.0d) {
            com.anythink.core.common.f.b bVarA = fVarA.a(this.b, false, false, (Map<String, Object>) new HashMap(), (com.anythink.core.common.f.c) null);
            if (bVarA != null && bVarA.m() < d) {
                StringBuilder sb2 = new StringBuilder("isNeedToScheduleLoadTask, need to schedule load task because cache price not meet. current ad cache price: ");
                sb2.append(bVarA.m());
                sb2.append("\n");
                sb2.append(eVar.toString());
                return true;
            }
        }
        return z;
    }

    private synchronized void b(com.anythink.core.common.l.d dVar) {
        this.e = dVar;
        synchronized (this.g) {
            this.g.clear();
            this.g.putAll(dVar.e());
        }
        this.f = dVar.f();
    }

    private void b(com.anythink.core.common.l.e eVar) {
        a(eVar, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(String str, com.anythink.core.common.l.e eVar) {
        new StringBuilder("onAdLoadTimeout, ").append(eVar.toString());
        com.anythink.core.common.l.b bVar = this.j.get(str);
        if (bVar == null) {
            return;
        }
        a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, String str2) {
        StringBuilder sb = new StringBuilder("prepare, shared placement id: ");
        sb.append(str);
        sb.append(", setAutoLoadStatus to false");
        u.a().a(str, false);
        c(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Handler c() {
        if (this.d == null) {
            synchronized (w.class) {
                if (this.d == null) {
                    this.d = com.anythink.core.common.o.b.b.a().a(15);
                }
            }
        }
        return this.d;
    }

    private void c(com.anythink.core.common.l.e eVar) {
        a(eVar, 12);
    }

    private void c(String str, String str2) {
        Map<String, Object> nativeLocalExtra;
        if (this.m == null) {
            return;
        }
        nativeLocalExtra = null;
        str2.hashCode();
        switch (str2) {
            case "0":
                nativeLocalExtra = this.m.getNativeLocalExtra();
                break;
            case "1":
                nativeLocalExtra = this.m.getRewardVideoLocalExtra();
                break;
            case "2":
                nativeLocalExtra = this.m.getBannerLocalExtra();
                break;
            case "3":
                nativeLocalExtra = this.m.getInterstitialLocalExtra();
                break;
            case "4":
                nativeLocalExtra = this.m.getSplashLocalExtra();
                break;
        }
        StringBuilder sb = new StringBuilder("prepare, shared placement id: ");
        sb.append(str);
        sb.append(", putPlacementLocalSettingMap: ");
        sb.append(nativeLocalExtra != null ? nativeLocalExtra.toString() : "null");
        u.a().a(str, nativeLocalExtra);
    }

    public static /* synthetic */ int d(w wVar) {
        wVar.s = 3;
        return 3;
    }

    private f d(String str, String str2) {
        if (c(str)) {
            return a(str, str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        if (this.s == 0) {
            this.s = 1;
            this.n = Collections.synchronizedList(new ArrayList());
            for (com.anythink.core.common.l.e eVar : this.f) {
                if (this.h.contains(eVar.b)) {
                    new StringBuilder("handleSharedPlacement, no need to preload: ").append(eVar.b);
                } else {
                    this.n.add(eVar);
                    b(eVar.b, String.valueOf(eVar.a));
                }
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.t;
            c().postDelayed(new Runnable() { // from class: com.anythink.core.common.w.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (com.anythink.core.common.b.n.a().v()) {
                        String str = w.a;
                        w.this.c.set(false);
                        w.d(w.this);
                    } else if (w.this.n != null && w.this.n.size() != 0) {
                        w.this.e();
                    } else {
                        String str2 = w.a;
                        w.d(w.this);
                    }
                }
            }, jElapsedRealtime < j ? j - SystemClock.elapsedRealtime() : 0L);
            return;
        }
        ArrayList<String> arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        Iterator<com.anythink.core.common.l.e> it = this.f.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().b);
        }
        Set<String> set = this.h;
        if (set != null) {
            arrayList2.addAll(set);
        }
        if (arrayList2.size() > 0) {
            arrayList2.removeAll(arrayList);
        }
        Set<String> set2 = this.h;
        if (set2 != null) {
            arrayList.removeAll(set2);
        }
        if (arrayList.size() > 0) {
            this.n = Collections.synchronizedList(new ArrayList());
            for (String str : arrayList) {
                com.anythink.core.common.l.e eVar2 = this.g.get(str);
                b(eVar2.b, String.valueOf(eVar2.a));
                if (this.s == 3) {
                    StringBuilder sb = new StringBuilder("handleSharedPlacement, find open placement id: ");
                    sb.append(str);
                    sb.append(", start load");
                    a(eVar2, 10);
                } else {
                    new StringBuilder("handleSharedPlacement, update waiting list: ").append(eVar2.toString());
                    this.n.add(eVar2);
                }
            }
        }
        if (arrayList2.size() > 0) {
            for (String str2 : arrayList2) {
                e(str2);
                this.h.remove(str2);
            }
        }
    }

    private void d(com.anythink.core.common.l.e eVar) {
        a(eVar, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        if (!c(str)) {
            StringBuilder sb = new StringBuilder("startScheduleLoadTask, placementId: ");
            sb.append(str);
            sb.append(", not valid shared placement, do nothing");
            return;
        }
        com.anythink.core.common.l.e eVar = this.g.get(str);
        if (eVar == null) {
            Log.e(a, "startScheduleLoadTask: sharedPlaceInfo = null");
            return;
        }
        if (this.k == null) {
            this.k = new ConcurrentHashMap(5);
        }
        int i = eVar.c;
        if (i < 30000) {
            i = 30000;
        }
        StringBuilder sb2 = new StringBuilder("startScheduleLoadTask, placementId: ");
        sb2.append(str);
        sb2.append(", start schedule load task, requestInterval: ");
        sb2.append(i);
        sb2.append(", originRequestInterval: ");
        sb2.append(eVar.c);
        a aVar = new a(str);
        this.k.put(str, aVar);
        c().postDelayed(aVar, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        this.s = 2;
        List<com.anythink.core.common.l.e> list = this.n;
        ArrayList arrayList = new ArrayList(3);
        int iMin = Math.min(this.e.b(), list.size());
        for (int i = 0; i < iMin; i++) {
            arrayList.add(list.get(i));
            new StringBuilder("getNeedRequestList, ").append(list.get(i).toString());
        }
        list.removeAll(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a((com.anythink.core.common.l.e) it.next(), 10);
        }
    }

    private void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, a> map = this.k;
        if (map == null) {
            StringBuilder sb = new StringBuilder("stopScheduleLoadTask, placementId: ");
            sb.append(str);
            sb.append(", timer is not on, do nothing");
            return;
        }
        a aVarRemove = map.remove(str);
        if (aVarRemove == null) {
            StringBuilder sb2 = new StringBuilder("stopScheduleLoadTask, placementId: ");
            sb2.append(str);
            sb2.append(", timer is not on, do nothing");
        } else {
            StringBuilder sb3 = new StringBuilder("stopScheduleLoadTask, placementId: ");
            sb3.append(str);
            sb3.append(", stop timer");
            c().removeCallbacks(aVarRemove);
        }
    }

    public final synchronized void a(ATSharedPlacementConfig aTSharedPlacementConfig) {
        if (aTSharedPlacementConfig == null) {
            if (ATSDK.isNetworkLogDebug()) {
                Log.i("anythink", "setSharedPlacementConfig: null");
            }
            return;
        }
        if (ATSDK.isNetworkLogDebug()) {
            Log.i("anythink", "setSharedPlacementConfig: " + aTSharedPlacementConfig.toString());
        }
        this.m = aTSharedPlacementConfig;
        List<com.anythink.core.common.l.e> list = this.f;
        if (list != null) {
            for (com.anythink.core.common.l.e eVar : list) {
                c(eVar.b, String.valueOf(eVar.a));
            }
        }
    }

    public final synchronized void a(final com.anythink.core.common.l.d dVar) {
        if (com.anythink.core.common.b.n.a().v()) {
            this.c.set(false);
            return;
        }
        this.c.set(dVar.f().size() != 0);
        b(dVar);
        if (this.s == 0) {
            if (this.t == -1) {
                this.t = SystemClock.elapsedRealtime() + dVar.a();
                StringBuilder sb = new StringBuilder("sharedPlacementEntry, delay time: ");
                sb.append(dVar.a());
                sb.append(", timestamp when preloading started: ");
                sb.append(this.t);
            }
            if (!this.c.get()) {
                return;
            }
        }
        if (dVar.d() == 2) {
            return;
        }
        c().post(new Runnable() { // from class: com.anythink.core.common.w.1
            @Override // java.lang.Runnable
            public final void run() {
                w.this.d();
            }
        });
    }

    public final synchronized void a(com.anythink.core.common.l.d dVar, final String str) {
        if (this.e == null) {
            b(dVar);
        }
        final com.anythink.core.common.l.e eVar = this.g.get(str);
        if (eVar == null) {
            return;
        }
        if (!this.h.contains(str)) {
            this.h.add(str);
            c().post(new Runnable() { // from class: com.anythink.core.common.w.3
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (w.this) {
                        String str2 = w.a;
                        new StringBuilder("placementLoadResultEntry, preloadWhenSameFormat: ").append(str);
                        w wVar = w.this;
                        com.anythink.core.common.l.e eVar2 = eVar;
                        wVar.b(eVar2.b, String.valueOf(eVar2.a));
                        w.this.a(eVar, 12);
                    }
                }
            });
        } else {
            StringBuilder sb = new StringBuilder("placementLoadResultEntry, sharedPlacementId: ");
            sb.append(str);
            sb.append(", has preload, do nothing");
        }
    }

    public final synchronized void a(final String str) {
        c().post(new Runnable() { // from class: com.anythink.core.common.w.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (w.this) {
                    if (w.this.c(str)) {
                        String str2 = w.a;
                        w.this.a((com.anythink.core.common.l.e) w.this.g.get(str), 6);
                    } else {
                        String str3 = w.a;
                    }
                }
            }
        });
    }

    public final boolean a(com.anythink.core.d.f fVar) {
        if (fVar == null) {
            return false;
        }
        if (!ATAdxSetting.getInstance().isAdxNetworkMode(fVar.a())) {
            return c(fVar.l());
        }
        new StringBuilder("isBindSharedPlacement, this placement is in adx network mode: ").append(fVar.a());
        return false;
    }

    public final synchronized void b(final String str) {
        c().post(new Runnable() { // from class: com.anythink.core.common.w.5
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (w.this) {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    if (!w.this.i.contains(str)) {
                        String str2 = w.a;
                        StringBuilder sb = new StringBuilder("checkToStartScheduleLoadTask, preload not completed yet: ");
                        sb.append(str);
                        sb.append(", do nothing");
                        return;
                    }
                    if (w.this.k == null || w.this.k.get(str) == null) {
                        String str3 = w.a;
                        w.this.d(str);
                    } else {
                        String str4 = w.a;
                    }
                }
            }
        });
    }

    public final boolean b() {
        return this.c.get();
    }

    public final boolean c(String str) {
        try {
            if (!this.c.get() || com.anythink.core.common.b.n.a().v() || TextUtils.isEmpty(str)) {
                return false;
            }
            return this.g.containsKey(str);
        } catch (Throwable unused) {
            return false;
        }
    }
}
