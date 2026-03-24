package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {
    private static final String a = "idfa";
    private Context b;

    public c(Context context) {
        super("idfa");
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        String strA = com.umeng.commonsdk.statistics.common.a.a(this.b);
        return strA == null ? "" : strA;
    }
}
