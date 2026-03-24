package z2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import org.junit.runners.model.InitializationError;
import z2.m90;

/* JADX INFO: loaded from: classes2.dex */
public class y90 extends k90 {
    private final Object[] OooO0oO;
    private final String OooO0oo;

    public y90(ba0 ba0Var) throws InitializationError {
        super(ba0Var.OooO0OO().OooOO0o());
        this.OooO0oO = ba0Var.OooO0O0().toArray(new Object[ba0Var.OooO0O0().size()]);
        this.OooO0oo = ba0Var.OooO00o();
    }

    private Object Ooooooo() throws Exception {
        return OooOOoo().OooOOO().newInstance(this.OooO0oO);
    }

    private List<q90> o00O0O() {
        return OooOOoo().OooO0oO(m90.OooO00o.class);
    }

    private Object o0OoOo0() throws Exception {
        List<q90> listO00O0O = o00O0O();
        if (listO00O0O.size() != this.OooO0oO.length) {
            throw new Exception("Wrong number of parameters and @Parameter fields. @Parameter fields counted: " + listO00O0O.size() + ", available parameters: " + this.OooO0oO.length + ".");
        }
        Object objNewInstance = OooOOoo().OooOO0o().newInstance();
        Iterator<q90> it = listO00O0O.iterator();
        while (it.hasNext()) {
            Field fieldOooOO0o = it.next().OooOO0o();
            int iValue = ((m90.OooO00o) fieldOooOO0o.getAnnotation(m90.OooO00o.class)).value();
            try {
                fieldOooOO0o.set(objNewInstance, this.OooO0oO[iValue]);
            } catch (IllegalArgumentException e) {
                throw new Exception(OooOOoo().OooOOO0() + ": Trying to set " + fieldOooOO0o.getName() + " with the value " + this.OooO0oO[iValue] + " that is not the right type (" + this.OooO0oO[iValue].getClass().getSimpleName() + " instead of " + fieldOooOO0o.getType().getSimpleName() + ").", e);
            }
        }
        return objNewInstance;
    }

    private boolean ooOO() {
        return !o00O0O().isEmpty();
    }

    @Override // z2.n90
    public w90 OooO(h90 h90Var) {
        return OooO0oo(h90Var);
    }

    @Override // z2.n90
    public Annotation[] OooOOo() {
        return new Annotation[0];
    }

    @Override // z2.n90
    public String OooOOo0() {
        return this.OooO0oo;
    }

    @Override // z2.k90
    public Object Oooo00O() throws Exception {
        return ooOO() ? o0OoOo0() : Ooooooo();
    }

    @Override // z2.k90
    public String OoooOO0(s90 s90Var) {
        return s90Var.OooO0o0() + OooOOo0();
    }

    @Override // z2.k90
    public void OoooOOO(List<Throwable> list) {
        super.OoooOOO(list);
        if (ooOO()) {
            List<q90> listO00O0O = o00O0O();
            int size = listO00O0O.size();
            int[] iArr = new int[size];
            Iterator<q90> it = listO00O0O.iterator();
            while (it.hasNext()) {
                int iValue = ((m90.OooO00o) it.next().OooOO0o().getAnnotation(m90.OooO00o.class)).value();
                if (iValue < 0 || iValue > listO00O0O.size() - 1) {
                    list.add(new Exception("Invalid @Parameter value: " + iValue + ". @Parameter fields counted: " + listO00O0O.size() + ". Please use an index between 0 and " + (listO00O0O.size() - 1) + "."));
                } else {
                    iArr[iValue] = iArr[iValue] + 1;
                }
            }
            for (int i = 0; i < size; i++) {
                int i2 = iArr[i];
                if (i2 == 0) {
                    list.add(new Exception("@Parameter(" + i + ") is never used."));
                } else if (i2 > 1) {
                    list.add(new Exception("@Parameter(" + i + ") is used more than once (" + i2 + ")."));
                }
            }
        }
    }

    @Override // z2.k90
    public void o000oOoO(List<Throwable> list) {
        OoooOoo(list);
        if (ooOO()) {
            Ooooo0o(list);
        }
    }
}
