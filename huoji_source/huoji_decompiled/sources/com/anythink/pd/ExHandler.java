package com.anythink.pd;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.GeolocationPermissions;
import com.anythink.china.activity.ApkConfirmDialogActivity;
import com.anythink.china.b.a;
import com.anythink.china.common.c;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.s;
import com.anythink.expressad.d.a.b;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ExHandler implements IExHandler {
    public static final String JSON_REQUEST_BOOT_MARK = "boot_mark";
    public static final String JSON_REQUEST_COMMON_DENY_PLAD = "deny_plad";
    public static final String JSON_REQUEST_COMMON_IMSI = "imsi";
    public static final String JSON_REQUEST_CPU = "cpu";
    public static final String JSON_REQUEST_IMEI = "imei";
    public static final String JSON_REQUEST_INSTALL_TS = "install_ts";
    public static final String JSON_REQUEST_ISAGENT = "isagent";
    public static final String JSON_REQUEST_ISROOT = "isroot";
    public static final String JSON_REQUEST_MAC = "mac";
    public static final String JSON_REQUEST_OAID = "oaid";
    public static final String JSON_REQUEST_SSID = "wifi_name";
    public static final String JSON_REQUEST_UPDATE_MARK = "update_mark";
    public static final String JSON_REQUEST_UPDATE_TS = "update_ts";
    public int macOpen = 1;
    public int imeiOpen = 1;

    @Override // com.anythink.core.api.IExHandler
    public boolean checkDebuggerDevice(Context context, String str) {
        String strB = a.b();
        if (TextUtils.isEmpty(strB)) {
            strB = s.b(context, h.p, "oaid", "");
        }
        return TextUtils.equals(str, strB);
    }

    @Override // com.anythink.core.api.IExHandler
    public int checkDownloadType(l lVar, m mVar) {
        return com.anythink.china.common.a.a(n.a().f()).b(lVar);
    }

    @Override // com.anythink.core.api.IExHandler
    public ATEventInterface createDownloadListener(ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd, ATEventInterface aTEventInterface) {
        return new c(aTBaseAdAdapter, baseAd, aTEventInterface);
    }

    @Override // com.anythink.core.api.IExHandler
    public String fillCDataParam(String str) {
        if (str == null) {
            return "";
        }
        String strD = this.imeiOpen == 1 ? a.d(n.a().f()) : "";
        String strA = this.macOpen == 1 ? a.a() : "";
        String strB = a.b();
        if (strD == null) {
            strD = "";
        }
        String strReplaceAll = str.replaceAll("at_device1", strD);
        if (strA == null) {
            strA = "";
        }
        return strReplaceAll.replaceAll("at_device2", strA).replaceAll("at_device3", strB != null ? strB : "");
    }

    @Override // com.anythink.core.api.IExHandler
    public void fillDownloadStatus(Context context, l lVar, m mVar) throws Throwable {
        com.anythink.china.common.c.a.a(context, lVar, mVar);
    }

    @Override // com.anythink.core.api.IExHandler
    public void fillRequestData(JSONObject jSONObject, com.anythink.core.d.a aVar) {
        fillRequestData(jSONObject, aVar, -1);
    }

    @Override // com.anythink.core.api.IExHandler
    public void fillRequestData(JSONObject jSONObject, com.anythink.core.d.a aVar, int i) {
        String strB;
        String strH = aVar != null ? aVar.H() : "";
        try {
            if (TextUtils.isEmpty(strH)) {
                jSONObject.put("mac", a.a());
                jSONObject.put("imei", a.d(n.a().f()));
                strB = a.b();
            } else {
                try {
                    JSONObject jSONObject2 = new JSONObject(strH);
                    this.macOpen = jSONObject2.optInt(b.dH);
                    this.imeiOpen = jSONObject2.optInt("i");
                } catch (Exception unused) {
                }
                jSONObject.put("mac", this.macOpen == 1 ? a.a() : "");
                jSONObject.put("imei", this.imeiOpen == 1 ? a.d(n.a().f()) : "");
                strB = a.b();
            }
            jSONObject.put("oaid", strB);
        } catch (Exception unused2) {
        }
        if (i == -1 || (i & 64) != 64) {
            return;
        }
        try {
            jSONObject.put("imsi", a.d());
        } catch (Throwable unused3) {
        }
    }

    @Override // com.anythink.core.api.IExHandler
    public void fillRequestDeviceData(JSONObject jSONObject, int i) {
        if ((i & 1) == 1) {
            try {
                if (!TextUtils.isEmpty(a.e())) {
                    jSONObject.put("isroot", Integer.parseInt(a.e()));
                }
            } catch (Throwable unused) {
            }
            try {
                if (!TextUtils.isEmpty(a.f())) {
                    jSONObject.put("isagent", Integer.parseInt(a.f()));
                }
            } catch (Throwable unused2) {
            }
            try {
                jSONObject.put("wifi_name", a.c());
            } catch (Throwable unused3) {
            }
            try {
                if (!TextUtils.isEmpty(a.g())) {
                    jSONObject.put(JSON_REQUEST_INSTALL_TS, Long.parseLong(a.g()));
                }
            } catch (Throwable unused4) {
            }
            try {
                if (!TextUtils.isEmpty(a.h())) {
                    jSONObject.put(JSON_REQUEST_UPDATE_TS, Long.parseLong(a.h()));
                }
            } catch (Throwable unused5) {
            }
            try {
                jSONObject.put("cpu", a.i());
            } catch (Throwable unused6) {
            }
        }
        if ((i & 2) == 2) {
            try {
                jSONObject.put(JSON_REQUEST_BOOT_MARK, a.j());
                jSONObject.put(JSON_REQUEST_UPDATE_MARK, a.k());
            } catch (Throwable unused7) {
            }
        }
        if ((i & 16) == 16) {
            try {
                List<com.anythink.core.common.f.s> listL = a.l();
                if (listL != null && listL.size() > 0) {
                    for (int i2 = 0; i2 < listL.size(); i2++) {
                        com.anythink.core.common.f.s sVar = listL.get(i2);
                        if (sVar != null && !TextUtils.isEmpty(sVar.b())) {
                            jSONObject.put(sVar.a(), sVar.b());
                        }
                    }
                }
            } catch (Throwable unused8) {
            }
        }
        if ((i & 64) == 64) {
            try {
                jSONObject.put("wifi_name", a.c());
                jSONObject.put(JSON_REQUEST_COMMON_DENY_PLAD, ATSDK.getPersionalizedAdStatus());
            } catch (Throwable unused9) {
            }
        }
    }

    @Override // com.anythink.core.api.IExHandler
    public void fillTestDeviceData(JSONObject jSONObject, com.anythink.core.d.a aVar) {
        Object obj = "";
        String strH = aVar != null ? aVar.H() : "";
        if (TextUtils.isEmpty(strH)) {
            try {
                String strD = a.d(n.a().f());
                if (!TextUtils.isEmpty(strD)) {
                    obj = strD;
                }
                jSONObject.put("IMEI", obj);
                jSONObject.put("OAID", a.c(n.a().f()));
                return;
            } catch (Exception unused) {
                return;
            }
        }
        try {
            JSONObject jSONObject2 = new JSONObject(strH);
            this.macOpen = jSONObject2.optInt(b.dH);
            this.imeiOpen = jSONObject2.optInt("i");
        } catch (Exception unused2) {
        }
        try {
            String strD2 = a.d(n.a().f());
            if (this.imeiOpen == 1 && !TextUtils.isEmpty(strD2)) {
                obj = strD2;
            }
            jSONObject.put("IMEI", obj);
            jSONObject.put("OAID", a.c(n.a().f()));
        } catch (Exception unused3) {
        }
    }

    @Override // com.anythink.core.api.IExHandler
    public String getAid(Context context) {
        return a.e(context);
    }

    @Override // com.anythink.core.api.IExHandler
    public String getUniqueId(Context context) {
        return a.b(context);
    }

    @Override // com.anythink.core.api.IExHandler
    public void handleOfferClick(Context context, m mVar, l lVar, String str, String str2, Runnable runnable, com.anythink.core.common.g.b bVar) {
        com.anythink.china.common.a.a(context).a(context, mVar, lVar, str, str2, runnable, bVar);
    }

    @Override // com.anythink.core.api.IExHandler
    public void initDeviceInfo(Context context) {
        a.a(context);
    }

    @Override // com.anythink.core.api.IExHandler
    public boolean onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        try {
            callback.invoke(str, true, false);
        } catch (Throwable unused) {
        }
        return true;
    }

    @Override // com.anythink.core.api.IExHandler
    public void openApkConfirmDialog(Context context, l lVar, m mVar, com.anythink.core.common.g.a aVar) {
        ApkConfirmDialogActivity.a(context, lVar, aVar);
    }
}
