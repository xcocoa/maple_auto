package com.anythink.core.basead.ui.web;

import android.webkit.WebView;
import com.anythink.core.common.f.l;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public l a;
    public JSONObject b;
    public HashMap<String, Boolean> c = new HashMap<>(3);

    public c(l lVar) {
        JSONObject jSONObject;
        this.a = lVar;
        if (lVar != null) {
            try {
                jSONObject = new JSONObject(lVar.Q());
            } catch (Throwable unused) {
                return;
            }
        } else {
            jSONObject = null;
        }
        this.b = jSONObject;
    }

    public final void a(WebView webView, String str) {
        JSONObject jSONObject = this.b;
        if (jSONObject == null) {
            return;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && str != null && str.contains(next) && this.c.get(next) == null) {
                    this.c.put(next, Boolean.TRUE);
                    webView.loadUrl(this.b.optString(next));
                }
            }
        } catch (Throwable unused) {
        }
    }
}
