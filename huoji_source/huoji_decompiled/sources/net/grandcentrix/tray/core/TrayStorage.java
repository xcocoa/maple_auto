package net.grandcentrix.tray.core;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TrayStorage implements PreferenceStorage<TrayItem> {
    private String mModuleName;
    private Type mType;

    public enum Type {
        UNDEFINED,
        USER,
        DEVICE
    }

    public TrayStorage(String str, Type type) {
        this.mModuleName = str;
        this.mType = type;
    }

    public abstract void annex(TrayStorage trayStorage);

    public String getModuleName() {
        return this.mModuleName;
    }

    public Type getType() {
        return this.mType;
    }

    public abstract void registerOnTrayPreferenceChangeListener(@NonNull OnTrayPreferenceChangeListener onTrayPreferenceChangeListener);

    public abstract void unregisterOnTrayPreferenceChangeListener(@NonNull OnTrayPreferenceChangeListener onTrayPreferenceChangeListener);
}
