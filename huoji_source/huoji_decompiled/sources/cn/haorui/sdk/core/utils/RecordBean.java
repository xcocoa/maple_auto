package cn.haorui.sdk.core.utils;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class RecordBean implements Serializable {
    private int clickNum;
    private int dynamicClickNum;
    private int exposureNum;
    private long lastClickTime;
    private long lastDynamicClickTime;
    private long lastDynamicLoadedTime;
    private int loadNum;
    private int loadSucc;
    private String pid;

    public int getClickNum() {
        return this.clickNum;
    }

    public int getDynamicClickNum() {
        return this.dynamicClickNum;
    }

    public int getExposureNum() {
        return this.exposureNum;
    }

    public long getLastClickTime() {
        return this.lastClickTime;
    }

    public long getLastDynamicClickTime() {
        return this.lastDynamicClickTime;
    }

    public long getLastDynamicLoadedTime() {
        return this.lastDynamicLoadedTime;
    }

    public int getLoadNum() {
        return this.loadNum;
    }

    public int getLoadSucc() {
        return this.loadSucc;
    }

    public String getPid() {
        return this.pid;
    }

    public void setClickNum(int i) {
        this.clickNum = i;
    }

    public void setDynamicClickNum(int i) {
        this.dynamicClickNum = i;
    }

    public void setExposureNum(int i) {
        this.exposureNum = i;
    }

    public void setLastClickTime(long j) {
        this.lastClickTime = j;
    }

    public void setLastDynamicClickTime(long j) {
        this.lastDynamicClickTime = j;
    }

    public void setLastDynamicLoadedTime(long j) {
        this.lastDynamicLoadedTime = j;
    }

    public void setLoadNum(int i) {
        this.loadNum = i;
    }

    public void setLoadSucc(int i) {
        this.loadSucc = i;
    }

    public void setPid(String str) {
        this.pid = str;
    }
}
