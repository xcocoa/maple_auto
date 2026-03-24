package z2;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class z20<T> extends v20<T> {
    private final r20<? super T> Ooooo00;

    public static final class OooO00o<X> {
        private final r20<? super X> OooO00o;

        public OooO00o(r20<? super X> r20Var) {
            this.OooO00o = r20Var;
        }

        public z20<X> OooO00o(r20<? super X> r20Var) {
            return new z20(this.OooO00o).OooO0o0(r20Var);
        }
    }

    public static final class OooO0O0<X> {
        private final r20<? super X> OooO00o;

        public OooO0O0(r20<? super X> r20Var) {
            this.OooO00o = r20Var;
        }

        public z20<X> OooO00o(r20<? super X> r20Var) {
            return new z20(this.OooO00o).OooO0oo(r20Var);
        }
    }

    public z20(r20<? super T> r20Var) {
        this.Ooooo00 = r20Var;
    }

    private ArrayList<r20<? super T>> OooO(r20<? super T> r20Var) {
        ArrayList<r20<? super T>> arrayList = new ArrayList<>();
        arrayList.add(this.Ooooo00);
        arrayList.add(r20Var);
        return arrayList;
    }

    @p20
    public static <LHS> OooO00o<LHS> OooO0o(r20<? super LHS> r20Var) {
        return new OooO00o<>(r20Var);
    }

    @p20
    public static <LHS> OooO0O0<LHS> OooO0oO(r20<? super LHS> r20Var) {
        return new OooO0O0<>(r20Var);
    }

    @Override // z2.v20
    public boolean OooO0Oo(T t, n20 n20Var) {
        if (this.Ooooo00.OooO0O0(t)) {
            return true;
        }
        this.Ooooo00.OooO00o(t, n20Var);
        return false;
    }

    public z20<T> OooO0o0(r20<? super T> r20Var) {
        return new z20<>(new x20(OooO(r20Var)));
    }

    public z20<T> OooO0oo(r20<? super T> r20Var) {
        return new z20<>(new y20(OooO(r20Var)));
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0O0(this.Ooooo00);
    }
}
