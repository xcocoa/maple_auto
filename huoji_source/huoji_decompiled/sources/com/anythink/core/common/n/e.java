package com.anythink.core.common.n;

import android.app.KeyguardManager;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ah;
import com.anythink.core.common.f.ai;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.ba;
import com.anythink.core.common.f.bc;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.k;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.y;
import com.anythink.core.common.f.z;
import com.anythink.core.common.o.i;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    public static final int f = 0;
    public static final int g = 1;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 1;
    public static final int l = 2;
    public static final int m = 3;
    public static final int n = 4;
    public static final int o = 5;
    public static final int p = 0;
    private static String q = "";

    public static void a() {
        k kVar = new k(null, null);
        kVar.a = "1004657";
        a(kVar);
    }

    public static void a(int i2, int i3, int i4, int i5) {
        k kVar = new k(null, String.valueOf(i5));
        kVar.a = "1004641";
        kVar.m = String.valueOf(i2);
        kVar.n = String.valueOf(i3);
        kVar.o = String.valueOf(i4);
        kVar.p = String.valueOf(i5);
        a(kVar);
    }

    public static void a(int i2, long j2, long j3, String str) {
        k kVar = new k(null, null);
        kVar.a = "1004644";
        kVar.e = str;
        kVar.m = String.valueOf(i2);
        kVar.n = String.valueOf(j2);
        kVar.o = String.valueOf(j3);
        kVar.p = String.valueOf(j3 - j2);
        a(kVar);
    }

    private static void a(int i2, long j2, long j3, String str, String str2) {
        k kVar = new k(null, null);
        kVar.a = "1004651";
        kVar.e = str;
        kVar.m = String.valueOf(i2);
        kVar.n = String.valueOf(j3 - j2);
        kVar.o = str2;
        a(kVar);
    }

    public static void a(av avVar, com.anythink.core.common.f.a aVar, long j2, boolean z, boolean z3) {
        k kVar = new k(String.valueOf(aVar.f), String.valueOf(avVar.d()));
        kVar.a = "1004660";
        ba baVar = aVar.n;
        com.anythink.core.d.f fVarA = baVar != null ? baVar.a() : null;
        kVar.b = aVar.d;
        kVar.d = aVar.e;
        String strQ = "";
        kVar.g = String.valueOf(fVarA != null ? Integer.valueOf(fVarA.ao()) : "");
        kVar.l = String.valueOf(fVarA != null ? Integer.valueOf(fVarA.Z()) : "");
        kVar.j = fVarA != null ? fVarA.ae() : "";
        kVar.m = String.valueOf(avVar.d());
        kVar.n = avVar.u();
        kVar.o = z ? "1" : "2";
        kVar.p = String.valueOf(j2);
        kVar.q = z3 ? "1" : "2";
        if (fVarA != null) {
            try {
                strQ = fVarA.q();
            } catch (Throwable unused) {
            }
        }
        kVar.C = strQ;
        try {
            Object obj = aVar.c.g.get(ATAdConst.KEY.CP_PLACEMENT_ID);
            if (obj != null) {
                kVar.D = obj.toString();
            }
        } catch (Throwable unused2) {
        }
        a(kVar);
    }

    public static void a(bc bcVar) {
        if (bcVar == null) {
            return;
        }
        k kVar = new k(bcVar.q(), String.valueOf(bcVar.n()));
        kVar.a = "1004667";
        kVar.m = String.valueOf(bcVar.n());
        kVar.n = bcVar.o();
        kVar.o = bcVar.f();
        kVar.p = bcVar.g();
        kVar.q = bcVar.e();
        kVar.r = bcVar.d();
        kVar.s = bcVar.i();
        kVar.t = bcVar.h();
        kVar.u = String.valueOf(bcVar.r());
        kVar.v = String.valueOf(bcVar.s());
        kVar.w = String.valueOf(bcVar.t());
        kVar.x = String.valueOf(bcVar.u());
        kVar.y = String.valueOf(bcVar.v());
        if (bcVar.b() != null) {
            kVar.z = bcVar.b();
        }
        kVar.b = bcVar.j();
        kVar.g = bcVar.k();
        kVar.l = bcVar.l();
        kVar.d = bcVar.m();
        kVar.j = bcVar.p();
        a(kVar);
    }

    public static void a(h hVar) {
        try {
            k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
            kVar.a = "1004640";
            kVar.b = hVar.ai();
            kVar.g = String.valueOf(hVar.Q());
            kVar.l = String.valueOf(hVar.af());
            kVar.d = hVar.ah();
            kVar.m = String.valueOf(hVar.P());
            kVar.n = hVar.F();
            kVar.o = String.valueOf(hVar.H());
            kVar.p = String.valueOf(hVar.R());
            kVar.q = String.valueOf(hVar.S());
            kVar.C = hVar.aa();
            kVar.D = hVar.ab();
            kVar.A = hVar.aj();
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(h hVar, int i2, AdError adError) {
        try {
            a(hVar.ai(), hVar.ah(), hVar.Q(), hVar.N(), hVar.P(), hVar.F(), hVar.aj(), -1, i2, adError, hVar.D(), hVar.E(), 0L, hVar.af(), hVar.T(), hVar.q, hVar.aa(), hVar.ab());
        } catch (Throwable unused) {
        }
    }

    public static void a(h hVar, int i2, AdError adError, long j2) {
        try {
            a(hVar.ai(), hVar.ah(), hVar.Q(), hVar.N(), hVar.P(), hVar.F(), hVar.aj(), hVar.H(), i2, adError, hVar.D(), hVar.E(), j2, hVar.af(), hVar.T(), hVar.q, hVar.aa(), hVar.ab());
        } catch (Throwable unused) {
        }
    }

    public static void a(h hVar, int i2, String str, double d2, String str2, String str3) {
        k kVar = new k(hVar.aj(), String.valueOf(i2));
        kVar.a = "1004668";
        kVar.d = hVar.ah();
        kVar.m = String.valueOf(i2);
        kVar.n = str;
        kVar.o = String.valueOf(d2);
        kVar.p = str2;
        kVar.q = str3;
        kVar.j = hVar.ag();
        kVar.g = String.valueOf(hVar.Q());
        kVar.l = String.valueOf(hVar.af());
        kVar.C = hVar.aa();
        kVar.D = hVar.ab();
        a(kVar);
    }

    public static void a(h hVar, AdError adError) {
        try {
            k kVar = new k(hVar.aj(), null);
            kVar.a = "1004630";
            kVar.b = hVar.ai();
            kVar.d = hVar.ah();
            kVar.l = String.valueOf(hVar.af());
            kVar.g = String.valueOf(hVar.Q());
            kVar.k = String.valueOf(hVar.N());
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(n.a().f()).a(hVar.ah());
            kVar.j = fVarA != null ? fVarA.ae() : "";
            if (adError != null) {
                kVar.m = adError.printStackTrace();
                kVar.n = adError.getCode();
            }
            kVar.C = hVar.aa();
            kVar.D = hVar.ab();
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(h hVar, AdError adError, Map<String, Object> map) {
        k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
        kVar.a = "1004636";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.g = String.valueOf(hVar.Q());
        kVar.k = String.valueOf(hVar.N());
        kVar.l = String.valueOf(hVar.af());
        kVar.m = String.valueOf(hVar.P());
        kVar.n = hVar.F();
        kVar.o = String.valueOf(hVar.I());
        if (adError != null) {
            kVar.p = adError.getCode();
            kVar.q = adError.getPlatformCode();
            kVar.r = adError.getPlatformMSG();
        }
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(n.a().f()).a(hVar.ah());
        kVar.j = fVarA != null ? fVarA.ae() : "";
        kVar.A = hVar.aj();
        if (map != null) {
            try {
                if (map.containsKey("offer_id")) {
                    kVar.s = map.get("offer_id").toString();
                }
                if (map.containsKey(ATAdConst.NETWORK_CUSTOM_KEY.RV_ANIM_TYPE) && hVar.aj().equals("1")) {
                    kVar.t = map.get(ATAdConst.NETWORK_CUSTOM_KEY.RV_ANIM_TYPE).toString();
                }
            } catch (Throwable unused) {
            }
        }
        kVar.C = hVar.aa();
        kVar.D = hVar.ab();
        a(kVar);
    }

    public static void a(h hVar, com.anythink.core.d.d dVar, String str, double d2, String str2, double d3) {
        k kVar = new k(null, null);
        kVar.a = "1004702";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.l = String.valueOf(hVar.af());
        kVar.g = String.valueOf(hVar.Q());
        kVar.m = hVar.aj();
        kVar.n = dVar.a() == 1 ? "1" : "2";
        kVar.o = String.valueOf(dVar.b());
        kVar.p = String.valueOf(dVar.c());
        kVar.q = String.valueOf(dVar.d());
        kVar.r = String.valueOf(dVar.f());
        kVar.s = String.valueOf(dVar.e());
        kVar.t = str;
        kVar.u = String.valueOf(d2);
        kVar.v = str2;
        kVar.w = String.valueOf(d3);
        a(kVar);
    }

    public static void a(h hVar, com.anythink.core.d.f fVar, String str, String str2, String str3, int i2) {
        k kVar = new k(null, null);
        kVar.a = "1004696";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.g = String.valueOf(hVar.Q());
        kVar.l = String.valueOf(hVar.af());
        if (fVar != null) {
            kVar.j = fVar.ae();
        }
        kVar.m = str;
        kVar.n = str2;
        kVar.o = str3;
        kVar.p = String.valueOf(i2);
        a(kVar);
    }

    public static void a(h hVar, com.anythink.core.d.f fVar, String str, String str2, String str3, String str4, String str5) {
        k kVar = new k(null, str);
        kVar.a = "1004695";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.g = String.valueOf(hVar.Q());
        kVar.l = String.valueOf(hVar.af());
        if (fVar != null) {
            kVar.j = fVar.ae();
        }
        kVar.m = str;
        kVar.n = str2;
        kVar.o = str3;
        kVar.p = str4;
        kVar.q = str5;
        a(kVar);
    }

    private static void a(h hVar, String str) {
        try {
            k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
            kVar.a = "1004639";
            kVar.b = hVar.ai();
            kVar.d = hVar.ah();
            kVar.l = String.valueOf(hVar.af());
            kVar.g = String.valueOf(hVar.Q());
            kVar.m = String.valueOf(hVar.P());
            kVar.n = hVar.F();
            kVar.o = String.valueOf(hVar.H());
            kVar.p = str;
            kVar.A = hVar.aj();
            kVar.C = hVar.aa();
            kVar.D = hVar.ab();
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(h hVar, String str, String str2) {
        k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
        kVar.a = "1004669";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.m = String.valueOf(hVar.P());
        kVar.n = str;
        kVar.o = str2;
        kVar.j = hVar.ag();
        kVar.g = String.valueOf(hVar.Q());
        kVar.l = String.valueOf(hVar.af());
        kVar.C = hVar.aa();
        kVar.D = hVar.ab();
        a(kVar);
    }

    public static void a(h hVar, String str, String str2, String str3, String str4, String str5) {
        k kVar = new k(null, null);
        kVar.a = "1004705";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.l = String.valueOf(hVar.af());
        kVar.g = String.valueOf(hVar.Q());
        kVar.k = String.valueOf(hVar.N());
        kVar.m = String.valueOf(hVar.P());
        kVar.n = hVar.F();
        kVar.o = str4;
        kVar.p = str5;
        kVar.q = str;
        kVar.r = str2;
        kVar.s = str3;
        a(kVar);
    }

    public static void a(h hVar, boolean z) {
        int iW;
        k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
        kVar.a = "1004634";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.g = String.valueOf(hVar.Q());
        kVar.k = String.valueOf(hVar.N());
        kVar.l = String.valueOf(hVar.af());
        kVar.m = String.valueOf(hVar.P());
        kVar.n = hVar.F();
        kVar.o = String.valueOf(hVar.I());
        kVar.p = z ? "1" : "0";
        kVar.q = String.valueOf(hVar.y);
        if (hVar.P() == 66 && (iW = hVar.W()) != 0) {
            kVar.r = String.valueOf(iW);
        }
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(n.a().f()).a(hVar.ah());
        kVar.j = fVarA != null ? fVarA.ae() : "";
        kVar.A = hVar.aj();
        kVar.C = hVar.aa();
        kVar.D = hVar.ab();
        a(kVar);
        b.a().a(kVar, hVar);
    }

    public static void a(h hVar, boolean z, long j2, long j3, long j4) {
        try {
            k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
            kVar.a = "1004643";
            kVar.b = hVar.ai();
            kVar.d = hVar.ah();
            kVar.g = String.valueOf(hVar.Q());
            kVar.k = String.valueOf(hVar.N());
            kVar.l = String.valueOf(hVar.af());
            kVar.m = hVar.aj();
            kVar.n = String.valueOf(j2);
            kVar.o = String.valueOf(j3);
            kVar.p = String.valueOf(j4);
            kVar.q = String.valueOf(hVar.P());
            kVar.r = hVar.F();
            kVar.s = String.valueOf(hVar.I());
            kVar.t = String.valueOf(hVar.y);
            kVar.u = z ? "1" : "0";
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(n.a().f()).a(hVar.ah());
            kVar.j = fVarA != null ? fVarA.ae() : "";
            kVar.A = hVar.aj();
            kVar.C = hVar.aa();
            kVar.D = hVar.ab();
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(j jVar, m mVar, String str, ah ahVar, boolean z) {
        k kVar = new k(String.valueOf(mVar.j), "66");
        kVar.a = "1004704";
        kVar.b = mVar.d;
        kVar.d = mVar.b;
        kVar.l = String.valueOf(mVar.h);
        kVar.g = String.valueOf(mVar.i);
        kVar.m = jVar != null ? jVar.t() : "";
        kVar.n = "2";
        kVar.o = String.valueOf(mVar.j);
        if (!TextUtils.isEmpty(str)) {
            kVar.p = str;
        }
        kVar.q = String.valueOf(ahVar.b - ahVar.a);
        kVar.r = String.valueOf(ahVar.c - ahVar.a);
        if (jVar != null) {
            kVar.s = jVar.e() == 1 ? "1" : "0";
        } else {
            kVar.s = "0";
        }
        kVar.t = String.valueOf(ahVar.e - ahVar.d);
        kVar.u = mVar.p ? "1" : "0";
        kVar.v = String.valueOf(ahVar.b - ahVar.c);
        kVar.w = z ? "1" : "0";
        a(kVar);
    }

    public static void a(final k kVar) {
        if (kVar == null) {
            return;
        }
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.n.e.5
            @Override // java.lang.Runnable
            public final void run() {
                if (TextUtils.isEmpty(kVar.e)) {
                    kVar.e = n.a().q();
                }
                if (!TextUtils.isEmpty(kVar.d)) {
                    kVar.f = n.a().g(kVar.d);
                    e.c(kVar);
                    if (ATAdxSetting.getInstance().isAdxNetworkMode(kVar.d)) {
                        kVar.I = 1;
                    }
                }
                kVar.i = String.valueOf(System.currentTimeMillis());
                com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
                boolean zA = false;
                if (aVarB != null) {
                    zA = e.a(kVar, aVarB);
                    if (e.c(aVarB, kVar)) {
                        return;
                    }
                    if (e.b(aVarB, kVar)) {
                        f.a(n.a().f()).a(kVar, zA);
                        return;
                    }
                }
                d.a().a(kVar, zA);
            }
        }, 8, true);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:5|(1:7)(2:9|(1:11)(10:12|(1:14)|15|(1:17)|18|33|19|(2:21|(6:23|(1:25)|35|26|(1:28)|29))|30|31))|8|15|(0)|18|33|19|(0)|30|31) */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0086 A[Catch: all -> 0x00c7, TryCatch #0 {all -> 0x00c7, blocks: (B:19:0x0082, B:21:0x0086, B:23:0x0097, B:25:0x00a3, B:26:0x00b2, B:28:0x00b9, B:29:0x00c1), top: B:33:0x0082 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(l lVar, m mVar, String str, String str2) {
        String str3;
        if (lVar == null || mVar == null) {
            return;
        }
        k kVar = new k(String.valueOf(mVar.j), String.valueOf(mVar.f));
        kVar.a = "1004652";
        kVar.d = mVar.b;
        kVar.m = String.valueOf(mVar.f);
        kVar.n = mVar.c;
        kVar.b = mVar.d;
        if (lVar instanceof z) {
            str3 = "1";
        } else {
            if (!(lVar instanceof j)) {
                if (lVar instanceof ai) {
                    str3 = "3";
                }
                kVar.p = str;
                if (TextUtils.equals("0", str)) {
                    kVar.q = str2;
                }
                kVar.r = lVar.t();
                kVar.s = lVar.u();
                kVar.t = lVar.F();
                kVar.u = lVar.v();
                kVar.v = lVar.w();
                kVar.w = lVar.x();
                kVar.x = lVar.y();
                kVar.y = lVar.B();
                if (lVar instanceof aj) {
                    StringBuilder sb = new StringBuilder();
                    String strAj = ((aj) lVar).aj();
                    if (!TextUtils.isEmpty(strAj)) {
                        JSONArray jSONArray = new JSONArray(strAj);
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            sb.append(jSONArray.optString(i2));
                            sb.append(",");
                        }
                        if (sb.length() > 1) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        kVar.z = sb.toString();
                    }
                }
                a(kVar);
            }
            str3 = "2";
        }
        kVar.o = str3;
        kVar.p = str;
        if (TextUtils.equals("0", str)) {
        }
        kVar.r = lVar.t();
        kVar.s = lVar.u();
        kVar.t = lVar.F();
        kVar.u = lVar.v();
        kVar.v = lVar.w();
        kVar.w = lVar.x();
        kVar.x = lVar.y();
        kVar.y = lVar.B();
        if (lVar instanceof aj) {
        }
        a(kVar);
    }

    public static void a(m mVar, l lVar) {
        if (lVar == null || mVar == null || !(lVar instanceof aj)) {
            return;
        }
        k kVar = new k(String.valueOf(mVar.j), String.valueOf(mVar.f));
        kVar.a = "1004697";
        kVar.b = mVar.d;
        kVar.d = mVar.b;
        kVar.g = String.valueOf(mVar.i);
        kVar.l = String.valueOf(mVar.h);
        kVar.m = lVar.t();
        kVar.n = lVar.u();
        kVar.o = ((aj) lVar).ad();
        a(kVar);
    }

    public static void a(m mVar, l lVar, int i2) {
        try {
            k kVar = new k(String.valueOf(mVar.j), String.valueOf(mVar.f));
            kVar.a = "1004679";
            kVar.b = mVar.d;
            kVar.d = mVar.b;
            if (lVar instanceof j) {
                kVar.m = ((j) lVar).ad();
            }
            kVar.n = mVar.c;
            kVar.o = lVar.t();
            kVar.p = String.valueOf(lVar.d());
            kVar.q = lVar.i();
            kVar.r = lVar.j();
            kVar.s = String.valueOf(i2);
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(m mVar, l lVar, String str, String str2, int i2) {
        if (mVar == null || lVar == null) {
            return;
        }
        k kVar = new k(String.valueOf(mVar.j), String.valueOf(mVar.f));
        kVar.a = "1004650";
        kVar.d = mVar.b;
        kVar.m = lVar.t();
        kVar.n = String.valueOf(lVar.d());
        kVar.o = str;
        kVar.p = str2;
        kVar.q = String.valueOf(i2);
        kVar.b = mVar.d;
        kVar.t = String.valueOf(mVar.j);
        a(kVar);
    }

    public static void a(m mVar, l lVar, String str, String str2, String str3, String str4) {
        if (mVar == null || lVar == null) {
            return;
        }
        k kVar = new k(null, null);
        kVar.a = "1004648";
        kVar.d = mVar.b;
        kVar.m = lVar.t();
        kVar.n = String.valueOf(lVar.d());
        kVar.o = str;
        kVar.p = str2;
        kVar.q = str3;
        kVar.r = str4;
        kVar.b = mVar.d;
        a(kVar);
    }

    public static void a(m mVar, l lVar, boolean z, int i2, int i3, long j2, long j3) {
        if (mVar == null || lVar == null) {
            return;
        }
        k kVar = new k(null, null);
        kVar.a = "1004699";
        kVar.b = mVar.d;
        kVar.d = mVar.b;
        kVar.m = z ? "2" : "1";
        kVar.n = String.valueOf(i2);
        kVar.o = String.valueOf(j2);
        kVar.p = String.valueOf(j3);
        kVar.q = String.valueOf(mVar.j);
        kVar.r = String.valueOf(i3);
        if (lVar instanceof j) {
            j jVar = (j) lVar;
            kVar.s = String.valueOf(jVar.ad());
            kVar.t = String.valueOf(jVar.t());
        }
        a(kVar);
    }

    public static void a(y yVar, double d2, String str, double d3, double d4, double d5) {
        k kVar = new k(String.valueOf(yVar.n()), String.valueOf(yVar.k()));
        kVar.a = "1004659";
        kVar.b = yVar.g();
        kVar.d = yVar.j();
        kVar.g = String.valueOf(yVar.h());
        kVar.l = String.valueOf(yVar.i());
        kVar.j = yVar.m();
        kVar.m = String.valueOf(yVar.k());
        kVar.n = yVar.l();
        kVar.o = String.valueOf(d2);
        kVar.p = str;
        kVar.C = yVar.o();
        kVar.D = yVar.p();
        kVar.q = String.valueOf(d3);
        kVar.r = String.valueOf(d4);
        kVar.s = yVar.r();
        kVar.t = String.valueOf(yVar.s());
        kVar.u = String.valueOf(yVar.f());
        kVar.v = String.valueOf(d5);
        if (yVar.b() != null) {
            kVar.w = yVar.b();
        }
        a(kVar);
    }

    private static void a(Runnable runnable) {
        com.anythink.core.common.o.b.b.a().a(runnable, 13, true);
    }

    public static void a(final String str) {
        a(new Runnable() { // from class: com.anythink.core.common.n.e.6
            @Override // java.lang.Runnable
            public final void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                k kVarA = k.a(str);
                if (TextUtils.isEmpty(kVarA.a)) {
                    return;
                }
                e.a(kVarA);
            }
        });
    }

    public static void a(String str, av avVar, boolean z, long j2, com.anythink.core.common.f.a aVar) {
        com.anythink.core.d.f fVarA = aVar != null ? aVar.n.a() : null;
        k kVar = new k(String.valueOf(aVar.f), String.valueOf(avVar.d()));
        kVar.a = "1004665";
        kVar.d = str;
        String strQ = "";
        kVar.j = fVarA != null ? fVarA.ae() : "";
        kVar.m = String.valueOf(avVar.d());
        kVar.n = avVar.u();
        kVar.o = String.valueOf(z ? 1 : 2);
        kVar.p = String.valueOf(j2);
        if (fVarA != null) {
            try {
                strQ = fVarA.q();
            } catch (Throwable unused) {
            }
        }
        kVar.C = strQ;
        try {
            Object obj = aVar.c.g.get(ATAdConst.KEY.CP_PLACEMENT_ID);
            if (obj != null) {
                kVar.D = obj.toString();
            }
        } catch (Throwable unused2) {
        }
        a(kVar);
    }

    public static void a(String str, h hVar, String str2, Object obj) {
        k kVar = new k(null, null);
        kVar.a = "1004701";
        kVar.d = str;
        kVar.g = String.valueOf(hVar.Q());
        kVar.l = String.valueOf(hVar.af());
        kVar.m = hVar.aj();
        kVar.n = String.valueOf(hVar.P());
        kVar.o = hVar.F();
        kVar.p = String.valueOf(hVar.T());
        kVar.q = str2;
        kVar.r = obj != null ? obj.toString() : "";
        a(kVar);
    }

    private static void a(String str, String str2, int i2, int i3, int i4, String str3, String str4, int i5, int i6, AdError adError, int i7, double d2, long j2, int i8, int i9, int i10, String str5, String str6) {
        k kVar = new k(str4, String.valueOf(i4));
        kVar.a = "1004631";
        kVar.b = str;
        kVar.d = str2;
        kVar.g = String.valueOf(i2);
        kVar.k = String.valueOf(i3);
        kVar.l = String.valueOf(i8);
        kVar.m = String.valueOf(i4);
        kVar.n = str3;
        kVar.o = String.valueOf(i5);
        kVar.p = String.valueOf(i6);
        kVar.q = adError != null ? adError.getPlatformCode() : "";
        kVar.r = adError != null ? adError.getPlatformMSG() : "";
        kVar.s = String.valueOf(i7);
        kVar.t = String.valueOf(d2);
        if (i6 == 0) {
            kVar.u = String.valueOf(j2);
        }
        kVar.v = String.valueOf(i9);
        kVar.w = String.valueOf(i10);
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(n.a().f()).a(str2);
        kVar.j = fVarA != null ? fVarA.ae() : "";
        kVar.C = str5;
        kVar.D = str6;
        a(kVar);
    }

    public static void a(String str, String str2, int i2, String str3, Map<String, JSONArray> map, int i3, int i4, int i5, String str4, int i6, int i7, long j2, String str5, int i8) {
        k kVar = new k(null, null);
        kVar.a = "1004675";
        kVar.b = str2;
        kVar.d = str;
        kVar.m = str3;
        kVar.n = String.valueOf(i2);
        kVar.p = String.valueOf(i3);
        kVar.q = String.valueOf(i4);
        kVar.r = String.valueOf(i5);
        kVar.s = str4;
        kVar.t = String.valueOf(i6);
        if (i7 >= 0) {
            kVar.u = String.valueOf(i7);
        }
        if (j2 > 0) {
            kVar.v = String.valueOf(j2);
        }
        if (!TextUtils.isEmpty(str5)) {
            kVar.w = str5;
        }
        if (i8 > 0) {
            kVar.x = String.valueOf(i8);
        }
        if (map != null && map.size() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, JSONArray> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                kVar.y = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        a(kVar);
    }

    public static void a(String str, String str2, int i2, String str3, JSONArray jSONArray, String str4, int i3) {
        k kVar = new k(null, null);
        kVar.a = "1004700";
        kVar.b = str2;
        kVar.d = str;
        kVar.m = str3;
        kVar.n = String.valueOf(i2);
        kVar.o = jSONArray != null ? jSONArray.toString() : "";
        kVar.p = str4;
        kVar.q = String.valueOf(i3);
        a(kVar);
    }

    public static void a(String str, String str2, long j2, long j3, long j4) {
        k kVar = new k(null, null);
        kVar.a = "1004635";
        if (!TextUtils.isEmpty(str2)) {
            kVar.d = str2;
        }
        kVar.m = str;
        kVar.n = String.valueOf(j2);
        kVar.o = String.valueOf(j3);
        kVar.p = String.valueOf(j4);
        a(kVar);
    }

    public static void a(String str, String str2, h hVar, com.anythink.core.d.f fVar, String str3, String str4) {
        try {
            k kVar = new k(hVar.aj(), String.valueOf(hVar.P()));
            kVar.a = "1004658";
            kVar.b = hVar.ai();
            kVar.d = str;
            kVar.g = String.valueOf(hVar.Q());
            kVar.k = String.valueOf(hVar.N());
            kVar.l = String.valueOf(hVar.af());
            kVar.j = fVar != null ? fVar.ae() : "";
            kVar.m = String.valueOf(hVar.P());
            kVar.n = hVar.F();
            kVar.o = hVar.t();
            kVar.p = hVar.m();
            kVar.q = hVar.B;
            kVar.r = str3;
            kVar.s = str4;
            kVar.t = str2;
            kVar.C = hVar.aa();
            kVar.D = hVar.ab();
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, String str2, com.anythink.core.d.f fVar, int i2, String str3, Map<String, Object> map) {
        Object obj;
        try {
            k kVar = new k(fVar != null ? String.valueOf(fVar.ah()) : "", "");
            kVar.a = "1004633";
            kVar.b = str;
            kVar.d = str2;
            kVar.g = String.valueOf(fVar != null ? fVar.ao() : 0);
            kVar.k = "0";
            kVar.l = String.valueOf(fVar != null ? Integer.valueOf(fVar.Z()) : "");
            kVar.m = String.valueOf(i2);
            kVar.n = str3;
            kVar.q = str;
            kVar.r = "0";
            kVar.j = fVar != null ? fVar.ae() : "";
            kVar.C = fVar != null ? fVar.q() : "";
            if (map != null && (obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID)) != null) {
                kVar.D = obj.toString();
            }
            a(kVar);
        } catch (Throwable unused) {
        }
    }

    private static void a(String str, String str2, com.anythink.core.d.f fVar, String str3) {
        k kVar = new k(null, null);
        kVar.a = "1004646";
        kVar.b = str;
        kVar.d = str2;
        kVar.g = String.valueOf(fVar.ao());
        kVar.l = String.valueOf(fVar.Z());
        kVar.j = fVar.ae();
        kVar.t = String.valueOf(str3);
        a(kVar);
    }

    public static void a(String str, String str2, com.anythink.core.d.f fVar, String str3, com.anythink.core.common.f.b bVar, long j2) {
        String string;
        if (bVar != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(bVar.h().P());
            string = sb.toString();
        } else {
            string = null;
        }
        k kVar = new k("4", string);
        kVar.a = "1004690";
        kVar.b = str2;
        kVar.d = str;
        if (fVar != null) {
            kVar.l = String.valueOf(fVar.Z());
            kVar.g = String.valueOf(fVar.ao());
            kVar.j = fVar != null ? fVar.ae() : "";
        }
        kVar.m = str3;
        if (bVar != null) {
            kVar.n = bVar.k();
            kVar.o = kVar.B;
            kVar.p = bVar.h() != null ? bVar.h().F() : "";
        }
        kVar.q = "1";
        kVar.r = String.valueOf(j2);
        a(kVar);
    }

    public static void a(String str, String str2, com.anythink.core.d.f fVar, boolean z, boolean z3, boolean z4, String str3, String str4, String str5) {
        k kVar = new k(null, "");
        kVar.a = "1004694";
        kVar.b = str3;
        kVar.d = str;
        if (fVar != null) {
            kVar.g = String.valueOf(fVar.ao());
            kVar.l = String.valueOf(fVar.Z());
            kVar.j = fVar.ae();
        }
        kVar.k = str5;
        kVar.m = z ? "1" : "0";
        kVar.n = z4 ? "1" : "0";
        kVar.o = z3 ? "1" : "0";
        kVar.p = str2;
        kVar.q = str4;
        a(kVar);
    }

    public static void a(String str, String str2, String str3) {
        b(str, str2, str3, "");
    }

    public static void a(String str, String str2, String str3, int i2, String str4, long j2, long j3) {
        k kVar = new k(null, null);
        kVar.a = "1004642";
        kVar.b = str;
        kVar.m = str2;
        kVar.n = str3;
        kVar.o = String.valueOf(i2);
        if (i2 == 3 || i2 == 10) {
            kVar.p = str4;
        } else if (i2 == 2) {
            kVar.q = String.valueOf(j2);
            kVar.r = String.valueOf(j3 / 1024.0f);
        }
        a(kVar);
    }

    public static void a(String str, String str2, String str3, String str4) {
        k kVar = new k(null, null);
        kVar.a = "1004637";
        kVar.d = str;
        kVar.m = str2;
        kVar.n = str3;
        kVar.o = str4;
        a(kVar);
    }

    public static void a(final String str, final String str2, final String str3, final String str4, final int i2, final int i3, final long j2) {
        a(new Runnable() { // from class: com.anythink.core.common.n.e.4
            @Override // java.lang.Runnable
            public final void run() {
                k kVar = new k(String.valueOf(i3), "");
                kVar.a = "1004691";
                com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
                if (aVarB == null || aVarB.I() || !aVarB.c() || e.c(aVarB, kVar)) {
                    return;
                }
                kVar.b = str2;
                kVar.d = str3;
                kVar.m = str;
                kVar.n = str4;
                long j3 = j2;
                if (j3 >= 0) {
                    kVar.o = String.valueOf(j3);
                }
                int i4 = i2;
                if (i4 > 0) {
                    kVar.p = String.valueOf(i4);
                }
                com.anythink.core.common.i.d dVarB = com.anythink.core.common.i.e.a().b();
                if (dVarB != null) {
                    kVar.q = String.valueOf(dVarB.a());
                    kVar.r = String.valueOf(dVarB.e());
                    kVar.s = String.valueOf(dVarB.f());
                    kVar.t = String.valueOf(dVarB.b());
                    kVar.u = String.valueOf(dVarB.g());
                    kVar.v = String.valueOf(dVarB.h());
                    kVar.w = String.valueOf(dVarB.c());
                    kVar.x = String.valueOf(dVarB.d());
                }
                kVar.y = String.valueOf(com.anythink.core.common.i.e.a().e());
                e.a(kVar);
            }
        });
    }

    public static void a(String str, String str2, String str3, String str4, long j2, String str5, long j3, long j4, int i2, long j5) {
        k kVar = new k(null, null);
        kVar.a = "1004638";
        kVar.d = str;
        kVar.m = str2;
        kVar.n = str3;
        kVar.o = str4;
        kVar.p = String.valueOf(j2);
        kVar.q = str5;
        kVar.r = String.valueOf(j3);
        kVar.s = String.valueOf(j4);
        kVar.t = "1".equals(str4) ? String.valueOf(j5) : null;
        kVar.u = String.valueOf(i2);
        a(kVar);
    }

    public static void a(String str, String str2, String str3, String str4, com.anythink.core.d.f fVar, boolean z, String str5, String str6, String str7) {
        k kVar = new k(str3, "");
        kVar.a = "1004693";
        kVar.b = str4;
        kVar.d = str;
        if (fVar != null) {
            kVar.g = String.valueOf(fVar.ao());
            kVar.l = String.valueOf(fVar.Z());
            kVar.j = fVar.ae();
        }
        kVar.m = z ? "1" : "2";
        kVar.n = str5;
        kVar.o = str6;
        if (fVar != null) {
            kVar.p = fVar.o() != 1 ? "2" : "1";
        }
        kVar.q = str2;
        kVar.r = str7;
        a(kVar);
    }

    public static void a(String str, String str2, String str3, String str4, String str5) {
        k kVar = new k(null, null);
        kVar.a = "1004688";
        if (!TextUtils.isEmpty(str)) {
            kVar.d = str;
        }
        kVar.m = str2;
        kVar.n = str3;
        kVar.o = str4;
        kVar.p = str5;
        a(kVar);
    }

    private static void a(final String str, final String str2, final String str3, final String str4, final String str5, final int i2, final boolean z, final String str6, final String str7) {
        a(new Runnable() { // from class: com.anythink.core.common.n.e.2
            @Override // java.lang.Runnable
            public final void run() {
                k kVar = new k(str4, str5);
                kVar.a = "1004680";
                kVar.b = str;
                kVar.d = str2;
                kVar.m = str3;
                kVar.n = String.valueOf(i2);
                kVar.o = z ? "1" : "0";
                boolean zIsScreenOn = true;
                try {
                    zIsScreenOn = ((PowerManager) n.a().f().getSystemService("power")).isScreenOn();
                } catch (Throwable unused) {
                }
                kVar.p = zIsScreenOn ? "1" : "0";
                kVar.q = i.a(n.a().f()) ? "1" : "0";
                kVar.r = str7;
                kVar.s = str6;
                e.a(kVar);
            }
        });
    }

    public static void a(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final int i2, final int i3, final String str7, final String str8, final boolean z, final long j2) {
        a(new Runnable() { // from class: com.anythink.core.common.n.e.3
            @Override // java.lang.Runnable
            public final void run() {
                boolean zIsScreenOn;
                k kVar = new k(str5, str6);
                kVar.a = "1004687";
                com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
                if (aVarB == null || !e.c(aVarB, kVar)) {
                    kVar.b = str2;
                    kVar.d = str3;
                    kVar.m = str4;
                    kVar.n = String.valueOf(i2);
                    kVar.o = String.valueOf(i3);
                    boolean zA = true;
                    try {
                        zIsScreenOn = ((PowerManager) n.a().f().getSystemService("power")).isScreenOn();
                    } catch (Throwable unused) {
                        zIsScreenOn = true;
                    }
                    boolean zInKeyguardRestrictedInputMode = false;
                    try {
                        KeyguardManager keyguardManager = (KeyguardManager) n.a().f().getSystemService("keyguard");
                        if (keyguardManager != null) {
                            zInKeyguardRestrictedInputMode = keyguardManager.inKeyguardRestrictedInputMode();
                        }
                    } catch (Throwable unused2) {
                    }
                    kVar.p = (zInKeyguardRestrictedInputMode || !zIsScreenOn) ? (zInKeyguardRestrictedInputMode || zIsScreenOn) ? (zInKeyguardRestrictedInputMode && zIsScreenOn) ? "2" : "3" : "1" : "0";
                    try {
                        zA = i.a(n.a().f());
                    } catch (Throwable unused3) {
                    }
                    kVar.q = zA ? "1" : "0";
                    kVar.r = str8;
                    kVar.s = str7;
                    kVar.t = z ? "1" : "2";
                    if (TextUtils.isEmpty(e.q)) {
                        try {
                            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                            long blockSize = statFs.getBlockSize();
                            String unused4 = e.q = ((statFs.getAvailableBlocks() * blockSize) / 1048576) + "MB";
                            kVar.u = e.q;
                        } catch (Throwable unused5) {
                        }
                    } else {
                        kVar.u = e.q;
                    }
                    kVar.v = str;
                    kVar.w = String.valueOf(j2);
                    e.a(kVar);
                }
            }
        });
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        k kVar = new k(null, null);
        kVar.a = "1004616";
        kVar.d = str5;
        kVar.m = str;
        kVar.n = str2;
        kVar.o = str3;
        kVar.p = str4;
        kVar.q = str6;
        kVar.r = str7;
        a(kVar);
    }

    public static void a(String str, String str2, boolean z, int i2, com.anythink.core.d.f fVar, com.anythink.core.common.f.b bVar, String str3, String str4, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        a(str, str2, z, i2, fVar, bVar, str3, str4, map, cVar, 0L);
    }

    public static void a(final String str, final String str2, final boolean z, final int i2, final com.anythink.core.d.f fVar, final com.anythink.core.common.f.b bVar, final String str3, final String str4, final Map<String, Object> map, final com.anythink.core.common.f.c cVar, final long j2) {
        try {
            a(new Runnable() { // from class: com.anythink.core.common.n.e.1
                /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
                /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
                /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
                /* JADX WARN: Removed duplicated region for block: B:34:0x007d  */
                /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x0093  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x0099  */
                /* JADX WARN: Removed duplicated region for block: B:42:0x009e  */
                /* JADX WARN: Removed duplicated region for block: B:45:0x00a3  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x00ac  */
                /* JADX WARN: Removed duplicated region for block: B:49:0x00b1  */
                /* JADX WARN: Removed duplicated region for block: B:50:0x00b4  */
                /* JADX WARN: Removed duplicated region for block: B:53:0x00bd  */
                /* JADX WARN: Removed duplicated region for block: B:54:0x00c2  */
                /* JADX WARN: Removed duplicated region for block: B:57:0x00c8  */
                /* JADX WARN: Removed duplicated region for block: B:60:0x00d7  */
                /* JADX WARN: Removed duplicated region for block: B:62:0x00db  */
                /* JADX WARN: Removed duplicated region for block: B:67:0x00eb  */
                /* JADX WARN: Removed duplicated region for block: B:72:0x00fd  */
                /* JADX WARN: Removed duplicated region for block: B:75:0x0107  */
                /* JADX WARN: Removed duplicated region for block: B:76:0x010c  */
                /* JADX WARN: Removed duplicated region for block: B:79:0x0113  */
                /* JADX WARN: Removed duplicated region for block: B:82:0x011f  */
                /* JADX WARN: Removed duplicated region for block: B:84:0x0126  */
                /* JADX WARN: Removed duplicated region for block: B:88:0x0131  */
                /* JADX WARN: Removed duplicated region for block: B:90:0x0138  */
                /* JADX WARN: Removed duplicated region for block: B:97:0x014d  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void run() {
                    int iAo;
                    int iZ;
                    com.anythink.core.common.f.b bVar2;
                    long j3;
                    String strQ;
                    Object obj;
                    String string;
                    com.anythink.core.common.f.c cVar2;
                    com.anythink.core.common.f.b bVar3 = bVar;
                    h hVarH = bVar3 != null ? bVar3.h() : null;
                    com.anythink.core.d.f fVar2 = fVar;
                    k kVar = new k(fVar2 != null ? String.valueOf(fVar2.ah()) : "", hVarH != null ? String.valueOf(hVarH.P()) : "");
                    kVar.a = "1004632";
                    kVar.b = str;
                    kVar.d = str2;
                    String str5 = "0";
                    if (hVarH != null) {
                        iAo = hVarH.Q();
                    } else {
                        com.anythink.core.d.f fVar3 = fVar;
                        if (fVar3 == null) {
                            kVar.g = "0";
                            kVar.k = hVarH == null ? String.valueOf(hVarH.N()) : "0";
                            if (hVarH != null) {
                                com.anythink.core.d.f fVar4 = fVar;
                                if (fVar4 != null) {
                                    iZ = fVar4.Z();
                                }
                                kVar.m = z ? "1" : "0";
                                kVar.n = String.valueOf(i2);
                                kVar.o = hVarH != null ? String.valueOf(hVarH.I()) : HRConfig.GENDER_UNKNOWN;
                                kVar.p = hVarH != null ? hVarH.F() : "";
                                kVar.q = hVarH != null ? String.valueOf(hVarH.P()) : "";
                                kVar.r = hVarH != null ? hVarH.u : "";
                                kVar.s = str3;
                                kVar.t = hVarH != null ? hVarH.ai() : str;
                                if (hVarH == null || TextUtils.equals(str, hVarH.ai())) {
                                    kVar.u = "0";
                                } else {
                                    kVar.u = "1";
                                }
                                if (hVarH != null && hVarH.q == 3) {
                                    str5 = "1";
                                }
                                kVar.v = str5;
                                kVar.w = str4;
                                bVar2 = bVar;
                                if (bVar2 != null && bVar2.k() == "3") {
                                    kVar.y = "1";
                                }
                                j3 = j2;
                                if (j3 > 0) {
                                    kVar.x = String.valueOf(j3);
                                }
                                com.anythink.core.d.f fVar5 = fVar;
                                kVar.j = fVar5 != null ? fVar5.ae() : "";
                                com.anythink.core.d.f fVar6 = fVar;
                                kVar.A = fVar6 != null ? String.valueOf(fVar6.ah()) : "";
                                if (hVarH == null) {
                                    com.anythink.core.d.f fVar7 = fVar;
                                    if (fVar7 != null) {
                                        strQ = fVar7.q();
                                    }
                                    if (hVarH != null) {
                                        Map map2 = map;
                                        if (map2 != null && (obj = map2.get(ATAdConst.KEY.CP_PLACEMENT_ID)) != null) {
                                            string = obj.toString();
                                        }
                                        cVar2 = cVar;
                                        if (cVar2 != null) {
                                            kVar.F = cVar2.a();
                                            kVar.G = cVar.b();
                                            kVar.H = cVar.c();
                                        }
                                        e.a(kVar);
                                    }
                                    string = hVarH.ab();
                                    kVar.D = string;
                                    cVar2 = cVar;
                                    if (cVar2 != null) {
                                    }
                                    e.a(kVar);
                                }
                                strQ = hVarH.aa();
                                kVar.C = strQ;
                                if (hVarH != null) {
                                }
                                kVar.D = string;
                                cVar2 = cVar;
                                if (cVar2 != null) {
                                }
                                e.a(kVar);
                            }
                            iZ = hVarH.af();
                            kVar.l = String.valueOf(iZ);
                            kVar.m = z ? "1" : "0";
                            kVar.n = String.valueOf(i2);
                            kVar.o = hVarH != null ? String.valueOf(hVarH.I()) : HRConfig.GENDER_UNKNOWN;
                            kVar.p = hVarH != null ? hVarH.F() : "";
                            kVar.q = hVarH != null ? String.valueOf(hVarH.P()) : "";
                            kVar.r = hVarH != null ? hVarH.u : "";
                            kVar.s = str3;
                            kVar.t = hVarH != null ? hVarH.ai() : str;
                            if (hVarH == null) {
                                kVar.u = "0";
                            }
                            if (hVarH != null) {
                                str5 = "1";
                            }
                            kVar.v = str5;
                            kVar.w = str4;
                            bVar2 = bVar;
                            if (bVar2 != null) {
                                kVar.y = "1";
                            }
                            j3 = j2;
                            if (j3 > 0) {
                            }
                            com.anythink.core.d.f fVar52 = fVar;
                            kVar.j = fVar52 != null ? fVar52.ae() : "";
                            com.anythink.core.d.f fVar62 = fVar;
                            kVar.A = fVar62 != null ? String.valueOf(fVar62.ah()) : "";
                            if (hVarH == null) {
                            }
                            kVar.C = strQ;
                            if (hVarH != null) {
                            }
                            kVar.D = string;
                            cVar2 = cVar;
                            if (cVar2 != null) {
                            }
                            e.a(kVar);
                        }
                        iAo = fVar3.ao();
                    }
                    kVar.g = String.valueOf(iAo);
                    kVar.k = hVarH == null ? String.valueOf(hVarH.N()) : "0";
                    if (hVarH != null) {
                    }
                    kVar.l = String.valueOf(iZ);
                    kVar.m = z ? "1" : "0";
                    kVar.n = String.valueOf(i2);
                    kVar.o = hVarH != null ? String.valueOf(hVarH.I()) : HRConfig.GENDER_UNKNOWN;
                    kVar.p = hVarH != null ? hVarH.F() : "";
                    kVar.q = hVarH != null ? String.valueOf(hVarH.P()) : "";
                    kVar.r = hVarH != null ? hVarH.u : "";
                    kVar.s = str3;
                    kVar.t = hVarH != null ? hVarH.ai() : str;
                    if (hVarH == null) {
                    }
                    if (hVarH != null) {
                    }
                    kVar.v = str5;
                    kVar.w = str4;
                    bVar2 = bVar;
                    if (bVar2 != null) {
                    }
                    j3 = j2;
                    if (j3 > 0) {
                    }
                    com.anythink.core.d.f fVar522 = fVar;
                    kVar.j = fVar522 != null ? fVar522.ae() : "";
                    com.anythink.core.d.f fVar622 = fVar;
                    kVar.A = fVar622 != null ? String.valueOf(fVar622.ah()) : "";
                    if (hVarH == null) {
                    }
                    kVar.C = strQ;
                    if (hVarH != null) {
                    }
                    kVar.D = string;
                    cVar2 = cVar;
                    if (cVar2 != null) {
                    }
                    e.a(kVar);
                }
            });
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ boolean a(k kVar, com.anythink.core.d.a aVar) {
        Map<String, String> mapE;
        if (TextUtils.isEmpty(kVar.a) || TextUtils.isEmpty(kVar.B) || TextUtils.isEmpty(kVar.A) || (mapE = aVar.e(kVar.a)) == null) {
            return false;
        }
        if (mapE.containsKey("0")) {
            String str = mapE.get("0");
            if (TextUtils.isEmpty(str) || !str.contains(kVar.A)) {
                return false;
            }
        } else {
            if (!mapE.containsKey(kVar.B)) {
                return false;
            }
            String str2 = mapE.get(kVar.B);
            if (TextUtils.isEmpty(str2) || !str2.contains(kVar.A)) {
                return false;
            }
        }
        return true;
    }

    public static void b(k kVar) {
        a(kVar);
    }

    public static void b(m mVar, l lVar, int i2) {
        if (mVar == null || lVar == null) {
            return;
        }
        k kVar = new k(null, null);
        kVar.a = "1004698";
        kVar.b = mVar.d;
        kVar.d = mVar.b;
        kVar.g = String.valueOf(mVar.i);
        kVar.l = String.valueOf(mVar.h);
        kVar.m = lVar.t();
        kVar.n = lVar.u();
        kVar.o = lVar instanceof j ? ((j) lVar).ad() : "";
        kVar.p = String.valueOf(mVar.j);
        kVar.q = String.valueOf(mVar.a);
        kVar.r = String.valueOf(i2);
        kVar.s = String.valueOf(mVar.k);
        a(kVar);
    }

    public static void b(String str, String str2, String str3, String str4) {
        k kVar = new k(null, null);
        kVar.a = "1004647";
        kVar.e = str3;
        kVar.m = str2;
        kVar.n = str;
        kVar.o = str4;
        a(kVar);
    }

    private static boolean b(k kVar, com.anythink.core.d.a aVar) {
        Map<String, String> mapE;
        if (TextUtils.isEmpty(kVar.a) || TextUtils.isEmpty(kVar.B) || TextUtils.isEmpty(kVar.A) || (mapE = aVar.e(kVar.a)) == null) {
            return false;
        }
        if (mapE.containsKey("0")) {
            String str = mapE.get("0");
            if (TextUtils.isEmpty(str) || !str.contains(kVar.A)) {
                return false;
            }
        } else {
            if (!mapE.containsKey(kVar.B)) {
                return false;
            }
            String str2 = mapE.get(kVar.B);
            if (TextUtils.isEmpty(str2) || !str2.contains(kVar.A)) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ boolean b(com.anythink.core.d.a aVar, k kVar) {
        Map<String, String> mapAl = aVar.al();
        if (mapAl != null) {
            if (TextUtils.isEmpty(kVar.A)) {
                return mapAl.containsKey(kVar.a);
            }
            if (mapAl.containsKey(kVar.a)) {
                String str = mapAl.get(kVar.a);
                if (!TextUtils.isEmpty(str) && str.contains(kVar.A)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void c(k kVar) {
        com.anythink.core.d.f fVarB = com.anythink.core.d.h.a(n.a().f()).b(kVar.d);
        if (fVarB != null) {
            kVar.E = fVarB.aI();
        }
    }

    public static void c(String str, String str2, String str3, String str4) {
        k kVar = new k("", "");
        if (TextUtils.isEmpty(kVar.a)) {
            kVar.a = "1004685";
        }
        kVar.c = n.a().o();
        if (!TextUtils.isEmpty(str)) {
            kVar.m = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            kVar.n = str2;
        }
        if (!TextUtils.isEmpty(str3)) {
            kVar.o = str3;
        }
        if (!TextUtils.isEmpty(str4)) {
            kVar.p = str4;
        }
        a(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(com.anythink.core.d.a aVar, k kVar) {
        if (n.a().v()) {
            return true;
        }
        String strAp = aVar.ap();
        if (!TextUtils.isEmpty(strAp)) {
            String str = kVar.B;
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONArray jSONArray = new JSONArray(strAp);
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        if (TextUtils.equals(str, jSONArray.optString(i2))) {
                            return true;
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        Map<String, String> mapAn = aVar.an();
        if (mapAn == null) {
            return false;
        }
        if (TextUtils.isEmpty(kVar.A)) {
            return mapAn.containsKey(kVar.a);
        }
        if (mapAn.containsKey(kVar.a)) {
            String str2 = mapAn.get(kVar.a);
            if (!TextUtils.isEmpty(str2) && str2.contains(kVar.A)) {
                return true;
            }
        }
        return false;
    }

    private static boolean d(com.anythink.core.d.a aVar, k kVar) {
        Map<String, String> mapAl = aVar.al();
        if (mapAl != null) {
            if (TextUtils.isEmpty(kVar.A)) {
                return mapAl.containsKey(kVar.a);
            }
            if (mapAl.containsKey(kVar.a)) {
                String str = mapAl.get(kVar.a);
                if (!TextUtils.isEmpty(str) && str.contains(kVar.A)) {
                    return true;
                }
            }
        }
        return false;
    }
}
