package com.octopus.ad.utils.a.b;

import android.app.KeyguardManager;
import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.octopus.ad.utils.a.d {
    private final Context a;
    private final KeyguardManager b;

    public c(Context context) {
        this.a = context;
        this.b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.b;
        if (keyguardManager == null) {
            cVar.a(new com.octopus.ad.utils.a.e("KeyguardManager not found"));
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", new Class[0]).invoke(this.b, new Object[0]);
            if (objInvoke == null) {
                throw new com.octopus.ad.utils.a.e("OAID obtain failed");
            }
            String string = objInvoke.toString();
            com.octopus.ad.utils.a.f.a("OAID obtain success: " + string);
            cVar.a(string);
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
        }
    }

    @Override // com.octopus.ad.utils.a.d
    public boolean a() {
        KeyguardManager keyguardManager;
        if (this.a == null || (keyguardManager = this.b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", new Class[0]).invoke(this.b, new Object[0]);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            return false;
        }
    }
}
