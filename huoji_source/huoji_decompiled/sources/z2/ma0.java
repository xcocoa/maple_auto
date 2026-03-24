package z2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ma0 {
    private int OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private boolean OooO0Oo = false;
    private List<String> OooO0o0;

    public ma0(String str, int i) {
        this.OooO0O0 = str;
        this.OooO00o = i;
    }

    public static ma0 OooO0O0(String str) {
        sb0 sb0VarOooO0O0 = ub0.OooO0O0();
        ma0 ma0Var = new ma0(str, sb0VarOooO0O0.OooO0o());
        ma0Var.OooOO0(sb0VarOooO0O0.OooO0o0());
        ma0Var.OooO0oo(sb0VarOooO0O0.OooO0OO());
        return ma0Var;
    }

    public void OooO(boolean z) {
        this.OooO0Oo = z;
    }

    public void OooO00o(String str) {
        OooO0OO().add(str);
    }

    public List<String> OooO0OO() {
        List arrayList;
        List<String> list = this.OooO0o0;
        if (list != null) {
            if (list.isEmpty()) {
                arrayList = this.OooO0o0;
            }
            return this.OooO0o0;
        }
        arrayList = new ArrayList();
        this.OooO0o0 = arrayList;
        arrayList.add("org.litepal.model.Table_Schema");
        return this.OooO0o0;
    }

    public String OooO0Oo() {
        return this.OooO0O0;
    }

    public int OooO0o() {
        return this.OooO00o;
    }

    public String OooO0o0() {
        return this.OooO0OO;
    }

    public boolean OooO0oO() {
        return this.OooO0Oo;
    }

    public void OooO0oo(List<String> list) {
        this.OooO0o0 = list;
    }

    public void OooOO0(String str) {
        this.OooO0OO = str;
    }
}
