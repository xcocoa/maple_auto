package com.cyjh.mq.sdk.inf;

/* JADX INFO: loaded from: classes2.dex */
public interface OnElfCallback {
    public static final int ENGINE_HEART_BEAT = 32;
    public static final int ENGINE_NO_HB_TIME = 33;
    public static final int ENGINE_SCRIPT_HEART_BEAT = 34;
    public static final int ENGINE_SCRIPT_HEART_BEAT_KEY_EOOR = 35;
    public static final int ENUM_SCRIPT_NEED_UPGRADE = 36;
    public static final int ENUM_SCRIPT_PAUSE_BY_HEART_BEAT_VERIFI_ERR = 37;
    public static final int RESPONSE_VERIFY_FAILED = 31;

    void callback(int i, String str);
}
