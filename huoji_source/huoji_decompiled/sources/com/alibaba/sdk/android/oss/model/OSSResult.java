package com.alibaba.sdk.android.oss.model;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OSSResult {
    private String requestId;
    private Map<String, String> responseHeader;
    private int statusCode;

    public String getRequestId() {
        return this.requestId;
    }

    public Map<String, String> getResponseHeader() {
        return this.responseHeader;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setResponseHeader(Map<String, String> map) {
        this.responseHeader = map;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }
}
