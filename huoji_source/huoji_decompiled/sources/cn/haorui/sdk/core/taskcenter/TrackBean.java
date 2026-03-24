package cn.haorui.sdk.core.taskcenter;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TrackBean implements Serializable {
    private List<String> dn_error;
    private List<String> dn_start;
    private List<String> dn_succ;
    private List<String> dp_error;
    private List<String> dp_start;
    private List<String> dp_succ;
    private List<String> in_error;
    private List<String> in_start;
    private List<String> in_succ;
    private boolean isAppStore;
    private String taskId;

    public List<String> getDn_error() {
        return this.dn_error;
    }

    public List<String> getDn_start() {
        return this.dn_start;
    }

    public List<String> getDn_succ() {
        return this.dn_succ;
    }

    public List<String> getDp_error() {
        return this.dp_error;
    }

    public List<String> getDp_start() {
        return this.dp_start;
    }

    public List<String> getDp_succ() {
        return this.dp_succ;
    }

    public List<String> getIn_error() {
        return this.in_error;
    }

    public List<String> getIn_start() {
        return this.in_start;
    }

    public List<String> getIn_succ() {
        return this.in_succ;
    }

    public boolean getIsAppStore() {
        return this.isAppStore;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public void setDn_error(List<String> list) {
        this.dn_error = list;
    }

    public void setDn_start(List<String> list) {
        this.dn_start = list;
    }

    public void setDn_succ(List<String> list) {
        this.dn_succ = list;
    }

    public void setDp_error(List<String> list) {
        this.dp_error = list;
    }

    public void setDp_start(List<String> list) {
        this.dp_start = list;
    }

    public void setDp_succ(List<String> list) {
        this.dp_succ = list;
    }

    public void setIn_error(List<String> list) {
        this.in_error = list;
    }

    public void setIn_start(List<String> list) {
        this.in_start = list;
    }

    public void setIn_succ(List<String> list) {
        this.in_succ = list;
    }

    public void setIsAppStore(boolean z) {
        this.isAppStore = z;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }
}
