package com.anythink.core.common.o;

import android.util.Log;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.common.f.av;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static j a = new j();

    public static ATBaseAdAdapter a(av avVar) {
        try {
            return a(avVar.i());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static ATBaseAdAdapter a(Class<? extends com.anythink.core.common.b.d> cls) throws NoSuchMethodException {
        if (cls == null) {
            Log.w("anythink", "can not find adapter");
        }
        Constructor<? extends com.anythink.core.common.b.d> declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (ATBaseAdAdapter) declaredConstructor.newInstance(new Object[0]);
    }

    public static ATBaseAdAdapter a(String str) throws NoSuchMethodException {
        if (str == null) {
            return null;
        }
        Class<? extends U> clsAsSubclass = Class.forName(str).asSubclass(ATBaseAdAdapter.class);
        if (clsAsSubclass == 0) {
            Log.w("anythink", "can not find adapter");
        }
        Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (ATBaseAdAdapter) declaredConstructor.newInstance(new Object[0]);
    }
}
