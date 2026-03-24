package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class Util {
    static {
        System.loadLibrary("mqm");
    }

    public static native String getAppSinature(Context context);
}
