package z2;

import android.database.Cursor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class va0 extends qa0 {
    @Deprecated
    private boolean o00000(ua0 ua0Var, ua0 ua0Var2) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = xb0.OooO0OO().query(o000000(ua0Var, ua0Var2), null, o000000O(ua0Var, ua0Var2), o000000o(ua0Var, ua0Var2), null, null, null);
            return cursorQuery.getCount() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        } finally {
            cursorQuery.close();
        }
    }

    private String o000000(ua0 ua0Var, ua0 ua0Var2) {
        return Oooo0oo(ua0Var, ua0Var2.getTableName());
    }

    private String o000000O(ua0 ua0Var, ua0 ua0Var2) {
        return OooO0oo(ua0Var.getTableName()) + " = ? and " + OooO0oo(ua0Var2.getTableName()) + " = ?";
    }

    private String[] o000000o(ua0 ua0Var, ua0 ua0Var2) {
        return new String[]{String.valueOf(ua0Var.getBaseObjId()), String.valueOf(ua0Var2.getBaseObjId())};
    }

    private String o000OOo(ob0 ob0Var) {
        return pc0.OooO0O0(rc0.OooOOO0(ob0Var.OooO0OO()));
    }

    private void o0O0O00(ua0 ua0Var, ob0 ob0Var) {
        ua0Var.addEmptyModelForJoinTable(o000OOo(ob0Var));
    }

    private void o0Oo0oo(Collection<ua0> collection, ua0 ua0Var) {
        if (collection.contains(ua0Var)) {
            return;
        }
        collection.add(ua0Var);
    }

    private void oo0o0Oo(ua0 ua0Var, ua0 ua0Var2) {
        if (ua0Var2.isSaved()) {
            ua0Var.addAssociatedModelForJoinTable(ua0Var2.getTableName(), ua0Var2.getBaseObjId());
        }
    }

    public void o0OO00O(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Collection<ua0> collectionOooo00o = Oooo00o(ua0Var, ob0Var);
        o0O0O00(ua0Var, ob0Var);
        if (collectionOooo00o != null) {
            for (ua0 ua0Var2 : collectionOooo00o) {
                Collection<ua0> collectionO00oO0o = o00oO0o(o0ooOOo(ua0Var2, ob0Var), ob0Var.OooO0O0());
                o0Oo0oo(collectionO00oO0o, ua0Var);
                o0OOO0o(ua0Var2, ob0Var, collectionO00oO0o);
                oo0o0Oo(ua0Var, ua0Var2);
            }
        }
    }
}
