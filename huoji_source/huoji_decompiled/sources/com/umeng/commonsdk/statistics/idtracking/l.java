package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class l extends a {
    private static final String a = "umtt5";
    private Context b;

    public l(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return new com.umeng.commonsdk.proguard.q(this.b).g();
    }
}
