package com.iflytek.voiceads.utils;

import android.content.Context;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class e {
    public static int a(Context context, String str, String str2) {
        try {
            Class<?>[] classes = Class.forName(context.getPackageName() + ".R").getClasses();
            Class<?> cls = null;
            int i = 0;
            while (true) {
                if (i >= classes.length) {
                    break;
                }
                if (classes[i].getName().split("\\$")[1].equals(str)) {
                    cls = classes[i];
                    break;
                }
                i++;
            }
            if (cls != null) {
                return cls.getField(str2).getInt(cls);
            }
            return 0;
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "FindResource:" + e.getMessage());
            return 0;
        }
    }
}
