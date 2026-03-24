package com.iflytek.voiceads.download.c;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import net.grandcentrix.tray.provider.TrayContract;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b implements a {
    private static final String[] a = {TrayContract.Preferences.Columns.ID, "uri", "path"};
    private static final String b = String.format("REPLACE INTO %s (_id,uri,path) VALUES(?,?,?);", "download_info");
    private c c;
    private SQLiteDatabase d;
    private SQLiteDatabase e;

    public b(Context context) {
        this.c = new c(context);
        this.d = this.c.getWritableDatabase();
        this.e = this.c.getReadableDatabase();
    }

    private void a(Cursor cursor, com.iflytek.voiceads.download.d.a aVar) {
        aVar.b(cursor.getInt(0));
        aVar.a(cursor.getString(1));
        aVar.b(cursor.getString(2));
    }

    @Override // com.iflytek.voiceads.download.c.a
    public com.iflytek.voiceads.download.d.a a(int i) {
        com.iflytek.voiceads.download.d.a aVar = null;
        Cursor cursorQuery = this.e.query("download_info", a, "_id=?", new String[]{String.valueOf(i)}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            while (cursorQuery.moveToNext()) {
                aVar = new com.iflytek.voiceads.download.d.a();
                a(cursorQuery, aVar);
            }
            cursorQuery.close();
        }
        return aVar;
    }

    @Override // com.iflytek.voiceads.download.c.a
    public List<com.iflytek.voiceads.download.d.a> a() {
        Cursor cursorQuery = this.e.query("download_info", null, null, null, null, null, null);
        ArrayList arrayList = new ArrayList();
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            while (cursorQuery.moveToNext()) {
                com.iflytek.voiceads.download.d.a aVar = new com.iflytek.voiceads.download.d.a();
                a(cursorQuery, aVar);
                arrayList.add(aVar);
            }
            cursorQuery.close();
        }
        return arrayList;
    }

    @Override // com.iflytek.voiceads.download.c.a
    public void a(com.iflytek.voiceads.download.d.a aVar) {
        this.d.execSQL(b, new Object[]{Integer.valueOf(aVar.h()), aVar.b(), aVar.c()});
    }

    @Override // com.iflytek.voiceads.download.c.a
    public void b(com.iflytek.voiceads.download.d.a aVar) {
        this.d.delete("download_info", "_id=?", new String[]{String.valueOf(aVar.h())});
    }
}
