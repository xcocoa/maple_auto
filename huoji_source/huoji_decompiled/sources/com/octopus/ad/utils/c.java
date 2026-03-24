package com.octopus.ad.utils;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static final Handler a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable, long j) {
        a.postDelayed(runnable, j);
    }
}
