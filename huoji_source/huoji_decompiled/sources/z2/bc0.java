package z2;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import org.litepal.LitePalApplication;

/* JADX INFO: loaded from: classes2.dex */
public class bc0 extends SQLiteOpenHelper {
    public static final String OooO00o = "LitePalHelper";

    public bc0(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    public bc0(String str, int i) {
        this(LitePalApplication.OooO00o(), str, null, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        ac0.OooOoo0(sQLiteDatabase);
        dc0 dc0VarOooo00o = na0.Oooo00o();
        if (dc0VarOooo00o != null) {
            dc0VarOooo00o.onCreate();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ac0.Oooo0O0(sQLiteDatabase);
        tc0.OooO0OO(rb0.OooO0oo().OooO0oO(), i2);
        dc0 dc0VarOooo00o = na0.Oooo00o();
        if (dc0VarOooo00o != null) {
            dc0VarOooo00o.OooO00o(i, i2);
        }
    }
}
