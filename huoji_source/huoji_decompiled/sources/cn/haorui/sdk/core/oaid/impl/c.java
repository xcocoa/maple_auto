package cn.haorui.sdk.core.oaid.impl;

import android.app.KeyguardManager;
import android.content.Context;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.oaid.OAIDException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class c implements cn.haorui.sdk.core.oaid.b {
    public final Context a;
    public final KeyguardManager b;

    public c(Context context) {
        this.a = context;
        this.b = (KeyguardManager) context.getSystemService("keyguard");
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        KeyguardManager keyguardManager = this.b;
        if (keyguardManager == null) {
            new OAIDException("KeyguardManager not found");
            return;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("obtainOaid", new Class[0]).invoke(this.b, new Object[0]);
            if (objInvoke == null) {
                throw new OAIDException("OAID obtain failed");
            }
            String string = objInvoke.toString();
            String str = "OAID obtain success: " + string;
            ((AdSdk.a) aVar).a(string);
        } catch (Exception unused) {
        }
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        KeyguardManager keyguardManager;
        if (this.a == null || (keyguardManager = this.b) == null) {
            return false;
        }
        try {
            Object objInvoke = keyguardManager.getClass().getDeclaredMethod("isSupported", new Class[0]).invoke(this.b, new Object[0]);
            Objects.requireNonNull(objInvoke);
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
