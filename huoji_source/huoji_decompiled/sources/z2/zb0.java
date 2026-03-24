package z2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public class zb0 extends wb0 {
    private Collection<hc0> OooOOo0;

    private List<String> o0OO00O() {
        ArrayList arrayList = new ArrayList();
        Iterator<hc0> it = this.OooOOo0.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().OooO0o());
        }
        return arrayList;
    }

    private void o0OOO0o() {
        List<String> listO0Oo0oo = o0Oo0oo();
        OooooO0(listO0Oo0oo, this.OooOOOO);
        Ooooo0o(listO0Oo0oo);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005e A[PHI: r1
      0x005e: PHI (r1v3 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:16:0x005c, B:10:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<String> o0Oo0oo() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.OooOOOO.query(qc0.OooO0OO.OooO00o, null, null, null, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("name"));
                        if (oo0o0Oo(string, cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("type")))) {
                            sc0.OooO00o(wb0.OooOOOo, "need to drop " + string);
                            arrayList.add(string);
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorQuery != null) {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    private boolean oo0o0Oo(String str, int i) {
        return !pc0.OooO0Oo(o0OO00O(), str) && i == 0;
    }

    @Override // z2.wb0, z2.yb0, z2.vb0, z2.ac0
    public void OooOooO(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.OooOOo0 = Oooo00o();
        this.OooOOOO = sQLiteDatabase;
        o0OOO0o();
    }
}
