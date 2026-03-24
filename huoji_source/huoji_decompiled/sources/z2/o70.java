package z2;

import java.lang.annotation.Annotation;
import junit.framework.AssertionFailedError;
import org.junit.runner.Description;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runner.notification.Failure;

/* JADX INFO: loaded from: classes2.dex */
public class o70 extends b90 implements d90, e90 {
    private volatile gw OooO00o;

    public static final class OooO0O0 implements jw {
        private final h90 OooO00o;

        private OooO0O0(h90 h90Var) {
            this.OooO00o = h90Var;
        }

        private Class<? extends gw> OooO0o(gw gwVar) {
            return gwVar.getClass();
        }

        private Description OooO0o0(gw gwVar) {
            return gwVar instanceof w80 ? ((w80) gwVar).getDescription() : Description.createTestDescription(OooO0o(gwVar), OooO0oO(gwVar));
        }

        private String OooO0oO(gw gwVar) {
            return gwVar instanceof hw ? ((hw) gwVar).Oooo() : gwVar.toString();
        }

        @Override // z2.jw
        public void OooO00o(gw gwVar, Throwable th) {
            this.OooO00o.OooO0o(new Failure(OooO0o0(gwVar), th));
        }

        @Override // z2.jw
        public void OooO0O0(gw gwVar, AssertionFailedError assertionFailedError) {
            OooO00o(gwVar, assertionFailedError);
        }

        @Override // z2.jw
        public void OooO0OO(gw gwVar) {
            this.OooO00o.OooO0oo(OooO0o0(gwVar));
        }

        @Override // z2.jw
        public void OooO0Oo(gw gwVar) {
            this.OooO00o.OooOO0o(OooO0o0(gwVar));
        }
    }

    public o70(Class<?> cls) {
        this(new lw(cls.asSubclass(hw.class)));
    }

    public o70(gw gwVar) {
        OooOO0(gwVar);
    }

    private static Description OooO(gw gwVar) {
        if (gwVar instanceof hw) {
            hw hwVar = (hw) gwVar;
            return Description.createTestDescription(hwVar.getClass(), hwVar.Oooo(), OooO0oO(hwVar));
        }
        if (!(gwVar instanceof lw)) {
            return gwVar instanceof w80 ? ((w80) gwVar).getDescription() : gwVar instanceof zv ? OooO(((zv) gwVar).Oooo()) : Description.createSuiteDescription(gwVar.getClass());
        }
        lw lwVar = (lw) gwVar;
        Description descriptionCreateSuiteDescription = Description.createSuiteDescription(lwVar.OooO() == null ? OooO0o(lwVar) : lwVar.OooO(), new Annotation[0]);
        int iOooOOo0 = lwVar.OooOOo0();
        for (int i = 0; i < iOooOOo0; i++) {
            descriptionCreateSuiteDescription.addChild(OooO(lwVar.OooOOOO(i)));
        }
        return descriptionCreateSuiteDescription;
    }

    private static String OooO0o(lw lwVar) {
        int iOooO00o = lwVar.OooO00o();
        return String.format("TestSuite with %s tests%s", Integer.valueOf(iOooO00o), iOooO00o == 0 ? "" : String.format(" [example: %s]", lwVar.OooOOOO(0)));
    }

    private static Annotation[] OooO0oO(hw hwVar) {
        try {
            return hwVar.getClass().getMethod(hwVar.Oooo(), new Class[0]).getDeclaredAnnotations();
        } catch (NoSuchMethodException | SecurityException unused) {
            return new Annotation[0];
        }
    }

    private gw OooO0oo() {
        return this.OooO00o;
    }

    private void OooOO0(gw gwVar) {
        this.OooO00o = gwVar;
    }

    @Override // z2.b90
    public void OooO00o(h90 h90Var) {
        kw kwVar = new kw();
        kwVar.OooO0OO(OooO0o0(h90Var));
        OooO0oo().OooO0O0(kwVar);
    }

    @Override // z2.d90
    public void OooO0OO(c90 c90Var) throws NoTestsRemainException {
        if (OooO0oo() instanceof d90) {
            ((d90) OooO0oo()).OooO0OO(c90Var);
            return;
        }
        if (OooO0oo() instanceof lw) {
            lw lwVar = (lw) OooO0oo();
            lw lwVar2 = new lw(lwVar.OooO());
            int iOooOOo0 = lwVar.OooOOo0();
            for (int i = 0; i < iOooOOo0; i++) {
                gw gwVarOooOOOO = lwVar.OooOOOO(i);
                if (c90Var.OooO0o0(OooO(gwVarOooOOOO))) {
                    lwVar2.OooO0OO(gwVarOooOOOO);
                }
            }
            OooOO0(lwVar2);
            if (lwVar2.OooOOo0() == 0) {
                throw new NoTestsRemainException();
            }
        }
    }

    @Override // z2.e90
    public void OooO0Oo(f90 f90Var) {
        if (OooO0oo() instanceof e90) {
            ((e90) OooO0oo()).OooO0Oo(f90Var);
        }
    }

    public jw OooO0o0(h90 h90Var) {
        return new OooO0O0(h90Var);
    }

    @Override // z2.b90, z2.w80
    public Description getDescription() {
        return OooO(OooO0oo());
    }
}
