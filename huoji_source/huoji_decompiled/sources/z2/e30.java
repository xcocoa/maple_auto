package z2;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class e30<T> extends v20<Iterable<? super T>> {
    private final r20<? super T> Ooooo00;

    public e30(r20<? super T> r20Var) {
        this.Ooooo00 = r20Var;
    }

    @p20
    public static <T> r20<Iterable<? super T>> OooO0o(r20<? super T> r20Var) {
        return new e30(r20Var);
    }

    @p20
    public static <T> r20<Iterable<? super T>> OooO0o0(T t) {
        return new e30(f30.OooO0oo(t));
    }

    @p20
    public static <T> r20<Iterable<T>> OooO0oO(T... tArr) {
        ArrayList arrayList = new ArrayList(tArr.length);
        for (T t : tArr) {
            arrayList.add(OooO0o0(t));
        }
        return x20.OooO0o0(arrayList);
    }

    @p20
    public static <T> r20<Iterable<T>> OooO0oo(r20<? super T>... r20VarArr) {
        ArrayList arrayList = new ArrayList(r20VarArr.length);
        for (r20<? super T> r20Var : r20VarArr) {
            arrayList.add(new e30(r20Var));
        }
        return x20.OooO0o0(arrayList);
    }

    @Override // z2.v20
    /* JADX INFO: renamed from: OooO, reason: merged with bridge method [inline-methods] */
    public boolean OooO0Oo(Iterable<? super T> iterable, n20 n20Var) {
        boolean z = false;
        for (T t : iterable) {
            if (this.Ooooo00.OooO0O0(t)) {
                return true;
            }
            if (z) {
                n20Var.OooO0Oo(", ");
            }
            this.Ooooo00.OooO00o(t, n20Var);
            z = true;
        }
        return false;
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("a collection containing ").OooO0O0(this.Ooooo00);
    }
}
