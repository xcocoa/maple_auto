package net.grandcentrix.tray;

import android.content.Context;
import java.util.List;
import net.grandcentrix.tray.core.AbstractTrayPreference;
import net.grandcentrix.tray.core.TrayItem;
import net.grandcentrix.tray.provider.TrayProviderHelper;

/* JADX INFO: loaded from: classes2.dex */
public class Tray {
    private final TrayProviderHelper mProviderHelper;

    public Tray(Context context) {
        this.mProviderHelper = new TrayProviderHelper(context);
    }

    public static void clear(TrayPreferences... trayPreferencesArr) {
        for (TrayPreferences trayPreferences : trayPreferencesArr) {
            if (trayPreferences != null) {
                trayPreferences.clear();
            }
        }
    }

    public boolean clear() {
        return this.mProviderHelper.clear();
    }

    public boolean clearBut(AbstractTrayPreference... abstractTrayPreferenceArr) {
        return this.mProviderHelper.clearBut(abstractTrayPreferenceArr);
    }

    public List<TrayItem> getAll() {
        return this.mProviderHelper.getAll();
    }

    public boolean wipe() {
        return this.mProviderHelper.wipe();
    }
}
