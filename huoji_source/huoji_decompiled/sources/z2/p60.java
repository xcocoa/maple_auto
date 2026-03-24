package z2;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.junit.internal.ArrayComparisonFailure;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p60 {
    private int OooO0O0(Object obj, Object obj2, String str) {
        if (obj == null) {
            f50.OooooO0(str + "expected array was null");
        }
        if (obj2 == null) {
            f50.OooooO0(str + "actual array was null");
        }
        int length = Array.getLength(obj2);
        int length2 = Array.getLength(obj);
        if (length != length2) {
            f50.OooooO0(str + "array lengths differed, expected.length=" + length2 + " actual.length=" + length);
        }
        return length2;
    }

    private boolean OooO0Oo(Object obj) {
        return obj != null && obj.getClass().isArray();
    }

    public void OooO00o(String str, Object obj, Object obj2) throws ArrayComparisonFailure {
        if (obj != obj2) {
            if (Arrays.deepEquals(new Object[]{obj}, new Object[]{obj2})) {
                return;
            }
            String str2 = str == null ? "" : str + ": ";
            int iOooO0O0 = OooO0O0(obj, obj2, str2);
            for (int i = 0; i < iOooO0O0; i++) {
                Object obj3 = Array.get(obj, i);
                Object obj4 = Array.get(obj2, i);
                if (OooO0Oo(obj3) && OooO0Oo(obj4)) {
                    try {
                        OooO00o(str, obj3, obj4);
                    } catch (ArrayComparisonFailure e) {
                        e.addDimension(i);
                        throw e;
                    }
                } else {
                    try {
                        OooO0OO(obj3, obj4);
                    } catch (AssertionError e2) {
                        throw new ArrayComparisonFailure(str2, e2, i);
                    }
                }
            }
        }
    }

    public abstract void OooO0OO(Object obj, Object obj2);
}
