package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.MLog;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k {
    public static long a(JSONArray jSONArray) {
        return jSONArray.toString().getBytes().length;
    }

    public static long a(JSONObject jSONObject) {
        return jSONObject.toString().getBytes().length;
    }

    private static JSONObject a(Context context, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            MLog.e("splitAnalyticsData========");
            boolean z = true;
            jSONObject = i.a(context).b(true);
            if (jSONObject != null && jSONObject.length() > 0 && a(jSONObject) > j) {
                String string = null;
                if (jSONObject.has(b.n)) {
                    JSONObject jSONObject2 = jSONObject.getJSONArray(b.n).getJSONObject(0);
                    if (jSONObject2 != null) {
                        string = jSONObject2.getString("id");
                        jSONObject2.remove(b.t);
                        jSONObject2.remove(b.s);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(jSONObject2);
                        jSONObject.put(b.n, jSONArray);
                    }
                } else {
                    z = false;
                }
                if (jSONObject.has(b.N)) {
                    jSONObject.remove(b.N);
                }
                if (jSONObject.has(b.O)) {
                    jSONObject.remove(b.O);
                }
                if (jSONObject.has("error")) {
                    jSONObject.remove("error");
                }
                g.a(context).a(z, string);
            }
        } catch (Throwable th) {
            MLog.e(th);
        }
        return jSONObject;
    }

    public static JSONObject a(Context context, long j, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = new JSONObject();
        try {
            g.a(context).a();
            JSONObject jSONObject4 = new JSONObject();
            long jA = 0;
            if (jSONObject.has("header")) {
                jSONObject4 = jSONObject.getJSONObject("header");
                if (jSONObject4 == null || jSONObject4.length() <= 0) {
                    jSONObject4 = null;
                } else {
                    jA = j - a(jSONObject4);
                }
            }
            if (jSONObject.has("content") && (jSONObject2 = jSONObject.getJSONObject("content")) != null && jSONObject2.length() > 0) {
                a(context, jA, jSONObject2, jSONObject3);
                if (jSONObject3.length() < 1) {
                    b(context, jA, jSONObject2, jSONObject3);
                }
                if (jSONObject3.length() > 0 && jSONObject4 != null) {
                    jSONObject3.put("header", jSONObject4);
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject3;
    }

    private static void a(Context context, long j, JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            if (jSONObject.has("dplus")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("dplus");
                if (jSONObject3 != null && jSONObject3.length() > 0 && a(jSONObject3) > j) {
                    jSONObject3 = b(context, j, jSONObject3);
                }
                if (jSONObject3.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("dplus", jSONObject3);
                    jSONObject2.put("content", jSONObject4);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static JSONObject b(Context context, long j, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (jSONObject.has(b.ac)) {
                JSONArray jSONArray = jSONObject.getJSONArray(b.ac);
                if (a(jSONArray) > j) {
                    jSONObject.remove(b.ac);
                    g.a(context).a(4);
                    return b(context, j, jSONObject);
                }
                jSONObject2.put(b.ac, jSONArray);
            } else if (jSONObject.has(b.Y)) {
                JSONArray jSONArray2 = jSONObject.getJSONArray(b.Y);
                if (a(jSONArray2) > j) {
                    jSONObject.remove(b.Y);
                    g.a(context).a(0);
                    return b(context, j, jSONObject);
                }
                jSONObject2.put(b.Y, jSONArray2);
            } else if (jSONObject.has(b.ah)) {
                JSONArray jSONArray3 = jSONObject.getJSONArray(b.ah);
                if (a(jSONArray3) > j) {
                    jSONObject.remove(b.ah);
                    g.a(context).a(1);
                    return b(context, j, jSONObject);
                }
                jSONObject2.put(b.ah, jSONArray3);
            }
        } catch (Throwable unused) {
        }
        return jSONObject2;
    }

    private static void b(Context context, long j, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3;
        try {
            if (!jSONObject.has("analytics") || (jSONObject3 = jSONObject.getJSONObject("analytics")) == null || jSONObject3.length() <= 0) {
                return;
            }
            if (a(jSONObject3) > j) {
                jSONObject3 = a(context, j);
            }
            if (jSONObject3.length() > 0) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("analytics", jSONObject3);
                jSONObject2.put("content", jSONObject4);
            }
        } catch (Throwable unused) {
        }
    }
}
