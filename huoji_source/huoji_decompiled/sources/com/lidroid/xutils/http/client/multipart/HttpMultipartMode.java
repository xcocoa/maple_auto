package com.lidroid.xutils.http.client.multipart;

/* JADX INFO: loaded from: classes2.dex */
public enum HttpMultipartMode {
    STRICT,
    BROWSER_COMPATIBLE;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static HttpMultipartMode[] valuesCustom() {
        HttpMultipartMode[] httpMultipartModeArrValuesCustom = values();
        int length = httpMultipartModeArrValuesCustom.length;
        HttpMultipartMode[] httpMultipartModeArr = new HttpMultipartMode[length];
        System.arraycopy(httpMultipartModeArrValuesCustom, 0, httpMultipartModeArr, 0, length);
        return httpMultipartModeArr;
    }
}
