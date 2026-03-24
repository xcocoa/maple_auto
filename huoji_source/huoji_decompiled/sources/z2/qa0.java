package z2;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class qa0 extends ra0 {
    private String o0ooOO0(ob0 ob0Var) {
        return OooO0oo(rc0.OooOOO0(ob0Var.OooO0OO()));
    }

    public void o00oO0O(ua0 ua0Var, ua0 ua0Var2) {
        if (ua0Var2 != null) {
            if (ua0Var2.isSaved()) {
                ua0Var.addAssociatedModelWithFK(ua0Var2.getTableName(), ua0Var2.getBaseObjId());
            } else if (ua0Var.isSaved()) {
                ua0Var2.addAssociatedModelWithoutFK(ua0Var.getTableName(), ua0Var.getBaseObjId());
            }
        }
    }

    public Collection<ua0> o00oO0o(Collection<ua0> collection, Field field) {
        Collection<ua0> hashSet;
        if (OooOOo0(field.getType())) {
            hashSet = new ArrayList<>();
        } else {
            if (!OooOo00(field.getType())) {
                throw new LitePalSupportException(LitePalSupportException.WRONG_FIELD_TYPE_FOR_ASSOCIATIONS);
            }
            hashSet = new HashSet<>();
        }
        if (collection != null) {
            hashSet.addAll(collection);
        }
        return hashSet;
    }

    public void o0OOO0o(ua0 ua0Var, ob0 ob0Var, Collection<ua0> collection) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o00O0O(ua0Var, ob0Var.OooO0O0(), collection);
    }

    public Collection<ua0> o0ooOOo(ua0 ua0Var, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        return (Collection) Oooo0o0(ua0Var, ob0Var.OooO0O0());
    }

    public void o0ooOoO(ua0 ua0Var, ob0 ob0Var) {
        ua0Var.addFKNameToClearSelf(o0ooOO0(ob0Var));
    }

    public void oo000o(ua0 ua0Var, ua0 ua0Var2, ob0 ob0Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        o00O0O(ua0Var2, ob0Var.OooO0O0(), ua0Var);
    }
}
