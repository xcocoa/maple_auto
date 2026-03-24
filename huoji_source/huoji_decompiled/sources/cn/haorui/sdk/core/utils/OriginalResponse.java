package cn.haorui.sdk.core.utils;

import z2.jx;

/* JADX INFO: loaded from: classes.dex */
public class OriginalResponse {
    private String body;
    private int code;
    private jx headers;
    private boolean successful;

    public OriginalResponse(int i, boolean z) {
        this.code = i;
        this.successful = z;
    }

    public String getBody() {
        return this.body;
    }

    public int getCode() {
        return this.code;
    }

    public String header(String str) {
        jx jxVar = this.headers;
        if (jxVar != null) {
            return jxVar.OooO0Oo(str);
        }
        return null;
    }

    public boolean isSuccessful() {
        return this.successful;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setHeaders(jx jxVar) {
        this.headers = jxVar;
    }

    public void setSuccessful(boolean z) {
        this.successful = z;
    }
}
