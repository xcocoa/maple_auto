package z2;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.InputStream;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO0O00oO<Data> implements oO0o0000<Uri, Data> {
    private static final String OooO0OO = "android_asset";
    private static final String OooO0Oo = "file:///android_asset/";
    private static final int OooO0o0 = 22;
    private final AssetManager OooO00o;
    private final OooO00o<Data> OooO0O0;

    public interface OooO00o<Data> {
        o0O0oo00<Data> OooO0O0(AssetManager assetManager, String str);
    }

    public static class OooO0O0 implements oO0oO000<Uri, ParcelFileDescriptor>, OooO00o<ParcelFileDescriptor> {
        private final AssetManager OooO00o;

        public OooO0O0(AssetManager assetManager) {
            this.OooO00o = assetManager;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0O00oO.OooO00o
        public o0O0oo00<ParcelFileDescriptor> OooO0O0(AssetManager assetManager, String str) {
            return new oo0oO0(assetManager, str);
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, ParcelFileDescriptor> OooO0OO(oOO00000 ooo00000) {
            return new oO0O00oO(this.OooO00o, this);
        }
    }

    public static class OooO0OO implements oO0oO000<Uri, InputStream>, OooO00o<InputStream> {
        private final AssetManager OooO00o;

        public OooO0OO(AssetManager assetManager) {
            this.OooO00o = assetManager;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0O00oO.OooO00o
        public o0O0oo00<InputStream> OooO0O0(AssetManager assetManager, String str) {
            return new o0OO0O0(assetManager, str);
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Uri, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oO0O00oO(this.OooO00o, this);
        }
    }

    public oO0O00oO(AssetManager assetManager, OooO00o<Data> oooO00o) {
        this.OooO00o = assetManager;
        this.OooO0O0 = oooO00o;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(uri), this.OooO0O0.OooO0O0(this.OooO00o, uri.toString().substring(OooO0o0)));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }
}
