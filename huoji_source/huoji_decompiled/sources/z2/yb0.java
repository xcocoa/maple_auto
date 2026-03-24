package z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class yb0 extends vb0 {
    public static final String OooOOO0 = "Creator";

    private String OoooOoo(hc0 hc0Var) {
        return OoooO0(hc0Var.OooO0o());
    }

    @Override // z2.vb0, z2.ac0
    public void OooOooO(SQLiteDatabase sQLiteDatabase, boolean z) {
        Iterator<hc0> it = Oooo00o().iterator();
        while (it.hasNext()) {
            OoooOo0(it.next(), sQLiteDatabase, z);
        }
    }

    public void OoooOo0(hc0 hc0Var, SQLiteDatabase sQLiteDatabase, boolean z) {
        Oooo000(Ooooo00(hc0Var, sQLiteDatabase, z), sQLiteDatabase);
        OoooO0O(hc0Var.OooO0o(), 0, sQLiteDatabase);
    }

    public String OoooOoO(hc0 hc0Var) {
        return OoooO00(hc0Var.OooO0o(), hc0Var.OooO0o0(), true);
    }

    public List<String> Ooooo00(hc0 hc0Var, SQLiteDatabase sQLiteDatabase, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(OoooOoo(hc0Var));
        } else if (rc0.OooOo00(hc0Var.OooO0o(), sQLiteDatabase)) {
            return null;
        }
        arrayList.add(OoooOoO(hc0Var));
        return arrayList;
    }
}
