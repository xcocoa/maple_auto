package z2;

import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO0O000 implements oO0o0000<Uri, InputStream> {
    private static final Set<String> OooO0O0 = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));
    private final oO0o0000<oOo0o0oO, InputStream> OooO00o;

    public static class OooO00o implements oO0oO000<Uri, InputStream> {
        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oOO0O000(ooo00000.OooO0Oo(oOo0o0oO.class, InputStream.class));
        }
    }

    public oOO0O000(oO0o0000<oOo0o0oO, InputStream> oo0o0000) {
        this.OooO00o = oo0o0000;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<InputStream> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return this.OooO00o.OooO0O0(new oOo0o0oO(uri.toString()), i, i2, o0o0ooo0);
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri) {
        return OooO0O0.contains(uri.getScheme());
    }
}
