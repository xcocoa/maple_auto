package net.grandcentrix.tray.core;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import net.grandcentrix.tray.core.PreferenceStorage;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Preferences<T, S extends PreferenceStorage<T>> implements PreferenceAccessor<T> {
    private boolean mChangeVersionSucceeded = false;

    @NonNull
    private S mStorage;
    private int mVersion;

    public Preferences(@NonNull S s, int i) {
        this.mStorage = s;
        this.mVersion = i;
        isVersionChangeChecked();
    }

    public static boolean isDataTypeSupported(Object obj) {
        return (obj instanceof Integer) || (obj instanceof String) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Boolean) || obj == null;
    }

    private boolean putData(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Preference key value cannot be empty.");
        }
        return getStorage().put(str, obj);
    }

    public synchronized void changeVersion(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("Version must be >= 1, was " + i);
        }
        try {
            int version = getStorage().getVersion();
            if (version != i) {
                if (version == 0) {
                    TrayLog.v("create " + this + " with initial version 0");
                    onCreate(i);
                } else if (version > i) {
                    TrayLog.v("downgrading " + this + "from " + version + " to " + i);
                    onDowngrade(version, i);
                } else {
                    TrayLog.v("upgrading " + this + " from " + version + " to " + i);
                    onUpgrade(version, i);
                }
                getStorage().setVersion(i);
            }
            this.mChangeVersionSucceeded = true;
        } catch (TrayException e) {
            e.printStackTrace();
            TrayLog.v("could not change the version, retrying with the next interaction");
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean clear() {
        boolean zClear = this.mStorage.clear();
        StringBuilder sb = new StringBuilder();
        sb.append("cleared ");
        sb.append(zClear ? "successful" : "failed");
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(this);
        TrayLog.v(sb.toString());
        return zClear;
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean contains(String str) {
        return getPref(str) != null;
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public Collection<T> getAll() {
        return this.mStorage.getAll();
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    @Nullable
    public T getPref(@NonNull String str) {
        return (T) this.mStorage.get(str);
    }

    @NonNull
    public S getStorage() {
        return this.mStorage;
    }

    public int getVersion() throws TrayException {
        return this.mStorage.getVersion();
    }

    public boolean isVersionChangeChecked() {
        if (!this.mChangeVersionSucceeded) {
            changeVersion(this.mVersion);
        }
        return this.mChangeVersionSucceeded;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SafeVarargs
    public final void migrate(Migration<T>... migrationArr) {
        Object obj;
        for (SharedPreferencesImport sharedPreferencesImport : migrationArr) {
            if (sharedPreferencesImport.shouldMigrate()) {
                Object data = sharedPreferencesImport.getData();
                if (isDataTypeSupported(data)) {
                    String trayKey = sharedPreferencesImport.getTrayKey();
                    String previousKey = sharedPreferencesImport.getPreviousKey();
                    getStorage().put(trayKey, previousKey, data);
                    TrayLog.v("migrated '" + previousKey + "'='" + data + "' into " + this + " (now: '" + trayKey + "'='" + data + "')");
                    obj = getStorage().get(trayKey);
                } else {
                    TrayLog.w("could not migrate '" + sharedPreferencesImport.getPreviousKey() + "' into " + this + " because the data type " + data.getClass().getSimpleName() + " is invalid");
                    obj = null;
                }
                sharedPreferencesImport.onPostMigrate(obj);
            } else {
                TrayLog.v("not migrating " + sharedPreferencesImport + " into " + this);
            }
        }
    }

    public void onCreate(int i) {
    }

    public void onDowngrade(int i, int i2) {
        throw new IllegalStateException("Can't downgrade " + this + " from version " + i + " to " + i2);
    }

    public void onUpgrade(int i, int i2) {
        throw new IllegalStateException("Can't upgrade database from version " + i + " to " + i2 + ", not implemented.");
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean put(@NonNull String str, float f) {
        if (!isVersionChangeChecked()) {
            return false;
        }
        TrayLog.v("put '" + str + "=" + f + "' into " + this);
        return putData(str, Float.valueOf(f));
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean put(@NonNull String str, int i) {
        if (!isVersionChangeChecked()) {
            return false;
        }
        TrayLog.v("put '" + str + "=" + i + "' into " + this);
        return putData(str, Integer.valueOf(i));
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean put(@NonNull String str, long j) {
        if (!isVersionChangeChecked()) {
            return false;
        }
        TrayLog.v("put '" + str + "=" + j + "' into " + this);
        return putData(str, Long.valueOf(j));
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean put(@NonNull String str, String str2) {
        if (!isVersionChangeChecked()) {
            return false;
        }
        TrayLog.v("put '" + str + "=\"" + str2 + "\"' into " + this);
        return putData(str, str2);
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean put(@NonNull String str, boolean z) {
        if (!isVersionChangeChecked()) {
            return false;
        }
        TrayLog.v("put '" + str + "=" + z + "' into " + this);
        return putData(str, Boolean.valueOf(z));
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean remove(@NonNull String str) {
        if (!isVersionChangeChecked()) {
            return false;
        }
        TrayLog.v("removed key '" + str + "' from " + this);
        return getStorage().remove(str);
    }

    @Override // net.grandcentrix.tray.core.PreferenceAccessor
    public boolean wipe() {
        boolean zWipe = this.mStorage.wipe();
        StringBuilder sb = new StringBuilder();
        sb.append("wipe ");
        sb.append(zWipe ? "successful" : "failed");
        sb.append(o4.OooO00o.OooO0Oo);
        sb.append(this);
        TrayLog.v(sb.toString());
        return zWipe;
    }
}
