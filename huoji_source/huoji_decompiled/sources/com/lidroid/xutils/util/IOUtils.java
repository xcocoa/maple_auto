package com.lidroid.xutils.util;

import android.database.Cursor;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public class IOUtils {
    private IOUtils() {
    }

    public static void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }
}
