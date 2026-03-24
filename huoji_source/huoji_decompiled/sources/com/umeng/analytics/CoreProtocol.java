package com.umeng.analytics;

import android.content.Context;
import com.umeng.analytics.pro.i;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CoreProtocol implements UMLogDataProtocol {
    private static Context a;

    public static class a {
        private static final CoreProtocol a = new CoreProtocol();

        private a() {
        }
    }

    private CoreProtocol() {
    }

    public static CoreProtocol getInstance(Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return a.a;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
        i.a(a).a(obj);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j) {
        return i.a(a).b(j);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i) {
        i.a(a).a(obj, i);
    }
}
