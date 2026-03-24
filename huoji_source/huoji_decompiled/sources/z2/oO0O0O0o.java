package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO0O0O0o implements oO0o0000<File, ByteBuffer> {
    private static final String OooO00o = "ByteBufferFileLoader";

    public static final class OooO00o implements o0O0oo00<ByteBuffer> {
        private final File OoooOoO;

        public OooO00o(File file) {
            this.OoooOoO = file;
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<ByteBuffer> OooO00o() {
            return ByteBuffer.class;
        }

        @Override // z2.o0O0oo00
        public void OooO0O0() {
        }

        @Override // z2.o0O0oo00
        @NonNull
        public DataSource OooO0Oo() {
            return DataSource.LOCAL;
        }

        @Override // z2.o0O0oo00
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super ByteBuffer> oooO00o) {
            try {
                oooO00o.OooO0o(h2.OooO00o(this.OoooOoO));
            } catch (IOException e) {
                if (Log.isLoggable(oO0O0O0o.OooO00o, 3)) {
                    Log.d(oO0O0O0o.OooO00o, "Failed to obtain ByteBuffer for file", e);
                }
                oooO00o.OooO0OO(e);
            }
        }

        @Override // z2.o0O0oo00
        public void cancel() {
        }
    }

    public static class OooO0O0 implements oO0oO000<File, ByteBuffer> {
        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<File, ByteBuffer> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oO0O0O0o();
        }
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<ByteBuffer> OooO0O0(@NonNull File file, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(file), new OooO00o(file));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull File file) {
        return true;
    }
}
