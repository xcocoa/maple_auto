package z2;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import z2.oO0OO00o;

/* JADX INFO: loaded from: classes.dex */
public class oOo00ooO extends o2<o0O0O0Oo, oO0Ooooo<?>> implements oO0OO00o {
    private oO0OO00o.OooO00o OooO0o0;

    public oOo00ooO(long j) {
        super(j);
    }

    @Override // z2.oO0OO00o
    @SuppressLint({"InlinedApi"})
    public void OooO00o(int i) {
        if (i >= 40) {
            OooO0O0();
        } else if (i >= 20 || i == 15) {
            OooOOo0(OooO0o0() / 2);
        }
    }

    @Override // z2.oO0OO00o
    @Nullable
    public /* bridge */ /* synthetic */ oO0Ooooo OooO0o(@NonNull o0O0O0Oo o0o0o0oo, @Nullable oO0Ooooo oo0ooooo) {
        return (oO0Ooooo) super.OooOOOO(o0o0o0oo, oo0ooooo);
    }

    @Override // z2.oO0OO00o
    @Nullable
    public /* bridge */ /* synthetic */ oO0Ooooo OooO0oO(@NonNull o0O0O0Oo o0o0o0oo) {
        return (oO0Ooooo) super.OooOOOo(o0o0o0oo);
    }

    @Override // z2.oO0OO00o
    public void OooO0oo(@NonNull oO0OO00o.OooO00o oooO00o) {
        this.OooO0o0 = oooO00o;
    }

    @Override // z2.o2
    /* JADX INFO: renamed from: OooOOo, reason: merged with bridge method [inline-methods] */
    public int OooOOO0(@Nullable oO0Ooooo<?> oo0ooooo) {
        return oo0ooooo == null ? super.OooOOO0(null) : oo0ooooo.getSize();
    }

    @Override // z2.o2
    /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
    public void OooOOO(@NonNull o0O0O0Oo o0o0o0oo, @Nullable oO0Ooooo<?> oo0ooooo) {
        oO0OO00o.OooO00o oooO00o = this.OooO0o0;
        if (oooO00o == null || oo0ooooo == null) {
            return;
        }
        oooO00o.OooO00o(oo0ooooo);
    }
}
