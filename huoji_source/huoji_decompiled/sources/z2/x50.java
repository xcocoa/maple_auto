package z2;

/* JADX INFO: loaded from: classes2.dex */
public class x50 {

    public static class OooO00o extends w20<w50> {
        public final /* synthetic */ int Ooooo00;

        public OooO00o(int i) {
            this.Ooooo00 = i;
        }

        @Override // z2.w20
        /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
        public boolean OooO0o0(w50 w50Var) {
            return w50Var.OooO00o() == this.Ooooo00;
        }

        @Override // z2.t20
        public void describeTo(n20 n20Var) {
            n20Var.OooO0Oo("has " + this.Ooooo00 + " failures");
        }
    }

    public static class OooO0O0 extends i20<Object> {
        public final /* synthetic */ String OoooOoO;

        public OooO0O0(String str) {
            this.OoooOoO = str;
        }

        @Override // z2.r20
        public boolean OooO0O0(Object obj) {
            return obj.toString().contains(this.OoooOoO) && x50.OooO00o(1).OooO0O0(obj);
        }

        @Override // z2.t20
        public void describeTo(n20 n20Var) {
            n20Var.OooO0Oo("has single failure containing " + this.OoooOoO);
        }
    }

    public static class OooO0OO extends i20<w50> {
        public final /* synthetic */ String OoooOoO;

        public OooO0OO(String str) {
            this.OoooOoO = str;
        }

        @Override // z2.r20
        public boolean OooO0O0(Object obj) {
            return obj.toString().contains(this.OoooOoO);
        }

        @Override // z2.t20
        public void describeTo(n20 n20Var) {
            n20Var.OooO0Oo("has failure containing " + this.OoooOoO);
        }
    }

    public static r20<w50> OooO00o(int i) {
        return new OooO00o(i);
    }

    public static r20<w50> OooO0O0(String str) {
        return new OooO0OO(str);
    }

    public static r20<Object> OooO0OO(String str) {
        return new OooO0O0(str);
    }

    public static r20<w50> OooO0Oo() {
        return OooO00o(0);
    }
}
