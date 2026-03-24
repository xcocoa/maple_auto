package org.litepal;

import android.app.Application;
import android.content.Context;
import org.litepal.exceptions.GlobalException;

/* JADX INFO: loaded from: classes2.dex */
public class LitePalApplication extends Application {
    public static Context OoooOoO;

    public LitePalApplication() {
        OoooOoO = this;
    }

    public static Context OooO00o() {
        Context context = OoooOoO;
        if (context != null) {
            return context;
        }
        throw new GlobalException(GlobalException.APPLICATION_CONTEXT_IS_NULL);
    }
}
