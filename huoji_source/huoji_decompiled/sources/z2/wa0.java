package z2;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class wa0 extends qa0 {
    private void o000OOo(ua0 ua0Var, ua0 ua0Var2) {
        o00oO0O(ua0Var, ua0Var2);
    }

    private void o0O0O00(Collection<ua0> collection, ua0 ua0Var, ua0 ua0Var2) {
        if (!collection.contains(ua0Var)) {
            collection.add(ua0Var);
        }
        if (ua0Var2.isSaved()) {
            ua0Var.addAssociatedModelWithoutFK(ua0Var2.getTableName(), ua0Var2.getBaseObjId());
        }
    }

    private void o0OO00O(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ua0 ua0VarOooo00O = Oooo00O(ua0Var, ob0Var);
        if (ua0VarOooo00O == null) {
            o0ooOoO(ua0Var, ob0Var);
            return;
        }
        Collection<ua0> collectionO00oO0o = o00oO0o(o0ooOOo(ua0VarOooo00O, ob0Var), ob0Var.OooO0O0());
        o0OOO0o(ua0VarOooo00O, ob0Var, collectionO00oO0o);
        o0O0O00(collectionO00oO0o, ua0Var, ua0VarOooo00O);
    }

    private void oo0o0Oo(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Collection<ua0> collectionOooo00o = Oooo00o(ua0Var, ob0Var);
        if (collectionOooo00o == null || collectionOooo00o.isEmpty()) {
            ua0Var.addAssociatedTableNameToClearFK(rc0.OooOOO0(ob0Var.OooO0OO()));
            return;
        }
        for (ua0 ua0Var2 : collectionOooo00o) {
            oo000o(ua0Var, ua0Var2, ob0Var);
            o000OOo(ua0Var, ua0Var2);
        }
    }

    public void o0Oo0oo(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (ua0Var.getClassName().equals(ob0Var.OooO0o0())) {
            o0OO00O(ua0Var, ob0Var);
        } else {
            oo0o0Oo(ua0Var, ob0Var);
        }
    }
}
