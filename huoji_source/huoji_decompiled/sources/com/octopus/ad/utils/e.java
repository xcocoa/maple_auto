package com.octopus.ad.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static e c;
    public f a;
    private String b = "OnLineState";

    private e(Context context) {
        if (context == null) {
            com.octopus.ad.utils.b.f.c("OnLineState", "OnLineState init failed,because context cann't be null ");
            return;
        }
        f fVar = new f();
        this.a = fVar;
        fVar.a(context);
    }

    public static e a(Context context) {
        if (c == null) {
            synchronized (e.class) {
                if (c == null) {
                    c = new e(context);
                }
            }
        }
        return c;
    }

    public void a(d dVar) {
        f fVar = this.a;
        if (fVar != null) {
            fVar.a(dVar);
        } else {
            com.octopus.ad.utils.b.f.a(this.b, "please init OnLineState first ,you can init it with 'OnLineState.init(context);' in you BaseApplication ");
        }
    }
}
