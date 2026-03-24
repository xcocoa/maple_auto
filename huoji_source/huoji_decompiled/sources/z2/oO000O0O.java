package z2;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import z2.v2;

/* JADX INFO: loaded from: classes.dex */
public final class oO000O0O<Z> implements oO0Ooooo<Z>, v2.OooOO0 {
    private static final Pools.Pool<oO000O0O<?>> OooooO0 = v2.OooO0o0(20, new OooO00o());
    private final x2 OoooOoO = x2.OooO00o();
    private oO0Ooooo<Z> OoooOoo;
    private boolean Ooooo00;
    private boolean Ooooo0o;

    public class OooO00o implements v2.OooO0o<oO000O0O<?>> {
        @Override // z2.v2.OooO0o
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public oO000O0O<?> OooO00o() {
            return new oO000O0O<>();
        }
    }

    private void OooO00o(oO0Ooooo<Z> oo0ooooo) {
        this.Ooooo0o = false;
        this.Ooooo00 = true;
        this.OoooOoo = oo0ooooo;
    }

    @NonNull
    public static <Z> oO000O0O<Z> OooO0OO(oO0Ooooo<Z> oo0ooooo) {
        oO000O0O<Z> oo000o0o = (oO000O0O) r2.OooO0Oo(OooooO0.acquire());
        oo000o0o.OooO00o(oo0ooooo);
        return oo000o0o;
    }

    private void OooO0Oo() {
        this.OoooOoo = null;
        OooooO0.release(this);
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<Z> OooO0O0() {
        return this.OoooOoo.OooO0O0();
    }

    public synchronized void OooO0o0() {
        this.OoooOoO.OooO0OO();
        if (!this.Ooooo00) {
            throw new IllegalStateException("Already unlocked");
        }
        this.Ooooo00 = false;
        if (this.Ooooo0o) {
            recycle();
        }
    }

    @Override // z2.v2.OooOO0
    @NonNull
    public x2 OooO0oO() {
        return this.OoooOoO;
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Z get() {
        return this.OoooOoo.get();
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return this.OoooOoo.getSize();
    }

    @Override // z2.oO0Ooooo
    public synchronized void recycle() {
        this.OoooOoO.OooO0OO();
        this.Ooooo0o = true;
        if (!this.Ooooo00) {
            this.OoooOoo.recycle();
            OooO0Oo();
        }
    }
}
