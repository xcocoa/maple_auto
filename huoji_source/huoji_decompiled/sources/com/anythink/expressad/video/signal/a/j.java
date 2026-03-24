package com.anythink.expressad.video.signal.a;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.api.ATAdConst;
import com.anythink.expressad.foundation.d.r;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.v;
import com.anythink.expressad.video.signal.a.c;
import com.anythink.expressad.video.signal.c;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j extends c {
    private static final String t = "j";
    private static final String y = "camp_position";
    private List<com.anythink.expressad.foundation.d.c> A;
    private int B;
    private String C = "";
    private String D = "";
    private boolean E = false;
    private boolean F = false;
    private boolean G = true;
    private Activity u;
    private String v;
    private String w;
    private Context x;
    private com.anythink.expressad.foundation.d.c z;

    public j(Activity activity, com.anythink.expressad.foundation.d.c cVar) {
        this.u = activity;
        this.z = cVar;
    }

    public j(Activity activity, com.anythink.expressad.foundation.d.c cVar, List<com.anythink.expressad.foundation.d.c> list) {
        this.u = activity;
        this.z = cVar;
        this.A = list;
    }

    private static JSONObject A() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", new com.anythink.expressad.foundation.h.c(com.anythink.core.common.b.n.a().f()).a());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject B() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.s);
            jSONObject2.put("instanceId", this.C);
            jSONObject.put("sdkSetting", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject C() {
        JSONObject jSONObject = new JSONObject();
        com.anythink.expressad.videocommon.e.d dVar = this.o;
        return dVar != null ? dVar.R() : jSONObject;
    }

    private static JSONObject D() {
        JSONObject jSONObject = new JSONObject();
        com.anythink.expressad.videocommon.e.a aVarB = com.anythink.expressad.videocommon.e.c.a().b();
        return aVarB != null ? aVarB.k() : jSONObject;
    }

    private static boolean E() {
        return false;
    }

    private com.anythink.expressad.foundation.d.c a(String str, com.anythink.expressad.foundation.d.c cVar) {
        if (TextUtils.isEmpty(str)) {
            return cVar;
        }
        if (TextUtils.isEmpty(str) && cVar == null) {
            return null;
        }
        try {
            if (str.contains("notice")) {
                JSONObject jSONObjectA = com.anythink.expressad.foundation.d.c.a(cVar);
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.opt(com.anythink.expressad.foundation.d.h.cv) == null) {
                    jSONObject.put(com.anythink.expressad.foundation.d.h.cv, "");
                }
                try {
                    if (!jSONObject.has(com.anythink.expressad.foundation.d.c.O)) {
                        jSONObjectA.put(com.anythink.expressad.foundation.d.c.O, "");
                    }
                } catch (Exception unused) {
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectA.put(next, jSONObject.getString(next));
                }
                com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(jSONObjectA);
                a(jSONObjectA, cVarB);
                return cVarB;
            }
            try {
                JSONObject jSONObjectA2 = com.anythink.expressad.foundation.d.c.a(cVar);
                com.anythink.expressad.foundation.d.c cVarB2 = com.anythink.expressad.foundation.d.c.b(jSONObjectA2);
                if (cVarB2 == null) {
                    cVarB2 = cVar;
                }
                if (!TextUtils.isEmpty(str)) {
                    a(jSONObjectA2, cVarB2);
                    JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(com.anythink.expressad.foundation.g.a.ce);
                    if (jSONObjectOptJSONObject != null) {
                        String.valueOf(t.b(this.u, Integer.valueOf(jSONObjectOptJSONObject.getString(com.anythink.expressad.foundation.g.a.cc)).intValue()));
                        String.valueOf(t.b(this.u, Integer.valueOf(jSONObjectOptJSONObject.getString(com.anythink.expressad.foundation.g.a.cd)).intValue()));
                    }
                    cVarB2.p(cVarB2.ad());
                    String strAh = cVarB2.ah();
                    if (jSONObjectOptJSONObject != null) {
                        Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                        StringBuilder sb = new StringBuilder();
                        while (itKeys2.hasNext()) {
                            sb.append("&");
                            String next2 = itKeys2.next();
                            String strOptString = jSONObjectOptJSONObject.optString(next2);
                            if (com.anythink.expressad.foundation.g.a.cc.equals(next2) || com.anythink.expressad.foundation.g.a.cd.equals(next2)) {
                                strOptString = String.valueOf(t.b(this.u, Integer.valueOf(strOptString).intValue()));
                            }
                            sb.append(next2);
                            sb.append("=");
                            sb.append(strOptString);
                        }
                        cVarB2.q(strAh + ((Object) sb));
                    }
                }
                return cVarB2;
            } catch (Throwable th) {
                th.printStackTrace();
                return cVar;
            }
        } catch (JSONException e) {
            e.printStackTrace();
            return cVar;
        }
    }

    private void a(JSONObject jSONObject) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            String string = v.b(contextE, "Anythink_ConfirmTitle" + this.n, "").toString();
            String string2 = v.b(contextE, "Anythink_ConfirmContent" + this.n, "").toString();
            String string3 = v.b(contextE, "Anythink_CancelText" + this.n, "").toString();
            String string4 = v.b(contextE, "Anythink_ConfirmText" + this.n, "").toString();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put(com.anythink.expressad.d.a.b.ct, string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put(com.anythink.expressad.d.a.b.cu, string2);
            }
            if (!TextUtils.isEmpty(string3)) {
                jSONObject.put(com.anythink.expressad.d.a.b.cv, string3);
            }
            if (!TextUtils.isEmpty(string4)) {
                jSONObject.put(com.anythink.expressad.d.a.b.cx, string4);
            }
            if (TextUtils.isEmpty(string4)) {
                return;
            }
            jSONObject.put(com.anythink.expressad.d.a.b.cw, string4);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void a(JSONObject jSONObject, com.anythink.expressad.foundation.d.c cVar) {
        try {
            String strOptString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            cVar.l(strOptString);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        String queryParameter;
        try {
            queryParameter = Uri.parse(cVar.ah()).getQueryParameter(com.anythink.expressad.foundation.g.a.cf);
        } catch (Throwable unused) {
        }
        this.r.a(cVar, (!TextUtils.isEmpty(queryParameter) ? Integer.parseInt(queryParameter) : 0) == 2);
        u().a(this.r);
        u();
    }

    private void c(boolean z) {
        this.G = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean c(com.anythink.expressad.foundation.d.c cVar) {
        long jL;
        try {
            if (!TextUtils.isEmpty(com.anythink.expressad.foundation.b.a.c().f())) {
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
                jL = aVarB != null ? aVarB.l() * 1000 : 0L;
            }
            com.anythink.expressad.videocommon.e.a aVarB2 = com.anythink.expressad.videocommon.e.c.a().b();
            long jC = aVarB2 != null ? aVarB2.c() : 0L;
            if (cVar != null) {
                return cVar.a(jC, jL);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private void e(String str) {
        List<com.anythink.expressad.foundation.d.c> list;
        if (this.z == null || (list = this.A) == null || list.size() == 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(y)) {
                this.z = this.A.get(jSONObject.getInt(y));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private boolean s() {
        return this.G;
    }

    private String t() {
        JSONObject jSONObject = new JSONObject();
        com.anythink.expressad.foundation.h.c cVar = new com.anythink.expressad.foundation.h.c(com.anythink.core.common.b.n.a().f());
        try {
            jSONObject.put("unit_id", this.n);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("instanceId", this.C);
            jSONObject2.put("rootViewInstanceId", this.D);
            jSONObject2.put("isRootTemplateWebView", this.E);
            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SDK_INFO, com.anythink.expressad.out.b.a + ",3.0.1");
            jSONObject2.put("playVideoMute", this.s);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", cVar.a());
            JSONArray jSONArray = new JSONArray();
            List<com.anythink.expressad.foundation.d.c> list = this.A;
            if (list == null || list.size() <= 0) {
                jSONArray.put(com.anythink.expressad.foundation.d.c.a(this.z));
            } else {
                for (com.anythink.expressad.foundation.d.c cVar2 : this.A) {
                    jSONArray.put(com.anythink.expressad.foundation.d.c.a(cVar2, cVar2.at(), c(cVar2)));
                }
            }
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", C());
            String strF = com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.b.a();
            String strA = com.anythink.expressad.d.b.a(strF);
            if (!TextUtils.isEmpty(strA)) {
                JSONObject jSONObject3 = new JSONObject(strA);
                a(jSONObject3);
                com.anythink.expressad.d.b.a();
                String strB = com.anythink.expressad.d.b.b(this.n);
                if (!TextUtils.isEmpty(strB)) {
                    jSONObject3.put("ivreward", new JSONObject(strB));
                }
                jSONObject.put("appSetting", jSONObject3);
            }
            jSONObject.put("rewardSetting", D());
            if (!TextUtils.isEmpty(this.n)) {
                jSONObject.put("unit_id", this.n);
            }
            jSONObject.put("rw_plus", this.F ? "1" : "0");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }

    private com.anythink.expressad.a.a u() {
        if (this.q == null) {
            this.q = new com.anythink.expressad.a.a(com.anythink.core.common.b.n.a().f(), this.n);
        }
        return this.q;
    }

    private JSONObject v() {
        JSONObject jSONObject = new JSONObject();
        com.anythink.expressad.foundation.h.c cVar = new com.anythink.expressad.foundation.h.c(com.anythink.core.common.b.n.a().f());
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.s);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", cVar.a());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(com.anythink.expressad.foundation.d.c.a(this.z));
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", C());
            String strF = com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.b.a();
            String strA = com.anythink.expressad.d.b.a(strF);
            if (!TextUtils.isEmpty(strA)) {
                JSONObject jSONObject3 = new JSONObject(strA);
                a(jSONObject3);
                com.anythink.expressad.d.b.a();
                String strB = com.anythink.expressad.d.b.b(this.n);
                if (!TextUtils.isEmpty(strB)) {
                    jSONObject3.put("ivreward", strB);
                }
                jSONObject.put("appSetting", jSONObject3.toString());
            }
            jSONObject.put("rewardSetting", D());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SDK_INFO, com.anythink.expressad.out.b.a + ",3.0.1");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject x() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.n)) {
                jSONObject.put("unit_id", this.n);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static JSONObject y() {
        JSONObject jSONObject = new JSONObject();
        try {
            String strF = com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.b.a();
            String strA = com.anythink.expressad.d.b.a(strF);
            if (!TextUtils.isEmpty(strA)) {
                jSONObject.put("appSetting", new JSONObject(strA));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject z() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.anythink.expressad.videocommon.e.d dVar = this.o;
            if (dVar != null) {
                jSONObject.put("unitSetting", dVar.R());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final void a(int i, String str) {
        super.a(i, str);
        if (i != 2) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("event", "event");
            String strOptString2 = jSONObject.optString("template", HRConfig.GENDER_UNKNOWN);
            String strOptString3 = jSONObject.optString("layout", HRConfig.GENDER_UNKNOWN);
            String strOptString4 = jSONObject.optString("unit_id", this.n);
            this.u.getApplication();
            int iA = com.anythink.expressad.foundation.h.k.a();
            new r(r.j, strOptString, strOptString2, strOptString3, strOptString4, this.z.aZ(), iA, com.anythink.expressad.foundation.h.k.a(this.u.getApplication(), iA));
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final void a(Activity activity) {
        this.u = activity;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final void a(Context context) {
        this.x = context;
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        this.z = cVar;
    }

    public final void a(List<com.anythink.expressad.foundation.d.c> list) {
        this.A = list;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.w = str;
    }

    public final void b(boolean z) {
        this.F = z;
    }

    public final void c(String str) {
        this.C = str;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.d
    public void click(int i, String str) {
        String queryParameter;
        List<com.anythink.expressad.foundation.d.c> list;
        int iP;
        List<com.anythink.expressad.foundation.d.c> list2;
        super.click(i, str);
        com.anythink.expressad.foundation.d.c cVar = this.z;
        if (cVar != null && cVar.k() == 5 && this.z != null && (list2 = this.A) != null && list2.size() != 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(y)) {
                    this.z = this.A.get(jSONObject.getInt(y));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        boolean z = true;
        try {
            if (i != 1) {
                if (i != 3) {
                    return;
                }
                com.anythink.expressad.foundation.d.c cVar2 = this.z;
                if (cVar2 == null || cVar2.g() <= -2) {
                    com.anythink.expressad.videocommon.e.d dVar = this.o;
                    iP = dVar != null ? dVar.p() : 1;
                } else {
                    iP = this.z.g();
                }
                if (iP == -1) {
                    a(new c.b(this, this.r));
                }
                click(1, str);
                return;
            }
            if (this.z == null && (list = this.A) != null && list.size() > 0) {
                this.z = this.A.get(0);
            }
            com.anythink.expressad.foundation.d.c cVar3 = this.z;
            if (cVar3 == null) {
                return;
            }
            com.anythink.expressad.foundation.d.c cVarA = a(str, cVar3);
            try {
                queryParameter = Uri.parse(cVarA.ah()).getQueryParameter(com.anythink.expressad.foundation.g.a.cf);
            } catch (Throwable unused) {
            }
            int i2 = !TextUtils.isEmpty(queryParameter) ? Integer.parseInt(queryParameter) : 0;
            c.a aVar = this.r;
            if (i2 != 2) {
                z = false;
            }
            aVar.a(cVarA, z);
            u().a(this.r);
            u();
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void d(String str) {
        this.D = str;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final String h(int i) {
        JSONObject jSONObjectW;
        switch (i) {
            case 1:
                jSONObjectW = w();
                break;
            case 2:
                jSONObjectW = x();
                break;
            case 3:
                jSONObjectW = y();
                break;
            case 4:
                jSONObjectW = z();
                break;
            case 5:
                jSONObjectW = A();
                break;
            case 6:
                jSONObjectW = B();
                break;
            default:
                jSONObjectW = v();
                break;
        }
        return jSONObjectW.toString();
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.d
    public void handlerH5Exception(int i, String str) {
        super.handlerH5Exception(i, str);
        try {
            this.r.a(i, str);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final String i() {
        this.r.c();
        this.e = true;
        if (TextUtils.isEmpty(this.v)) {
            this.v = t();
        }
        return this.v;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final void j() {
        super.j();
        try {
            Activity activity = this.u;
            if (activity != null) {
                activity.finish();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void j(int i) {
        this.B = i;
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final void l() {
        super.l();
        c.a aVar = this.r;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.c, com.anythink.expressad.video.signal.c
    public final String o() {
        return this.w;
    }

    public final void p() {
        this.E = true;
    }

    public final void q() {
        this.v = "";
    }

    public final int r() {
        return this.B;
    }
}
