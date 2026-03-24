package com.octopus.ad.internal;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.internal.utilities.HTTPGet;
import com.octopus.ad.internal.utilities.HTTPResponse;
import com.octopus.ad.internal.utilities.SPUtils;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class j extends HTTPGet {
    private final String a;

    public j(String str) {
        super(false);
        this.a = str;
    }

    @Override // com.octopus.ad.internal.utilities.HTTPGet
    public String getUrl() {
        return this.a;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.octopus.ad.internal.utilities.HTTPGet, android.os.AsyncTask
    public void onPostExecute(HTTPResponse hTTPResponse) {
        if (hTTPResponse == null || TextUtils.isEmpty(hTTPResponse.getResponseBody())) {
            return;
        }
        try {
            Context contextG = m.a().g();
            if (!MessageFormatter.DELIM_STR.equals(hTTPResponse.getResponseBody())) {
                SPUtils.put(contextG, "responseBody", hTTPResponse.getResponseBody());
                com.octopus.ad.utils.b.h.b().e().execute(new com.octopus.ad.utils.b.b(contextG));
            }
            SPUtils.put(contextG, "lastReqTime", Long.valueOf(com.octopus.ad.utils.b.l.c()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
