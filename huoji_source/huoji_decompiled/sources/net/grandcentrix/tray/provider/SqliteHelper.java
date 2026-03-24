package net.grandcentrix.tray.provider;

import android.content.ContentValues;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SqliteHelper {
    public static String extendSelection(@Nullable String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return "(" + str + ") AND (" + str2 + ")";
    }

    public static String[] extendSelectionArgs(@Nullable String str, @Nullable String[] strArr) {
        return TextUtils.isEmpty(str) ? strArr : extendSelectionArgs(new String[]{str}, strArr);
    }

    public static String[] extendSelectionArgs(@Nullable String[] strArr, @Nullable List<String> list) {
        Object[] array;
        if (list == null) {
            return strArr;
        }
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
            arrayList.addAll(list);
            array = arrayList.toArray(new String[arrayList.size()]);
        } else {
            array = list.toArray(new String[list.size()]);
        }
        return (String[]) array;
    }

    public static String[] extendSelectionArgs(@Nullable String[] strArr, @Nullable String[] strArr2) {
        return strArr2 == null ? strArr : extendSelectionArgs(strArr, (List<String>) Arrays.asList(strArr2));
    }

    public static int insertOrUpdate(@Nullable SQLiteDatabase sQLiteDatabase, String str, @Nullable String str2, String[] strArr, @NonNull ContentValues contentValues, @Nullable String[] strArr2) {
        if (sQLiteDatabase == null) {
            return -1;
        }
        if (DatabaseUtils.queryNumEntries(sQLiteDatabase, str, str2, strArr) == 0) {
            return sQLiteDatabase.insert(str, null, contentValues) == -1 ? -1 : 1;
        }
        if (strArr2 != null) {
            for (String str3 : strArr2) {
                contentValues.remove(str3);
            }
        }
        sQLiteDatabase.update(str, contentValues, str2, strArr);
        return 0;
    }
}
