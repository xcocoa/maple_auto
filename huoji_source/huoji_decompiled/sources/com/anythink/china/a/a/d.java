package com.anythink.china.a.a;

import android.app.KeyguardManager;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private Context a;
    private KeyguardManager b;

    public d(Context context) {
        this.a = context;
    }

    public final void a(com.anythink.china.a.a aVar) {
        Context context = this.a;
        if (context == null) {
            return;
        }
        if (this.b == null) {
            this.b = (KeyguardManager) context.getSystemService("keyguard");
        }
        KeyguardManager keyguardManager = this.b;
        if (keyguardManager == null) {
            aVar.a();
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", new Class[0]).invoke(this.b, new Object[0]);
            if (objInvoke != null) {
                aVar.a(objInvoke.toString(), false);
            } else {
                aVar.a();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
