package z2;

import androidx.annotation.NonNull;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class oO0000Oo<Z> implements oO0Ooooo<Z> {
    private final boolean OoooOoO;
    private final boolean OoooOoo;
    private final oO0Ooooo<Z> Ooooo00;
    private OooO00o Ooooo0o;
    private o0O0O0Oo OooooO0;
    private int OooooOO;
    private boolean OooooOo;

    public interface OooO00o {
        void OooO0Oo(o0O0O0Oo o0o0o0oo, oO0000Oo<?> oo0000oo);
    }

    public oO0000Oo(oO0Ooooo<Z> oo0ooooo, boolean z, boolean z3) {
        this.Ooooo00 = (oO0Ooooo) r2.OooO0Oo(oo0ooooo);
        this.OoooOoO = z;
        this.OoooOoo = z3;
    }

    public synchronized void OooO00o() {
        if (this.OooooOo) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.OooooOO++;
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<Z> OooO0O0() {
        return this.Ooooo00.OooO0O0();
    }

    public oO0Ooooo<Z> OooO0OO() {
        return this.Ooooo00;
    }

    public boolean OooO0Oo() {
        return this.OoooOoO;
    }

    public synchronized void OooO0o(o0O0O0Oo o0o0o0oo, OooO00o oooO00o) {
        this.OooooO0 = o0o0o0oo;
        this.Ooooo0o = oooO00o;
    }

    public void OooO0o0() {
        synchronized (this.Ooooo0o) {
            synchronized (this) {
                int i = this.OooooOO;
                if (i <= 0) {
                    throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
                }
                int i2 = i - 1;
                this.OooooOO = i2;
                if (i2 == 0) {
                    this.Ooooo0o.OooO0Oo(this.OooooO0, this);
                }
            }
        }
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Z get() {
        return this.Ooooo00.get();
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return this.Ooooo00.getSize();
    }

    @Override // z2.oO0Ooooo
    public synchronized void recycle() {
        if (this.OooooOO > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.OooooOo) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.OooooOo = true;
        if (this.OoooOoo) {
            this.Ooooo00.recycle();
        }
    }

    public synchronized String toString() {
        return "EngineResource{isCacheable=" + this.OoooOoO + ", listener=" + this.Ooooo0o + ", key=" + this.OooooO0 + ", acquired=" + this.OooooOO + ", isRecycled=" + this.OooooOo + ", resource=" + this.Ooooo00 + MessageFormatter.DELIM_STOP;
    }
}
