package cn.haorui.sdk.core.taskcenter;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DownloadAppBean implements Serializable {
    private String appName;
    private String appPackageName;
    private String downloadUrl;
    private int is_appstore;
    private boolean reportProgress;
    private String taskId;
    private TrackBean track;

    public String getAppName() {
        return this.appName;
    }

    public String getAppPackageName() {
        return this.appPackageName;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public int getIs_appstore() {
        return this.is_appstore;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public TrackBean getTrackBean() {
        return this.track;
    }

    public boolean isReportProgress() {
        return this.reportProgress;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setAppPackageName(String str) {
        this.appPackageName = str;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setIs_appstore(int i) {
        this.is_appstore = i;
    }

    public void setReportProgress(boolean z) {
        this.reportProgress = z;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    public void setTrackBean(TrackBean trackBean) {
        this.track = trackBean;
    }
}
