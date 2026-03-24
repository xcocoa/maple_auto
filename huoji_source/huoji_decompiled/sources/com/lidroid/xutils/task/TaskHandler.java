package com.lidroid.xutils.task;

/* JADX INFO: loaded from: classes2.dex */
public interface TaskHandler {
    void cancel();

    boolean isCancelled();

    boolean isPaused();

    void pause();

    void resume();

    boolean supportCancel();

    boolean supportPause();

    boolean supportResume();
}
