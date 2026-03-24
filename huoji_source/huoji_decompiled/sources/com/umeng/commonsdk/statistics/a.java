package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static int a;
    private static String b;

    public static String a(Context context) {
        if (TextUtils.isEmpty(b)) {
            b = com.umeng.commonsdk.statistics.common.d.a(context).b();
        }
        return b;
    }
}
