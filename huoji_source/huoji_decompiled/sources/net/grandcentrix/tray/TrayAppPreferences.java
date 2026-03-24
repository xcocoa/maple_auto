package net.grandcentrix.tray;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class TrayAppPreferences extends TrayPreferences {
    private static final int VERSION = 1;

    public TrayAppPreferences(Context context) {
        super(context, context.getPackageName(), 1);
    }
}
