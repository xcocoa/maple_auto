package cn.haorui.sdk.platform.hr.splash;

import cn.haorui.sdk.core.loader.g;

/* JADX INFO: loaded from: classes.dex */
public class ShakeBean {
    public static int SHAKE_STATUS_DESTROY = 3;
    public static int SHAKE_STATUS_USEABLE = 1;
    public static int SHAKE_STATUS_WAIT = 2;
    private int ecpm;
    private boolean isShowing;
    private g.d listener;
    private int sensitivity_index;
    private int shakeId;
    private int status = SHAKE_STATUS_USEABLE;
    private int touch_type;

    public int getEcpm() {
        return this.ecpm;
    }

    public boolean getIsShowing() {
        return this.isShowing;
    }

    public g.d getListener() {
        return this.listener;
    }

    public int getSensitivity_index() {
        return this.sensitivity_index;
    }

    public int getShakeId() {
        return this.shakeId;
    }

    public int getStatus() {
        return this.status;
    }

    public int getTouch_type() {
        return this.touch_type;
    }

    public void setEcpm(int i) {
        this.ecpm = i;
    }

    public void setIsShowing(boolean z) {
        this.isShowing = z;
    }

    public void setListener(g.d dVar) {
        this.listener = dVar;
    }

    public void setSensitivity_index(int i) {
        this.sensitivity_index = i;
    }

    public void setShakeId(int i) {
        this.shakeId = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTouch_type(int i) {
        this.touch_type = i;
    }
}
