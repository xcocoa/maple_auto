package com.anythink.core.common.f;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";
    public ATAdxBidFloorInfo A;
    public String B;
    public Context b;
    public v c;
    public String d;
    public String e;
    public int f;
    public long g;
    public long h;
    public long i;
    public List<av> j;
    public List<av> k;
    public String l;
    public boolean m;
    public ba n;
    public String o;
    public String p;
    public Map<String, Object> q;
    public JSONObject r;
    public h s;
    public double u;
    public az v;
    public aq w;
    public p x;
    public com.anythink.core.common.p.i y;
    public int t = 2;
    public int z = 0;

    private a d(List<av> list) {
        a aVar = new a();
        aVar.b = this.b;
        aVar.d = this.d;
        aVar.e = this.e;
        aVar.f = this.f;
        aVar.h = this.h;
        aVar.n = this.n;
        long j = this.g;
        if (j < 0) {
            j = UMAmapConfig.AMAP_CACHE_WRITE_TIME;
        }
        aVar.g = j;
        aVar.m = this.m;
        aVar.o = this.o;
        aVar.p = this.p;
        aVar.j = list;
        aVar.q = this.q;
        aVar.i = this.i;
        aVar.c = this.c;
        aVar.s = this.s;
        aVar.t = this.t;
        aVar.u = this.u;
        aVar.z = this.z;
        aVar.y = this.y;
        aVar.x = this.x;
        aVar.A = this.A;
        aVar.B = this.B;
        return aVar;
    }

    public final a a(List<av> list) {
        return d(list);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:11:0x006d, B:27:0x009e, B:31:0x00c1, B:33:0x00cb, B:34:0x00ce, B:36:0x00de, B:37:0x00ec, B:39:0x00f2, B:41:0x00fe, B:42:0x0109, B:44:0x010f, B:45:0x011b, B:47:0x0121, B:48:0x0126, B:50:0x012c, B:51:0x0131, B:28:0x00a2, B:30:0x00be, B:16:0x0082, B:19:0x008c), top: B:58:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:11:0x006d, B:27:0x009e, B:31:0x00c1, B:33:0x00cb, B:34:0x00ce, B:36:0x00de, B:37:0x00ec, B:39:0x00f2, B:41:0x00fe, B:42:0x0109, B:44:0x010f, B:45:0x011b, B:47:0x0121, B:48:0x0126, B:50:0x012c, B:51:0x0131, B:28:0x00a2, B:30:0x00be, B:16:0x0082, B:19:0x008c), top: B:58:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00de A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:11:0x006d, B:27:0x009e, B:31:0x00c1, B:33:0x00cb, B:34:0x00ce, B:36:0x00de, B:37:0x00ec, B:39:0x00f2, B:41:0x00fe, B:42:0x0109, B:44:0x010f, B:45:0x011b, B:47:0x0121, B:48:0x0126, B:50:0x012c, B:51:0x0131, B:28:0x00a2, B:30:0x00be, B:16:0x0082, B:19:0x008c), top: B:58:0x006d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final a a(List<av> list, List<av> list2) {
        String strValueOf;
        int iHashCode;
        List<ae> listA;
        a aVarD = d(list);
        aVarD.l = this.l;
        if (list2.size() > 0) {
            Collections.sort(list2);
            List<av> listA2 = com.anythink.core.common.o.h.a(list2, (com.anythink.core.common.g.d) null);
            aVarD.k = listA2;
            byte b = 0;
            av avVar = listA2.get(0);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (av avVar2 : listA2) {
                if (avVar2.m() == 7) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(avVar2.u())));
                    arrayList2.add(avVar2.u());
                }
            }
            JSONObject jSONObject = new JSONObject();
            ATBidRequestInfo.fillBaseCommonParams(jSONObject, String.valueOf(aVarD.f), this.n.a(), avVar);
            try {
                strValueOf = String.valueOf(aVarD.f);
                iHashCode = strValueOf.hashCode();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (iHashCode != 50) {
                b = (iHashCode == 52 && strValueOf.equals("4")) ? (byte) 1 : (byte) -1;
                if (b != 0) {
                    String string = aVarD.n.a().a(aVarD.e, aVarD.d, avVar).get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BANNER_SIZE).toString();
                    if (!TextUtils.isEmpty(string)) {
                        jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BANNER_SIZE, string);
                    }
                } else if (b == 1) {
                    jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.GET_OFFER, 2);
                }
                if (aVarD.z == aVarD.k.size()) {
                    jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.GET_OFFER, 2);
                }
                listA = com.anythink.core.common.d.c.a(aVarD.b).a(arrayList2);
                if (listA.size() > 0) {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    for (ae aeVar : listA) {
                        if (aeVar.d() > 0) {
                            jSONObject2.put(aeVar.a(), aeVar.d());
                        }
                        if (aeVar.c() > 0) {
                            jSONObject3.put(aeVar.a(), aeVar.c());
                        }
                    }
                    if (jSONObject2.length() > 0) {
                        jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_DA_OFFER_CLICK, jSONObject2);
                    }
                    if (jSONObject3.length() > 0) {
                        jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.DIRECTLY_DA_OFFER_IMPRESSION, jSONObject3);
                    }
                }
                jSONObject.put("unit_ids", new JSONArray(arrayList.toString()));
                aVarD.r = jSONObject;
            } else {
                if (!strValueOf.equals("2")) {
                }
                if (b != 0) {
                }
                if (aVarD.z == aVarD.k.size()) {
                }
                listA = com.anythink.core.common.d.c.a(aVarD.b).a(arrayList2);
                if (listA.size() > 0) {
                }
                jSONObject.put("unit_ids", new JSONArray(arrayList.toString()));
                aVarD.r = jSONObject;
            }
        }
        aVarD.v = this.v;
        aVarD.w = this.w;
        return aVarD;
    }

    public final a b(List<av> list) {
        a aVarD = d(list);
        aVarD.o = this.o;
        aVarD.h = this.h;
        return aVarD;
    }

    public final a c(List<av> list) {
        a aVarD = d(list);
        aVarD.p = this.p;
        return aVarD;
    }
}
