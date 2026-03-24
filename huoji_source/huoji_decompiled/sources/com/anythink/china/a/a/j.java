package com.anythink.china.a.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private Context a;

    public j(Context context) {
        this.a = context;
    }

    public final void a(com.anythink.china.a.a aVar) {
        try {
            this.a.getPackageManager().getPackageInfo("com.meizu.flyme.openidsdk", 0);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        String string = null;
        try {
            Cursor cursorQuery = this.a.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.moveToFirst();
                int columnIndex = cursorQuery.getColumnIndex("value");
                if (columnIndex > 0) {
                    string = cursorQuery.getString(columnIndex);
                }
            }
            aVar.a(string, false);
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
        if (TextUtils.isEmpty(string)) {
            aVar.a();
        }
    }
}
