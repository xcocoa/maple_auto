package com.iflytek.voiceads.videolib;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class n {
    public static int a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    public static Activity a(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static String a(long j) {
        if (j <= 0 || j >= 86400000) {
            return "00:00";
        }
        long j2 = j / 1000;
        int i = (int) (j2 % 60);
        int i2 = (int) ((j2 / 60) % 60);
        int i3 = (int) (j2 / com.anythink.expressad.d.a.b.P);
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        return i3 > 0 ? formatter.format("%d:%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2), Integer.valueOf(i)).toString() : formatter.format("%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i)).toString();
    }

    public static void a(Context context, int i) {
        Activity activityA = a(context);
        if (activityA != null) {
            activityA.setRequestedOrientation(i);
        }
    }
}
