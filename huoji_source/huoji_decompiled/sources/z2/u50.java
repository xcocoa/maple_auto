package z2;

import java.io.File;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.junit.experimental.max.MaxHistory;
import org.junit.runner.Description;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runners.model.InitializationError;

/* JADX INFO: loaded from: classes2.dex */
public class u50 {
    private static final String OooO0O0 = "malformed JUnit 3 test class: ";
    private final MaxHistory OooO00o;

    public class OooO00o extends z80 {
        public final /* synthetic */ List OooO00o;

        /* JADX INFO: renamed from: z2.u50$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0261OooO00o extends o90 {
            public C0261OooO00o(Class cls, List list) throws InitializationError {
                super((Class<?>) cls, (List<b90>) list);
            }
        }

        public OooO00o(List list) {
            this.OooO00o = list;
        }

        @Override // z2.z80
        public b90 OooO0oo() {
            try {
                return new C0261OooO00o(null, this.OooO00o);
            } catch (InitializationError e) {
                return new n70(null, e);
            }
        }
    }

    private u50(File file) {
        this.OooO00o = MaxHistory.forFolder(file);
    }

    private b90 OooO00o(Description description) {
        if (description.toString().equals("TestSuite with 0 tests")) {
            return o90.Oooo00O();
        }
        if (description.toString().startsWith(OooO0O0)) {
            return new o70(new lw(OooO0o(description)));
        }
        Class<?> testClass = description.getTestClass();
        if (testClass != null) {
            String methodName = description.getMethodName();
            return (methodName == null ? z80.OooO00o(testClass) : z80.OooO(testClass, methodName)).OooO0oo();
        }
        throw new RuntimeException("Can't build a runner from description [" + description + "]");
    }

    private z80 OooO0O0(List<Description> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Description> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(OooO00o(it.next()));
        }
        return new OooO00o(arrayList);
    }

    private List<Description> OooO0OO(z80 z80Var) {
        ArrayList arrayList = new ArrayList();
        OooO0Oo(null, z80Var.OooO0oo().getDescription(), arrayList);
        return arrayList;
    }

    private void OooO0Oo(Description description, Description description2, List<Description> list) {
        if (!description2.getChildren().isEmpty()) {
            Iterator<Description> it = description2.getChildren().iterator();
            while (it.hasNext()) {
                OooO0Oo(description2, it.next(), list);
            }
        } else {
            if (!description2.toString().equals("warning(junit.framework.TestSuite$1)")) {
                list.add(description2);
                return;
            }
            list.add(Description.createSuiteDescription(OooO0O0 + description, new Annotation[0]));
        }
    }

    private Class<?> OooO0o(Description description) {
        try {
            return Class.forName(description.toString().replace(OooO0O0, ""));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @Deprecated
    public static u50 OooO0o0(String str) {
        return OooOO0o(new File(str));
    }

    public static u50 OooOO0o(File file) {
        return new u50(file);
    }

    public Result OooO(z80 z80Var, JUnitCore jUnitCore) {
        jUnitCore.OooO00o(this.OooO00o.listener());
        return jUnitCore.OooO0oo(OooOO0(z80Var).OooO0oo());
    }

    public Result OooO0oO(Class<?> cls) {
        return OooO0oo(z80.OooO00o(cls));
    }

    public Result OooO0oo(z80 z80Var) {
        return OooO(z80Var, new JUnitCore());
    }

    public z80 OooOO0(z80 z80Var) {
        if (z80Var instanceof l70) {
            return z80Var;
        }
        List<Description> listOooO0OO = OooO0OO(z80Var);
        Collections.sort(listOooO0OO, this.OooO00o.testComparator());
        return OooO0O0(listOooO0OO);
    }

    public List<Description> OooOO0O(z80 z80Var) {
        return OooO0OO(OooOO0(z80Var));
    }
}
