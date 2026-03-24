package cn.haorui.sdk.core.taskcenter;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DeeplinkResultBean implements Serializable {
    private String deepLink;
    private String packageName;
    private String taskId;
    private long time;
    private TrackBean track;

    public String getDeepLink() {
        return this.deepLink;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public long getTime() {
        return this.time;
    }

    public TrackBean getTrackBean() {
        return this.track;
    }

    public void setDeepLink(String str) {
        this.deepLink = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setTrackBean(TrackBean trackBean) {
        this.track = trackBean;
    }
}
