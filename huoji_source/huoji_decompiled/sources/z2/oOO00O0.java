package z2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO00O0<Data> implements oO0o0000<Uri, Data> {
    private static final Set<String> OooO0O0 = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));
    private final OooO0OO<Data> OooO00o;

    public static final class OooO00o implements oO0oO000<Uri, AssetFileDescriptor>, OooO0OO<AssetFileDescriptor> {
        private final ContentResolver OooO00o;

        public OooO00o(ContentResolver contentResolver) {
            this.OooO00o = contentResolver;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oOO00O0.OooO0OO
        public o0O0oo00<AssetFileDescriptor> OooO0O0(Uri uri) {
            return new o0O0o00O(this.OooO00o, uri);
        }

        @Override // z2.oO0oO000
        public oO0o0000<Uri, AssetFileDescriptor> OooO0OO(oOO00000 ooo00000) {
            return new oOO00O0(this);
        }
    }

    public static class OooO0O0 implements oO0oO000<Uri, ParcelFileDescriptor>, OooO0OO<ParcelFileDescriptor> {
        private final ContentResolver OooO00o;

        public OooO0O0(ContentResolver contentResolver) {
            this.OooO00o = contentResolver;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oOO00O0.OooO0OO
        public o0O0oo00<ParcelFileDescriptor> OooO0O0(Uri uri) {
            return new oo0ooO(this.OooO00o, uri);
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, ParcelFileDescriptor> OooO0OO(oOO00000 ooo00000) {
            return new oOO00O0(this);
        }
    }

    public interface OooO0OO<Data> {
        o0O0oo00<Data> OooO0O0(Uri uri);
    }

    public static class OooO0o implements oO0oO000<Uri, InputStream>, OooO0OO<InputStream> {
        private final ContentResolver OooO00o;

        public OooO0o(ContentResolver contentResolver) {
            this.OooO00o = contentResolver;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oOO00O0.OooO0OO
        public o0O0oo00<InputStream> OooO0O0(Uri uri) {
            return new o0OOooO0(this.OooO00o, uri);
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oOO00O0(this);
        }
    }

    public oOO00O0(OooO0OO<Data> oooO0OO) {
        this.OooO00o = oooO0OO;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(uri), this.OooO00o.OooO0O0(uri));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri) {
        return OooO0O0.contains(uri.getScheme());
    }
}
