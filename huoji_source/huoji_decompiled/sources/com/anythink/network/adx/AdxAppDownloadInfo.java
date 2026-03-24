package com.anythink.network.adx;

import com.anythink.basead.d.h;
import com.anythink.core.api.ATAdAppInfo;

/* JADX INFO: loaded from: classes.dex */
public class AdxAppDownloadInfo extends ATAdAppInfo {
    public String appName;
    public String appPrivacyLink;
    public String appVersion;
    public String apppermissionLink;
    public String functionLink;
    public String publisher;

    public AdxAppDownloadInfo(h hVar) {
        this.publisher = hVar.i();
        this.appVersion = hVar.l();
        this.appPrivacyLink = hVar.k();
        this.apppermissionLink = hVar.j();
        this.appName = hVar.h();
        this.functionLink = hVar.m();
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppDownloadCount() {
        return "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppName() {
        return this.appName;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPackageName() {
        return "";
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPermissonUrl() {
        return this.apppermissionLink;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppPrivacyUrl() {
        return this.appPrivacyLink;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public long getAppSize() {
        return 0L;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getAppVersion() {
        return this.appVersion;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getFunctionUrl() {
        return this.functionLink;
    }

    @Override // com.anythink.core.api.ATAdAppInfo
    public String getPublisher() {
        return this.publisher;
    }
}
