package com.cyjh.mobileanjian.ipc.interfaces;

/* JADX INFO: loaded from: classes.dex */
public interface OnSpecialMqCmdCallback {
    void doSpecialFuction(int i, String str);

    String getForegroundPackage();

    String getRunningPackages();

    void inputText(String str);

    void keyPress(int i);

    void killApp(String str);

    void launchApp(String str);
}
