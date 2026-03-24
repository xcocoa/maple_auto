package com.octopus.ad.internal.b.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.octopus.ad.internal.b.k;
import com.octopus.ad.internal.b.p;
import net.grandcentrix.tray.provider.TrayContract;

/* JADX INFO: loaded from: classes2.dex */
public class a extends SQLiteOpenHelper implements c {
    private static final String[] a = {TrayContract.Preferences.Columns.ID, com.anythink.expressad.foundation.d.c.am, "length", "mime"};

    public a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        k.a(context);
    }

    private ContentValues a(p pVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(com.anythink.expressad.foundation.d.c.am, pVar.a);
        contentValues.put("length", Integer.valueOf(pVar.b));
        contentValues.put("mime", pVar.c);
        return contentValues;
    }

    private p a(Cursor cursor) {
        return new p(cursor.getString(cursor.getColumnIndexOrThrow(com.anythink.expressad.foundation.d.c.am)), cursor.getInt(cursor.getColumnIndexOrThrow("length")), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.octopus.ad.internal.b.b.c
    public p a(String str) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        k.a(str);
        p pVarA = null;
        try {
            cursorQuery = getReadableDatabase().query("SourceInfo", a, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        pVarA = a(cursorQuery);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return pVarA;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    @Override // com.octopus.ad.internal.b.b.c
    public void a(String str, p pVar) {
        k.a(str, pVar);
        boolean z = a(str) != null;
        ContentValues contentValuesA = a(pVar);
        if (z) {
            getWritableDatabase().update("SourceInfo", contentValuesA, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert("SourceInfo", null, contentValuesA);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        k.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }
}
