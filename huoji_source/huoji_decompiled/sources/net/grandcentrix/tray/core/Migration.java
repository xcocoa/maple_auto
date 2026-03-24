package net.grandcentrix.tray.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface Migration<T> {
    @Nullable
    Object getData();

    @NonNull
    String getPreviousKey();

    @NonNull
    String getTrayKey();

    void onPostMigrate(@Nullable T t);

    boolean shouldMigrate();
}
