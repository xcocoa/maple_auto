package com.anythink.core.api;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class ATAdAppInfo {
    @Deprecated
    public boolean canHandleFunctionClick() {
        return false;
    }

    @Deprecated
    public void functionUrlClick() {
    }

    public abstract String getAppDownloadCount();

    public abstract String getAppName();

    public abstract String getAppPackageName();

    public abstract String getAppPermissonUrl();

    public abstract String getAppPrivacyUrl();

    public abstract long getAppSize();

    public abstract String getAppVersion();

    public String getFunctionUrl() {
        return "";
    }

    public abstract String getPublisher();

    public String toString() {
        StringBuilder sb = new StringBuilder("Publisher: ");
        sb.append(TextUtils.isEmpty(getPublisher()) ? "" : getPublisher());
        sb.append(" | AppVersion: ");
        sb.append(TextUtils.isEmpty(getAppVersion()) ? "" : getAppVersion());
        sb.append(" | AppPrivacyUrl: ");
        sb.append(TextUtils.isEmpty(getAppPrivacyUrl()) ? "" : getAppPrivacyUrl());
        sb.append(" | AppPermissonUrl: ");
        sb.append(TextUtils.isEmpty(getAppPermissonUrl()) ? "" : getAppPermissonUrl());
        sb.append(" | AppName: ");
        sb.append(TextUtils.isEmpty(getAppName()) ? "" : getAppName());
        sb.append(" | AppPackageName: ");
        sb.append(TextUtils.isEmpty(getAppPackageName()) ? "" : getAppPackageName());
        sb.append(" | AppSize: ");
        sb.append(getAppSize());
        sb.append(" | AppDownloadCount: ");
        sb.append(getAppDownloadCount());
        sb.append(" | DescriptionUrl: ");
        sb.append(getFunctionUrl());
        return sb.toString();
    }
}
