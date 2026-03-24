package z2;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oOO0000<Data> implements oO0o0000<Integer, Data> {
    private static final String OooO0OO = "ResourceLoader";
    private final oO0o0000<Uri, Data> OooO00o;
    private final Resources OooO0O0;

    public static final class OooO00o implements oO0oO000<Integer, AssetFileDescriptor> {
        private final Resources OooO00o;

        public OooO00o(Resources resources) {
            this.OooO00o = resources;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        public oO0o0000<Integer, AssetFileDescriptor> OooO0OO(oOO00000 ooo00000) {
            return new oOO0000(this.OooO00o, ooo00000.OooO0Oo(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class OooO0O0 implements oO0oO000<Integer, ParcelFileDescriptor> {
        private final Resources OooO00o;

        public OooO0O0(Resources resources) {
            this.OooO00o = resources;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Integer, ParcelFileDescriptor> OooO0OO(oOO00000 ooo00000) {
            return new oOO0000(this.OooO00o, ooo00000.OooO0Oo(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class OooO0OO implements oO0oO000<Integer, InputStream> {
        private final Resources OooO00o;

        public OooO0OO(Resources resources) {
            this.OooO00o = resources;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Integer, InputStream> OooO0OO(oOO00000 ooo00000) {
            return new oOO0000(this.OooO00o, ooo00000.OooO0Oo(Uri.class, InputStream.class));
        }
    }

    public static class OooO0o implements oO0oO000<Integer, Uri> {
        private final Resources OooO00o;

        public OooO0o(Resources resources) {
            this.OooO00o = resources;
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<Integer, Uri> OooO0OO(oOO00000 ooo00000) {
            return new oOO0000(this.OooO00o, oOO00.OooO0OO());
        }
    }

    public oOO0000(Resources resources, oO0o0000<Uri, Data> oo0o0000) {
        this.OooO0O0 = resources;
        this.OooO00o = oo0o0000;
    }

    @Nullable
    private Uri OooO0Oo(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.OooO0O0.getResourcePackageName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.OooO0O0.getResourceTypeName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.OooO0O0.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (!Log.isLoggable(OooO0OO, 5)) {
                return null;
            }
            Log.w(OooO0OO, "Received invalid resource id: " + num, e);
            return null;
        }
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull Integer num, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        Uri uriOooO0Oo = OooO0Oo(num);
        if (uriOooO0Oo == null) {
            return null;
        }
        return this.OooO00o.OooO0O0(uriOooO0Oo, i, i2, o0o0ooo0);
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Integer num) {
        return true;
    }
}
