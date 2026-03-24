package com.iflytek.voiceads.download;

import android.content.Context;
import com.iflytek.voiceads.download.d.a;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class p {

    public interface a {
        void a();

        void a(String str);
    }

    public static void a(Context context, JSONObject jSONObject, a aVar) {
        String str;
        if (context == null || jSONObject == null) {
            return;
        }
        try {
            try {
                Class.forName("com.iflytek.voiceads.download.DownloadService");
                String str2 = c.a(context) + File.separator;
                String strOptString = jSONObject.optString(com.anythink.expressad.foundation.d.c.am);
                String strA = com.iflytek.voiceads.utils.d.a(strOptString);
                switch (jSONObject.optInt("format")) {
                    case 0:
                        str = ".mp4";
                        break;
                    case 1:
                        str = ".3gp";
                        break;
                    case 2:
                        str = ".avi";
                        break;
                    case 3:
                        str = ".flv";
                        break;
                    default:
                        str = ".mp4";
                        break;
                }
                String str3 = str2 + strA + str;
                int iAbs = Math.abs(strOptString.hashCode());
                com.iflytek.voiceads.download.a.b bVarA = com.iflytek.voiceads.download.a.a(context);
                com.iflytek.voiceads.download.d.a aVarA = bVarA.a(iAbs);
                if (aVarA != null) {
                    aVar.a(aVarA.c());
                } else {
                    com.iflytek.voiceads.download.d.a aVarA2 = new a.C0183a().a(strOptString).b(str3).a();
                    aVarA2.a(new q(aVar, str3));
                    bVarA.a(aVarA2);
                }
            } catch (ClassNotFoundException e) {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "service not found");
            }
        } catch (Exception e2) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "startCache:" + e2.getMessage());
        }
    }
}
