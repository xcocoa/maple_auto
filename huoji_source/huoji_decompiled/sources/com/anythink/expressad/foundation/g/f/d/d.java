package com.anythink.expressad.foundation.g.f.d;

import com.anythink.expressad.foundation.g.f.k;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends e<JSONObject> {
    private static final String c = d.class.getSimpleName();

    public d(int i, String str, String str2, com.anythink.expressad.foundation.g.f.e<JSONObject> eVar) {
        super(i, str, str2, eVar);
    }

    @Override // com.anythink.expressad.foundation.g.f.i
    public final k<JSONObject> a(com.anythink.expressad.foundation.g.f.f.c cVar) {
        com.anythink.expressad.foundation.g.f.a.a aVar;
        try {
            return cVar.a == 204 ? k.a(new JSONObject(), cVar) : k.a(new JSONObject(new String(cVar.b, com.anythink.expressad.foundation.g.f.g.d.a(cVar.d))), cVar);
        } catch (UnsupportedEncodingException e) {
            e.getMessage();
            aVar = new com.anythink.expressad.foundation.g.f.a.a(8, cVar);
            return k.a(aVar);
        } catch (JSONException e2) {
            e2.getMessage();
            aVar = new com.anythink.expressad.foundation.g.f.a.a(8, cVar);
            return k.a(aVar);
        }
    }
}
