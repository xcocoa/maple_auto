package com.android.volley;

import z2.o00Oo0;

/* JADX INFO: loaded from: classes.dex */
public class VolleyError extends Exception {
    public final o00Oo0 networkResponse;
    private long networkTimeMs;

    public VolleyError() {
        this.networkResponse = null;
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th) {
        super(str, th);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.networkResponse = null;
    }

    public VolleyError(o00Oo0 o00oo0) {
        this.networkResponse = o00oo0;
    }

    public long getNetworkTimeMs() {
        return this.networkTimeMs;
    }

    public void setNetworkTimeMs(long j) {
        this.networkTimeMs = j;
    }
}
