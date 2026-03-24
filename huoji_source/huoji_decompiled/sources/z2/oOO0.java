package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO0 implements oO0o0000<oOo0o0oO, InputStream> {
    public static final o0O0OO0<Integer> OooO0O0 = o0O0OO0.OooO0oO("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    @Nullable
    private final oO0Oo0o0<oOo0o0oO, oOo0o0oO> OooO00o;

    public static class OooO00o implements oO0oO000<oOo0o0oO, InputStream> {
        private final oO0Oo0o0<oOo0o0oO, oOo0o0oO> OooO00o = new oO0Oo0o0<>(500);

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<oOo0o0oO, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oOO0(this.OooO00o);
        }
    }

    public oOO0() {
        this(null);
    }

    public oOO0(@Nullable oO0Oo0o0<oOo0o0oO, oOo0o0oO> oo0oo0o0) {
        this.OooO00o = oo0oo0o0;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<InputStream> OooO0O0(@NonNull oOo0o0oO ooo0o0oo, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        oO0Oo0o0<oOo0o0oO, oOo0o0oO> oo0oo0o0 = this.OooO00o;
        if (oo0oo0o0 != null) {
            oOo0o0oO ooo0o0ooOooO0O0 = oo0oo0o0.OooO0O0(ooo0o0oo, 0, 0);
            if (ooo0o0ooOooO0O0 == null) {
                this.OooO00o.OooO0OO(ooo0o0oo, 0, 0, ooo0o0oo);
            } else {
                ooo0o0oo = ooo0o0ooOooO0O0;
            }
        }
        return new oO0o0000.OooO00o<>(ooo0o0oo, new o0OO00OO(ooo0o0oo, ((Integer) o0o0ooo0.OooO0OO(OooO0O0)).intValue()));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull oOo0o0oO ooo0o0oo) {
        return true;
    }
}
