package com.anythink.expressad.foundation.h;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static void a() {
    }

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            Class<?> cls = Class.forName("com.anythink.expressad.atsignalcommon.webEnvCheck.WebEnvCheckEntry");
            cls.getMethod("check", Context.class).invoke(cls.newInstance(), context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
