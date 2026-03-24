package cn.haorui.sdk.core.taskcenter;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class InstallApplicationBean implements Serializable {
    private String downloadUrl;
    private String packageName;
    private String taskId;
    private TrackBean track;

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public TrackBean getTrackBean() {
        return this.track;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    public void setTrackBean(TrackBean trackBean) {
        this.track = trackBean;
    }
}
