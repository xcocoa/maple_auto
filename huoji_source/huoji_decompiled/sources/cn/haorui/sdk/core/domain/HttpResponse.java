package cn.haorui.sdk.core.domain;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class HttpResponse<body> {
    private int errorCode = 200;
    private String errorDescription;

    @Nullable
    private body responseBody;
    private boolean successful;

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorDescription() {
        return this.errorDescription;
    }

    public body getResponseBody() {
        return this.responseBody;
    }

    public boolean isSuccessful() {
        return this.successful;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setErrorDescription(String str) {
        this.errorDescription = str;
    }

    public void setResponseBody(body body) {
        this.responseBody = body;
    }

    public void setSuccessful(boolean z) {
        this.successful = z;
    }
}
