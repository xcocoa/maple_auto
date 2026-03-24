package z2;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import z2.lx;

/* JADX INFO: loaded from: classes2.dex */
public final class wy implements lx.OooO00o {
    private final int OooO;
    private final List<lx> OooO00o;
    private final py OooO0O0;
    private final sy OooO0OO;
    private final my OooO0Oo;
    private final qx OooO0o;
    private final int OooO0o0;
    private final tw OooO0oO;
    private final gx OooO0oo;
    private final int OooOO0;
    private final int OooOO0O;
    private int OooOO0o;

    public wy(List<lx> list, py pyVar, sy syVar, my myVar, int i, qx qxVar, tw twVar, gx gxVar, int i2, int i3, int i4) {
        this.OooO00o = list;
        this.OooO0Oo = myVar;
        this.OooO0O0 = pyVar;
        this.OooO0OO = syVar;
        this.OooO0o0 = i;
        this.OooO0o = qxVar;
        this.OooO0oO = twVar;
        this.OooO0oo = gxVar;
        this.OooO = i2;
        this.OooOO0 = i3;
        this.OooOO0O = i4;
    }

    public gx OooO() {
        return this.OooO0oo;
    }

    @Override // z2.lx.OooO00o
    public lx.OooO00o OooO00o(int i, TimeUnit timeUnit) {
        return new wy(this.OooO00o, this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0, this.OooO0o, this.OooO0oO, this.OooO0oo, this.OooO, this.OooOO0, zx.OooO0o0("timeout", i, timeUnit));
    }

    @Override // z2.lx.OooO00o
    public int OooO0O0() {
        return this.OooOO0;
    }

    @Override // z2.lx.OooO00o
    public int OooO0OO() {
        return this.OooOO0O;
    }

    @Override // z2.lx.OooO00o
    public lx.OooO00o OooO0Oo(int i, TimeUnit timeUnit) {
        return new wy(this.OooO00o, this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0, this.OooO0o, this.OooO0oO, this.OooO0oo, zx.OooO0o0("timeout", i, timeUnit), this.OooOO0, this.OooOO0O);
    }

    @Override // z2.lx.OooO00o
    public yw OooO0o() {
        return this.OooO0Oo;
    }

    @Override // z2.lx.OooO00o
    public sx OooO0o0(qx qxVar) throws IOException {
        return OooOO0O(qxVar, this.OooO0O0, this.OooO0OO, this.OooO0Oo);
    }

    @Override // z2.lx.OooO00o
    public lx.OooO00o OooO0oO(int i, TimeUnit timeUnit) {
        return new wy(this.OooO00o, this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0, this.OooO0o, this.OooO0oO, this.OooO0oo, this.OooO, zx.OooO0o0("timeout", i, timeUnit), this.OooOO0O);
    }

    @Override // z2.lx.OooO00o
    public int OooO0oo() {
        return this.OooO;
    }

    public sy OooOO0() {
        return this.OooO0OO;
    }

    public sx OooOO0O(qx qxVar, py pyVar, sy syVar, my myVar) throws IOException {
        if (this.OooO0o0 >= this.OooO00o.size()) {
            throw new AssertionError();
        }
        this.OooOO0o++;
        if (this.OooO0OO != null && !this.OooO0Oo.OooOo0(qxVar.OooOO0O())) {
            throw new IllegalStateException("network interceptor " + this.OooO00o.get(this.OooO0o0 - 1) + " must retain the same host and port");
        }
        if (this.OooO0OO != null && this.OooOO0o > 1) {
            throw new IllegalStateException("network interceptor " + this.OooO00o.get(this.OooO0o0 - 1) + " must call proceed() exactly once");
        }
        wy wyVar = new wy(this.OooO00o, pyVar, syVar, myVar, this.OooO0o0 + 1, qxVar, this.OooO0oO, this.OooO0oo, this.OooO, this.OooOO0, this.OooOO0O);
        lx lxVar = this.OooO00o.get(this.OooO0o0);
        sx sxVarIntercept = lxVar.intercept(wyVar);
        if (syVar != null && this.OooO0o0 + 1 < this.OooO00o.size() && wyVar.OooOO0o != 1) {
            throw new IllegalStateException("network interceptor " + lxVar + " must call proceed() exactly once");
        }
        if (sxVarIntercept == null) {
            throw new NullPointerException("interceptor " + lxVar + " returned null");
        }
        if (sxVarIntercept.OooOO0() != null) {
            return sxVarIntercept;
        }
        throw new IllegalStateException("interceptor " + lxVar + " returned a response with no body");
    }

    public py OooOO0o() {
        return this.OooO0O0;
    }

    @Override // z2.lx.OooO00o
    public tw call() {
        return this.OooO0oO;
    }

    @Override // z2.lx.OooO00o
    public qx request() {
        return this.OooO0o;
    }
}
