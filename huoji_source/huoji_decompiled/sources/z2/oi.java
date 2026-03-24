package z2;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class oi implements mi {
    private mi OooO00o;

    public static class OooO0O0 {
        private static final oi OooO00o = new oi();

        private OooO0O0() {
        }
    }

    private oi() {
        try {
            this.OooO00o = (mi) Class.forName("z2.yg").newInstance();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }

    public static oi OooO0o() {
        return OooO0O0.OooO00o;
    }

    @Override // z2.mi
    public void OooO00o(r3<String> r3Var) {
        this.OooO00o.OooO00o(r3Var);
    }

    @Override // z2.mi
    public void OooO0O0(Context context, String str, Class cls, int i) {
        this.OooO00o.OooO0O0(context, str, cls, i);
    }

    @Override // z2.mi
    public ni OooO0OO() {
        return this.OooO00o.OooO0OO();
    }

    @Override // z2.mi
    public void OooO0Oo(Context context) {
        this.OooO00o.OooO0Oo(context);
    }

    @Override // z2.mi
    public void OooO0o0(String str, int i) {
        this.OooO00o.OooO0o0(str, i);
    }

    @Override // z2.mi
    public Context getContext() {
        return this.OooO00o.getContext();
    }
}
