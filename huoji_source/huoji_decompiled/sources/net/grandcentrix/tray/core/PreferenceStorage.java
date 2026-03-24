package net.grandcentrix.tray.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public interface PreferenceStorage<T> {
    boolean clear();

    @Nullable
    T get(@NonNull String str);

    @NonNull
    Collection<T> getAll();

    int getVersion() throws TrayException;

    boolean put(T t);

    boolean put(@NonNull String str, @Nullable Object obj);

    boolean put(@NonNull String str, @Nullable String str2, @Nullable Object obj);

    boolean remove(@NonNull String str);

    boolean setVersion(int i);

    boolean wipe();
}
