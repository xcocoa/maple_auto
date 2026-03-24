package com.cyjh.mobileanjian.ipc.interfaces;

/* JADX INFO: loaded from: classes.dex */
public interface RootProgressListener {
    public static final int THIRD_ROOT_ALREADY_FAILED = 5;
    public static final int THIRD_ROOT_END_FAILED = 3;
    public static final int THIRD_ROOT_END_SUCCESS = 2;
    public static final int THIRD_ROOT_STARTED = 1;
    public static final int USER_REFUSED_ROOT = 4;
    public static final int USER_ROOT_SUCCESS = 6;

    void onRootProgress(String str, int i);
}
