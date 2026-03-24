package com.cyjh.mobileanjian.ipc.rpc;

/* JADX INFO: loaded from: classes.dex */
public class RestartScriptHelper {
    private static Boolean OooO00o = Boolean.FALSE;

    public static Boolean isNeedRestart() {
        return OooO00o;
    }

    public static void setNeedRestart() {
        OooO00o = Boolean.TRUE;
    }

    public static void setNeedRestartValue(Boolean bool) {
        OooO00o = bool;
    }
}
