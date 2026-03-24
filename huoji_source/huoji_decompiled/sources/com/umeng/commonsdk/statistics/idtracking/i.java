package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.v;

/* JADX INFO: loaded from: classes2.dex */
public class i extends a {
    private static final String a = "newumid";
    private Context b;

    public i(Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return UMEnvelopeBuild.imprintProperty(this.b, v.e, null);
    }
}
