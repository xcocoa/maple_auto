package com.anythink.core.d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.b.n;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    private static final String a = "PrePlacementStrategy";
    private String b;

    private String c(String str) {
        int i;
        int i2;
        Context contextF = n.a().f();
        if (contextF != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.b)) {
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(contextF.getResources().getAssets().open(this.b + File.separator + str + ".json")));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    JSONObject jSONObject = new JSONObject(com.anythink.core.common.o.d.b(sb.toString()));
                    if (!jSONObject.isNull("sdk_ver")) {
                        String string = jSONObject.getString("sdk_ver");
                        if (!TextUtils.isEmpty(string) && (i2 = Integer.parseInt(com.anythink.core.common.o.h.a().replace("UA_", "").replace(".", ""))) < (i = Integer.parseInt(string.replace(".", "")))) {
                            Log.e(a, String.format("The sdk version(%s) must be greater than or equal to the version(%s) in the placement strategy.", Integer.valueOf(i2), Integer.valueOf(i)));
                            return "";
                        }
                    }
                    if (!jSONObject.isNull("pl_id")) {
                        String string2 = jSONObject.getString("pl_id");
                        if (!TextUtils.isEmpty(string2) && !str.equals(string2)) {
                            return "";
                        }
                    }
                    if (!jSONObject.isNull("pl_data")) {
                        return jSONObject.getJSONObject("pl_data").toString();
                    }
                } catch (IOException unused) {
                    return "";
                }
            } catch (Exception e) {
                Log.e(a, "Get pre placement strategy failed: " + e.getMessage());
            }
        }
        return "";
    }

    public final void a(String str) {
        this.b = str;
    }

    public final f b(String str) {
        String strC = c(str);
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        try {
            f fVarA = f.a(str, new JSONObject(strC));
            fVarA.a(1);
            return fVarA;
        } catch (Throwable unused) {
            return null;
        }
    }
}
