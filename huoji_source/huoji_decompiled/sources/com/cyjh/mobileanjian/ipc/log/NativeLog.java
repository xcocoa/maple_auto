package com.cyjh.mobileanjian.ipc.log;

/* JADX INFO: loaded from: classes.dex */
public class NativeLog {
    private static StringBuffer OooO00o = new StringBuffer();

    public static void appendLog(String str) {
        if (OooO00o.length() > 0) {
            OooO00o.append("@_@");
        }
        OooO00o.append(str);
    }

    public static String getExtraLog() {
        return OooO00o.toString();
    }

    public static void reset() {
        OooO00o.setLength(0);
    }
}
