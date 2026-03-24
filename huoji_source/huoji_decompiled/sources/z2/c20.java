package z2;

import android.content.res.Resources;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class c20 {
    public Class<?> OooO;
    public final Resources OooO00o;
    public final int OooO0O0;
    public final int OooO0OO;
    public l10 OooO0o0;
    public String OooO0oO;
    public int OooO0oo;
    public boolean OooO0o = true;
    public final e20 OooO0Oo = new e20();

    public c20(Resources resources, int i, int i2) {
        this.OooO00o = resources;
        this.OooO0O0 = i;
        this.OooO0OO = i2;
    }

    public c20 OooO00o(Class<? extends Throwable> cls, int i) {
        this.OooO0Oo.OooO00o(cls, i);
        return this;
    }

    public void OooO0O0() {
        this.OooO0o = false;
    }

    public l10 OooO0OO() {
        l10 l10Var = this.OooO0o0;
        return l10Var != null ? l10Var : l10.OooO0o();
    }

    public int OooO0Oo(Throwable th) {
        Integer numOooO0O0 = this.OooO0Oo.OooO0O0(th);
        if (numOooO0O0 != null) {
            return numOooO0O0.intValue();
        }
        Log.d(l10.OooOOo0, "No specific message ressource ID found for " + th);
        return this.OooO0OO;
    }

    public void OooO0o(Class<?> cls) {
        this.OooO = cls;
    }

    public void OooO0o0(int i) {
        this.OooO0oo = i;
    }

    public void OooO0oO(l10 l10Var) {
        this.OooO0o0 = l10Var;
    }

    public void OooO0oo(String str) {
        this.OooO0oO = str;
    }
}
