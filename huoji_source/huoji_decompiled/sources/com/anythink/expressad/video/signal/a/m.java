package com.anythink.expressad.video.signal.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.expressad.foundation.h.v;
import com.anythink.expressad.video.module.AnythinkContainerView;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m extends f {
    private Activity b;
    private AnythinkContainerView c;

    public m(Activity activity, AnythinkContainerView anythinkContainerView) {
        this.b = activity;
        this.c = anythinkContainerView;
    }

    private static String a(List<com.anythink.expressad.foundation.d.c> list, String str, String str2, JSONObject jSONObject) {
        try {
            if (list.size() <= 0) {
                return null;
            }
            com.anythink.expressad.foundation.h.b bVar = new com.anythink.expressad.foundation.h.b(com.anythink.expressad.foundation.b.a.c().e());
            Object objB = com.anythink.expressad.foundation.d.c.b(list);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("campaignList", objB);
            jSONObject2.put("device", bVar.a());
            jSONObject2.put("unit_id", str);
            jSONObject2.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SDK_INFO, str2);
            jSONObject2.put("unitSetting", jSONObject);
            if (com.anythink.expressad.d.b.a() != null) {
                com.anythink.expressad.d.b.a();
                String strA = com.anythink.expressad.d.b.a(com.anythink.expressad.foundation.b.a.c().f());
                if (!TextUtils.isEmpty(strA)) {
                    JSONObject jSONObject3 = new JSONObject(strA);
                    try {
                        Context contextE = com.anythink.expressad.foundation.b.a.c().e();
                        String string = v.b(contextE, "Anythink_ConfirmTitle".concat(String.valueOf(str)), "").toString();
                        String string2 = v.b(contextE, "Anythink_ConfirmContent".concat(String.valueOf(str)), "").toString();
                        String string3 = v.b(contextE, "Anythink_CancelText".concat(String.valueOf(str)), "").toString();
                        String string4 = v.b(contextE, "Anythink_ConfirmText".concat(String.valueOf(str)), "").toString();
                        if (!TextUtils.isEmpty(string)) {
                            jSONObject3.put(com.anythink.expressad.d.a.b.ct, string);
                        }
                        if (!TextUtils.isEmpty(string2)) {
                            jSONObject3.put(com.anythink.expressad.d.a.b.cu, string2);
                        }
                        if (!TextUtils.isEmpty(string3)) {
                            jSONObject3.put(com.anythink.expressad.d.a.b.cv, string3);
                        }
                        if (!TextUtils.isEmpty(string4)) {
                            jSONObject3.put(com.anythink.expressad.d.a.b.cx, string4);
                        }
                        if (!TextUtils.isEmpty(string4)) {
                            jSONObject3.put(com.anythink.expressad.d.a.b.cw, string4);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    com.anythink.expressad.d.b.a();
                    String strB = com.anythink.expressad.d.b.b(str);
                    if (!TextUtils.isEmpty(strB)) {
                        jSONObject3.put("ivreward", new JSONObject(strB));
                    }
                    jSONObject2.put("appSetting", jSONObject3);
                }
            }
            return jSONObject2.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static void a(JSONObject jSONObject, String str) {
        try {
            Context contextE = com.anythink.expressad.foundation.b.a.c().e();
            String string = v.b(contextE, "Anythink_ConfirmTitle".concat(String.valueOf(str)), "").toString();
            String string2 = v.b(contextE, "Anythink_ConfirmContent".concat(String.valueOf(str)), "").toString();
            String string3 = v.b(contextE, "Anythink_CancelText".concat(String.valueOf(str)), "").toString();
            String string4 = v.b(contextE, "Anythink_ConfirmText".concat(String.valueOf(str)), "").toString();
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

    private static com.anythink.expressad.videocommon.e.d c(String str) {
        if (com.anythink.expressad.videocommon.e.c.a() == null) {
            return null;
        }
        return com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), str);
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.i
    public final String a() {
        if (this.c == null) {
            super.a();
        } else {
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.c.getCampaign());
                String unitID = this.c.getUnitID();
                String str = com.anythink.expressad.out.b.a + ",3.0.1";
                com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a() == null ? null : com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), unitID);
                JSONObject jSONObject = new JSONObject();
                if (dVarA != null) {
                    jSONObject = dVarA.R();
                }
                new StringBuilder("getEndScreenInfo success campaign = ").append(this.c.getCampaign());
                return a(arrayList, unitID, str, jSONObject);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return super.a();
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.i
    public final void a(String str) {
        AnythinkContainerView anythinkContainerView;
        super.a(str);
        try {
            if (this.b == null || TextUtils.isEmpty(str) || !str.equals(com.anythink.expressad.foundation.d.c.ca) || (anythinkContainerView = this.c) == null) {
                return;
            }
            anythinkContainerView.triggerCloseBtn(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.i
    public final void b(String str) {
        super.b(str);
        try {
            if (this.b == null || TextUtils.isEmpty(str)) {
                return;
            }
            if (str.equals("landscape")) {
                this.b.setRequestedOrientation(0);
            } else if (str.equals("portrait")) {
                this.b.setRequestedOrientation(1);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.i, com.anythink.expressad.video.signal.h
    public final void handlerPlayableException(String str) {
        AnythinkContainerView anythinkContainerView;
        super.handlerPlayableException(str);
        try {
            if (this.b == null || TextUtils.isEmpty(str) || (anythinkContainerView = this.c) == null) {
                return;
            }
            anythinkContainerView.handlerPlayableException(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.h
    public final void install(com.anythink.expressad.foundation.d.c cVar) {
        super.install(cVar);
        AnythinkContainerView anythinkContainerView = this.c;
        if (anythinkContainerView != null) {
            anythinkContainerView.install(cVar);
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.h
    public final void notifyCloseBtn(int i) {
        super.notifyCloseBtn(i);
        AnythinkContainerView anythinkContainerView = this.c;
        if (anythinkContainerView != null) {
            anythinkContainerView.notifyCloseBtn(i);
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.h
    public final void orientation(Configuration configuration) {
        super.orientation(configuration);
        try {
            AnythinkContainerView anythinkContainerView = this.c;
            if (anythinkContainerView != null) {
                anythinkContainerView.orientation(configuration);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.h
    public final void toggleCloseBtn(int i) {
        super.toggleCloseBtn(i);
        AnythinkContainerView anythinkContainerView = this.c;
        if (anythinkContainerView != null) {
            anythinkContainerView.toggleCloseBtn(i);
        }
    }

    @Override // com.anythink.expressad.video.signal.a.f, com.anythink.expressad.video.signal.h
    public final void webviewshow() {
        super.webviewshow();
        try {
            AnythinkContainerView anythinkContainerView = this.c;
            if (anythinkContainerView != null) {
                anythinkContainerView.webviewshow();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
