package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ap;
import com.anythink.core.common.f.aq;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.ax;
import com.anythink.core.common.f.az;
import com.anythink.core.common.f.ba;
import com.anythink.core.common.i;
import com.anythink.core.d.h;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public Context a;
    public String b;
    public boolean d;
    public n g;
    public com.anythink.core.common.j.c i;
    public com.anythink.core.common.j.e j;
    public com.anythink.core.common.j.d k;
    private boolean n;
    private long o;
    private final String l = f.class.getSimpleName();
    public String e = "";
    private String m = "";
    private boolean p = false;
    public int f = 1;
    public ConcurrentHashMap<String, g> c = new ConcurrentHashMap<>(5);
    public final List<ax> h = Collections.synchronizedList(new ArrayList(2));

    /* JADX INFO: renamed from: com.anythink.core.common.f$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ com.anythink.core.common.f.v b;
        public final /* synthetic */ String c;
        public final /* synthetic */ String d;
        public final /* synthetic */ com.anythink.core.d.f e;
        public final /* synthetic */ boolean f;
        public final /* synthetic */ List g;
        public final /* synthetic */ ba h;
        public final /* synthetic */ com.anythink.core.common.f.h i;
        public final /* synthetic */ az j;
        public final /* synthetic */ aq k;
        public final /* synthetic */ com.anythink.core.common.f.p l;
        public final /* synthetic */ com.anythink.core.common.p.i m;

        public AnonymousClass2(Context context, com.anythink.core.common.f.v vVar, String str, String str2, com.anythink.core.d.f fVar, boolean z, List list, ba baVar, com.anythink.core.common.f.h hVar, az azVar, aq aqVar, com.anythink.core.common.f.p pVar, com.anythink.core.common.p.i iVar) {
            this.a = context;
            this.b = vVar;
            this.c = str;
            this.d = str2;
            this.e = fVar;
            this.f = z;
            this.g = list;
            this.h = baVar;
            this.i = hVar;
            this.j = azVar;
            this.k = aqVar;
            this.l = pVar;
            this.m = iVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                com.anythink.core.common.f.a aVar = new com.anythink.core.common.f.a();
                aVar.b = this.a;
                aVar.c = this.b;
                aVar.d = this.c;
                aVar.e = this.d;
                aVar.f = this.e.ah();
                aVar.g = this.e.S();
                aVar.h = this.e.M();
                aVar.i = this.e.v();
                h.a();
                aVar.l = h.a(this.e, this.f);
                h.a();
                aVar.o = h.a(this.e);
                h.a();
                aVar.p = h.b(this.e);
                aVar.j = this.g;
                aVar.n = this.h;
                aVar.s = this.i;
                aVar.v = this.j;
                aVar.w = this.k;
                aVar.x = this.l;
                aVar.q = u.a().b(f.this.b);
                aVar.m = this.f;
                com.anythink.core.common.f.v vVar = this.b;
                if (vVar.d == 8) {
                    aVar.t = 7;
                }
                aVar.y = this.m;
                aVar.A = vVar.l;
                aVar.B = d.a().c(f.this.b);
                com.anythink.core.b.b bVar = new com.anythink.core.b.b(aVar);
                bVar.a(ATSDK.isNetworkLogDebug());
                bVar.a(new i.a() { // from class: com.anythink.core.common.f.2.1
                    @Override // com.anythink.core.common.i.a
                    public final void a(String str) {
                        g gVar = f.this.c.get(str);
                        if (gVar != null) {
                            gVar.d();
                        }
                    }

                    @Override // com.anythink.core.common.i.a
                    public final void a(String str, List<av> list, List<av> list2, boolean z) {
                        boolean zD = AnonymousClass2.this.h.d();
                        ArrayList arrayList = null;
                        for (av avVar : list2) {
                            if (zD && (avVar.m() == 1 || avVar.m() == 3)) {
                                if (avVar.O() != 1) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList(4);
                                    }
                                    avVar.x(7);
                                    arrayList.add(avVar);
                                }
                            }
                            if (!zD && avVar.l() != 0) {
                                c cVarA = c.a();
                                cVarA.c.put(avVar.u(), Long.valueOf(System.currentTimeMillis()));
                            }
                        }
                        g gVar = f.this.c.get(str);
                        if (gVar != null) {
                            gVar.a(list, list2, arrayList);
                            if (z) {
                                gVar.e();
                            }
                        }
                    }
                });
            } catch (Throwable unused) {
                g gVar = f.this.c.get(this.c);
                if (gVar != null) {
                    gVar.e();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.f$4, reason: invalid class name */
    public class AnonymousClass4 implements com.anythink.core.common.b.a {
        public final /* synthetic */ com.anythink.core.common.b.a[] a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;
        public final /* synthetic */ String d;
        public final /* synthetic */ com.anythink.core.common.f.v e;
        public final /* synthetic */ com.anythink.core.d.f f;

        public AnonymousClass4(com.anythink.core.common.b.a[] aVarArr, String str, String str2, String str3, com.anythink.core.common.f.v vVar, com.anythink.core.d.f fVar) {
            this.a = aVarArr;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = vVar;
            this.f = fVar;
        }

        @Override // com.anythink.core.common.b.a
        public final void onAdLoadFail(AdError adError) {
            if (this.a[0] != null) {
                com.anythink.core.common.n.e.a(this.b, this.c, this.d, this.e.a, this.f, false, "0", "0", "");
                this.a[0].onAdLoadFail(adError);
            }
        }

        @Override // com.anythink.core.common.b.a
        public final void onAdLoaded() {
            if (this.a[0] != null) {
                com.anythink.core.common.n.e.a(this.b, this.c, this.d, this.e.a, this.f, true, "0", "1", "");
                this.a[0].onAdLoaded();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.f$5, reason: invalid class name */
    public class AnonymousClass5 implements com.anythink.core.common.b.a {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;
        public final /* synthetic */ com.anythink.core.common.f.v d;
        public final /* synthetic */ com.anythink.core.d.f e;
        public final /* synthetic */ com.anythink.core.common.b.a[] f;
        public final /* synthetic */ Context g;

        public AnonymousClass5(String str, String str2, String str3, com.anythink.core.common.f.v vVar, com.anythink.core.d.f fVar, com.anythink.core.common.b.a[] aVarArr, Context context) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = vVar;
            this.e = fVar;
            this.f = aVarArr;
            this.g = context;
        }

        @Override // com.anythink.core.common.b.a
        public final void onAdLoadFail(AdError adError) {
            com.anythink.core.common.f.b bVarB = f.b(this.g, this.b, this.c, this.d);
            if (bVarB == null) {
                w.a().b(this.b);
                com.anythink.core.common.n.e.a(this.a, this.b, this.c, this.d.a, this.e, false, "0", "0", "");
                com.anythink.core.common.b.a[] aVarArr = this.f;
                if (aVarArr[0] != null) {
                    aVarArr[0].onAdLoadFail(adError);
                    return;
                }
                return;
            }
            com.anythink.core.common.o.p.a("Shared", "placementId:" + this.a + ";result_callback:success;");
            com.anythink.core.common.f.h hVarH = bVarB.h();
            com.anythink.core.common.n.e.a(this.a, this.b, this.c, this.d.a, this.e, true, "1", "0", hVarH != null ? hVarH.ai() : "");
            com.anythink.core.common.b.a[] aVarArr2 = this.f;
            if (aVarArr2[0] != null) {
                aVarArr2[0].onAdLoaded();
            }
        }

        @Override // com.anythink.core.common.b.a
        public final void onAdLoaded() {
            com.anythink.core.common.n.e.a(this.a, this.b, this.c, this.d.a, this.e, true, "2", "1", "");
            com.anythink.core.common.b.a[] aVarArr = this.f;
            if (aVarArr[0] != null) {
                aVarArr[0].onAdLoaded();
            }
        }
    }

    private f(Context context, String str) {
        this.a = context.getApplicationContext();
        this.b = str;
        if (com.anythink.core.common.b.n.a().f() == null) {
            com.anythink.core.common.b.n.a().a(this.a);
        }
    }

    private com.anythink.core.common.f.b a(Context context, boolean z, boolean z3, Map<String, Object> map, f fVar, com.anythink.core.d.f fVar2) {
        com.anythink.core.common.f.b bVarA;
        double dM;
        String str;
        boolean z4;
        String str2;
        String str3;
        boolean z5;
        String strValueOf;
        String strL = fVar2.l();
        int iAh = fVar2.ah();
        w.a();
        f fVarA = w.a(strL, String.valueOf(iAh));
        if (fVarA != null) {
            com.anythink.core.common.f.c cVar = new com.anythink.core.common.f.c();
            a(cVar, this.b, fVar2);
            bVarA = fVarA.a(context, z, z3, map, cVar);
            if (bVarA != null) {
                com.anythink.core.common.o.v.a(this.b, fVar2, bVarA.h());
            }
        } else {
            bVarA = null;
        }
        double dM2 = 0.0d;
        String strAi = "";
        if (bVarA != null) {
            com.anythink.core.common.f.h hVarH = bVarA.h();
            String strAi2 = hVarH != null ? hVarH.ai() : "";
            dM = bVarA.m();
            str = strAi2;
            z4 = true;
        } else {
            w.a().b(strL);
            dM = 0.0d;
            str = "";
            z4 = false;
        }
        com.anythink.core.common.f.b bVarA2 = fVar.a(context, z, z3, map, (com.anythink.core.common.f.c) null);
        if (bVarA2 != null) {
            com.anythink.core.common.f.h hVarH2 = bVarA2.h();
            if (hVarH2 != null) {
                strAi = hVarH2.ai();
                strValueOf = String.valueOf(hVarH2.N());
            } else {
                strValueOf = "";
            }
            str3 = strValueOf;
            str2 = strAi;
            dM2 = bVarA2.m();
            z5 = true;
        } else {
            str2 = "";
            str3 = str2;
            z5 = false;
        }
        if (bVarA != null) {
            if (bVarA2 == null) {
                bVarA2 = bVarA;
            } else if (dM > dM2) {
                StringBuilder sb = new StringBuilder("CheckCacheWithShared, shared placement 's price is higher, shared price: ");
                sb.append(dM);
                sb.append(", real price:");
                sb.append(dM2);
                bVarA2 = bVarA;
            } else {
                StringBuilder sb2 = new StringBuilder("CheckCacheWithShared, real placement 's price is higher or same, shared price: ");
                sb2.append(dM);
                sb2.append(", real price:");
                sb2.append(dM2);
            }
        }
        com.anythink.core.common.n.e.a(this.b, strL, fVar2, z5 || z4, z5, z4, str2, str, str3);
        return bVarA2;
    }

    public static f a(Context context, String str, String str2) {
        f fVarA = u.a().a(str, str2);
        if (fVarA == null) {
            synchronized (f.class) {
                if (fVarA == null) {
                    fVarA = new f(context, str);
                    byte b = -1;
                    int iHashCode = str2.hashCode();
                    if (iHashCode != 49) {
                        if (iHashCode == 51 && str2.equals("3")) {
                            b = 1;
                        }
                    } else if (str2.equals("1")) {
                        b = 0;
                    }
                    if (b == 0 || b == 1) {
                        fVarA.k = new com.anythink.core.common.j.a(str, str2);
                    }
                    u.a().a(str, str2, fVarA);
                }
            }
        }
        return fVarA;
    }

    public static String a(com.anythink.core.common.f.m mVar) {
        return mVar.b + mVar.c + mVar.f + System.currentTimeMillis();
    }

    private static List<ATAdInfo> a(Context context, f fVar, com.anythink.core.d.f fVar2) {
        com.anythink.core.common.f.b bVarA;
        String strL = fVar2.l();
        w.a();
        f fVarA = w.a(strL, String.valueOf(fVar2.ah()));
        ATAdInfo aTAdInfoN = (fVarA == null || (bVarA = fVarA.a(context, false, false, (Map<String, Object>) null, (com.anythink.core.common.f.c) null)) == null) ? null : bVarA.n();
        List<ATAdInfo> listA = fVar.a(context);
        if (aTAdInfoN == null) {
            return listA;
        }
        if (listA == null || listA.size() == 0) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(aTAdInfoN);
            return arrayList;
        }
        ATAdInfo aTAdInfo = listA.get(0);
        if (aTAdInfo != null && aTAdInfoN.getEcpm() > aTAdInfo.getEcpm()) {
            StringBuilder sb = new StringBuilder("sharedCheckValidAdCaches, shared top price > real top price, shared price: ");
            sb.append(aTAdInfoN.getEcpm());
            sb.append(", real price: ");
            sb.append(aTAdInfo.getEcpm());
            listA.add(0, aTAdInfoN);
        }
        return listA;
    }

    private void a(Context context, String str, String str2, com.anythink.core.common.f.v vVar, com.anythink.core.common.b.a aVar, f fVar, com.anythink.core.d.f fVar2) {
        f fVar3;
        Context context2;
        String str3;
        String str4;
        com.anythink.core.common.f.v vVar2;
        com.anythink.core.common.b.a anonymousClass5;
        String strL = fVar2.l();
        com.anythink.core.common.f.c cVar = new com.anythink.core.common.f.c();
        a(cVar, str2, fVar2);
        vVar.i = cVar;
        com.anythink.core.common.b.a[] aVarArr = {aVar};
        if (fVar2.o() == 1) {
            com.anythink.core.common.f.b bVarB = b(context, strL, str, vVar);
            if (bVarB != null) {
                String strA = com.anythink.core.common.o.h.a(context);
                vVar.a = strA;
                com.anythink.core.common.o.p.a("Shared", "placementId:" + str2 + ";result_callback:success;");
                com.anythink.core.common.f.h hVarH = bVarB.h();
                com.anythink.core.common.n.e.a(str2, strL, str, strA, fVar2, true, "1", "2", hVarH != null ? hVarH.ai() : "");
                if (aVarArr[0] != null) {
                    aVarArr[0].onAdLoaded();
                }
                aVarArr[0] = null;
            } else {
                w.a().b(strL);
            }
            str4 = str2;
            fVar3 = fVar;
            context2 = context;
            str3 = str;
            vVar2 = vVar;
            anonymousClass5 = new AnonymousClass4(aVarArr, str4, strL, str, vVar, fVar2);
        } else {
            fVar3 = fVar;
            context2 = context;
            str3 = str;
            str4 = str2;
            vVar2 = vVar;
            anonymousClass5 = new AnonymousClass5(str2, strL, str, vVar, fVar2, aVarArr, context);
        }
        fVar3.a(context2, str3, str4, vVar2, anonymousClass5);
    }

    private void a(Context context, String str, String str2, com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar, com.anythink.core.common.f.v vVar) {
        com.anythink.core.common.f.h hVar2;
        com.anythink.core.common.f.v vVar2;
        f fVar2;
        boolean z;
        boolean z3;
        com.anythink.core.common.f.v vVar3;
        f fVar3;
        com.anythink.core.common.f.p pVar;
        av avVar;
        g gVar;
        boolean z4;
        com.anythink.core.common.f.p pVar2;
        az azVar;
        com.anythink.core.common.f.p pVar3;
        aq aqVar;
        Map<String, Object> map;
        StringBuilder sb = new StringBuilder("checkToGetWaterfallList() >>> WaterFall started. requestId: ");
        sb.append(str2);
        sb.append(" placementId: ");
        sb.append(str);
        sb.append(" wf_id: ");
        sb.append(fVar.q());
        com.anythink.core.common.n.e.a("1", str2, str, "", 0, fVar.ah(), 0L);
        ba baVar = new ba(vVar, fVar);
        if (hVar != null) {
            hVar.c(baVar.e());
            hVar.d(baVar.f());
        }
        try {
            try {
                if (fVar.aV()) {
                    try {
                        a(fVar, hVar);
                        b(fVar, hVar);
                        ap apVarA = com.anythink.core.common.o.r.a(fVar, hVar);
                        com.anythink.core.common.f.h hVarC = apVarA.c();
                        if (apVarA.b() == 0) {
                            try {
                                hVarC.E(5);
                                if (apVarA.a().u() != 1) {
                                    throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfig, "", ""), "No Adsource.");
                                }
                                throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfigInDebugerMode, "", ""), "No Adsource.");
                            } catch (Throwable th) {
                                th = th;
                                hVar2 = hVar;
                                vVar3 = vVar;
                                fVar3 = this;
                                z3 = true;
                                fVar3.a(z3, hVar2, th, vVar3);
                                return;
                            }
                        }
                        if (!apVarA.h()) {
                            hVarC.E(6);
                            AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                            throw new com.anythink.core.common.f.g(errorCode, errorCode.printStackTrace());
                        }
                        ArrayList arrayList = new ArrayList(1);
                        com.anythink.core.common.o.r.b(apVarA, arrayList);
                        List<av> listA = com.anythink.core.common.o.r.a(apVarA, apVarA.d());
                        a.a().b(str);
                        boolean z5 = arrayList.size() > 0;
                        boolean z6 = !z5 && (apVarA.e() == null || apVarA.e().size() == 0);
                        if (z6 && ((listA == null || listA.size() == 0) && ((apVarA.f() == null || apVarA.f().size() == 0) && (apVarA.g() == null || apVarA.g().size() == 0)))) {
                            AdError errorCode2 = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                            hVar.E(6);
                            a(true, hVar, errorCode2, vVar);
                            this.d = false;
                            return;
                        }
                        com.anythink.core.a.b.a().b(this.a, str, fVar);
                        com.anythink.core.common.n.c.a(this.a).a(10, hVar);
                        Map<String, Object> mapB = u.a().b(this.b);
                        Map<String, az> map2 = x.a(this.a).a;
                        az azVarRemove = map2 != null ? map2.remove(str) : null;
                        aq aqVarA = v.a(this.a).a(str, str2);
                        com.anythink.core.common.f.p pVarA = d.a().a(str);
                        com.anythink.core.common.f.p pVar4 = new com.anythink.core.common.f.p(str2);
                        aq aqVar2 = aqVarA;
                        d.a().a(this.b, pVar4);
                        hVar.b(true);
                        hVar.w(baVar.f());
                        g gVar2 = new g(vVar.a());
                        gVar2.h = mapB;
                        gVar2.i = hVar;
                        gVar2.a(vVar);
                        gVar2.a(vVar.e);
                        this.e = str2;
                        this.m = hVar.aa();
                        List<av> listA2 = com.anythink.core.d.m.a(fVar, fVar.P());
                        if (listA2.size() > 0) {
                            pVar = pVar4;
                            avVar = listA2.get(0);
                        } else {
                            pVar = pVar4;
                            avVar = null;
                        }
                        if (avVar != null) {
                            for (av avVar2 : apVarA.e()) {
                                if (avVar2.u().equals(avVar.u())) {
                                    gVar = gVar2;
                                    aq aqVar3 = aqVar2;
                                    z4 = z6;
                                    azVar = azVarRemove;
                                    map = mapB;
                                    pVar2 = pVarA;
                                    pVar3 = pVar;
                                    aqVar = aqVar3;
                                    gVar.H = com.anythink.core.common.a.c.a().a(context, str, str2, avVar2, fVar, map);
                                } else {
                                    gVar = gVar2;
                                    z4 = z6;
                                    pVar2 = pVarA;
                                    azVar = azVarRemove;
                                    pVar3 = pVar;
                                    aqVar = aqVar2;
                                    map = mapB;
                                }
                                gVar2 = gVar;
                                z6 = z4;
                                azVarRemove = azVar;
                                mapB = map;
                                pVarA = pVar2;
                                pVar = pVar3;
                                aqVar2 = aqVar;
                            }
                        }
                        g gVar3 = gVar2;
                        boolean z7 = z6;
                        com.anythink.core.common.f.p pVar5 = pVarA;
                        az azVar2 = azVarRemove;
                        aq aqVar4 = aqVar2;
                        com.anythink.core.common.p.i iVar = new com.anythink.core.common.p.i(listA);
                        com.anythink.core.common.p.h hVar3 = new com.anythink.core.common.p.h();
                        hVar3.a = str;
                        hVar3.b = str2;
                        hVar3.c = baVar;
                        hVar3.d = listA;
                        hVar3.e = apVarA.g();
                        hVar3.g = z7;
                        hVar3.h = hVar.ad();
                        hVar3.i = azVar2;
                        hVar3.k = aqVar4;
                        hVar3.j = iVar;
                        hVar3.m = pVar5;
                        hVar3.l = pVar;
                        hVar3.f = apVarA.f();
                        gVar3.a(hVar3);
                        this.c.put(str2, gVar3);
                        gVar3.b();
                        this.d = false;
                        if (z7) {
                            return;
                        }
                        com.anythink.core.common.o.b.b.a().c(new AnonymousClass2(context, vVar, str2, str, fVar, z5, apVarA.e(), baVar, hVar, azVar2, aqVar4, pVar5, iVar));
                        return;
                    } catch (com.anythink.core.common.f.g e) {
                        e = e;
                        z = true;
                        fVar2 = this;
                        hVar2 = hVar;
                    } catch (Throwable th2) {
                        th = th2;
                        z3 = true;
                        fVar3 = this;
                        hVar2 = hVar;
                        vVar3 = vVar;
                        fVar3.a(z3, hVar2, th, vVar3);
                        return;
                    }
                } else {
                    hVar2 = hVar;
                    try {
                        hVar2.E(5);
                        throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.placementAdClose, "", ""), "Strategy is close.");
                    } catch (com.anythink.core.common.f.g e2) {
                        e = e2;
                        z = true;
                        fVar2 = this;
                    } catch (Throwable th3) {
                        th = th3;
                        z3 = true;
                        fVar3 = this;
                        vVar3 = vVar;
                        fVar3.a(z3, hVar2, th, vVar3);
                        return;
                    }
                }
                vVar2 = vVar;
            } catch (Throwable th4) {
                th = th4;
                hVar2 = hVar;
            }
        } catch (com.anythink.core.common.f.g e3) {
            e = e3;
            hVar2 = hVar;
            vVar2 = vVar;
            fVar2 = this;
            z = true;
        }
        fVar2.a(z, hVar2, e, vVar2);
    }

    private static void a(ap apVar) {
        com.anythink.core.common.f.h hVarC = apVar.c();
        if (apVar.b() == 0) {
            hVarC.E(5);
            if (apVar.a().u() != 1) {
                throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfig, "", ""), "No Adsource.");
            }
            throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfigInDebugerMode, "", ""), "No Adsource.");
        }
        if (apVar.h()) {
            return;
        }
        hVarC.E(6);
        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
        throw new com.anythink.core.common.f.g(errorCode, errorCode.printStackTrace());
    }

    private static void a(com.anythink.core.common.f.c cVar, String str, com.anythink.core.d.f fVar) {
        cVar.a(str, fVar.ao(), fVar.Z());
    }

    public static /* synthetic */ void a(f fVar, Context context, String str, String str2, com.anythink.core.d.f fVar2, com.anythink.core.common.f.h hVar, com.anythink.core.common.f.v vVar) {
        com.anythink.core.common.f.h hVar2;
        com.anythink.core.common.f.v vVar2;
        com.anythink.core.common.f.v vVar3;
        com.anythink.core.common.f.p pVar;
        av avVar;
        boolean z;
        az azVar;
        List<av> list;
        com.anythink.core.common.f.p pVar2;
        aq aqVar;
        com.anythink.core.common.f.p pVar3;
        Map<String, Object> map;
        StringBuilder sb = new StringBuilder("checkToGetWaterfallList() >>> WaterFall started. requestId: ");
        sb.append(str2);
        sb.append(" placementId: ");
        sb.append(str);
        sb.append(" wf_id: ");
        sb.append(fVar2.q());
        com.anythink.core.common.n.e.a("1", str2, str, "", 0, fVar2.ah(), 0L);
        ba baVar = new ba(vVar, fVar2);
        if (hVar != null) {
            hVar.c(baVar.e());
            hVar.d(baVar.f());
        }
        try {
            try {
                if (!fVar2.aV()) {
                    hVar2 = hVar;
                    try {
                        hVar2.E(5);
                        throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.placementAdClose, "", ""), "Strategy is close.");
                    } catch (com.anythink.core.common.f.g e) {
                        e = e;
                        vVar2 = vVar;
                        fVar.a(true, hVar2, (Throwable) e, vVar2);
                    } catch (Throwable th) {
                        th = th;
                        vVar3 = vVar;
                        fVar.a(true, hVar2, th, vVar3);
                    }
                }
                try {
                    a(fVar2, hVar);
                    b(fVar2, hVar);
                    ap apVarA = com.anythink.core.common.o.r.a(fVar2, hVar);
                    com.anythink.core.common.f.h hVarC = apVarA.c();
                    if (apVarA.b() == 0) {
                        try {
                            hVarC.E(5);
                            if (apVarA.a().u() != 1) {
                                throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfig, "", ""), "No Adsource.");
                            }
                            throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.noAdsourceConfigInDebugerMode, "", ""), "No Adsource.");
                        } catch (Throwable th2) {
                            th = th2;
                            hVar2 = hVar;
                            vVar3 = vVar;
                            fVar.a(true, hVar2, th, vVar3);
                        }
                    }
                    if (!apVarA.h()) {
                        hVarC.E(6);
                        AdError errorCode = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                        throw new com.anythink.core.common.f.g(errorCode, errorCode.printStackTrace());
                    }
                    ArrayList arrayList = new ArrayList(1);
                    com.anythink.core.common.o.r.b(apVarA, arrayList);
                    List<av> listA = com.anythink.core.common.o.r.a(apVarA, apVarA.d());
                    a.a().b(str);
                    boolean z3 = arrayList.size() > 0;
                    boolean z4 = !z3 && (apVarA.e() == null || apVarA.e().size() == 0);
                    if (z4 && ((listA == null || listA.size() == 0) && ((apVarA.f() == null || apVarA.f().size() == 0) && (apVarA.g() == null || apVarA.g().size() == 0)))) {
                        AdError errorCode2 = ErrorCode.getErrorCode(ErrorCode.noAvailableAdsource, "", "");
                        hVar.E(6);
                        fVar.a(true, hVar, errorCode2, vVar);
                        fVar.d = false;
                        return;
                    }
                    com.anythink.core.a.b.a().b(fVar.a, str, fVar2);
                    com.anythink.core.common.n.c.a(fVar.a).a(10, hVar);
                    Map<String, Object> mapB = u.a().b(fVar.b);
                    Map<String, az> map2 = x.a(fVar.a).a;
                    az azVarRemove = map2 != null ? map2.remove(str) : null;
                    aq aqVarA = v.a(fVar.a).a(str, str2);
                    com.anythink.core.common.f.p pVarA = d.a().a(str);
                    com.anythink.core.common.f.p pVar4 = new com.anythink.core.common.f.p(str2);
                    aq aqVar2 = aqVarA;
                    d.a().a(fVar.b, pVar4);
                    hVar.b(true);
                    hVar.w(baVar.f());
                    g gVar = new g(vVar.a());
                    gVar.h = mapB;
                    gVar.i = hVar;
                    gVar.a(vVar);
                    gVar.a(vVar.e);
                    fVar.e = str2;
                    fVar.m = hVar.aa();
                    List<av> listA2 = com.anythink.core.d.m.a(fVar2, fVar2.P());
                    if (listA2.size() > 0) {
                        pVar = pVar4;
                        avVar = listA2.get(0);
                    } else {
                        pVar = pVar4;
                        avVar = null;
                    }
                    if (avVar != null) {
                        for (av avVar2 : apVarA.e()) {
                            if (avVar2.u().equals(avVar.u())) {
                                aq aqVar3 = aqVar2;
                                z = z4;
                                azVar = azVarRemove;
                                map = mapB;
                                aqVar = aqVar3;
                                pVar2 = pVar;
                                pVar3 = pVarA;
                                list = listA;
                                gVar.H = com.anythink.core.common.a.c.a().a(context, str, str2, avVar2, fVar2, map);
                            } else {
                                z = z4;
                                azVar = azVarRemove;
                                list = listA;
                                pVar2 = pVar;
                                aqVar = aqVar2;
                                pVar3 = pVarA;
                                map = mapB;
                            }
                            z4 = z;
                            azVarRemove = azVar;
                            listA = list;
                            pVarA = pVar3;
                            mapB = map;
                            pVar = pVar2;
                            aqVar2 = aqVar;
                        }
                    }
                    boolean z5 = z4;
                    az azVar2 = azVarRemove;
                    List<av> list2 = listA;
                    com.anythink.core.common.f.p pVar5 = pVar;
                    aq aqVar4 = aqVar2;
                    com.anythink.core.common.f.p pVar6 = pVarA;
                    com.anythink.core.common.p.i iVar = new com.anythink.core.common.p.i(list2);
                    com.anythink.core.common.p.h hVar3 = new com.anythink.core.common.p.h();
                    hVar3.a = str;
                    hVar3.b = str2;
                    hVar3.c = baVar;
                    hVar3.d = list2;
                    hVar3.e = apVarA.g();
                    hVar3.g = z5;
                    hVar3.h = hVar.ad();
                    hVar3.i = azVar2;
                    hVar3.k = aqVar4;
                    hVar3.j = iVar;
                    hVar3.m = pVar6;
                    hVar3.l = pVar5;
                    hVar3.f = apVarA.f();
                    gVar.a(hVar3);
                    fVar.c.put(str2, gVar);
                    gVar.b();
                    fVar.d = false;
                    if (z5) {
                        return;
                    }
                    com.anythink.core.common.o.b.b.a().c(fVar.new AnonymousClass2(context, vVar, str2, str, fVar2, z3, apVarA.e(), baVar, hVar, azVar2, aqVar4, pVar6, iVar));
                } catch (com.anythink.core.common.f.g e2) {
                    e = e2;
                    hVar2 = hVar;
                    vVar2 = vVar;
                    fVar.a(true, hVar2, (Throwable) e, vVar2);
                } catch (Throwable th3) {
                    th = th3;
                    hVar2 = hVar;
                    vVar3 = vVar;
                    fVar.a(true, hVar2, th, vVar3);
                }
            } catch (Throwable th4) {
                th = th4;
                hVar2 = hVar;
            }
        } catch (com.anythink.core.common.f.g e3) {
            e = e3;
            hVar2 = hVar;
            vVar2 = vVar;
        }
    }

    private void a(com.anythink.core.common.j.d dVar) {
        this.k = dVar;
    }

    public static void a(com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar) {
        if (com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f()).a(fVar, hVar.ah())) {
            hVar.E(1);
            throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.outOfCapError, "", ""), "Capping.");
        }
    }

    private void a(String str, com.anythink.core.common.b.a aVar) {
        com.anythink.core.common.j.c cVar = this.i;
        if (cVar != null) {
            cVar.a(str, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, com.anythink.core.common.f.h hVar, AdError adError, com.anythink.core.common.f.v vVar) {
        this.d = false;
        hVar.b(false);
        if (z) {
            com.anythink.core.common.n.c.a(this.a).a(10, hVar);
            com.anythink.core.common.n.e.a(hVar, adError);
        }
        a(vVar, adError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, com.anythink.core.common.f.h hVar, Throwable th, com.anythink.core.common.f.v vVar) {
        a(z, hVar, th instanceof com.anythink.core.common.f.g ? ((com.anythink.core.common.f.g) th).a : ErrorCode.getErrorCode(ErrorCode.exception, "", th.getMessage()), vVar);
    }

    public static /* synthetic */ boolean a(f fVar) {
        com.anythink.core.common.j.e eVar = fVar.j;
        return eVar != null ? eVar.b() : !TextUtils.isEmpty(fVar.e);
    }

    public static /* synthetic */ boolean a(f fVar, String str, String str2, com.anythink.core.common.f.v vVar, n nVar) {
        com.anythink.core.common.j.e eVar = fVar.j;
        if (eVar != null) {
            return eVar.a(fVar.a, str, str2, vVar, nVar);
        }
        return false;
    }

    private boolean a(String str, String str2, com.anythink.core.common.f.v vVar, n nVar) {
        com.anythink.core.common.j.e eVar = this.j;
        if (eVar != null) {
            return eVar.a(this.a, str, str2, vVar, nVar);
        }
        return false;
    }

    private boolean a(boolean z, boolean z3, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(this.b);
        String str = TextUtils.isEmpty(this.e) ? "" : this.e;
        if (fVarA == null) {
            fVarA = com.anythink.core.d.h.a(this.a).a(this.b);
        }
        com.anythink.core.d.f fVar = fVarA;
        if (fVar == null) {
            if (z) {
                com.anythink.core.common.n.e.a(str, this.b, fVar, 4, "", map);
            } else if (z3) {
                com.anythink.core.common.n.e.a(str, this.b, false, 4, fVar, (com.anythink.core.common.f.b) null, "", "", map, cVar);
            }
            return true;
        }
        com.anythink.core.a.c.a();
        if (com.anythink.core.a.c.a(this.b, fVar)) {
            if (z) {
                com.anythink.core.common.n.e.a(str, this.b, fVar, 3, "", map);
            } else if (z3) {
                com.anythink.core.common.n.e.a(str, this.b, false, 3, fVar, (com.anythink.core.common.f.b) null, "", "", map, cVar);
            }
            return true;
        }
        if (!com.anythink.core.a.a.a(this.a).a(fVar, this.b)) {
            return false;
        }
        if (z) {
            com.anythink.core.common.n.e.a(str, this.b, fVar, 2, "", map);
        } else if (z3) {
            com.anythink.core.common.n.e.a(str, this.b, false, 2, fVar, (com.anythink.core.common.f.b) null, "", "", map, cVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.anythink.core.common.f.b b(Context context, String str, String str2, com.anythink.core.common.f.v vVar) {
        w.a();
        f fVarA = w.a(str, str2);
        if (fVarA != null) {
            return fVarA.a(context, true, false, vVar.g, vVar.i);
        }
        return null;
    }

    public static void b(com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar) {
        com.anythink.core.a.c.a();
        if (com.anythink.core.a.c.a(hVar.ah(), fVar)) {
            hVar.E(2);
            throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.inPacingError, "", ""), "Pacing.");
        }
    }

    public static /* synthetic */ void c(f fVar) {
        com.anythink.core.common.j.d dVar = fVar.k;
        if (dVar != null) {
            dVar.c();
        }
    }

    private static void c(com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar) {
        if (fVar.aV()) {
            return;
        }
        hVar.E(5);
        throw new com.anythink.core.common.f.g(ErrorCode.getErrorCode(ErrorCode.placementAdClose, "", ""), "Strategy is close.");
    }

    public static /* synthetic */ boolean d(f fVar) {
        com.anythink.core.common.j.e eVar = fVar.j;
        return eVar != null && eVar.a();
    }

    private boolean h() {
        return System.currentTimeMillis() - this.o <= com.anythink.expressad.exoplayer.i.a.f;
    }

    private boolean i() {
        com.anythink.core.common.j.e eVar = this.j;
        return eVar != null && eVar.a();
    }

    private boolean j() {
        com.anythink.core.common.j.e eVar = this.j;
        return eVar != null ? eVar.b() : !TextUtils.isEmpty(this.e);
    }

    public static /* synthetic */ boolean j(f fVar) {
        fVar.n = false;
        return false;
    }

    public static /* synthetic */ long k(f fVar) {
        fVar.o = 0L;
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        com.anythink.core.common.j.d dVar = this.k;
        return dVar != null && dVar.a();
    }

    private void l() {
        com.anythink.core.common.j.d dVar = this.k;
        if (dVar != null) {
            dVar.c();
        }
    }

    private void m() {
        com.anythink.core.common.j.d dVar = this.k;
        if (dVar != null) {
            dVar.b();
        }
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        boolean zF = f();
        com.anythink.core.common.f.b bVarA = a(context, true, false, map);
        ATAdStatusInfo aTAdStatusInfo = new ATAdStatusInfo(zF, bVarA != null, bVarA != null ? bVarA.n() : null);
        if (this.k != null) {
            if (!(System.currentTimeMillis() - this.o <= com.anythink.expressad.exoplayer.i.a.f) && a(aTAdStatusInfo) && (c() <= 0 || !aTAdStatusInfo.isReady())) {
                this.k.a(context, 5);
            }
        }
        return aTAdStatusInfo;
    }

    public final com.anythink.core.common.f.b a(Context context, boolean z, boolean z3, Map<String, Object> map) {
        if (w.a().b()) {
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(context).a(this.b);
            if (fVarA != null && w.a().c(this.b)) {
                Log.w("anythink", "Forbidden placement");
                return null;
            }
            if (w.a().a(fVarA)) {
                return a(context, z, z3, map, this, fVarA);
            }
        }
        return a(context, z, z3, map, (com.anythink.core.common.f.c) null);
    }

    public final com.anythink.core.common.f.b a(Context context, boolean z, boolean z3, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        com.anythink.core.common.j.e eVar;
        if (a(z3, z, map, cVar)) {
            return null;
        }
        com.anythink.core.common.f.b bVarA = a.a().a(context, this.b, z, z3, map, cVar);
        return (bVarA != null || (eVar = this.j) == null) ? bVarA : eVar.a(this.b, z, map, cVar);
    }

    public final com.anythink.core.common.j.d a() {
        return this.k;
    }

    public final List<ATAdInfo> a(Context context) {
        List<com.anythink.core.common.f.b> listA;
        com.anythink.core.common.b.j jVarA;
        if (a(false, false, (Map<String, Object>) null, (com.anythink.core.common.f.c) null) || (listA = a.a().a(context, this.b, false, false, true, (Map<String, Object>) null, (com.anythink.core.common.f.c) null)) == null || listA.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(3);
        Iterator<com.anythink.core.common.f.b> it = listA.iterator();
        while (it.hasNext()) {
            com.anythink.core.common.f.b next = it.next();
            BaseAd baseAdE = next != null ? next.e() : null;
            ATBaseAdAdapter aTBaseAdAdapterD = next != null ? next.d() : null;
            if (baseAdE != null) {
                jVarA = com.anythink.core.common.b.j.a(baseAdE, aTBaseAdAdapterD);
            } else if (aTBaseAdAdapterD != null) {
                jVarA = com.anythink.core.common.b.j.a(aTBaseAdAdapterD);
            }
            arrayList.add(jVarA);
        }
        return arrayList;
    }

    public final void a(final Context context, final String str, final String str2, final com.anythink.core.common.f.v vVar, final com.anythink.core.common.b.a aVar) {
        if (!com.anythink.core.common.b.n.a().v()) {
            com.anythink.core.common.b.n.a().c = true;
        }
        final Map<String, Object> mapB = u.a().b(str2);
        final int[] iArr = {0};
        if (mapB.containsKey(au.N)) {
            try {
                iArr[0] = ((Integer) mapB.get(au.N)).intValue();
            } catch (Throwable unused) {
            }
        }
        int i = vVar.d;
        if (i == 0 || i == 3) {
            u.a().a(str2, new Throwable().getStackTrace());
        }
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.f.1
            /* JADX WARN: Removed duplicated region for block: B:123:0x0365  */
            /* JADX WARN: Removed duplicated region for block: B:136:0x03c3 A[Catch: all -> 0x04a1, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000d, B:8:0x0013, B:10:0x0015, B:12:0x001d, B:14:0x0024, B:16:0x0026, B:18:0x002e, B:20:0x0034, B:21:0x004e, B:23:0x0050, B:25:0x0056, B:26:0x005d, B:28:0x007c, B:30:0x0084, B:32:0x00c2, B:34:0x00d1, B:36:0x00de, B:37:0x00e1, B:39:0x00ec, B:41:0x00fa, B:43:0x0108, B:46:0x0112, B:48:0x011a, B:49:0x0149, B:51:0x014b, B:55:0x017a, B:58:0x0185, B:59:0x018c, B:60:0x0192, B:64:0x01bd, B:66:0x01e8, B:69:0x01ef, B:71:0x01f9, B:73:0x01ff, B:75:0x022d, B:76:0x0251, B:78:0x0253, B:93:0x0279, B:95:0x0281, B:98:0x028b, B:100:0x0299, B:102:0x02ba, B:104:0x02db, B:105:0x02e7, B:107:0x02e9, B:109:0x02ed, B:110:0x02f9, B:111:0x0323, B:112:0x0325, B:115:0x032e, B:117:0x0336, B:119:0x0347, B:121:0x034f, B:124:0x0366, B:125:0x037b, B:127:0x037d, B:129:0x038e, B:131:0x039a, B:132:0x03b9, B:134:0x03bb, B:136:0x03c3, B:137:0x03f2, B:139:0x03f4, B:140:0x0407, B:142:0x040d, B:146:0x041c, B:150:0x0428, B:151:0x0444, B:113:0x0329, B:88:0x026b, B:90:0x0270, B:91:0x0277, B:63:0x01b5, B:153:0x0446, B:155:0x0461, B:156:0x049b, B:157:0x049f, B:33:0x00cd, B:29:0x007f, B:85:0x0263), top: B:162:0x0005, inners: #1, #2 }] */
            /* JADX WARN: Removed duplicated region for block: B:139:0x03f4 A[Catch: all -> 0x04a1, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000d, B:8:0x0013, B:10:0x0015, B:12:0x001d, B:14:0x0024, B:16:0x0026, B:18:0x002e, B:20:0x0034, B:21:0x004e, B:23:0x0050, B:25:0x0056, B:26:0x005d, B:28:0x007c, B:30:0x0084, B:32:0x00c2, B:34:0x00d1, B:36:0x00de, B:37:0x00e1, B:39:0x00ec, B:41:0x00fa, B:43:0x0108, B:46:0x0112, B:48:0x011a, B:49:0x0149, B:51:0x014b, B:55:0x017a, B:58:0x0185, B:59:0x018c, B:60:0x0192, B:64:0x01bd, B:66:0x01e8, B:69:0x01ef, B:71:0x01f9, B:73:0x01ff, B:75:0x022d, B:76:0x0251, B:78:0x0253, B:93:0x0279, B:95:0x0281, B:98:0x028b, B:100:0x0299, B:102:0x02ba, B:104:0x02db, B:105:0x02e7, B:107:0x02e9, B:109:0x02ed, B:110:0x02f9, B:111:0x0323, B:112:0x0325, B:115:0x032e, B:117:0x0336, B:119:0x0347, B:121:0x034f, B:124:0x0366, B:125:0x037b, B:127:0x037d, B:129:0x038e, B:131:0x039a, B:132:0x03b9, B:134:0x03bb, B:136:0x03c3, B:137:0x03f2, B:139:0x03f4, B:140:0x0407, B:142:0x040d, B:146:0x041c, B:150:0x0428, B:151:0x0444, B:113:0x0329, B:88:0x026b, B:90:0x0270, B:91:0x0277, B:63:0x01b5, B:153:0x0446, B:155:0x0461, B:156:0x049b, B:157:0x049f, B:33:0x00cd, B:29:0x007f, B:85:0x0263), top: B:162:0x0005, inners: #1, #2 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void run() {
                String strA;
                f fVar;
                long jCurrentTimeMillis;
                synchronized (f.this) {
                    if (!f.this.f() || vVar.d == 0) {
                        if (f.a(f.this) || vVar.d != 5) {
                            if (f.this.k() && vVar.d == 0) {
                                Log.e("anythink", "PlacementId(" + str2 + ") the load api calls are not allowed in Auto-load mode");
                                return;
                            }
                            f fVar2 = f.this;
                            if (fVar2.g == null) {
                                fVar2.g = new n();
                            }
                            n nVar = f.this.g;
                            String str3 = str2;
                            String str4 = str;
                            nVar.a = str3;
                            nVar.b = str4;
                            nVar.a(aVar);
                            com.anythink.core.common.f.v vVar2 = vVar;
                            f fVar3 = f.this;
                            vVar2.f = fVar3.g;
                            if (vVar2.d != 4) {
                                fVar3.f = 1;
                            } else {
                                fVar3.f++;
                            }
                            f.c(fVar3);
                            StringBuilder sb = new StringBuilder("PlacementId(");
                            sb.append(str2);
                            sb.append(") start load type:");
                            sb.append(vVar.d);
                            com.anythink.core.common.b.n.a().a(context, com.anythink.core.common.b.n.a().o(), com.anythink.core.common.b.n.a().p());
                            if (TextUtils.isEmpty(vVar.a)) {
                                strA = com.anythink.core.common.o.h.a(context);
                                vVar.a = strA;
                            } else {
                                strA = vVar.a;
                            }
                            final String str5 = strA;
                            f fVar4 = f.this;
                            String str6 = vVar.a;
                            com.anythink.core.common.b.a aVar2 = aVar;
                            com.anythink.core.common.j.c cVar = fVar4.i;
                            if (cVar != null) {
                                cVar.a(str6, aVar2);
                            }
                            if (com.anythink.core.common.b.n.a().f() != null && !TextUtils.isEmpty(com.anythink.core.common.b.n.a().o()) && !TextUtils.isEmpty(com.anythink.core.common.b.n.a().p()) && !com.anythink.core.common.o.i.a(str2)) {
                                if (f.d(f.this)) {
                                    Log.i("anythink", "Placement(" + str2 + ") is loading.");
                                    e.a(vVar.g, e.c, str2, f.this.m, f.this.e);
                                    return;
                                }
                                final Context applicationContext = context.getApplicationContext();
                                String strO = com.anythink.core.common.b.n.a().o();
                                String strP = com.anythink.core.common.b.n.a().p();
                                boolean zV = com.anythink.core.common.b.n.a().v();
                                int i2 = vVar.d;
                                com.anythink.core.d.h hVarA = com.anythink.core.d.h.a(context);
                                com.anythink.core.d.f fVarD = zV ? null : i2 == 13 ? hVarA.d(str2) : i2 == 14 ? hVarA.e(str2) : hVarA.c(str2);
                                String unused2 = f.this.l;
                                StringBuilder sb2 = new StringBuilder("startLoad() >>> loadType: ");
                                sb2.append(i2);
                                sb2.append(" mPlacementId: ");
                                sb2.append(str2);
                                sb2.append(" strategyType: ");
                                sb2.append(fVarD == null ? "本地缓存策略为空" : Integer.valueOf(fVarD.aR()));
                                sb2.append(" isInDebugMode: ");
                                sb2.append(zV);
                                String str7 = str2;
                                int i3 = iArr[0];
                                com.anythink.core.common.f.v vVar3 = vVar;
                                final com.anythink.core.common.f.h hVarA2 = com.anythink.core.common.o.v.a(str5, str7, fVarD, i2, i3, vVar3.g, vVar3.i);
                                hVarA2.y(str);
                                Map<String, Object> map = mapB;
                                if (map != null) {
                                    hVarA2.b(map);
                                }
                                if (fVarD == null && !zV && (!TextUtils.isEmpty(vVar.c) || vVar.b != null)) {
                                    Log.i("anythink", "request default adsource for splash.");
                                    String unused3 = f.this.l;
                                    StringBuilder sb3 = new StringBuilder("startLoad() >>> DefaultAdSource started. requestId: ");
                                    sb3.append(str5);
                                    sb3.append(" mPlacementId: ");
                                    sb3.append(str2);
                                    f fVar5 = f.this;
                                    if (f.a(fVar5, str2, str5, vVar, fVar5.g)) {
                                        f fVar6 = f.this;
                                        fVar6.e = str5;
                                        fVar6.m = hVarA2.aa();
                                        com.anythink.core.d.h.a(context).a(null, strO, strP, str2, vVar.g, null, 3);
                                        return;
                                    }
                                }
                                com.anythink.core.d.f fVarF = hVarA.f(str2);
                                if (fVarD != null || zV || fVarF == null) {
                                    fVarF = fVarD;
                                }
                                if (fVarF != null) {
                                    try {
                                        try {
                                            f.a(fVarF, hVarA2);
                                            f.b(fVarF, hVarA2);
                                        } catch (Throwable th) {
                                            th.printStackTrace();
                                        }
                                    } catch (com.anythink.core.common.f.g e) {
                                        f.this.a(true, hVarA2, (Throwable) e, vVar);
                                        return;
                                    }
                                }
                                if (!vVar.c()) {
                                    int iC = f.this.c();
                                    if (iC > 0 && fVarF != null) {
                                        if (a.a().a(context, str2) != null) {
                                            String unused4 = f.this.l;
                                            StringBuilder sb4 = new StringBuilder("Upstatus vail count:");
                                            sb4.append(iC);
                                            sb4.append("::Setting UpstatuCount:");
                                            sb4.append(fVarF.i());
                                            if (iC >= fVarF.i()) {
                                                hVarA2.b(false);
                                                hVarA2.E(4);
                                                com.anythink.core.common.n.c.a(applicationContext).a(10, hVarA2);
                                                com.anythink.core.common.n.c.a(applicationContext).a(12, hVarA2);
                                                f.this.d = false;
                                                com.anythink.core.common.b.a aVar3 = aVar;
                                                if (aVar3 != null) {
                                                    aVar3.onAdLoaded();
                                                    f.this.g.b(aVar);
                                                }
                                                return;
                                            }
                                            com.anythink.core.common.b.a aVar4 = aVar;
                                            if (aVar4 != null) {
                                                aVar4.onAdLoaded();
                                                f.this.g.b(aVar);
                                            }
                                            String unused5 = f.this.l;
                                            StringBuilder sb5 = new StringBuilder("Upstatus vail count:");
                                            sb5.append(iC);
                                            sb5.append("::Setting UpstatuCount:");
                                            sb5.append(fVarF.i());
                                            sb5.append("::StartFilledLoad");
                                            vVar.d = 9;
                                            hVarA2.x(9);
                                        } else {
                                            fVar = f.this;
                                        }
                                    }
                                    if (fVarF != null && f.this.n) {
                                        jCurrentTimeMillis = System.currentTimeMillis() - f.this.o;
                                        if (jCurrentTimeMillis > 0 && jCurrentTimeMillis < fVarF.at()) {
                                            AdError errorCode = ErrorCode.getErrorCode(ErrorCode.loadFailInPacingError, "", "");
                                            hVarA2.E(7);
                                            f.this.a(f.this.p ? false : true, hVarA2, new com.anythink.core.common.f.g(errorCode, errorCode.printStackTrace()), vVar);
                                            f.this.p = true;
                                            return;
                                        }
                                    }
                                    f.j(f.this);
                                    f.k(f.this);
                                    f.this.p = false;
                                    if (fVarF == null && com.anythink.core.a.b.a().a(applicationContext, str2, fVarF)) {
                                        AdError errorCode2 = ErrorCode.getErrorCode(ErrorCode.loadCappingError, "", "");
                                        hVarA2.E(8);
                                        f.this.a(true, hVarA2, (Throwable) new com.anythink.core.common.f.g(errorCode2, errorCode2.printStackTrace()), vVar);
                                        return;
                                    } else {
                                        if (!f.this.f()) {
                                            Log.i("anythink", "Placement(" + str2 + ") is loading.");
                                            e.a(vVar.g, e.c, str2, f.this.m, f.this.e);
                                            return;
                                        }
                                        hVarA.g(str2);
                                        f fVar7 = f.this;
                                        fVar7.d = true;
                                        Iterator<g> it = fVar7.c.values().iterator();
                                        while (it.hasNext()) {
                                            it.next().f();
                                        }
                                        com.anythink.core.d.h.a(context).a(fVarF, strO, strP, str2, vVar.g, new h.b() { // from class: com.anythink.core.common.f.1.1
                                            @Override // com.anythink.core.d.h.b
                                            public final void a(AdError adError) {
                                                String unused6 = f.this.l;
                                                String str8 = h.n.m;
                                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                                String str9 = str2;
                                                String strD = com.anythink.core.common.o.h.d(str);
                                                String strPrintStackTrace = adError.printStackTrace();
                                                if (ATSDK.isNetworkLogDebug()) {
                                                    try {
                                                        JSONObject jSONObject = new JSONObject();
                                                        jSONObject.put(NativeAdvancedJsUtils.p, h.n.C);
                                                        jSONObject.put(com.anythink.expressad.foundation.d.r.ah, str8);
                                                        jSONObject.put(com.anythink.expressad.videocommon.e.b.v, str9);
                                                        jSONObject.put("adtype", strD);
                                                        jSONObject.put("errorMsg", strPrintStackTrace);
                                                        com.anythink.core.common.o.p.a("anythink_network", jSONObject.toString(), TextUtils.equals(h.n.m, str8));
                                                    } catch (Throwable unused7) {
                                                    }
                                                }
                                                AdError errorCode3 = ErrorCode.getErrorCode(ErrorCode.placeStrategyError, adError.getPlatformCode(), adError.getPlatformMSG());
                                                hVarA2.E(5);
                                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                                f.this.a(true, hVarA2, errorCode3, vVar);
                                            }

                                            @Override // com.anythink.core.d.h.b
                                            public final void a(com.anythink.core.d.f fVar8) {
                                                synchronized (f.this) {
                                                    com.anythink.core.common.o.v.a(hVarA2, fVar8);
                                                    if (TextUtils.equals(String.valueOf(fVar8.ah()), str)) {
                                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                                        f.a(f.this, applicationContext, str2, str5, fVar8, hVarA2, vVar);
                                                        return;
                                                    }
                                                    AdError errorCode3 = ErrorCode.getErrorCode(ErrorCode.formatError, "", "Format corresponding to API: " + com.anythink.core.common.o.h.d(str) + ", Format corresponding to placement strategy: " + com.anythink.core.common.o.h.d(String.valueOf(fVar8.ah())));
                                                    AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                                    f.this.a(vVar, errorCode3);
                                                    hVarA2.b(false);
                                                    com.anythink.core.common.n.e.a(hVarA2, errorCode3);
                                                    f.this.d = false;
                                                }
                                            }

                                            @Override // com.anythink.core.d.h.b
                                            public final void b(com.anythink.core.d.f fVar8) {
                                                if (fVar8.au()) {
                                                    return;
                                                }
                                                f.this.b();
                                            }
                                        }, (zV || !(fVarF == null || fVarF.aJ())) ? 2 : 3);
                                        return;
                                    }
                                }
                                fVar = f.this;
                                fVar.b();
                                if (fVarF != null) {
                                    jCurrentTimeMillis = System.currentTimeMillis() - f.this.o;
                                    if (jCurrentTimeMillis > 0) {
                                        AdError errorCode3 = ErrorCode.getErrorCode(ErrorCode.loadFailInPacingError, "", "");
                                        hVarA2.E(7);
                                        f.this.a(f.this.p ? false : true, hVarA2, new com.anythink.core.common.f.g(errorCode3, errorCode3.printStackTrace()), vVar);
                                        f.this.p = true;
                                        return;
                                    }
                                }
                                f.j(f.this);
                                f.k(f.this);
                                f.this.p = false;
                                if (fVarF == null) {
                                }
                                if (!f.this.f()) {
                                }
                            }
                            f.this.a(vVar, ErrorCode.getErrorCode(ErrorCode.appIdOrPlaceIdEmpty, "", ""));
                            if (com.anythink.core.common.b.n.a().A()) {
                                Log.e("anythink", "Please check these params in your code (AppId: " + com.anythink.core.common.b.n.a().o() + ", AppKey: " + com.anythink.core.common.b.n.a().p() + ", PlacementId: " + str2 + ")");
                            }
                            f.this.d = false;
                        }
                    }
                }
            }
        }, 2, true);
    }

    public final void a(AdError adError) {
        com.anythink.core.common.j.d dVar = this.k;
        if (dVar != null) {
            dVar.a(adError, this.f);
        }
    }

    public final void a(ax axVar, com.anythink.core.d.f fVar) {
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(this.b);
        if (fVarA != null) {
            boolean z = true;
            if (fVar != null && (TextUtils.equals(fVarA.ae(), fVar.ae()) || fVarA.au())) {
                z = false;
            }
            if (z) {
                return;
            }
        }
        synchronized (this.h) {
            this.h.add(axVar);
        }
    }

    public final void a(com.anythink.core.common.f.b bVar) {
        List<ax> list;
        if (bVar == null || (list = this.h) == null) {
            return;
        }
        synchronized (list) {
            if (this.h.size() > 0) {
                this.h.remove(0);
            }
        }
    }

    public final void a(com.anythink.core.common.f.v vVar, AdError adError) {
        n nVar = this.g;
        if (nVar != null) {
            nVar.a(1, vVar, (ba) null, adError);
        }
    }

    public final void a(com.anythink.core.common.j.c cVar) {
        this.i = cVar;
    }

    public final void a(com.anythink.core.common.j.e eVar) {
        this.j = eVar;
    }

    public final void a(String str) {
        this.c.remove(str);
    }

    public final void a(String str, double d, av avVar) {
        g gVar = this.c.get(str);
        if (gVar != null) {
            gVar.a(d, avVar);
        }
    }

    public final boolean a(ATAdStatusInfo aTAdStatusInfo) {
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(this.b);
        if ((fVarA == null || c() < fVarA.i() || aTAdStatusInfo == null || !aTAdStatusInfo.isReady()) && !ATAdxSetting.getInstance().isAdxNetworkMode(this.b)) {
            return k() || (fVarA != null && fVarA.af() == 1);
        }
        return false;
    }

    public final g b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.c.get(str);
    }

    public final List<ATAdInfo> b(Context context) {
        com.anythink.core.common.f.b bVarA;
        if (w.a().b()) {
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(context).a(this.b);
            ATAdInfo aTAdInfoN = null;
            if (fVarA != null && w.a().c(this.b)) {
                Log.w("anythink", "Forbidden placement");
                return null;
            }
            if (w.a().a(fVarA)) {
                String strL = fVarA.l();
                w.a();
                f fVarA2 = w.a(strL, String.valueOf(fVarA.ah()));
                if (fVarA2 != null && (bVarA = fVarA2.a(context, false, false, (Map<String, Object>) null, (com.anythink.core.common.f.c) null)) != null) {
                    aTAdInfoN = bVarA.n();
                }
                List<ATAdInfo> listA = a(context);
                if (aTAdInfoN == null) {
                    return listA;
                }
                if (listA == null || listA.size() == 0) {
                    ArrayList arrayList = new ArrayList(2);
                    arrayList.add(aTAdInfoN);
                    return arrayList;
                }
                ATAdInfo aTAdInfo = listA.get(0);
                if (aTAdInfo == null || aTAdInfoN.getEcpm() <= aTAdInfo.getEcpm()) {
                    return listA;
                }
                StringBuilder sb = new StringBuilder("sharedCheckValidAdCaches, shared top price > real top price, shared price: ");
                sb.append(aTAdInfoN.getEcpm());
                sb.append(", real price: ");
                sb.append(aTAdInfo.getEcpm());
                listA.add(0, aTAdInfoN);
                return listA;
            }
        }
        return a(context);
    }

    public final void b() {
        synchronized (this.h) {
            this.h.clear();
        }
    }

    public final void b(Context context, String str, String str2, com.anythink.core.common.f.v vVar, com.anythink.core.common.b.a aVar) {
        f fVar;
        Context context2;
        String str3;
        String str4;
        com.anythink.core.common.f.v vVar2;
        com.anythink.core.common.b.a anonymousClass5;
        if (w.a().b()) {
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(context).a(this.b);
            if (fVarA != null && w.a().c(this.b)) {
                Log.w("anythink", "Forbidden placement");
                if (aVar != null) {
                    aVar.onAdLoadFail(ErrorCode.getErrorCode(ErrorCode.sharedPlacementIdError, "", ""));
                    return;
                }
                return;
            }
            if (w.a().a(fVarA)) {
                String strL = fVarA.l();
                com.anythink.core.common.f.c cVar = new com.anythink.core.common.f.c();
                a(cVar, str2, fVarA);
                vVar.i = cVar;
                com.anythink.core.common.b.a[] aVarArr = {aVar};
                if (fVarA.o() == 1) {
                    com.anythink.core.common.f.b bVarB = b(context, strL, str, vVar);
                    if (bVarB != null) {
                        String strA = com.anythink.core.common.o.h.a(context);
                        vVar.a = strA;
                        com.anythink.core.common.o.p.a("Shared", "placementId:" + str2 + ";result_callback:success;");
                        com.anythink.core.common.f.h hVarH = bVarB.h();
                        com.anythink.core.common.n.e.a(str2, strL, str, strA, fVarA, true, "1", "2", hVarH != null ? hVarH.ai() : "");
                        if (aVarArr[0] != null) {
                            aVarArr[0].onAdLoaded();
                        }
                        aVarArr[0] = null;
                    } else {
                        w.a().b(strL);
                    }
                    str4 = str2;
                    fVar = this;
                    context2 = context;
                    str3 = str;
                    vVar2 = vVar;
                    anonymousClass5 = new AnonymousClass4(aVarArr, str4, strL, str, vVar, fVarA);
                } else {
                    fVar = this;
                    context2 = context;
                    str3 = str;
                    str4 = str2;
                    vVar2 = vVar;
                    anonymousClass5 = new AnonymousClass5(str2, strL, str, vVar, fVarA, aVarArr, context);
                }
                fVar.a(context2, str3, str4, vVar2, anonymousClass5);
                return;
            }
        }
        a(context, str, str2, vVar, aVar);
    }

    public final int c() {
        List<ax> list = this.h;
        int i = 0;
        if (list != null) {
            synchronized (list) {
                Iterator<ax> it = this.h.iterator();
                while (it.hasNext()) {
                    ax next = it.next();
                    if (next == null || !next.a()) {
                        it.remove();
                    } else {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    public final void c(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.f.3
            @Override // java.lang.Runnable
            public final void run() {
                g gVar = f.this.c.get(str);
                if (gVar != null) {
                    gVar.g();
                }
            }
        }, 2, true);
    }

    public final void d() {
        this.n = false;
        this.o = 0L;
        this.p = false;
    }

    public final void e() {
        com.anythink.core.d.f fVarB = com.anythink.core.d.h.a(this.a).b(this.b);
        if (this.n || fVarB == null) {
            return;
        }
        this.n = true;
        this.o = System.currentTimeMillis();
    }

    public final boolean f() {
        g gVar;
        if (this.d) {
            return true;
        }
        return (TextUtils.isEmpty(this.e) || (gVar = this.c.get(this.e)) == null || gVar.c()) ? false : true;
    }

    public final String g() {
        return this.e;
    }
}
