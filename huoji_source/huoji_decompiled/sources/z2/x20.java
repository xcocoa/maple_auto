package z2;

import java.util.ArrayList;
import java.util.Arrays;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class x20<T> extends o20<T> {
    private final Iterable<r20<? super T>> OoooOoO;

    public x20(Iterable<r20<? super T>> iterable) {
        this.OoooOoO = iterable;
    }

    @p20
    public static <T> r20<T> OooO(r20<? super T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3, r20<? super T> r20Var4, r20<? super T> r20Var5) {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        arrayList.add(r20Var4);
        arrayList.add(r20Var5);
        return OooO0o0(arrayList);
    }

    @p20
    public static <T> r20<T> OooO0o(r20<? super T> r20Var, r20<? super T> r20Var2) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        return OooO0o0(arrayList);
    }

    @p20
    public static <T> r20<T> OooO0o0(Iterable<r20<? super T>> iterable) {
        return new x20(iterable);
    }

    @p20
    public static <T> r20<T> OooO0oO(r20<? super T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        return OooO0o0(arrayList);
    }

    @p20
    public static <T> r20<T> OooO0oo(r20<? super T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3, r20<? super T> r20Var4) {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        arrayList.add(r20Var4);
        return OooO0o0(arrayList);
    }

    @p20
    public static <T> r20<T> OooOO0(r20<? super T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3, r20<? super T> r20Var4, r20<? super T> r20Var5, r20<? super T> r20Var6) {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        arrayList.add(r20Var4);
        arrayList.add(r20Var5);
        arrayList.add(r20Var6);
        return OooO0o0(arrayList);
    }

    @p20
    public static <T> r20<T> OooOO0O(r20<? super T>... r20VarArr) {
        return OooO0o0(Arrays.asList(r20VarArr));
    }

    @Override // z2.o20
    public boolean OooO0Oo(Object obj, n20 n20Var) {
        for (r20<? super T> r20Var : this.OoooOoO) {
            if (!r20Var.OooO0O0(obj)) {
                n20Var.OooO0O0(r20Var).OooO0Oo(o4.OooO00o.OooO0Oo);
                r20Var.OooO00o(obj, n20Var);
                return false;
            }
        }
        return true;
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO00o("(", " and ", ")", this.OoooOoO);
    }
}
