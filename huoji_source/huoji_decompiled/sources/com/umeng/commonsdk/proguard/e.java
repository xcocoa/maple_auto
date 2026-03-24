package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static void a(final Context context, final Throwable th) {
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.e.1
            @Override // java.lang.Runnable
            public void run() {
                Throwable th2;
                try {
                    synchronized (this) {
                        if (context != null && (th2 = th) != null) {
                            String strA = f.a(th2);
                            if (!TextUtils.isEmpty(strA)) {
                                com.umeng.commonsdk.stateless.f.a(context, context.getFilesDir() + "/" + com.umeng.commonsdk.stateless.a.c + "/" + Base64.encodeToString(a.b.getBytes(), 0), 50);
                                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                                JSONObject jSONObjectBuildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context);
                                try {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("content", strA);
                                    jSONObject.put("ts", System.currentTimeMillis());
                                    JSONObject jSONObject2 = new JSONObject();
                                    jSONObject2.put("crash", jSONObject);
                                    JSONObject jSONObject3 = new JSONObject();
                                    jSONObject3.put("tp", jSONObject2);
                                    JSONObject jSONObjectBuildSLEnvelope = uMSLEnvelopeBuild.buildSLEnvelope(context, jSONObjectBuildSLBaseHeader, jSONObject3, a.a);
                                    if (jSONObjectBuildSLEnvelope != null) {
                                        jSONObjectBuildSLEnvelope.has("exception");
                                    }
                                } catch (JSONException unused) {
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
            }
        }).start();
    }
}
