package com.tramini.plugin.a.h;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static JSONObject a;

    private static void a(String str) {
        try {
            a = new JSONObject(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
