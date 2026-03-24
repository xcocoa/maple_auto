package com.cyjh.mq.sdk.inf;

import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import z2.pg;
import z2.sg;

/* JADX INFO: loaded from: classes2.dex */
public interface IRunner extends sg {
    public static final int START_ENIGINE_TIME_OUT_MILLIS = 20000;

    boolean isScriptStarted();

    void notifyRotationStatus();

    void pause();

    void resume();

    IRunner setOnScriptListener(OnScriptListener onScriptListener);

    IRunner setScript(pg pgVar);

    void start();

    void stop();
}
