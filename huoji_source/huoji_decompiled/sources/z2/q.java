package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import z2.o0O00OO;

/* JADX INFO: loaded from: classes.dex */
public final class q implements o0O00OO.OooO00o {
    private final oO000o00 OooO00o;

    @Nullable
    private final oO0OOo0o OooO0O0;

    public q(oO000o00 oo000o00) {
        this(oo000o00, null);
    }

    public q(oO000o00 oo000o00, @Nullable oO0OOo0o oo0ooo0o) {
        this.OooO00o = oo000o00;
        this.OooO0O0 = oo0ooo0o;
    }

    @Override // z2.o0O00OO.OooO00o
    @NonNull
    public Bitmap OooO00o(int i, int i2, @NonNull Bitmap.Config config) {
        return this.OooO00o.OooO0oO(i, i2, config);
    }

    @Override // z2.o0O00OO.OooO00o
    @NonNull
    public int[] OooO0O0(int i) {
        oO0OOo0o oo0ooo0o = this.OooO0O0;
        return oo0ooo0o == null ? new int[i] : (int[]) oo0ooo0o.OooO0o0(i, int[].class);
    }

    @Override // z2.o0O00OO.OooO00o
    public void OooO0OO(@NonNull Bitmap bitmap) {
        this.OooO00o.OooO0Oo(bitmap);
    }

    @Override // z2.o0O00OO.OooO00o
    public void OooO0Oo(@NonNull byte[] bArr) {
        oO0OOo0o oo0ooo0o = this.OooO0O0;
        if (oo0ooo0o == null) {
            return;
        }
        oo0ooo0o.put(bArr);
    }

    @Override // z2.o0O00OO.OooO00o
    public void OooO0o(@NonNull int[] iArr) {
        oO0OOo0o oo0ooo0o = this.OooO0O0;
        if (oo0ooo0o == null) {
            return;
        }
        oo0ooo0o.put(iArr);
    }

    @Override // z2.o0O00OO.OooO00o
    @NonNull
    public byte[] OooO0o0(int i) {
        oO0OOo0o oo0ooo0o = this.OooO0O0;
        return oo0ooo0o == null ? new byte[i] : (byte[]) oo0ooo0o.OooO0o0(i, byte[].class);
    }
}
