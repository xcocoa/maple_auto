package com.iflytek.voiceads.request;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.param.UploadData;
import com.iflytek.voiceads.request.a;
import com.iflytek.voiceads.utils.Encoder;
import com.iflytek.voiceads.utils.k;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class f {
    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    public static void a(Context context, com.iflytek.voiceads.param.a aVar, a.InterfaceC0184a interfaceC0184a) throws Exception {
        if (aVar.c("debug_mode")) {
            com.iflytek.voiceads.utils.g.a(true);
            com.iflytek.voiceads.utils.f.a(context);
        }
        if (!k.a(context)) {
            throw new AdError(71003);
        }
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "requestAd:" + aVar.c());
        if (TextUtils.isEmpty(aVar.c())) {
            throw new AdError(71005);
        }
        try {
            UploadData.initParam(context, aVar);
            byte[] bArrPackageData = Encoder.packageData();
            a aVar2 = new a();
            aVar2.a(context);
            aVar2.a(0);
            aVar2.b(1);
            aVar2.c(aVar.d("http_request_timeout"));
            aVar2.a(com.iflytek.voiceads.param.c.a, null, bArrPackageData);
            aVar2.a(interfaceC0184a);
            com.iflytek.voiceads.utils.c.a(context, "adUnitID", aVar.c());
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "requestAd:" + e.getMessage());
        }
    }
}
