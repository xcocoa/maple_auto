package net.grandcentrix.tray.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import net.grandcentrix.tray.core.AbstractTrayPreference;
import net.grandcentrix.tray.core.TrayException;
import net.grandcentrix.tray.core.TrayItem;

/* JADX INFO: loaded from: classes2.dex */
public class TrayProviderHelper {
    private final Context mContext;
    private final TrayUri mTrayUri;

    public TrayProviderHelper(@NonNull Context context) {
        this.mContext = context;
        this.mTrayUri = new TrayUri(context);
    }

    @NonNull
    public static TrayItem cursorToTrayItem(Cursor cursor) {
        return new TrayItem(cursor.getString(cursor.getColumnIndexOrThrow("MODULE")), cursor.getString(cursor.getColumnIndexOrThrow("KEY")), cursor.getString(cursor.getColumnIndexOrThrow("MIGRATED_KEY")), cursor.getString(cursor.getColumnIndexOrThrow("VALUE")), new Date(cursor.getLong(cursor.getColumnIndexOrThrow("CREATED"))), new Date(cursor.getLong(cursor.getColumnIndexOrThrow("UPDATED"))));
    }

    public boolean clear() {
        try {
            this.mContext.getContentResolver().delete(this.mTrayUri.get(), null, null);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean clearBut(AbstractTrayPreference... abstractTrayPreferenceArr) {
        String[] strArrExtendSelectionArgs = new String[0];
        String strExtendSelection = null;
        for (AbstractTrayPreference abstractTrayPreference : abstractTrayPreferenceArr) {
            if (abstractTrayPreference != null) {
                String name = abstractTrayPreference.getName();
                strExtendSelection = SqliteHelper.extendSelection(strExtendSelection, "MODULE != ?");
                strArrExtendSelectionArgs = SqliteHelper.extendSelectionArgs(strArrExtendSelectionArgs, new String[]{name});
            }
        }
        try {
            this.mContext.getContentResolver().delete(this.mTrayUri.get(), strExtendSelection, strArrExtendSelectionArgs);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @NonNull
    public List<TrayItem> getAll() {
        return queryProviderSafe(this.mTrayUri.get());
    }

    public boolean persist(@NonNull Uri uri, @Nullable String str) {
        return persist(uri, str, (String) null);
    }

    public boolean persist(@NonNull Uri uri, @Nullable String str, @Nullable String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("VALUE", str);
        contentValues.put("MIGRATED_KEY", str2);
        try {
            return this.mContext.getContentResolver().insert(uri, contentValues) != null;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean persist(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return persist(str, str2, null, str3);
    }

    public boolean persist(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4) {
        return persist(this.mTrayUri.builder().setModule(str).setKey(str2).build(), str4, str3);
    }

    @NonNull
    public List<TrayItem> queryProvider(@NonNull Uri uri) throws TrayException {
        try {
            Cursor cursorQuery = this.mContext.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery == null) {
                throw new TrayException("could not access stored data with uri " + uri);
            }
            ArrayList arrayList = new ArrayList();
            for (boolean zMoveToFirst = cursorQuery.moveToFirst(); zMoveToFirst; zMoveToFirst = cursorQuery.moveToNext()) {
                arrayList.add(cursorToTrayItem(cursorQuery));
            }
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th) {
            throw new TrayException("Hard error accessing the ContentProvider", th);
        }
    }

    @NonNull
    public List<TrayItem> queryProviderSafe(@NonNull Uri uri) {
        try {
            return queryProvider(uri);
        } catch (TrayException unused) {
            return new ArrayList();
        }
    }

    public boolean remove(Uri uri) {
        try {
            this.mContext.getContentResolver().delete(uri, null, null);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public int removeAndCount(Uri uri) {
        try {
            return this.mContext.getContentResolver().delete(uri, null, null);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public boolean wipe() {
        if (!clear()) {
            return false;
        }
        try {
            return this.mContext.getContentResolver().delete(this.mTrayUri.getInternal(), null, null) > 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
