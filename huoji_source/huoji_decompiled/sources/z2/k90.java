package z2;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import org.junit.Test;
import org.junit.runner.Description;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class k90 extends n90<s90> {
    private final ConcurrentHashMap<s90, Description> OooO0o;

    public class OooO00o extends w70 {
        public OooO00o() throws Exception {
        }

        @Override // z2.w70
        public Object OooO0O0() throws Throwable {
            return k90.this.Oooo00O();
        }
    }

    public k90(Class<?> cls) throws InitializationError {
        super(cls);
        this.OooO0o = new ConcurrentHashMap<>();
    }

    private boolean Oooo0(Test test) {
        return Oooo0O0(test) != null;
    }

    private Class<? extends Throwable> Oooo0O0(Test test) {
        if (test == null || test.expected() == Test.None.class) {
            return null;
        }
        return test.expected();
    }

    private List<k80> Oooo0OO(Object obj) {
        return OoooO0O(obj);
    }

    private long Oooo0o(Test test) {
        if (test == null) {
            return 0L;
        }
        return test.timeout();
    }

    private boolean Oooo0oO() {
        return OooOOoo().OooOO0o().getConstructors().length == 1;
    }

    private void OoooOo0(List<Throwable> list) {
        x70.OooO0oO.OooO(OooOOoo(), list);
    }

    private w90 OooooOo(s90 s90Var, List<q80> list, Object obj, w90 w90Var) {
        for (k80 k80Var : Oooo0OO(obj)) {
            if (!list.contains(k80Var)) {
                w90Var = k80Var.OooO00o(w90Var, s90Var, obj);
            }
        }
        return w90Var;
    }

    private w90 Oooooo(s90 s90Var, Object obj, w90 w90Var) {
        List<q80> listOooo0o0 = Oooo0o0(obj);
        return OoooooO(s90Var, listOooo0o0, OooooOo(s90Var, listOooo0o0, obj, w90Var));
    }

    private w90 OoooooO(s90 s90Var, List<q80> list, w90 w90Var) {
        return list.isEmpty() ? w90Var : new m80(w90Var, list, OooOOO(s90Var));
    }

    @Override // z2.n90
    public void OooOO0O(List<Throwable> list) {
        super.OooOO0O(list);
        OoooOoO(list);
        o000oOoO(list);
        OoooOOo(list);
        OoooOOO(list);
        OoooOo0(list);
    }

    @Override // z2.n90
    public List<s90> OooOOOO() {
        return Oooo000();
    }

    public w90 Oooo(s90 s90Var) {
        try {
            Object objOooO00o = new OooO00o().OooO00o();
            return Oooooo(s90Var, objOooO00o, OooooO0(s90Var, objOooO00o, OooooOO(s90Var, objOooO00o, Oooooo0(s90Var, objOooO00o, OoooO0(s90Var, objOooO00o, OoooO00(s90Var, objOooO00o))))));
        } catch (Throwable th) {
            return new z70(th);
        }
    }

    public List<s90> Oooo000() {
        return OooOOoo().OooOO0O(Test.class);
    }

    public Object Oooo00O() throws Exception {
        return OooOOoo().OooOOO().newInstance(new Object[0]);
    }

    @Override // z2.n90
    /* JADX INFO: renamed from: Oooo00o, reason: merged with bridge method [inline-methods] */
    public Description OooOOO(s90 s90Var) {
        Description description = this.OooO0o.get(s90Var);
        if (description != null) {
            return description;
        }
        Description descriptionCreateTestDescription = Description.createTestDescription(OooOOoo().OooOO0o(), OoooOO0(s90Var), s90Var.OooO0O0());
        this.OooO0o.putIfAbsent(s90Var, descriptionCreateTestDescription);
        return descriptionCreateTestDescription;
    }

    public List<q80> Oooo0o0(Object obj) {
        List<q80> listOooO = OooOOoo().OooO(obj, m50.class, q80.class);
        listOooO.addAll(OooOOoo().OooO0o0(obj, m50.class, q80.class));
        return listOooO;
    }

    @Override // z2.n90
    /* JADX INFO: renamed from: Oooo0oo, reason: merged with bridge method [inline-methods] */
    public boolean OooOo00(s90 s90Var) {
        return s90Var.OooO00o(l50.class) != null;
    }

    @Override // z2.n90
    /* JADX INFO: renamed from: OoooO, reason: merged with bridge method [inline-methods] */
    public void OooOo0(s90 s90Var, h90 h90Var) {
        Description descriptionOooOOO = OooOOO(s90Var);
        if (OooOo00(s90Var)) {
            h90Var.OooO(descriptionOooOOO);
        } else {
            OooOo0o(Oooo(s90Var), descriptionOooOOO, h90Var);
        }
    }

    public w90 OoooO0(s90 s90Var, Object obj, w90 w90Var) {
        Test test = (Test) s90Var.OooO00o(Test.class);
        return Oooo0(test) ? new y70(w90Var, Oooo0O0(test)) : w90Var;
    }

    public w90 OoooO00(s90 s90Var, Object obj) {
        return new b80(s90Var, obj);
    }

    public List<k80> OoooO0O(Object obj) {
        List<k80> listOooO = OooOOoo().OooO(obj, m50.class, k80.class);
        listOooO.addAll(OooOOoo().OooO0o0(obj, m50.class, k80.class));
        return listOooO;
    }

    public String OoooOO0(s90 s90Var) {
        return s90Var.OooO0o0();
    }

    public void OoooOOO(List<Throwable> list) {
        x70.OooO0o0.OooO(OooOOoo(), list);
    }

    @Deprecated
    public void OoooOOo(List<Throwable> list) {
        OooOoo0(d50.class, false, list);
        OooOoo0(h50.class, false, list);
        Ooooo00(list);
        if (Oooo000().size() == 0) {
            list.add(new Exception("No runnable methods"));
        }
    }

    public void OoooOoO(List<Throwable> list) {
        if (OooOOoo().OooOOo0()) {
            list.add(new Exception("The inner class " + OooOOoo().OooOOO0() + " is not static."));
        }
    }

    public void OoooOoo(List<Throwable> list) {
        if (Oooo0oO()) {
            return;
        }
        list.add(new Exception("Test class should have exactly one public constructor"));
    }

    public void Ooooo00(List<Throwable> list) {
        OooOoo0(Test.class, false, list);
    }

    public void Ooooo0o(List<Throwable> list) {
        if (OooOOoo().OooOOo0() || !Oooo0oO() || OooOOoo().OooOOO().getParameterTypes().length == 0) {
            return;
        }
        list.add(new Exception("Test class should have exactly one public zero-argument constructor"));
    }

    public w90 OooooO0(s90 s90Var, Object obj, w90 w90Var) {
        List<s90> listOooOO0O = OooOOoo().OooOO0O(d50.class);
        return listOooOO0O.isEmpty() ? w90Var : new c80(w90Var, listOooOO0O, obj);
    }

    public w90 OooooOO(s90 s90Var, Object obj, w90 w90Var) {
        List<s90> listOooOO0O = OooOOoo().OooOO0O(h50.class);
        return listOooOO0O.isEmpty() ? w90Var : new d80(w90Var, listOooOO0O, obj);
    }

    @Deprecated
    public w90 Oooooo0(s90 s90Var, Object obj, w90 w90Var) {
        long jOooo0o = Oooo0o((Test) s90Var.OooO00o(Test.class));
        return jOooo0o <= 0 ? w90Var : a80.OooO0OO().OooO0o(jOooo0o, TimeUnit.MILLISECONDS).OooO0Oo(w90Var);
    }

    public void o000oOoO(List<Throwable> list) {
        OoooOoo(list);
        Ooooo0o(list);
    }
}
