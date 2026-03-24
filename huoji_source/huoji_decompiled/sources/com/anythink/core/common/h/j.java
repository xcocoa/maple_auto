package com.anythink.core.common.h;

import android.content.Context;
import com.anythink.core.api.AdError;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class j extends a {
    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 2;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        try {
            return (JSONObject) obj;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strC = com.anythink.core.common.o.g.c(String.valueOf(jCurrentTimeMillis));
        StringBuilder sb = new StringBuilder();
        com.anythink.core.common.h.a();
        sb.append(com.anythink.core.common.h.d());
        sb.append("?t=");
        sb.append(jCurrentTimeMillis);
        sb.append("&sign=");
        sb.append(strC);
        return sb.toString();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        return new byte[0];
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final boolean n() {
        return true;
    }
}
