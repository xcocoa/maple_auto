package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class p extends a {
    private static final String a = "umtt2";
    private Context b;

    public p(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return new com.umeng.commonsdk.proguard.q(this.b).d();
    }
}
