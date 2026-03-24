package net.grandcentrix.tray.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.MergeCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.util.Date;
import net.grandcentrix.tray.core.TrayLog;
import net.grandcentrix.tray.provider.TrayContract;

/* JADX INFO: loaded from: classes2.dex */
public class TrayContentProvider extends ContentProvider {
    private static final int ALL_PREFERENCE = 30;
    private static final int INTERNAL_ALL_PREFERENCE = 130;
    private static final int INTERNAL_MODULE_PREFERENCE = 120;
    private static final int INTERNAL_SINGLE_PREFERENCE = 110;
    private static final int MODULE_PREFERENCE = 20;
    private static final int SINGLE_PREFERENCE = 10;
    private static UriMatcher sURIMatcher;
    public TrayDBHelper mDeviceDbHelper;
    public TrayDBHelper mUserDbHelper;

    public static void setAuthority(String str) {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sURIMatcher = uriMatcher;
        uriMatcher.addURI(str, TrayContract.Preferences.BASE_PATH, 30);
        sURIMatcher.addURI(str, "preferences/*", 20);
        sURIMatcher.addURI(str, "preferences/*/*", 10);
        sURIMatcher.addURI(str, TrayContract.InternalPreferences.BASE_PATH, INTERNAL_ALL_PREFERENCE);
        sURIMatcher.addURI(str, "internal_preferences/*", 120);
        sURIMatcher.addURI(str, "internal_preferences/*/*", 110);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        setAuthority(providerInfo.authority);
        TrayLog.v("TrayContentProvider registered for authority: " + providerInfo.authority);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int delete(Uri uri, String str, String[] strArr) {
        int iMatch = sURIMatcher.match(uri);
        if (iMatch == 10) {
            str = SqliteHelper.extendSelection(str, "KEY = ?");
            strArr = SqliteHelper.extendSelectionArgs(strArr, new String[]{uri.getPathSegments().get(2)});
            str = SqliteHelper.extendSelection(str, "MODULE = ?");
            strArr = SqliteHelper.extendSelectionArgs(strArr, new String[]{uri.getPathSegments().get(1)});
        } else if (iMatch == 20) {
            str = SqliteHelper.extendSelection(str, "MODULE = ?");
            strArr = SqliteHelper.extendSelectionArgs(strArr, new String[]{uri.getPathSegments().get(1)});
        } else if (iMatch != 30) {
            if (iMatch != 110) {
                if (iMatch != 120) {
                    if (iMatch != INTERNAL_ALL_PREFERENCE) {
                        throw new IllegalArgumentException("Delete is not supported for Uri: " + uri);
                    }
                }
            }
            str = SqliteHelper.extendSelection(str, "MODULE = ?");
            strArr = SqliteHelper.extendSelectionArgs(strArr, new String[]{uri.getPathSegments().get(1)});
        }
        int iDelete = uri.getQueryParameter("backup") == null ? this.mDeviceDbHelper.getWritableDatabase().delete(getTable(uri), str, strArr) + this.mUserDbHelper.getWritableDatabase().delete(getTable(uri), str, strArr) : getWritableDatabase(uri).delete(getTable(uri), str, strArr);
        if (iDelete > 0) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        return iDelete;
    }

    public SQLiteDatabase getReadableDatabase(Uri uri) {
        return (shouldBackup(uri) ? this.mUserDbHelper : this.mDeviceDbHelper).getReadableDatabase();
    }

    public String getTable(Uri uri) {
        if (uri == null) {
            return null;
        }
        int iMatch = sURIMatcher.match(uri);
        return (iMatch == 110 || iMatch == 120 || iMatch == INTERNAL_ALL_PREFERENCE) ? TrayDBHelper.INTERNAL_TABLE_NAME : TrayDBHelper.TABLE_NAME;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    public SQLiteDatabase getWritableDatabase(Uri uri) {
        return (shouldBackup(uri) ? this.mUserDbHelper : this.mDeviceDbHelper).getWritableDatabase();
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String str;
        Date date = new Date();
        int iMatch = sURIMatcher.match(uri);
        if (iMatch != 10 && iMatch != 110) {
            throw new IllegalArgumentException("Insert is not supported for Uri: " + uri);
        }
        contentValues.put("CREATED", Long.valueOf(date.getTime()));
        contentValues.put("UPDATED", Long.valueOf(date.getTime()));
        contentValues.put("MODULE", uri.getPathSegments().get(1));
        contentValues.put("KEY", uri.getPathSegments().get(2));
        int iInsertOrUpdate = insertOrUpdate(getWritableDatabase(uri), getTable(uri), "MODULE = ?AND KEY = ?", new String[]{contentValues.getAsString("MODULE"), contentValues.getAsString("KEY")}, contentValues, new String[]{"CREATED"});
        if (iInsertOrUpdate >= 0) {
            getContext().getContentResolver().notifyChange(uri, null);
            return uri;
        }
        if (iInsertOrUpdate == -1) {
            str = "Couldn't update or insert data. Uri: " + uri;
        } else {
            str = "unknown SQLite error";
        }
        TrayLog.w(str);
        return null;
    }

    public int insertOrUpdate(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, ContentValues contentValues, String[] strArr2) {
        return SqliteHelper.insertOrUpdate(sQLiteDatabase, str, str2, strArr, contentValues, strArr2);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mUserDbHelper = new TrayDBHelper(getContext(), true);
        this.mDeviceDbHelper = new TrayDBHelper(getContext(), false);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        int iMatch = sURIMatcher.match(uri);
        if (iMatch == 10) {
            sQLiteQueryBuilder.appendWhere("KEY = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(2)));
            if (iMatch == 10 || iMatch == 110) {
                sQLiteQueryBuilder.appendWhere(" AND ");
            }
            sQLiteQueryBuilder.appendWhere("MODULE = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(1)));
        } else if (iMatch == 20) {
            if (iMatch == 10) {
                sQLiteQueryBuilder.appendWhere(" AND ");
                sQLiteQueryBuilder.appendWhere("MODULE = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(1)));
            }
        } else if (iMatch != 30) {
            if (iMatch != 110) {
                if (iMatch != 120) {
                    if (iMatch != INTERNAL_ALL_PREFERENCE) {
                        throw new IllegalArgumentException("Query is not supported for Uri: " + uri);
                    }
                }
            }
            if (iMatch == 10) {
            }
        }
        sQLiteQueryBuilder.setTables(getTable(uri));
        Cursor mergeCursor = uri.getQueryParameter("backup") == null ? new MergeCursor(new Cursor[]{sQLiteQueryBuilder.query(this.mUserDbHelper.getReadableDatabase(), strArr, str, strArr2, null, null, str2), sQLiteQueryBuilder.query(this.mDeviceDbHelper.getReadableDatabase(), strArr, str, strArr2, null, null, str2)}) : sQLiteQueryBuilder.query(getReadableDatabase(uri), strArr, str, strArr2, null, null, str2);
        if (mergeCursor != null) {
            mergeCursor.setNotificationUri(getContext().getContentResolver(), uri);
        }
        return mergeCursor;
    }

    public boolean shouldBackup(@NonNull Uri uri) {
        return !"false".equals(uri.getQueryParameter("backup"));
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        this.mUserDbHelper.close();
        this.mDeviceDbHelper.close();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("not implemented");
    }
}
