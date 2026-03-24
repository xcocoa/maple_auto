package cn.haorui.sdk.core.utils;

import android.app.Notification;

/* JADX INFO: loaded from: classes.dex */
public class NotificationBean {
    private String appName;
    private Notification notification;
    private String packageName;
    private String[] reportDownloadStart;
    private String[] reportDownloadSuccess;
    private String[] reportInstallStart;
    private String[] reportInstallSucc;

    public String getAppName() {
        return this.appName;
    }

    public Notification getNotification() {
        return this.notification;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String[] getReportDownloadStart() {
        return this.reportDownloadStart;
    }

    public String[] getReportDownloadSuccess() {
        return this.reportDownloadSuccess;
    }

    public String[] getReportInstallStart() {
        return this.reportInstallStart;
    }

    public String[] getReportInstallSucc() {
        return this.reportInstallSucc;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setNotification(Notification notification) {
        this.notification = notification;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setReportDownloadStart(String[] strArr) {
        this.reportDownloadStart = strArr;
    }

    public void setReportDownloadSuccess(String[] strArr) {
        this.reportDownloadSuccess = strArr;
    }

    public void setReportInstallStart(String[] strArr) {
        this.reportInstallStart = strArr;
    }

    public void setReportInstallSucc(String[] strArr) {
        this.reportInstallSucc = strArr;
    }
}
