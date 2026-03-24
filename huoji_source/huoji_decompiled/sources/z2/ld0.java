package z2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import pl.droidsonroids.gif.GifIOException;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ld0 {

    public static final class OooO extends ld0 {
        private final ByteBuffer OooO00o;

        public OooO(@NonNull ByteBuffer byteBuffer) {
            super();
            this.OooO00o = byteBuffer;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws GifIOException {
            return new GifInfoHandle(this.OooO00o);
        }
    }

    public static class OooO0O0 extends ld0 {
        private final AssetFileDescriptor OooO00o;

        public OooO0O0(@NonNull AssetFileDescriptor assetFileDescriptor) {
            super();
            this.OooO00o = assetFileDescriptor;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws IOException {
            return new GifInfoHandle(this.OooO00o);
        }
    }

    public static final class OooO0OO extends ld0 {
        private final AssetManager OooO00o;
        private final String OooO0O0;

        public OooO0OO(@NonNull AssetManager assetManager, @NonNull String str) {
            super();
            this.OooO00o = assetManager;
            this.OooO0O0 = str;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws IOException {
            return new GifInfoHandle(this.OooO00o.openFd(this.OooO0O0));
        }
    }

    public static final class OooO0o extends ld0 {
        private final byte[] OooO00o;

        public OooO0o(@NonNull byte[] bArr) {
            super();
            this.OooO00o = bArr;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws GifIOException {
            return new GifInfoHandle(this.OooO00o);
        }
    }

    public static final class OooOO0 extends ld0 {
        private final FileDescriptor OooO00o;

        public OooOO0(@NonNull FileDescriptor fileDescriptor) {
            super();
            this.OooO00o = fileDescriptor;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws IOException {
            return new GifInfoHandle(this.OooO00o);
        }
    }

    public static final class OooOO0O extends ld0 {
        private final String OooO00o;

        public OooOO0O(@NonNull File file) {
            super();
            this.OooO00o = file.getPath();
        }

        public OooOO0O(@NonNull String str) {
            super();
            this.OooO00o = str;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws GifIOException {
            return new GifInfoHandle(this.OooO00o);
        }
    }

    public static class OooOOO extends ld0 {
        private final Resources OooO00o;
        private final int OooO0O0;

        public OooOOO(@NonNull Resources resources, @DrawableRes @RawRes int i) {
            super();
            this.OooO00o = resources;
            this.OooO0O0 = i;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws IOException {
            return new GifInfoHandle(this.OooO00o.openRawResourceFd(this.OooO0O0));
        }
    }

    public static final class OooOOO0 extends ld0 {
        private final InputStream OooO00o;

        public OooOOO0(@NonNull InputStream inputStream) {
            super();
            this.OooO00o = inputStream;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws IOException {
            return new GifInfoHandle(this.OooO00o);
        }
    }

    public static final class OooOOOO extends ld0 {
        private final ContentResolver OooO00o;
        private final Uri OooO0O0;

        public OooOOOO(@Nullable ContentResolver contentResolver, @NonNull Uri uri) {
            super();
            this.OooO00o = contentResolver;
            this.OooO0O0 = uri;
        }

        @Override // z2.ld0
        public GifInfoHandle OooO0OO() throws IOException {
            return GifInfoHandle.OooOoO0(this.OooO00o, this.OooO0O0);
        }
    }

    private ld0() {
    }

    public final ed0 OooO00o(ed0 ed0Var, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z, hd0 hd0Var) throws IOException {
        return new ed0(OooO0O0(hd0Var), ed0Var, scheduledThreadPoolExecutor, z);
    }

    public final GifInfoHandle OooO0O0(@NonNull hd0 hd0Var) throws IOException {
        GifInfoHandle gifInfoHandleOooO0OO = OooO0OO();
        gifInfoHandleOooO0OO.Oooo0OO(hd0Var.OooO00o, hd0Var.OooO0O0);
        return gifInfoHandleOooO0OO;
    }

    public abstract GifInfoHandle OooO0OO() throws IOException;
}
