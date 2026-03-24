package z2;

import java.util.Comparator;
import org.junit.runner.Description;

/* JADX INFO: loaded from: classes2.dex */
public class f90 implements Comparator<Description> {
    public static final f90 OoooOoo = new f90(new OooO00o());
    private final Comparator<Description> OoooOoO;

    public static class OooO00o implements Comparator<Description> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(Description description, Description description2) {
            return 0;
        }
    }

    public f90(Comparator<Description> comparator) {
        this.OoooOoO = comparator;
    }

    public void OooO00o(Object obj) {
        if (obj instanceof e90) {
            ((e90) obj).OooO0Oo(this);
        }
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
    public int compare(Description description, Description description2) {
        return this.OoooOoO.compare(description, description2);
    }
}
