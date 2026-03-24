package z2;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class q00 extends f10 {
    private f10 OooO0o0;

    public q00(f10 f10Var) {
        if (f10Var == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.OooO0o0 = f10Var;
    }

    @Override // z2.f10
    public long OooO() {
        return this.OooO0o0.OooO();
    }

    @Override // z2.f10
    public f10 OooO00o() {
        return this.OooO0o0.OooO00o();
    }

    @Override // z2.f10
    public f10 OooO0O0() {
        return this.OooO0o0.OooO0O0();
    }

    @Override // z2.f10
    public long OooO0Oo() {
        return this.OooO0o0.OooO0Oo();
    }

    @Override // z2.f10
    public boolean OooO0o() {
        return this.OooO0o0.OooO0o();
    }

    @Override // z2.f10
    public f10 OooO0o0(long j) {
        return this.OooO0o0.OooO0o0(j);
    }

    @Override // z2.f10
    public void OooO0oO() throws IOException {
        this.OooO0o0.OooO0oO();
    }

    @Override // z2.f10
    public f10 OooO0oo(long j, TimeUnit timeUnit) {
        return this.OooO0o0.OooO0oo(j, timeUnit);
    }

    public final f10 OooOO0O() {
        return this.OooO0o0;
    }

    public final q00 OooOO0o(f10 f10Var) {
        if (f10Var == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.OooO0o0 = f10Var;
        return this;
    }
}
