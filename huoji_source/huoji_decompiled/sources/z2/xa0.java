package z2;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class xa0 extends qa0 {
    private void o0O0O00(ua0 ua0Var, ua0 ua0Var2) {
        o00oO0O(ua0Var, ua0Var2);
    }

    private void o0OO00O(ua0 ua0Var, ua0 ua0Var2) {
        if (ua0Var2.isSaved()) {
            ua0Var.addAssociatedModelWithFK(ua0Var2.getTableName(), ua0Var2.getBaseObjId());
            ua0Var.addAssociatedModelWithoutFK(ua0Var2.getTableName(), ua0Var2.getBaseObjId());
        }
    }

    private void oo0o0Oo(ua0 ua0Var, ua0 ua0Var2, ob0 ob0Var) {
        if (ob0Var.OooO0O0() != null) {
            o0OO00O(ua0Var, ua0Var2);
        } else {
            o0O0O00(ua0Var, ua0Var2);
        }
    }

    public void o0Oo0oo(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ua0 ua0VarOooo00O = Oooo00O(ua0Var, ob0Var);
        if (ua0VarOooo00O == null) {
            ua0Var.addAssociatedTableNameToClearFK(rc0.OooOOO0(ob0Var.OooO0OO()));
        } else {
            oo000o(ua0Var, ua0VarOooo00O, ob0Var);
            oo0o0Oo(ua0Var, ua0VarOooo00O, ob0Var);
        }
    }
}
