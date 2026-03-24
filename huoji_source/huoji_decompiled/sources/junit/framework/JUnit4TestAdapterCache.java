package junit.framework;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import z2.dw;
import z2.ew;
import z2.g90;
import z2.gw;
import z2.h90;
import z2.kw;
import z2.lw;

/* JADX INFO: loaded from: classes2.dex */
public class JUnit4TestAdapterCache extends HashMap<Description, gw> {
    private static final JUnit4TestAdapterCache fInstance = new JUnit4TestAdapterCache();
    private static final long serialVersionUID = 1;

    public class OooO00o extends g90 {
        public final /* synthetic */ kw OooO00o;

        public OooO00o(kw kwVar) {
            this.OooO00o = kwVar;
        }

        @Override // z2.g90
        public void OooO0O0(Failure failure) throws Exception {
            this.OooO00o.OooO00o(JUnit4TestAdapterCache.this.asTest(failure.getDescription()), failure.getException());
        }

        @Override // z2.g90
        public void OooO0OO(Description description) throws Exception {
            this.OooO00o.OooO0o0(JUnit4TestAdapterCache.this.asTest(description));
        }

        @Override // z2.g90
        public void OooO0oO(Description description) throws Exception {
            this.OooO00o.OooOOOO(JUnit4TestAdapterCache.this.asTest(description));
        }
    }

    public static JUnit4TestAdapterCache getDefault() {
        return fInstance;
    }

    public gw asTest(Description description) {
        if (description.isSuite()) {
            return createTest(description);
        }
        if (!containsKey(description)) {
            put(description, createTest(description));
        }
        return get(description);
    }

    public List<gw> asTestList(Description description) {
        if (description.isTest()) {
            return Arrays.asList(asTest(description));
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(asTest(it.next()));
        }
        return arrayList;
    }

    public gw createTest(Description description) {
        if (description.isTest()) {
            return new ew(description);
        }
        lw lwVar = new lw(description.getDisplayName());
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            lwVar.OooO0OO(asTest(it.next()));
        }
        return lwVar;
    }

    public h90 getNotifier(kw kwVar, dw dwVar) {
        h90 h90Var = new h90();
        h90Var.OooO0Oo(new OooO00o(kwVar));
        return h90Var;
    }
}
