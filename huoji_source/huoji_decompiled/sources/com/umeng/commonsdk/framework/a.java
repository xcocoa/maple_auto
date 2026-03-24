package com.umeng.commonsdk.framework;

import android.content.Context;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.idtracking.g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static long a(Context context) {
        if (context == null) {
            return 0L;
        }
        return b.i(context.getApplicationContext());
    }

    public static String a(Context context, String str, String str2) {
        return context == null ? str2 : g.a(context.getApplicationContext()).b().a(str, str2);
    }

    public static JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        com.umeng.commonsdk.statistics.common.e.b("--->>> buildEnvelopeFile Enter.");
        return new com.umeng.commonsdk.statistics.c().a(context.getApplicationContext(), jSONObject, jSONObject2);
    }

    public static boolean a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        boolean z = false;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            boolean zB = b.b(applicationContext);
            int iC = b.c(applicationContext);
            if (zB && !b.a(applicationContext, uMBusinessType)) {
                z = true;
            }
            if (zB && iC > 0) {
                d.b();
            }
        }
        return z;
    }

    public static long b(Context context) {
        if (context == null) {
            return 0L;
        }
        return com.umeng.commonsdk.statistics.c.a(context.getApplicationContext());
    }
}
