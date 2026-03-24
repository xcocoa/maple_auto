package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* JADX INFO: loaded from: classes2.dex */
public class h extends a {
    private static final String a = "mac";
    private Context b;

    public h(Context context) {
        super("mac");
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            return DeviceConfig.getMac(this.b);
        } catch (Exception e) {
            if (com.umeng.commonsdk.statistics.b.f) {
                e.printStackTrace();
            }
            com.umeng.commonsdk.proguard.e.a(this.b, e);
            return null;
        }
    }
}
