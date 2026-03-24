package com.anythink.expressad.video.module.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.expressad.foundation.g.f.h.b;
import com.anythink.expressad.foundation.h.j;
import com.anythink.expressad.foundation.h.k;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a extends com.anythink.expressad.foundation.g.f.h.a {
    public a(Context context) {
        super(context);
    }

    @Override // com.anythink.expressad.foundation.g.f.h.a
    public final void a(String str, b bVar) {
        super.a(str, bVar);
        bVar.a("platform", "1");
        bVar.a("os_version", Build.VERSION.RELEASE);
        bVar.a("package_name", k.h(this.a));
        bVar.a(com.anythink.expressad.foundation.g.a.bf, k.d(this.a));
        StringBuilder sb = new StringBuilder();
        sb.append(k.c(this.a));
        bVar.a("app_version_code", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(k.b(this.a));
        bVar.a("orientation", sb2.toString());
        bVar.a("gaid", "");
        bVar.a("sdk_version", com.anythink.expressad.out.b.a);
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.foundation.b.a.c().f();
        if (com.anythink.expressad.d.b.b() != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                if (TextUtils.isEmpty(jSONObject.toString())) {
                    return;
                }
                String strA = j.a(jSONObject.toString());
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                bVar.a("dvi", strA);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
