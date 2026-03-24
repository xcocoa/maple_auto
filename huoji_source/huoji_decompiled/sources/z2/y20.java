package z2;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class y20<T> extends k30<T> {
    public y20(Iterable<r20<? super T>> iterable) {
        super(iterable);
    }

    @p20
    public static <T> y20<T> OooO(r20<T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3, r20<? super T> r20Var4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        arrayList.add(r20Var4);
        return OooO0o(arrayList);
    }

    @p20
    public static <T> y20<T> OooO0o(Iterable<r20<? super T>> iterable) {
        return new y20<>(iterable);
    }

    @p20
    public static <T> y20<T> OooO0oO(r20<T> r20Var, r20<? super T> r20Var2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        return OooO0o(arrayList);
    }

    @p20
    public static <T> y20<T> OooO0oo(r20<T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        return OooO0o(arrayList);
    }

    @p20
    public static <T> y20<T> OooOO0(r20<T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3, r20<? super T> r20Var4, r20<? super T> r20Var5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        arrayList.add(r20Var4);
        arrayList.add(r20Var5);
        return OooO0o(arrayList);
    }

    @p20
    public static <T> y20<T> OooOO0O(r20<T> r20Var, r20<? super T> r20Var2, r20<? super T> r20Var3, r20<? super T> r20Var4, r20<? super T> r20Var5, r20<? super T> r20Var6) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(r20Var);
        arrayList.add(r20Var2);
        arrayList.add(r20Var3);
        arrayList.add(r20Var4);
        arrayList.add(r20Var5);
        arrayList.add(r20Var6);
        return OooO0o(arrayList);
    }

    @p20
    public static <T> y20<T> OooOO0o(r20<? super T>... r20VarArr) {
        return OooO0o(Arrays.asList(r20VarArr));
    }

    @Override // z2.k30, z2.r20
    public boolean OooO0O0(Object obj) {
        return OooO0o0(obj, true);
    }

    @Override // z2.k30
    public /* bridge */ /* synthetic */ void OooO0Oo(n20 n20Var, String str) {
        super.OooO0Oo(n20Var, str);
    }

    @Override // z2.k30, z2.t20
    public void describeTo(n20 n20Var) {
        OooO0Oo(n20Var, "or");
    }
}
