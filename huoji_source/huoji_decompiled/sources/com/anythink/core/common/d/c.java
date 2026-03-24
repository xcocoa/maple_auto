package com.anythink.core.common.d;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class c extends a {
    private static volatile c c;

    private c(Context context) {
        super(context);
        this.b = 1;
    }

    public static c a(Context context) {
        if (c == null) {
            synchronized (c.class) {
                if (c == null) {
                    c = new c(context);
                }
            }
        }
        return c;
    }
}
