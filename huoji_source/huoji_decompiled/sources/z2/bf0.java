package z2;

import android.content.Context;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class bf0 {
    private WeakReference<Context> OooO00o;
    private OooO00o OooO0OO;
    public int OooO0Oo = -2;
    public int OooO0o0 = -2;
    private cf0 OooO0O0 = cf0.OooOOo0();

    public interface OooO00o {
        void OooO00o(sf0 sf0Var, cf0 cf0Var);
    }

    private bf0(Context context) {
        this.OooO00o = new WeakReference<>(context);
    }

    private Context OooO0o0() {
        WeakReference<Context> weakReference = this.OooO00o;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static bf0 OooOOO(Context context) {
        return new bf0(context);
    }

    public sf0 OooO() {
        return OooOO0o(null);
    }

    public sf0 OooO00o() {
        return new sf0(OooO0o0(), this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0);
    }

    public <C extends cf0> bf0 OooO0O0(C c) {
        if (c == null) {
            return this;
        }
        cf0 cf0Var = this.OooO0O0;
        if (c != cf0Var) {
            c.OooOO0o(cf0Var.OoooOoO);
        }
        this.OooO0O0 = c;
        return this;
    }

    public bf0 OooO0OO(int i) {
        this.OooO0O0.OooOO0o(i);
        return this;
    }

    public final <C extends cf0> C OooO0Oo() {
        return (C) this.OooO0O0;
    }

    public OooO00o OooO0o() {
        return this.OooO0OO;
    }

    public bf0 OooO0oO(int i) {
        this.OooO0o0 = i;
        return this;
    }

    public bf0 OooO0oo(OooO00o oooO00o) {
        this.OooO0OO = oooO00o;
        return this;
    }

    public sf0 OooOO0(int i) {
        sf0 sf0VarOooO00o = OooO00o();
        sf0VarOooO00o.o000O0Oo(i);
        return sf0VarOooO00o;
    }

    public sf0 OooOO0O(int i, int i2) {
        sf0 sf0VarOooO00o = OooO00o();
        sf0VarOooO00o.o000OO0O(i, i2);
        return sf0VarOooO00o;
    }

    public sf0 OooOO0o(View view) {
        sf0 sf0VarOooO00o = OooO00o();
        sf0VarOooO00o.o000O0O0(view);
        return sf0VarOooO00o;
    }

    public bf0 OooOOO0(int i) {
        this.OooO0Oo = i;
        return this;
    }

    @Deprecated
    public bf0 OooOOOO() {
        return OooOOO0(-2).OooO0oO(-2);
    }
}
