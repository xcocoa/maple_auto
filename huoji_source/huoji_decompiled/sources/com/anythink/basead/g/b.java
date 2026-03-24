package com.anythink.basead.g;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.u;
import com.anythink.core.common.f.z;
import com.anythink.core.common.t;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b extends com.anythink.core.common.h.a {
    public String a;
    public JSONObject b;

    public b(int i, z zVar, String str) {
        String strAa = "";
        try {
            switch (i) {
                case 1:
                    strAa = zVar.aa();
                    break;
                case 2:
                    strAa = zVar.ab();
                    break;
                case 3:
                    strAa = zVar.ac();
                    break;
                case 4:
                    strAa = zVar.ad();
                    break;
                case 5:
                    strAa = zVar.ae();
                    break;
                case 6:
                    strAa = zVar.af();
                    break;
                case 7:
                    strAa = zVar.ag();
                    break;
                case 8:
                    strAa = zVar.ah();
                    break;
                case 9:
                    strAa = zVar.ai();
                    break;
            }
            Uri uri = Uri.parse(zVar.S(strAa));
            this.a = uri.getScheme() + "://" + uri.getAuthority() + uri.getPath();
            this.b = new JSONObject();
            for (String str2 : uri.getQueryParameterNames()) {
                this.b.put(str2, URLEncoder.encode(uri.getQueryParameter(str2)));
            }
            this.b.put("req_id", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
        JSONObject jSONObject = new JSONObject();
        Map<String, String> mapC = c();
        if (mapC != null) {
            try {
                for (String str : mapC.keySet()) {
                    jSONObject.put(str, mapC.get(str));
                }
            } catch (Exception unused) {
            }
        }
        String string = jSONObject.toString();
        JSONObject jSONObject2 = this.b;
        String string2 = jSONObject2 != null ? jSONObject2.toString() : "";
        t.a().a(1, b(), string, string2, u.a(1000));
        com.anythink.core.common.n.e.a("tk", adError.getPlatformCode(), adError.getPlatformMSG(), this.a, "", "1", "");
    }

    public final void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.b.put("scenario", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        return this.a;
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put("Content-Type", "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        JSONObject jSONObject = this.b;
        if (jSONObject == null) {
            return new byte[0];
        }
        try {
            jSONObject.put("t", String.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
        return com.anythink.core.common.h.a.b(this.b.toString());
    }

    @Override // com.anythink.core.common.h.a
    public final String g() {
        return "";
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }
}
