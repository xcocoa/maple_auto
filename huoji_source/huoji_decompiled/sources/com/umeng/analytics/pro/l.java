package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private final long e;

    public static class a {
        public static final l a = new l();

        private a() {
        }
    }

    private l() {
        this.e = 60000L;
    }

    public static l a() {
        return a.a;
    }

    private JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObjectI = com.umeng.analytics.b.a().i();
            if (jSONObjectI.length() > 0) {
                jSONObject.put(b.ab, jSONObjectI);
            }
            jSONObject.put(b.ad, o.a().d());
            jSONObject.put(b.ae, jCurrentTimeMillis);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(b.af, o.a().d());
            jSONObject2.put(b.ag, jCurrentTimeMillis + 60000);
            if (jSONObjectI.length() > 0) {
                jSONObject2.put(b.ab, jSONObjectI);
            }
            jSONArray.put(jSONObject).put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONArray;
    }

    public int a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", String.valueOf(0))).intValue();
    }

    public void a(JSONObject jSONObject, Context context) {
        int iA = a(context);
        if (iA == 1) {
            jSONObject.remove(b.Y);
        } else if (iA == 2) {
            jSONObject.remove(b.Y);
            jSONObject.remove(b.ac);
            jSONObject.remove(b.ah);
            try {
                jSONObject.put(b.ac, c());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        } else {
            if (iA != 3) {
                return;
            }
            jSONObject.remove(b.Y);
            jSONObject.remove(b.ac);
            jSONObject.remove(b.ah);
        }
        g.a(context).f();
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            jSONObject.put("id", o.a().d());
            jSONObject.put("start_time", jCurrentTimeMillis);
            jSONObject.put("end_time", jCurrentTimeMillis + 60000);
            jSONObject.put("duration", 60000L);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public void b(JSONObject jSONObject, Context context) {
        int iA = a(context);
        if (iA != 1) {
            if (iA == 2) {
                jSONObject.remove(b.n);
                try {
                    jSONObject.put(b.n, b());
                } catch (Exception unused) {
                }
            } else if (iA != 3) {
                return;
            } else {
                jSONObject.remove(b.n);
            }
        }
        jSONObject.remove("error");
        jSONObject.remove(b.N);
        jSONObject.remove(b.O);
        g.a(context).a(false, true);
    }
}
