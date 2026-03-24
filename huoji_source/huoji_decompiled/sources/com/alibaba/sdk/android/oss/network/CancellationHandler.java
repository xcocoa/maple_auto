package com.alibaba.sdk.android.oss.network;

import z2.tw;

/* JADX INFO: loaded from: classes.dex */
public class CancellationHandler {
    private volatile tw call;
    private volatile boolean isCancelled;

    public void cancel() {
        if (this.call != null) {
            this.call.cancel();
        }
        this.isCancelled = true;
    }

    public boolean isCancelled() {
        return this.isCancelled;
    }

    public void setCall(tw twVar) {
        this.call = twVar;
    }
}
