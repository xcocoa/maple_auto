package com.octopus.ad.utils.a.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class p implements com.octopus.ad.utils.a.d {
    private final Context a;

    public p(Context context) {
        this.a = context;
    }

    @Override // com.octopus.ad.utils.a.d
    public void a(com.octopus.ad.utils.a.c cVar) {
        if (this.a == null || cVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
                if (string == null || string.length() == 0) {
                    throw new com.octopus.ad.utils.a.e("OAID query failed");
                }
                com.octopus.ad.utils.a.f.a("OAID query success: " + string);
                cVar.a(string);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } finally {
            }
        } catch (Exception e) {
            com.octopus.ad.utils.a.f.a(e);
            cVar.a(e);
        }
    }

    @Override // com.octopus.ad.utils.a.d
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return com.octopus.ad.utils.a.g.a("persist.sys.identifierid.supported", "0").equals("1");
    }
}
