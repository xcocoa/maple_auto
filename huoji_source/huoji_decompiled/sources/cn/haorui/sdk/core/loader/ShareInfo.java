package cn.haorui.sdk.core.loader;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class ShareInfo {
    private String currentUrl;
    private String shareInfo;

    public ShareInfo(String str, String str2) {
        this.shareInfo = str;
        this.currentUrl = str2;
    }

    public String getCurrentUrl() {
        return this.currentUrl;
    }

    public String getShareInfo() {
        return this.shareInfo;
    }

    public void setCurrentUrl(String str) {
        this.currentUrl = str;
    }

    public void setShareInfo(String str) {
        this.shareInfo = str;
    }

    public String toString() {
        return "ShareInfo{shareInfo='" + this.shareInfo + "', currentUrl='" + this.currentUrl + '\'' + MessageFormatter.DELIM_STOP;
    }
}
