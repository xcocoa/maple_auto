package com.auto.engin.bridge;

/* JADX INFO: loaded from: classes.dex */
public class EngineRuntimeBridge {
    public static native void initConfig(int i, int i2, int i3, String str, String str2, String str3);

    public static native void initOcrConfig(String str, String str2, String str3, String str4, String str5, String str6);

    public static String translateLikeJNI(byte[] bArr, String str, String str2) {
        try {
            return new String(new String(bArr, str).getBytes(str), str2);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static native void updateOrientation(int i);
}
