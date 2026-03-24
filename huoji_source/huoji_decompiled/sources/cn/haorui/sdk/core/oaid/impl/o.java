package cn.haorui.sdk.core.oaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.oaid.OAIDException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class o implements cn.haorui.sdk.core.oaid.b {
    public final Context a;

    public o(Context context) {
        this.a = context;
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public void a(cn.haorui.sdk.core.oaid.a aVar) {
        if (this.a == null || aVar == null) {
            return;
        }
        try {
            Cursor cursorQuery = this.a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            try {
                Objects.requireNonNull(cursorQuery);
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
                if (string == null || string.length() == 0) {
                    throw new OAIDException("OAID query failed");
                }
                String str = "OAID query success: " + string;
                ((AdSdk.a) aVar).a(string);
                cursorQuery.close();
            } finally {
            }
        } catch (Exception unused) {
        }
    }

    @Override // cn.haorui.sdk.core.oaid.b
    public boolean a() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return cn.haorui.sdk.core.loader.e.a("persist.sys.identifierid.supported", "0").equals("1");
    }
}
