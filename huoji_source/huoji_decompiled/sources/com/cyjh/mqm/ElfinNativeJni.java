package com.cyjh.mqm;

/* JADX INFO: loaded from: classes2.dex */
public class ElfinNativeJni {
    static {
        System.loadLibrary("mqm");
    }

    public static native String getString(String str, int i);

    public static native void initBaseParam(String str, String str2, String str3);

    public static native String requestDomain(String str, String str2);

    public static native void setKeys(String str);

    public static native void test(String str);
}
