package com.anythink.expressad.foundation.h;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    private static final String a = "StringUtils";

    public static boolean a(String str) {
        return str == null || TextUtils.isEmpty(str.trim()) || "null".equals(str);
    }

    public static boolean b(String str) {
        return (str == null || TextUtils.isEmpty(str.trim()) || "null".equals(str)) ? false : true;
    }
}
