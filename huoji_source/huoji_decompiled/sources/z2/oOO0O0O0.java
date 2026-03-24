package z2;

import androidx.annotation.NonNull;
import java.io.InputStream;
import java.net.URL;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO0O0O0 implements oO0o0000<URL, InputStream> {
    private final oO0o0000<oOo0o0oO, InputStream> OooO00o;

    public static class OooO00o implements oO0oO000<URL, InputStream> {
        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<URL, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oOO0O0O0(ooo00000.OooO0Oo(oOo0o0oO.class, InputStream.class));
        }
    }

    public oOO0O0O0(oO0o0000<oOo0o0oO, InputStream> oo0o0000) {
        this.OooO00o = oo0o0000;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<InputStream> OooO0O0(@NonNull URL url, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return this.OooO00o.OooO0O0(new oOo0o0oO(url), i, i2, o0o0ooo0);
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull URL url) {
        return true;
    }
}
