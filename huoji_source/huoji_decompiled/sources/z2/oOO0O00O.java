package z2;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.InputStream;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO0O00O implements oO0o0000<Uri, InputStream> {
    private final Context OooO00o;

    public static class OooO00o implements oO0oO000<Uri, InputStream> {
        private final Context OooO00o;

        public OooO00o(Context context) {
            this.OooO00o = context;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oOO0O00O(this.OooO00o);
        }
    }

    public oOO0O00O(Context context) {
        this.OooO00o = context.getApplicationContext();
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<InputStream> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        if (o0OO0o.OooO0Oo(i, i2)) {
            return new oO0o0000.OooO00o<>(new g2(uri), o0OO0oO0.OooO0o(this.OooO00o, uri));
        }
        return null;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri) {
        return o0OO0o.OooO00o(uri);
    }
}
