package com.alibaba.sdk.android.oss.model;

/* JADX INFO: loaded from: classes.dex */
public class CreateBucketRequest extends OSSRequest {
    private CannedAccessControlList bucketACL;
    private String bucketName;
    private String locationConstraint;

    public CreateBucketRequest(String str) {
        setBucketName(str);
    }

    public CannedAccessControlList getBucketACL() {
        return this.bucketACL;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getLocationConstraint() {
        return this.locationConstraint;
    }

    public void setBucketACL(CannedAccessControlList cannedAccessControlList) {
        this.bucketACL = cannedAccessControlList;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setLocationConstraint(String str) {
        this.locationConstraint = str;
    }
}
