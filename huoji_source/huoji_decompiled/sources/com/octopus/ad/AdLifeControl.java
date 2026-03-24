package com.octopus.ad;

/* JADX INFO: loaded from: classes2.dex */
public interface AdLifeControl {
    void cancel();

    void destroy();

    void onCreateLifeCycle();

    void onDestroyLifeCycle();

    void onPauseLifeCycle();

    void onRestartLifeCycle();

    void onResumeLifeCycle();

    void onStartLifeCycle();

    void onStopLifeCycle();
}
