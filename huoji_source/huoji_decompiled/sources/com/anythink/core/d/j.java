package com.anythink.core.d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.s;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private static final String a = "PlaceStrategySaver";
    private final Context b;
    private final ConcurrentHashMap<String, f> c = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, f> d = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, f> e = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, Integer> f = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, Integer> g = new ConcurrentHashMap<>();

    public j(Context context) {
        this.b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, boolean z) {
        return str + "_" + (z ? h.v.d : h.v.c);
    }

    private boolean d(String str, String str2) {
        return a(str, str2, 0) != null;
    }

    public final f a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        int i = this.f.get(sb.toString()) == null ? 2 : 0;
        f fVarA = a(str, str2, i);
        return (fVarA == null && i == 2) ? a(str, str2, 0) : fVarA == null ? a(str, str2, 2) : fVarA;
    }

    public final f a(String str, String str2, int i) {
        String str3 = str + str2;
        ConcurrentHashMap<String, f> concurrentHashMap = i == 1 ? this.e : i == 2 ? this.c : this.d;
        f fVar = concurrentHashMap.get(str3);
        if (fVar != null) {
            return fVar;
        }
        if (i == 1) {
            return null;
        }
        String strB = s.b(this.b, com.anythink.core.common.b.h.p, b(str3, i == 2), "");
        if (!TextUtils.isEmpty(strB)) {
            try {
                f fVarA = f.a(str2, new JSONObject(strB));
                if (fVarA != null) {
                    fVarA.a(i);
                    concurrentHashMap.put(str3, fVarA);
                    return fVarA;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final void a(String str, int i) {
        this.g.put(str, Integer.valueOf(i));
    }

    public final void a(String str, String str2, f fVar, final JSONObject jSONObject, int i) {
        if (this.b == null || fVar == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        final String str3 = str + str2;
        if (i == 1) {
            this.e.put(str3, fVar);
            return;
        }
        final boolean z = false;
        if (i == 2) {
            this.c.put(str3, fVar);
            z = true;
        } else {
            this.d.put(str3, fVar);
        }
        if (fVar.u() != 1) {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.d.j.1
                @Override // java.lang.Runnable
                public final void run() {
                    JSONObject jSONObject2 = jSONObject;
                    s.a(j.this.b, com.anythink.core.common.b.h.p, j.b(str3, z), jSONObject2 == null ? "" : jSONObject2.toString());
                }
            });
        } else if (n.a().H()) {
            Log.e("anythink", "PreInitNetwork may affect DebuggerMode.It is recommended to disable PreInitNetwork first and then setDebuggerMode.");
        }
    }

    public final f b(String str, String str2) {
        f fVarA;
        String str3 = str + str2;
        Integer num = this.g.get(str2);
        int iIntValue = num == null ? 0 : num.intValue();
        return (iIntValue != 1 || (fVarA = a(str, str2, 0)) == null) ? a(str, str2, iIntValue) : fVarA;
    }

    public final void b(String str, String str2, int i) {
        String str3 = str + str2;
        if (i == 1) {
            this.e.remove(str3);
        } else {
            s.a(this.b, com.anythink.core.common.b.h.p, b(str3, i == 2));
        }
    }

    public final void c(String str, String str2) {
        String str3 = str + str2;
        Integer num = this.f.get(str3);
        if (num == null) {
            this.f.put(str3, 1);
        } else {
            this.f.put(str3, Integer.valueOf(num.intValue() + 1));
        }
    }
}
