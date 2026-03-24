package com.cyjh.mobileanjian.ipc.interfaces;

/* JADX INFO: loaded from: classes.dex */
public interface BasicScriptListener {
    void onPause();

    void onResume();

    void onScriptIsRunning();

    void onStartScript();

    void onStopScript(int i, String str);
}
