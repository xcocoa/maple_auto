package com.anythink.core.debugger.api;

/* JADX INFO: loaded from: classes.dex */
public class DebuggerSdkInfo {
    private String[] deniedUploadDeviceInfo;
    private String appId = "";
    private boolean isHavePreInitNetwork = false;
    private boolean isHaveLoadAd = false;
    private boolean isInitSdk = false;

    public String getAppId() {
        return this.appId;
    }

    public String[] getDeniedUploadDeviceInfo() {
        return this.deniedUploadDeviceInfo;
    }

    public boolean isHaveLoadAd() {
        return this.isHaveLoadAd;
    }

    public boolean isHavePreInitNetwork() {
        return this.isHavePreInitNetwork;
    }

    public boolean isInitSdk() {
        return this.isInitSdk;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setDeniedUploadDeviceInfo(String[] strArr) {
        this.deniedUploadDeviceInfo = strArr;
    }

    public void setHaveLoadAd(boolean z) {
        this.isHaveLoadAd = z;
    }

    public void setHavePreInitNetwork(boolean z) {
        this.isHavePreInitNetwork = z;
    }

    public void setInitSdk(boolean z) {
        this.isInitSdk = z;
    }
}
