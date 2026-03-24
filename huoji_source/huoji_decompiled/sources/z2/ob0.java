package z2;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class ob0 {
    private String OooO00o;
    private String OooO0O0;
    private String OooO0OO;
    private Field OooO0Oo;
    private int OooO0o;
    private Field OooO0o0;

    public void OooO(String str) {
        this.OooO0O0 = str;
    }

    public Field OooO00o() {
        return this.OooO0Oo;
    }

    public Field OooO0O0() {
        return this.OooO0o0;
    }

    public String OooO0OO() {
        return this.OooO0O0;
    }

    public int OooO0Oo() {
        return this.OooO0o;
    }

    public String OooO0o() {
        return this.OooO00o;
    }

    public String OooO0o0() {
        return this.OooO0OO;
    }

    public void OooO0oO(Field field) {
        this.OooO0Oo = field;
    }

    public void OooO0oo(Field field) {
        this.OooO0o0 = field;
    }

    public void OooOO0(int i) {
        this.OooO0o = i;
    }

    public void OooOO0O(String str) {
        this.OooO0OO = str;
    }

    public void OooOO0o(String str) {
        this.OooO00o = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ob0)) {
            return false;
        }
        ob0 ob0Var = (ob0) obj;
        if (obj == null || ob0Var == null || ob0Var.OooO0Oo() != this.OooO0o || !ob0Var.OooO0o0().equals(this.OooO0OO)) {
            return false;
        }
        if (ob0Var.OooO0o().equals(this.OooO00o) && ob0Var.OooO0OO().equals(this.OooO0O0)) {
            return true;
        }
        return ob0Var.OooO0o().equals(this.OooO0O0) && ob0Var.OooO0OO().equals(this.OooO00o);
    }
}
