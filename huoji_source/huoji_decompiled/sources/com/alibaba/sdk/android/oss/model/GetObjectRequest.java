package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;

/* JADX INFO: loaded from: classes.dex */
public class GetObjectRequest extends OSSRequest {
    private String bucketName;
    private String objectKey;
    private OSSProgressCallback progressListener;
    private Range range;
    private String xOssProcess;

    public GetObjectRequest(String str, String str2) {
        setBucketName(str);
        setObjectKey(str2);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getObjectKey() {
        return this.objectKey;
    }

    public OSSProgressCallback getProgressListener() {
        return this.progressListener;
    }

    public Range getRange() {
        return this.range;
    }

    public String getxOssProcess() {
        return this.xOssProcess;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setObjectKey(String str) {
        this.objectKey = str;
    }

    public void setProgressListener(OSSProgressCallback<GetObjectRequest> oSSProgressCallback) {
        this.progressListener = oSSProgressCallback;
    }

    public void setRange(Range range) {
        this.range = range;
    }

    public void setxOssProcess(String str) {
        this.xOssProcess = str;
    }
}
