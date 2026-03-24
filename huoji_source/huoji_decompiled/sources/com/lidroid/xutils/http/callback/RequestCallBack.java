package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RequestCallBack<T> {
    private static final int DEFAULT_RATE = 1000;
    private static final int MIN_RATE = 200;
    private int rate;
    private String requestUrl;
    public Object userTag;

    public RequestCallBack() {
        this.rate = 1000;
    }

    public RequestCallBack(int i) {
        this.rate = i;
    }

    public RequestCallBack(int i, Object obj) {
        this.rate = i;
        this.userTag = obj;
    }

    public RequestCallBack(Object obj) {
        this.rate = 1000;
        this.userTag = obj;
    }

    public final int getRate() {
        int i = this.rate;
        if (i < 200) {
            return 200;
        }
        return i;
    }

    public final String getRequestUrl() {
        return this.requestUrl;
    }

    public Object getUserTag() {
        return this.userTag;
    }

    public void onCancelled() {
    }

    public abstract void onFailure(HttpException httpException, String str);

    public void onLoading(long j, long j2, boolean z) {
    }

    public void onStart() {
    }

    public abstract void onSuccess(ResponseInfo<T> responseInfo);

    public final void setRate(int i) {
        this.rate = i;
    }

    public final void setRequestUrl(String str) {
        this.requestUrl = str;
    }

    public void setUserTag(Object obj) {
        this.userTag = obj;
    }
}
