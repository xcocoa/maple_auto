package z2;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.exceptions.DatabaseGenerateException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ac0 extends la0 {
    public static final String OooOO0o = "Generator";
    private Collection<hc0> OooOO0;
    private Collection<ec0> OooOO0O;

    private static void OooOoO0(SQLiteDatabase sQLiteDatabase, boolean z) {
        new yb0().OooOoO(sQLiteDatabase, z);
    }

    private boolean OooOoOO() {
        Collection<hc0> collection = this.OooOO0;
        return collection != null && collection.size() == rb0.OooO0oo().OooO0o0().size();
    }

    private static void OooOoo(SQLiteDatabase sQLiteDatabase, boolean z) {
        new yb0().OooOooO(sQLiteDatabase, z);
    }

    public static void OooOoo0(SQLiteDatabase sQLiteDatabase) {
        OooOoo(sQLiteDatabase, true);
        OooOoO0(sQLiteDatabase, true);
    }

    private static void OooOooo(SQLiteDatabase sQLiteDatabase) {
        new zb0().OooOooO(sQLiteDatabase, false);
    }

    private static void Oooo0(SQLiteDatabase sQLiteDatabase) {
        new cc0().OooOoO(sQLiteDatabase, false);
    }

    public static void Oooo0O0(SQLiteDatabase sQLiteDatabase) {
        OooOooo(sQLiteDatabase);
        OooOoo(sQLiteDatabase, false);
        Oooo0(sQLiteDatabase);
        Oooo0OO(sQLiteDatabase);
        OooOoO0(sQLiteDatabase, false);
    }

    private static void Oooo0OO(SQLiteDatabase sQLiteDatabase) {
        new cc0().OooOooO(sQLiteDatabase, false);
    }

    public abstract void OooOoO(SQLiteDatabase sQLiteDatabase, boolean z);

    public abstract void OooOooO(SQLiteDatabase sQLiteDatabase, boolean z);

    public void Oooo000(List<String> list, SQLiteDatabase sQLiteDatabase) {
        String strOooO0O0 = "";
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (String str : list) {
                    if (!TextUtils.isEmpty(str)) {
                        strOooO0O0 = pc0.OooO0O0(str);
                        sQLiteDatabase.execSQL(strOooO0O0);
                    }
                }
            } catch (SQLException unused) {
                throw new DatabaseGenerateException(DatabaseGenerateException.SQL_ERROR + strOooO0O0);
            }
        }
    }

    public Collection<ec0> Oooo00O() {
        Collection<ec0> collection = this.OooOO0O;
        if (collection == null || collection.isEmpty()) {
            this.OooOO0O = OooO0o(rb0.OooO0oo().OooO0o0());
        }
        return this.OooOO0O;
    }

    public Collection<hc0> Oooo00o() {
        if (this.OooOO0 == null) {
            this.OooOO0 = new ArrayList();
        }
        if (!OooOoOO()) {
            this.OooOO0.clear();
            Iterator<String> it = rb0.OooO0oo().OooO0o0().iterator();
            while (it.hasNext()) {
                this.OooOO0.add(OooOOO(it.next()));
            }
        }
        return this.OooOO0;
    }
}
