package z2;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import java.io.IOException;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class jd0 {
    private final GifInfoHandle OooO00o;

    public jd0(ld0 ld0Var, @Nullable hd0 hd0Var) throws IOException {
        hd0Var = hd0Var == null ? new hd0() : hd0Var;
        GifInfoHandle gifInfoHandleOooO0OO = ld0Var.OooO0OO();
        this.OooO00o = gifInfoHandleOooO0OO;
        gifInfoHandleOooO0OO.Oooo0OO(hd0Var.OooO00o, hd0Var.OooO0O0);
        gifInfoHandleOooO0OO.OooOo00();
    }

    public void OooO() {
        GifInfoHandle gifInfoHandle = this.OooO00o;
        if (gifInfoHandle != null) {
            gifInfoHandle.OooOoOO();
        }
    }

    public int OooO00o() {
        return this.OooO00o.OooO0Oo();
    }

    public int OooO0O0() {
        return this.OooO00o.OooO0oO();
    }

    public int OooO0OO(@IntRange(from = 0) int i) {
        return this.OooO00o.OooO0oo(i);
    }

    public int OooO0Oo() {
        return this.OooO00o.OooO();
    }

    public int OooO0o() {
        return this.OooO00o.OooOOo0();
    }

    public int OooO0o0() {
        return this.OooO00o.OooOOO();
    }

    public void OooO0oO(int i, int i2) {
        this.OooO00o.OooOOo(i, i2);
    }

    public void OooO0oo(int i, int i2) {
        this.OooO00o.OooOOoo(i, i2);
    }

    public void OooOO0(@IntRange(from = 0) int i) {
        this.OooO00o.Oooo00o(i);
    }

    public void OooOO0O(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.OooO00o.Oooo0o0(f);
    }

    public void OooOO0o() {
        this.OooO00o.Oooo0o();
    }

    public void OooOOO0() {
        this.OooO00o.Oooo0oO();
    }

    public final void finalize() throws Throwable {
        try {
            OooO();
        } finally {
            super.finalize();
        }
    }
}
