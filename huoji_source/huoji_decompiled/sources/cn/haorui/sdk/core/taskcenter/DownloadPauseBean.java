package cn.haorui.sdk.core.taskcenter;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DownloadPauseBean implements Serializable {
    private String appPackageName;
    private String downloadUrl;
    private String handleAction;
    private String taskId;

    public String getAppPackageName() {
        return this.appPackageName;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getHandleAction() {
        return this.handleAction;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public void setAppPackageName(String str) {
        this.appPackageName = str;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setHandleAction(String str) {
        this.handleAction = str;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }
}
