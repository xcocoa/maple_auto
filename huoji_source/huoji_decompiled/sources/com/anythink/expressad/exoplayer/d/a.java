package com.anythink.expressad.exoplayer.d;

import android.util.Log;
import com.anythink.expressad.exoplayer.k.af;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final String a = "ClearKeyUtil";

    private a() {
    }

    private static String a(String str) {
        return str.replace('+', '-').replace(IOUtils.DIR_SEPARATOR_UNIX, '_');
    }

    public static byte[] a(byte[] bArr) {
        if (af.a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(af.a(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(b(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(b(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return af.c(sb.toString());
        } catch (JSONException e) {
            Log.e(a, "Failed to adjust response data: " + af.a(bArr), e);
            return bArr;
        }
    }

    private static String b(String str) {
        return str.replace('-', '+').replace('_', IOUtils.DIR_SEPARATOR_UNIX);
    }

    private static byte[] b(byte[] bArr) {
        return af.a >= 27 ? bArr : af.c(af.a(bArr).replace('+', '-').replace(IOUtils.DIR_SEPARATOR_UNIX, '_'));
    }
}
