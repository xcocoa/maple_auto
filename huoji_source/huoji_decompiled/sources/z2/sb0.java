package z2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sb0 {
    private int OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private String OooO0Oo;
    private List<String> OooO0o0;

    public void OooO(String str) {
        this.OooO0O0 = str;
    }

    public void OooO00o(String str) {
        OooO0OO().add(str);
    }

    public String OooO0O0() {
        return this.OooO0OO;
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
        return this.OooO0Oo;
    }

    public void OooO0oO(String str) {
        this.OooO0OO = str;
    }

    public void OooO0oo(List<String> list) {
        this.OooO0o0 = list;
    }

    public void OooOO0(String str) {
        this.OooO0Oo = str;
    }

    public void OooOO0O(int i) {
        this.OooO00o = i;
    }
}
