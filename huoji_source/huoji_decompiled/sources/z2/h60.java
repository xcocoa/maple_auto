package z2;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.junit.experimental.theories.PotentialAssignment;

/* JADX INFO: loaded from: classes2.dex */
public class h60 extends d60 {
    private final x90 OooO00o;

    public static class OooO0O0 extends PotentialAssignment {
        private final s90 OooO00o;

        private OooO0O0(s90 s90Var) {
            this.OooO00o = s90Var;
        }

        @Override // org.junit.experimental.theories.PotentialAssignment
        public String OooO0O0() throws PotentialAssignment.CouldNotGenerateValueException {
            return this.OooO00o.OooO0o0();
        }

        @Override // org.junit.experimental.theories.PotentialAssignment
        public Object OooO0OO() throws PotentialAssignment.CouldNotGenerateValueException {
            try {
                return this.OooO00o.OooOOOO(null, new Object[0]);
            } catch (IllegalAccessException unused) {
                throw new RuntimeException("unexpected: getMethods returned an inaccessible method");
            } catch (IllegalArgumentException unused2) {
                throw new RuntimeException("unexpected: argument length is checked");
            } catch (Throwable th) {
                z50 z50Var = (z50) this.OooO00o.OooO00o(z50.class);
                g50.OooO(z50Var == null || !h60.OooOOOO(z50Var.ignoredExceptions(), th));
                throw new PotentialAssignment.CouldNotGenerateValueException(th);
            }
        }
    }

    public h60(x90 x90Var) {
        this.OooO00o = x90Var;
    }

    private void OooO(c60 c60Var, List<PotentialAssignment> list) {
        for (s90 s90Var : OooOOO0(c60Var)) {
            if (c60Var.OooO0O0(s90Var.OooO0o())) {
                list.add(new OooO0O0(s90Var));
            }
        }
    }

    private void OooO0OO(c60 c60Var, String str, List<PotentialAssignment> list, Object obj) {
        for (int i = 0; i < Array.getLength(obj); i++) {
            Object obj2 = Array.get(obj, i);
            if (c60Var.OooO0OO(obj2)) {
                list.add(PotentialAssignment.OooO00o(str + "[" + i + "]", obj2));
            }
        }
    }

    private void OooO0Oo(Class<?> cls, c60 c60Var, String str, List<PotentialAssignment> list, Object obj) {
        if (cls.isArray()) {
            OooO0OO(c60Var, str, list, obj);
        } else if (Iterable.class.isAssignableFrom(cls)) {
            OooO0o0(c60Var, str, list, (Iterable) obj);
        }
    }

    private void OooO0o(c60 c60Var, List<PotentialAssignment> list) {
        for (Field field : OooOO0(c60Var)) {
            OooO0Oo(field.getType(), c60Var, field.getName(), list, OooOOO(field));
        }
    }

    private void OooO0o0(c60 c60Var, String str, List<PotentialAssignment> list, Iterable<?> iterable) {
        int i = 0;
        for (Object obj : iterable) {
            if (c60Var.OooO0OO(obj)) {
                list.add(PotentialAssignment.OooO00o(str + "[" + i + "]", obj));
            }
            i++;
        }
    }

    private void OooO0oO(c60 c60Var, List<PotentialAssignment> list) throws Throwable {
        for (s90 s90Var : OooOO0O(c60Var)) {
            Class<?> clsOooOOO = s90Var.OooOOO();
            if ((clsOooOOO.isArray() && c60Var.OooO0Oo(clsOooOOO.getComponentType())) || Iterable.class.isAssignableFrom(clsOooOOO)) {
                try {
                    OooO0Oo(clsOooOOO, c60Var, s90Var.OooO0o0(), list, s90Var.OooOOOO(null, new Object[0]));
                } catch (Throwable th) {
                    a60 a60Var = (a60) s90Var.OooO00o(a60.class);
                    if (a60Var == null || !OooOOOO(a60Var.ignoredExceptions(), th)) {
                        throw th;
                    }
                    return;
                }
            }
        }
    }

    private void OooO0oo(c60 c60Var, List<PotentialAssignment> list) {
        for (Field field : OooOO0o(c60Var)) {
            Object objOooOOO = OooOOO(field);
            if (c60Var.OooO0OO(objOooOOO)) {
                list.add(PotentialAssignment.OooO00o(field.getName(), objOooOOO));
            }
        }
    }

    private Object OooOOO(Field field) {
        try {
            return field.get(null);
        } catch (IllegalAccessException unused) {
            throw new RuntimeException("unexpected: getFields returned an inaccessible field");
        } catch (IllegalArgumentException unused2) {
            throw new RuntimeException("unexpected: field from getClass doesn't exist on object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean OooOOOO(Class<?>[] clsArr, Object obj) {
        for (Class<?> cls : clsArr) {
            if (cls.isAssignableFrom(obj.getClass())) {
                return true;
            }
        }
        return false;
    }

    @Override // z2.d60
    public List<PotentialAssignment> OooO00o(c60 c60Var) throws Throwable {
        ArrayList arrayList = new ArrayList();
        OooO0oo(c60Var, arrayList);
        OooO0o(c60Var, arrayList);
        OooO(c60Var, arrayList);
        OooO0oO(c60Var, arrayList);
        return arrayList;
    }

    public Collection<Field> OooOO0(c60 c60Var) {
        List<q90> listOooO0oO = this.OooO00o.OooO0oO(a60.class);
        ArrayList arrayList = new ArrayList();
        Iterator<q90> it = listOooO0oO.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().OooOO0o());
        }
        return arrayList;
    }

    public Collection<s90> OooOO0O(c60 c60Var) {
        return this.OooO00o.OooOO0O(a60.class);
    }

    public Collection<Field> OooOO0o(c60 c60Var) {
        List<q90> listOooO0oO = this.OooO00o.OooO0oO(z50.class);
        ArrayList arrayList = new ArrayList();
        Iterator<q90> it = listOooO0oO.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().OooOO0o());
        }
        return arrayList;
    }

    public Collection<s90> OooOOO0(c60 c60Var) {
        return this.OooO00o.OooOO0O(z50.class);
    }
}
