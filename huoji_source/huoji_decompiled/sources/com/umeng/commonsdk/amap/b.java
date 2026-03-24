package com.umeng.commonsdk.amap;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.stateless.f;
import com.umeng.commonsdk.statistics.common.e;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends Thread {
    private static final String e = "info";
    private static final String f = "ts";
    private static final String g = "amap_lbs";
    private static final String h = "tp";
    private Context a;
    private int b;
    private long c;
    private Vector<JSONObject> d;
    private int i = 1;
    private int j = 1;

    public b(Context context, int i, long j) {
        this.b = 0;
        e.a("AmapLBS", "new UMAmapTimer");
        if (context != null) {
            this.a = context.getApplicationContext();
            this.b = i;
            this.c = j;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            if (this.a == null) {
                return;
            }
            while (true) {
                int i = this.b;
                if (i == 1) {
                    if (e.a) {
                        e.a("AmapLBS", "[lbs-build] timer begin : index is " + this.i);
                        this.i = this.i + 1;
                    }
                    byte[] bArrB = new a(this.a).b();
                    if (bArrB != null) {
                        String strTrim = Base64.encodeToString(bArrB, 0).trim();
                        if (TextUtils.isEmpty(strTrim)) {
                            e.a("AmapLBS", "[lbs-build] amap result is empty");
                        } else {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put(e, strTrim);
                                jSONObject.put("ts", System.currentTimeMillis());
                            } catch (Exception unused) {
                            }
                            if (this.d == null) {
                                this.d = new Vector<>();
                            }
                            this.d.add(jSONObject);
                            if (this.d.size() == 30) {
                                e.a("AmapLBS", "[lbs-build] begin build envelope , cache size is " + this.d.size());
                                JSONArray jSONArray = new JSONArray();
                                for (JSONObject jSONObject2 : this.d) {
                                    if (jSONObject2 != null) {
                                        try {
                                            jSONArray.put(jSONObject2);
                                        } catch (Exception unused2) {
                                        }
                                    }
                                }
                                JSONObject jSONObject3 = new JSONObject();
                                try {
                                    jSONObject3.put(g, jSONArray);
                                } catch (Exception unused3) {
                                }
                                JSONObject jSONObject4 = new JSONObject();
                                try {
                                    jSONObject4.put(h, jSONObject3);
                                } catch (Exception unused4) {
                                }
                                Vector<JSONObject> vector = this.d;
                                if (vector != null) {
                                    vector.clear();
                                    this.d = null;
                                }
                                f.a(this.a, this.a.getFilesDir() + "/" + com.umeng.commonsdk.stateless.a.c + "/" + Base64.encodeToString(UMAmapConfig.AMAP_CACHE_PATH.getBytes(), 0), 50);
                                StringBuilder sb = new StringBuilder();
                                sb.append("[lbs-build] begin build envelope is ");
                                sb.append(jSONObject4.toString());
                                e.a("AmapLBS", sb.toString());
                                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                                uMSLEnvelopeBuild.buildSLEnvelope(this.a, uMSLEnvelopeBuild.buildSLBaseHeader(this.a), jSONObject4, UMAmapConfig.AMAP_CACHE_PATH);
                            }
                        }
                    } else {
                        e.a("AmapLBS", "[lbs-build] amap result is null");
                    }
                } else if (i != 2) {
                    return;
                }
                try {
                    Thread.sleep(this.c);
                } catch (Exception e2) {
                    com.umeng.commonsdk.proguard.e.a(this.a, e2);
                }
            }
        } catch (Exception e3) {
            com.umeng.commonsdk.proguard.e.a(this.a, e3);
        }
    }
}
