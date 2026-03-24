package com.octopus.ad.internal;

import com.octopus.ad.internal.utilities.HTTPGet;
import com.octopus.ad.internal.utilities.HTTPResponse;

/* JADX INFO: loaded from: classes2.dex */
public class h extends HTTPGet {
    private String a;

    public h(String str) {
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
        if (hTTPResponse != null) {
            hTTPResponse.getSucceeded();
        }
    }
}
