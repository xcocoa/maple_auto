package z2;

/* JADX INFO: loaded from: classes.dex */
public class a7 {
    private static a7 OooO0OO;
    private boolean OooO00o = false;
    public OooO00o OooO0O0;

    public interface OooO00o {
        void OooO00o();

        void OooO0O0();
    }

    public static a7 OooO00o() {
        if (OooO0OO == null) {
            synchronized (a7.class) {
                if (OooO0OO == null) {
                    OooO0OO = new a7();
                }
            }
        }
        return OooO0OO;
    }

    public boolean OooO0O0() {
        return this.OooO00o;
    }

    public void OooO0OO(int i) {
        if (i == 2) {
            this.OooO00o = true;
            OooO00o oooO00o = this.OooO0O0;
            if (oooO00o != null) {
                oooO00o.OooO00o();
                return;
            }
            return;
        }
        if (i == 1) {
            this.OooO00o = false;
            OooO00o oooO00o2 = this.OooO0O0;
            if (oooO00o2 != null) {
                oooO00o2.OooO0O0();
            }
        }
    }

    public void OooO0Oo() {
        this.OooO0O0 = null;
    }

    public void OooO0o0(OooO00o oooO00o) {
        this.OooO0O0 = oooO00o;
    }
}
