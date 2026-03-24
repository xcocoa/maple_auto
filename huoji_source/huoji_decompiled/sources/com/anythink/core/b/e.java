package com.anythink.core.b;

import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.b.i;
import com.anythink.core.b.i.AnonymousClass1;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.q;
import com.anythink.core.common.h.k;
import com.anythink.core.common.o.j;
import com.anythink.core.common.o.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends d {
    public static final double i = 10000.0d;
    public final String j;
    public final List<JSONObject> k;
    public List<av> l;
    public List<av> m;
    public String n;
    public String o;
    public String p;
    public com.anythink.core.b.b.b q;
    public long r;
    public AtomicBoolean s;
    public AtomicBoolean t;
    public ConcurrentHashMap<String, av> u;
    public ConcurrentHashMap<String, av> v;
    public ConcurrentHashMap<String, av> w;
    public ConcurrentHashMap<String, av> x;
    public com.anythink.core.common.m.b y;

    public e(com.anythink.core.common.f.a aVar) {
        super(aVar);
        this.j = getClass().getSimpleName() + ":";
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.s = new AtomicBoolean(false);
        this.t = new AtomicBoolean(false);
        this.u = new ConcurrentHashMap<>();
        this.v = new ConcurrentHashMap<>();
        this.w = new ConcurrentHashMap<>();
        this.x = new ConcurrentHashMap<>();
        this.y = new com.anythink.core.common.m.b() { // from class: com.anythink.core.b.e.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.b.e.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.this.g();
                    }
                });
            }
        };
        List<av> list = aVar.j;
        if (list != null && list.size() > 0) {
            for (av avVar : aVar.j) {
                if (avVar != null) {
                    this.u.put(avVar.u(), avVar);
                    this.w.put(avVar.u(), avVar);
                }
            }
        }
        List<av> list2 = aVar.k;
        if (list2 != null && list2.size() > 0) {
            for (av avVar2 : aVar.k) {
                this.v.put(avVar2.u(), avVar2);
                this.x.put(avVar2.u(), avVar2);
            }
        }
        JSONObject jSONObject = aVar.r;
        if (jSONObject != null) {
            this.k.add(jSONObject);
        }
        this.n = aVar.d;
        this.o = aVar.e;
        this.p = b();
    }

    private static List<q> a(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj instanceof JSONObject) {
            JSONArray jSONArrayOptJSONArray = ((JSONObject) obj).optJSONArray("data");
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                arrayList.add(q.a(jSONArrayOptJSONArray.optString(i2)));
            }
        }
        return arrayList;
    }

    private void a(long j) {
        com.anythink.core.common.m.d.a().a(this.y, j, false);
    }

    private void a(long j, int i2, String str, Map<String, av> map) {
        for (av avVar : map.values()) {
            if (a(avVar, str, i2)) {
                this.m.add(avVar);
            } else {
                b(avVar, str, j, i2);
            }
        }
        map.clear();
    }

    public static /* synthetic */ void a(e eVar, av avVar) {
        int iD = avVar.d();
        com.anythink.core.common.n.e.a(avVar, eVar.f, avVar.R(), true, f.a().b(iD));
        f.a().a(iD);
    }

    public static /* synthetic */ void a(e eVar, String str, av avVar) {
        if (TextUtils.equals(str, ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE) || TextUtils.equals(str, ATBidRequestInfo.NO_SUPPORT_BIDDING_TYPE)) {
            return;
        }
        int iD = avVar.d();
        com.anythink.core.common.n.e.a(avVar, eVar.f, avVar.R(), false, f.a().b(iD));
        f.a().a(iD);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d A[Catch: all -> 0x007e, TryCatch #0 {, blocks: (B:11:0x002c, B:12:0x003a, B:15:0x0044, B:17:0x004c, B:25:0x005d, B:26:0x0062), top: B:38:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(e eVar, JSONObject jSONObject, av avVar) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append(eVar.j);
        sb.append("handleBidTokenResult");
        boolean z3 = true;
        if (eVar.w.size() == 0) {
            eVar.f();
            z = !eVar.t.get();
        }
        synchronized (eVar) {
            if (jSONObject != null && avVar != null) {
                eVar.k.add(jSONObject);
                eVar.x.put(avVar.u(), avVar);
                if (eVar.k.size() <= 0) {
                }
            } else {
                if (eVar.k.size() <= 0) {
                    z3 = false;
                    if (!z3) {
                        eVar.b(eVar.r);
                        return;
                    } else {
                        if (eVar.l.size() <= 0 || !eVar.m()) {
                            return;
                        }
                        eVar.a((List<q>) null, 0L, "", (Map<String, av>) null);
                        return;
                    }
                }
                if (!z) {
                    if (eVar.s.get() && !eVar.t.get()) {
                    }
                }
                if (!z3) {
                }
            }
        }
    }

    private void a(String str, av avVar) {
        if (TextUtils.equals(str, ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE) || TextUtils.equals(str, ATBidRequestInfo.NO_SUPPORT_BIDDING_TYPE)) {
            return;
        }
        int iD = avVar.d();
        com.anythink.core.common.n.e.a(avVar, this.f, avVar.R(), false, f.a().b(iD));
        f.a().a(iD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(List<q> list, long j, String str, Map<String, av> map) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.j);
        sb.append("handleResult: ");
        if (list != null && list.size() > 0) {
            Collections.sort(list);
            for (int i2 = 0; i2 < list.size(); i2++) {
                q qVar = list.get(i2);
                this.u.remove(qVar.k);
                av avVarRemove = map.remove(qVar.k);
                if (this.v.containsKey(qVar.k)) {
                    avVarRemove = this.v.remove(qVar.k);
                    this.v.clear();
                }
                av avVar = avVarRemove;
                if (avVar != null) {
                    if (qVar.isSuccessWithUseType()) {
                        int i3 = i2 + 1;
                        a(avVar.d(), qVar, i3 < list.size() ? list.get(i3).getSortPrice() : 0.0d, qVar.isSamePrice());
                    }
                    a(avVar, qVar, j);
                }
            }
        }
        if (map != null) {
            for (String str2 : map.keySet()) {
                if (str2 != null) {
                    this.u.remove(str2);
                }
                if (this.v.containsKey(str2)) {
                    this.v.clear();
                }
            }
        }
        if (map != null) {
            a(j, -4, TextUtils.isEmpty(str) ? "No Response error." : "No Response error." + str, map);
        }
        if (this.m.size() >= 2) {
            Collections.sort(this.m);
        }
        l();
        k();
        j();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d A[Catch: all -> 0x007e, TryCatch #0 {, blocks: (B:11:0x002c, B:12:0x003a, B:15:0x0044, B:17:0x004c, B:25:0x005d, B:26:0x0062), top: B:38:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(JSONObject jSONObject, av avVar) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append(this.j);
        sb.append("handleBidTokenResult");
        boolean z3 = true;
        if (this.w.size() == 0) {
            f();
            z = !this.t.get();
        }
        synchronized (this) {
            if (jSONObject != null && avVar != null) {
                this.k.add(jSONObject);
                this.x.put(avVar.u(), avVar);
                if (this.k.size() <= 0) {
                }
            } else {
                if (this.k.size() <= 0) {
                    z3 = false;
                    if (!z3) {
                        b(this.r);
                        return;
                    } else {
                        if (this.l.size() <= 0 || !m()) {
                            return;
                        }
                        a((List<q>) null, 0L, "", (Map<String, av>) null);
                        return;
                    }
                }
                if (!z) {
                    if (this.s.get() && !this.t.get()) {
                    }
                }
                if (!z3) {
                }
            }
        }
    }

    private static /* synthetic */ List b(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj instanceof JSONObject) {
            JSONArray jSONArrayOptJSONArray = ((JSONObject) obj).optJSONArray("data");
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                arrayList.add(q.a(jSONArrayOptJSONArray.optString(i2)));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(final long j) {
        if (this.t.get()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.j);
            sb.append("beginRequestBidInfo, in bid requesting, do nothing.");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.j);
        sb2.append("beginRequestBidInfo");
        ArrayList arrayList = new ArrayList();
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        a(arrayList, concurrentHashMap);
        this.t.set(true);
        a(arrayList, new k() { // from class: com.anythink.core.b.e.3
            @Override // com.anythink.core.common.h.k
            public final void onLoadCanceled(int i2) {
                synchronized (e.this) {
                    e.this.t.set(false);
                    e.this.d();
                    e.this.a((List<q>) null, SystemClock.elapsedRealtime() - j, "onLoadCanceled.", (Map<String, av>) concurrentHashMap);
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadError(int i2, String str, AdError adError) {
                synchronized (e.this) {
                    e.this.t.set(false);
                    e.this.d();
                    e.this.a((List<q>) null, SystemClock.elapsedRealtime() - j, adError != null ? adError.getPlatformMSG() : "", (Map<String, av>) concurrentHashMap);
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadFinish(int i2, Object obj) {
                synchronized (e.this) {
                    e.this.t.set(false);
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
                    ArrayList arrayList2 = new ArrayList();
                    if (obj instanceof JSONObject) {
                        JSONArray jSONArrayOptJSONArray = ((JSONObject) obj).optJSONArray("data");
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                            arrayList2.add(q.a(jSONArrayOptJSONArray.optString(i3)));
                        }
                    }
                    e.this.a(arrayList2, jElapsedRealtime, (String) null, (Map<String, av>) concurrentHashMap);
                    e.this.d();
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadStart(int i2) {
            }
        });
    }

    private void b(av avVar) {
        int iD = avVar.d();
        com.anythink.core.common.n.e.a(avVar, this.f, avVar.R(), true, f.a().b(iD));
        f.a().a(iD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(av avVar, String str, long j, int i2) {
        long jR = 0;
        if (j > 0) {
            try {
                jR = avVar.R() + j;
            } catch (Throwable th) {
                throw th;
            }
        }
        d.a(avVar, str, jR, i2);
        this.l.add(avVar);
    }

    private void f() {
        com.anythink.core.common.m.d.a().b(this.y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        if (this.h.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.j);
        sb.append("get token short timeout.");
        this.s.set(true);
        if (this.k.size() > 0) {
            b(SystemClock.elapsedRealtime());
        }
    }

    private boolean h() {
        return this.s.get() && !this.t.get();
    }

    private synchronized void i() {
        if (!this.h.get()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.j);
            sb.append("finishCallback: ");
            this.h.set(true);
            f();
            this.w.clear();
            a(0L, -3, ATBidRequestInfo.BIDDING_REQUEST_TIMEOUT_TYPE, this.u);
            a(0L, -3, ATBidRequestInfo.BIDDING_REQUEST_TIMEOUT_TYPE, this.v);
            l();
            k();
            j();
        }
    }

    private void j() {
        com.anythink.core.b.b.b bVar;
        if ((this.m.size() > 0 || this.l.size() > 0) && (bVar = this.q) != null) {
            bVar.a(this.m, this.l);
        }
        this.m.clear();
        this.l.clear();
    }

    private synchronized void k() {
        if (m()) {
            this.h.set(true);
        }
    }

    private void l() {
        if (ATSDK.isNetworkLogDebug()) {
            if (this.m.size() > 0 || this.l.size() > 0) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("S2S HeadBidding Success List", d.a(this.m));
                    jSONObject.put("S2S HeadBidding Fail List", d.a(this.l));
                } catch (Exception unused) {
                }
                p.a(p.a, jSONObject.toString(), false);
            }
        }
    }

    private boolean m() {
        return this.u.size() == 0 && this.v.size() == 0 && this.w.size() == 0;
    }

    @Override // com.anythink.core.b.d
    public final void a() {
        i();
    }

    @Override // com.anythink.core.b.d
    public final void a(com.anythink.core.b.b.b bVar) {
        List<av> list;
        this.r = SystemClock.elapsedRealtime();
        this.q = bVar;
        if (ATSDK.isNetworkLogDebug()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("PlacementId", this.f.e);
                if (this.f.s.X()) {
                    jSONObject.put("isAdxNetworkMode", true);
                }
                jSONObject.put("S2S Start HeadBidding List", d.a(this.f.j));
                jSONObject.put("S2S Start HeadBidding List(Directly)", d.b(this.k));
            } catch (Exception unused) {
            }
            p.a(p.a, jSONObject.toString(), false);
        }
        if (this.f.j.size() == 0 && (list = this.f.k) != null && list.size() > 0) {
            b(this.r);
            return;
        }
        long jO = this.f.n.o();
        if (jO <= 0) {
            jO = 500;
        }
        com.anythink.core.common.m.d.a().a(this.y, jO, false);
        Iterator<Map.Entry<String, av>> it = this.u.entrySet().iterator();
        while (it.hasNext()) {
            av value = it.next().getValue();
            i iVar = new i(this.f);
            i.a aVar = new i.a() { // from class: com.anythink.core.b.e.2
                @Override // com.anythink.core.b.i.a
                public final void a(av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
                    com.anythink.core.b.b.b bVar2 = e.this.q;
                    if (bVar2 != null) {
                        bVar2.a(avVar, aTBaseAdAdapter);
                    }
                }

                @Override // com.anythink.core.b.i.a
                public final void a(av avVar, JSONObject jSONObject2) {
                    if (e.this.h.get()) {
                        return;
                    }
                    avVar.k(SystemClock.elapsedRealtime() - e.this.r);
                    e.this.w.remove(avVar.u());
                    e.a(e.this, avVar);
                    if (!e.this.s.get() || (e.this.s.get() && e.this.f.n.g())) {
                        e.a(e.this, jSONObject2, avVar);
                    } else {
                        a(ATBidRequestInfo.BIDTOKEN_OBTAIN_TIMEOUT_TYPE, avVar);
                    }
                }

                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                @Override // com.anythink.core.b.i.a
                public final void a(String str, av avVar) {
                    e eVar;
                    if (e.this.h.get()) {
                        return;
                    }
                    avVar.k(SystemClock.elapsedRealtime() - e.this.r);
                    if (str == null) {
                        str = "";
                    }
                    e.this.w.remove(avVar.u());
                    e.this.u.remove(avVar.u());
                    e.a(e.this, str, avVar);
                    str.hashCode();
                    byte b = -1;
                    switch (str.hashCode()) {
                        case -1295842379:
                            if (str.equals(ATBidRequestInfo.NO_SUPPORT_BIDDING_TYPE)) {
                                b = 0;
                            }
                            break;
                        case -49992206:
                            if (str.equals(ATBidRequestInfo.BIDTOKEN_OBTAIN_TIMEOUT_TYPE)) {
                                b = 1;
                            }
                            break;
                        case 56988620:
                            if (str.equals(ATBidRequestInfo.BIDTOKEN_EMPTY_ERROR_TYPE)) {
                                b = 2;
                            }
                            break;
                        case 204511524:
                            if (str.equals(ATBidRequestInfo.INIT_ERROR_TYPE)) {
                                b = 3;
                            }
                            break;
                        case 1316982070:
                            if (str.equals(ATBidRequestInfo.RETURN_PARAMS_ERROR_TYPE)) {
                                b = 4;
                            }
                            break;
                        case 1956498070:
                            if (str.equals(ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE)) {
                                b = 5;
                            }
                            break;
                    }
                    int i2 = -9;
                    switch (b) {
                        case 0:
                        case 3:
                        case 4:
                        case 5:
                            eVar = e.this;
                            break;
                        case 1:
                        case 2:
                            eVar = e.this;
                            i2 = -2;
                            break;
                        default:
                            eVar = e.this;
                            str = "Unknown error: ".concat(String.valueOf(str));
                            break;
                    }
                    eVar.b(avVar, str, 0L, i2);
                    e.a(e.this, (JSONObject) null, (av) null);
                }
            };
            iVar.d = aVar;
            ATBaseAdAdapter aTBaseAdAdapterA = j.a(value);
            if (aTBaseAdAdapterA == null) {
                aVar.a(ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE, value);
            } else {
                com.anythink.core.common.o.b.b.a().a(iVar.new AnonymousClass1(aTBaseAdAdapterA, value));
            }
        }
    }

    @Override // com.anythink.core.b.d
    public void a(av avVar, o oVar, long j) {
        String str;
        int i2;
        if (oVar instanceof q) {
            q qVar = (q) oVar;
            if (qVar.isSuccessWithUseType()) {
                avVar.a(j > 0 ? avVar.R() + j : 0L);
                this.m.add(avVar);
                qVar.f = ((avVar.m() == 3 || avVar.m() == 7) ? qVar.e : avVar.o()) + System.currentTimeMillis();
                a(avVar, qVar);
                return;
            }
            int i3 = 0;
            if (qVar.useType == 2) {
                avVar.P();
                str = "filter by s2s bid max count";
                i3 = 1;
                i2 = 0;
            } else {
                str = "errorCode:[" + qVar.a + "],errorMsg:[" + qVar.errorMsg + "]";
                i2 = -1;
            }
            if (a(avVar, str, i2, i3)) {
                this.m.add(avVar);
            } else {
                b(avVar, str, j, i2);
            }
        }
    }

    public abstract void a(List<JSONObject> list, k kVar);

    public synchronized void a(List<JSONObject> list, Map<String, av> map) {
        list.addAll(this.k);
        this.k.clear();
        map.putAll(this.x);
        this.x.clear();
    }

    @Override // com.anythink.core.b.d
    public final void a(boolean z) {
        this.g = z;
    }

    public abstract String b();

    public final synchronized void d() {
        if (e()) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.b.e.4
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (e.this) {
                        if (e.this.e()) {
                            e.this.b(SystemClock.elapsedRealtime());
                        }
                    }
                }
            });
        }
    }

    public final boolean e() {
        return !this.t.get() && this.k.size() > 0;
    }
}
