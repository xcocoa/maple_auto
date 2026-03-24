package com.alibaba.sdk.android.oss.network;

import android.content.Context;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.callback.OSSRetryCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import z2.ox;

/* JADX INFO: loaded from: classes.dex */
public class ExecutionContext<T extends OSSRequest> {
    private Context applicationContext;
    private CancellationHandler cancellationHandler;
    private ox client;
    private OSSCompletedCallback completedCallback;
    private OSSProgressCallback progressCallback;
    private T request;
    private OSSRetryCallback retryCallback;

    public ExecutionContext(ox oxVar, T t) {
        this(oxVar, t, null);
    }

    public ExecutionContext(ox oxVar, T t, Context context) {
        this.cancellationHandler = new CancellationHandler();
        setClient(oxVar);
        setRequest(t);
        this.applicationContext = context;
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    public CancellationHandler getCancellationHandler() {
        return this.cancellationHandler;
    }

    public ox getClient() {
        return this.client;
    }

    public OSSCompletedCallback getCompletedCallback() {
        return this.completedCallback;
    }

    public OSSProgressCallback getProgressCallback() {
        return this.progressCallback;
    }

    public T getRequest() {
        return this.request;
    }

    public OSSRetryCallback getRetryCallback() {
        return this.retryCallback;
    }

    public void setClient(ox oxVar) {
        this.client = oxVar;
    }

    public void setCompletedCallback(OSSCompletedCallback oSSCompletedCallback) {
        this.completedCallback = oSSCompletedCallback;
    }

    public void setProgressCallback(OSSProgressCallback oSSProgressCallback) {
        this.progressCallback = oSSProgressCallback;
    }

    public void setRequest(T t) {
        this.request = t;
    }

    public void setRetryCallback(OSSRetryCallback oSSRetryCallback) {
        this.retryCallback = oSSRetryCallback;
    }
}
