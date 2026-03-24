package com.anythink.expressad.e;

import android.content.Context;
import com.anythink.expressad.foundation.g.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a implements com.anythink.expressad.b {
    public static Map<String, String> a;
    private Context b;
    private boolean c = false;

    private void a() {
        this.c = false;
        try {
            m.a(this.b);
            com.anythink.expressad.foundation.b.b.a().a(a, this.b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.anythink.expressad.b
    public final void a(Map<String, String> map, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        a = map;
        this.c = false;
        try {
            m.a(applicationContext);
            com.anythink.expressad.foundation.b.b.a().a(a, this.b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
