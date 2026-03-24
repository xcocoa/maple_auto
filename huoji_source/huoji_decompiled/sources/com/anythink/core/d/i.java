package com.anythink.core.d;

import android.content.Context;
import android.util.Log;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.am;
import com.anythink.core.d.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static final String a = "i";
    private final h b;

    public i(h hVar) {
        this.b = hVar;
    }

    public static void a(Context context, am amVar, com.anythink.core.common.h.k kVar) {
        new StringBuilder("startRequest() >>> ").append(amVar);
        new com.anythink.core.common.h.l(context, amVar).a(0, kVar);
    }

    public final void a(Context context, final am amVar) {
        if (amVar == null) {
            return;
        }
        a(context, amVar, new com.anythink.core.common.h.k() { // from class: com.anythink.core.d.i.1
            @Override // com.anythink.core.common.h.k
            public final void onLoadCanceled(int i) {
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadError(int i, String str, AdError adError) {
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadFinish(int i, Object obj) {
                f fVarA;
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) obj;
                    try {
                        jSONObject.put(f.a.ac, System.currentTimeMillis());
                        int iOptInt = jSONObject.optInt(f.a.av, 0);
                        if (i.this.b != null && (fVarA = i.this.b.a(amVar.c(), iOptInt)) != null) {
                            fVarA.a(jSONObject, amVar.c());
                        }
                    } catch (Throwable th) {
                        Log.e(i.a, "parse place strategy error:" + th.getMessage());
                    }
                    f fVarA2 = f.a(amVar.c(), jSONObject);
                    if (i.this.b == null || fVarA2 == null) {
                        return;
                    }
                    String unused = i.a;
                    StringBuilder sb = new StringBuilder("onLoadFinish() >>> placeId: ");
                    sb.append(amVar.c());
                    sb.append(" fistReqPlaceStrategyFlag: ");
                    sb.append(amVar.g());
                    sb.append(" strategyType: ");
                    sb.append(fVarA2.aR());
                    h hVar = i.this.b;
                    String strC = amVar.c();
                    if (fVarA2.aj() != 1) {
                        jSONObject = null;
                    }
                    hVar.a(strC, fVarA2, jSONObject, fVarA2.aR());
                }
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadStart(int i) {
            }
        });
    }
}
