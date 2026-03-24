package com.octopus.ad.internal.utilities;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HaoboLogListener {

    public enum LOG_LEVEL {
        V,
        D,
        I,
        W,
        E
    }

    public abstract LOG_LEVEL getLogLevel();

    public abstract void onReceiveMessage(LOG_LEVEL log_level, String str, String str2);

    public abstract void onReceiveMessage(LOG_LEVEL log_level, String str, String str2, Throwable th);
}
