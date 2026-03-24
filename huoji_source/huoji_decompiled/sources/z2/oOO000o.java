package z2;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.InputStream;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO000o<Data> implements oO0o0000<String, Data> {
    private final oO0o0000<Uri, Data> OooO00o;

    public static final class OooO00o implements oO0oO000<String, AssetFileDescriptor> {
        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        public oO0o0000<String, AssetFileDescriptor> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oOO000o(ooo00000.OooO0Oo(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class OooO0O0 implements oO0oO000<String, ParcelFileDescriptor> {
        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<String, ParcelFileDescriptor> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oOO000o(ooo00000.OooO0Oo(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class OooO0OO implements oO0oO000<String, InputStream> {
        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<String, InputStream> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oOO000o(ooo00000.OooO0Oo(Uri.class, InputStream.class));
        }
    }

    public oOO000o(oO0o0000<Uri, Data> oo0o0000) {
        this.OooO00o = oo0o0000;
    }

    private static Uri OooO0o(String str) {
        return Uri.fromFile(new File(str));
    }

    @Nullable
    private static Uri OooO0o0(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) != '/') {
            Uri uri = Uri.parse(str);
            if (uri.getScheme() != null) {
                return uri;
            }
        }
        return OooO0o(str);
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull String str, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        Uri uriOooO0o0 = OooO0o0(str);
        if (uriOooO0o0 == null || !this.OooO00o.OooO00o(uriOooO0o0)) {
            return null;
        }
        return this.OooO00o.OooO0O0(uriOooO0o0, i, i2, o0o0ooo0);
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull String str) {
        return true;
    }
}
