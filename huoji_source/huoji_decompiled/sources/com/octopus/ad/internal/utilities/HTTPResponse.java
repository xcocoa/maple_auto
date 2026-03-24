package com.octopus.ad.internal.utilities;

import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HTTPResponse {
    private HttpErrorCode errorCode;
    private Map<String, List<String>> headers;
    private ByteArrayOutputStream responseBinaryBody;
    private String responseBody;
    private boolean succeeded;

    public HTTPResponse() {
    }

    public HTTPResponse(boolean z, ByteArrayOutputStream byteArrayOutputStream, Map<String, List<String>> map) {
        this.succeeded = z;
        this.responseBinaryBody = byteArrayOutputStream;
        this.headers = map;
    }

    public HTTPResponse(boolean z, String str, Map<String, List<String>> map) {
        this.succeeded = z;
        this.responseBody = str;
        this.headers = map;
    }

    public HttpErrorCode getErrorCode() {
        return this.errorCode;
    }

    public Map<String, List<String>> getHeaders() {
        return this.headers;
    }

    public ByteArrayOutputStream getResponseBinaryBody() {
        return this.responseBinaryBody;
    }

    public String getResponseBody() {
        return this.responseBody;
    }

    public boolean getSucceeded() {
        return this.succeeded;
    }

    public void setErrorCode(HttpErrorCode httpErrorCode) {
        this.errorCode = httpErrorCode;
    }

    public void setHeaders(Map<String, List<String>> map) {
        this.headers = map;
    }

    public void setResponseBinaryBody(ByteArrayOutputStream byteArrayOutputStream) {
        this.responseBinaryBody = byteArrayOutputStream;
    }

    public void setResponseBody(String str) {
        this.responseBody = str;
    }

    public void setSucceeded(boolean z) {
        this.succeeded = z;
    }
}
