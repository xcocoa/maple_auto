package com.anythink.core.common.f;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.basead.adx.api.IATAdxHandler;
import com.anythink.core.common.c.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class q extends o implements Comparable<q> {
    public int a;
    public String b;
    public String c;
    public int d;
    public long e;
    public long f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public double l;
    public String m;
    public int n;
    public double o;
    public String p;
    public double q;
    public com.anythink.core.b.c.a r;
    public boolean s;
    public List<p> t;
    public bc u;
    private final String v;
    private boolean w;
    private String x;
    private a y;
    private IATAdxHandler z;

    public interface a {
        void a(Map<String, Object> map);

        void b(Map<String, Object> map);
    }

    public q(boolean z, double d, double d2, String str, String str2, String str3, String str4, String str5) {
        super(z, d2, str, str2, str3, str4, str5, ATAdConst.CURRENCY.USD);
        this.v = q.class.getSimpleName() + ":";
        this.sortPrice = d;
    }

    public q(boolean z, double d, String str, String str2, String str3, String str4, String str5) {
        super(z, d, str, str2, str3, str4, str5, ATAdConst.CURRENCY.USD);
        this.v = q.class.getSimpleName() + ":";
    }

    private int a(q qVar) {
        if (qVar == null) {
            return -1;
        }
        double d = this.sortPrice;
        double d2 = qVar.sortPrice;
        if (d > d2) {
            return -1;
        }
        return d == d2 ? 0 : 1;
    }

    public static q a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            q qVar = new q(jSONObject.optInt("is_success") == 1, jSONObject.has("price") ? jSONObject.optDouble("price", 0.0d) : 0.0d, jSONObject.optString(k.a.c), jSONObject.optString("nurl"), jSONObject.optString("lurl"), jSONObject.optString("burl"), jSONObject.optString("err_msg"));
            qVar.b = jSONObject.optString("cur");
            qVar.c = jSONObject.optString("unit_id");
            qVar.d = jSONObject.optInt("nw_firm_id");
            qVar.a = jSONObject.optInt("err_code");
            qVar.e = jSONObject.optLong("expire");
            qVar.f = jSONObject.optLong("out_data_time");
            qVar.w = jSONObject.optBoolean("is_send_winurl");
            qVar.i = jSONObject.optString(k.a.g);
            qVar.g = jSONObject.optString(az.m);
            qVar.j = jSONObject.optString("burl_win");
            qVar.k = jSONObject.optString("ad_source_id");
            qVar.l = jSONObject.optDouble("cur_rate", 0.0d);
            qVar.m = jSONObject.optString("bid_response");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ctrl");
            if (jSONObjectOptJSONObject != null) {
                qVar.n = jSONObjectOptJSONObject.optInt(com.anythink.core.common.j.ag);
            }
            qVar.o = jSONObject.optDouble("ecpm_api", 0.0d);
            qVar.p = jSONObject.optString(com.anythink.core.common.j.R);
            qVar.q = jSONObject.optDouble(IATAdxHandler.SECOND_PRICE, 0.0d);
            qVar.h = jSONObject.optString("req_url", "");
            qVar.useType = jSONObject.optInt("bd_type", 1);
            double dOptDouble = jSONObject.optDouble(com.anythink.core.common.j.ao, qVar.price);
            qVar.sortPrice = dOptDouble;
            qVar.originPrice = jSONObject.optDouble("origin_price", dOptDouble);
            if (qVar.d == 1) {
                double d = qVar.o;
                if (d > 0.0d) {
                    qVar.price = d;
                    qVar.sortPrice = d;
                }
            }
            Object objOpt = jSONObject.opt("request_id");
            if (objOpt != null) {
                qVar.x = objOpt.toString();
            }
            return qVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void a(double d) {
        this.q = d;
    }

    private void a(bc bcVar) {
        this.u = bcVar;
    }

    private bc j() {
        return this.u;
    }

    public final void a(IATAdxHandler iATAdxHandler) {
        this.z = iATAdxHandler;
    }

    public final synchronized void a(p pVar) {
        if (pVar == null) {
            return;
        }
        if (this.t == null) {
            this.t = Collections.synchronizedList(new ArrayList(4));
        }
        if (!this.t.contains(pVar)) {
            this.t.add(pVar);
        }
    }

    public final void a(a aVar) {
        this.y = aVar;
    }

    public final boolean a() {
        return this.f < System.currentTimeMillis();
    }

    public final String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(k.a.c, this.token);
            jSONObject.put("cur", this.b);
            jSONObject.put("origin_price", this.originPrice);
            jSONObject.put("price", this.price);
            jSONObject.put("nurl", this.winNoticeUrl);
            jSONObject.put("lurl", this.loseNoticeUrl);
            jSONObject.put("unit_id", this.c);
            jSONObject.put("nw_firm_id", this.d);
            jSONObject.put("is_success", this.isSuccess ? 1 : 0);
            jSONObject.put("err_code", this.a);
            jSONObject.put("err_msg", this.errorMsg);
            jSONObject.put("expire", this.e);
            jSONObject.put("out_data_time", this.f);
            jSONObject.put("is_send_winurl", this.w);
            jSONObject.put(az.m, this.g);
            jSONObject.put("burl", this.displayNoticeUrl);
            jSONObject.put("ad_source_id", this.k);
            jSONObject.put("cur_rate", this.l);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.anythink.core.common.j.ag, this.n);
            jSONObject.put("ctrl", jSONObject2);
            if (!TextUtils.isEmpty(this.m)) {
                jSONObject.put("bid_response", this.m);
            }
            jSONObject.put("ecpm_api", this.o);
            jSONObject.put(com.anythink.core.common.j.R, this.p);
            jSONObject.put(IATAdxHandler.SECOND_PRICE, this.q);
            jSONObject.put("req_url", this.h);
            jSONObject.put("bd_type", this.useType);
            jSONObject.put(com.anythink.core.common.j.ao, this.sortPrice);
            jSONObject.put("request_id", this.x);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public final void b(String str) {
        this.x = str;
    }

    public final String c() {
        return this.x;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(q qVar) {
        q qVar2 = qVar;
        if (qVar2 == null) {
            return -1;
        }
        double d = this.sortPrice;
        double d2 = qVar2.sortPrice;
        if (d > d2) {
            return -1;
        }
        return d == d2 ? 0 : 1;
    }

    public final synchronized boolean d() {
        if (this.w) {
            return true;
        }
        this.w = true;
        return false;
    }

    public final synchronized void e() {
        this.biddingNotice = null;
    }

    public final synchronized av f() {
        av avVar;
        avVar = null;
        List<p> list = this.t;
        if (list != null) {
            Iterator<p> it = list.iterator();
            while (it.hasNext()) {
                av avVarA = it.next().a();
                if (avVarA != null && com.anythink.core.common.o.h.a(avVarA) > com.anythink.core.common.o.h.a(avVar)) {
                    avVar = avVarA;
                }
            }
        }
        return avVar;
    }

    public final synchronized void g() {
        List<p> list = this.t;
        if (list != null) {
            list.clear();
        }
    }

    public final IATAdxHandler h() {
        return this.z;
    }

    public final a i() {
        return this.y;
    }
}
