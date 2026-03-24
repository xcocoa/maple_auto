package z2;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.experimental.theories.PotentialAssignment;

/* JADX INFO: loaded from: classes2.dex */
public class i60 {
    private final List<PotentialAssignment> OooO00o;
    private final List<c60> OooO0O0;
    private final x90 OooO0OO;

    private i60(List<PotentialAssignment> list, List<c60> list2, x90 x90Var) {
        this.OooO0O0 = list2;
        this.OooO00o = list;
        this.OooO0OO = x90Var;
    }

    private int OooO() {
        return c60.OooOOOO(this.OooO0OO.OooOOO()).size();
    }

    public static i60 OooO00o(Method method, x90 x90Var) {
        List<c60> listOooOOOO = c60.OooOOOO(x90Var.OooOOO());
        listOooOOOO.addAll(c60.OooOOO0(method));
        return new i60(new ArrayList(), listOooOOOO, x90Var);
    }

    private d60 OooO0OO(Class<? extends d60> cls) throws Exception {
        Object objNewInstance;
        Constructor<?>[] constructors = cls.getConstructors();
        int length = constructors.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                objNewInstance = cls.newInstance();
                break;
            }
            Constructor<?> constructor = constructors[i];
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(x90.class)) {
                objNewInstance = constructor.newInstance(this.OooO0OO);
                break;
            }
            i++;
        }
        return (d60) objNewInstance;
    }

    private List<PotentialAssignment> OooO0Oo(c60 c60Var) {
        Class<?> clsOooO = c60Var.OooO();
        return clsOooO.isEnum() ? new k60(clsOooO).OooO00o(c60Var) : (clsOooO.equals(Boolean.class) || clsOooO.equals(Boolean.TYPE)) ? new j60().OooO00o(c60Var) : Collections.emptyList();
    }

    private d60 OooOO0O(c60 c60Var) throws Exception {
        e60 e60Var = (e60) c60Var.OooO0o0(e60.class);
        return e60Var != null ? OooO0OO(e60Var.value()) : new h60(this.OooO0OO);
    }

    public i60 OooO0O0(PotentialAssignment potentialAssignment) {
        ArrayList arrayList = new ArrayList(this.OooO00o);
        arrayList.add(potentialAssignment);
        List<c60> list = this.OooO0O0;
        return new i60(arrayList, list.subList(1, list.size()), this.OooO0OO);
    }

    public Object[] OooO0o() throws PotentialAssignment.CouldNotGenerateValueException {
        return OooO0o0(0, this.OooO00o.size());
    }

    public Object[] OooO0o0(int i, int i2) throws PotentialAssignment.CouldNotGenerateValueException {
        Object[] objArr = new Object[i2 - i];
        for (int i3 = i; i3 < i2; i3++) {
            objArr[i3 - i] = this.OooO00o.get(i3).OooO0OO();
        }
        return objArr;
    }

    public Object[] OooO0oO(boolean z) throws PotentialAssignment.CouldNotGenerateValueException {
        int size = this.OooO00o.size();
        Object[] objArr = new Object[size];
        for (int i = 0; i < size; i++) {
            objArr[i] = this.OooO00o.get(i).OooO0O0();
        }
        return objArr;
    }

    public Object[] OooO0oo() throws PotentialAssignment.CouldNotGenerateValueException {
        return OooO0o0(0, OooO());
    }

    public Object[] OooOO0() throws PotentialAssignment.CouldNotGenerateValueException {
        return OooO0o0(OooO(), this.OooO00o.size());
    }

    public boolean OooOO0o() {
        return this.OooO0O0.size() == 0;
    }

    public List<PotentialAssignment> OooOOO() throws Throwable {
        c60 c60VarOooOOO0 = OooOOO0();
        List<PotentialAssignment> listOooO00o = OooOO0O(c60VarOooOOO0).OooO00o(c60VarOooOOO0);
        return listOooO00o.size() == 0 ? OooO0Oo(c60VarOooOOO0) : listOooO00o;
    }

    public c60 OooOOO0() {
        return this.OooO0O0.get(0);
    }
}
