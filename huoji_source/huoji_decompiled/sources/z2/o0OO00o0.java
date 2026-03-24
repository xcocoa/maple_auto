package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import z2.o0O;

/* JADX INFO: loaded from: classes.dex */
public final class o0OO00o0 implements o0O<InputStream> {
    private static final int OooO0O0 = 5242880;
    private final RecyclableBufferedInputStream OooO00o;

    public static final class OooO00o implements o0O.OooO00o<InputStream> {
        private final oO0OOo0o OooO00o;

        public OooO00o(oO0OOo0o oo0ooo0o) {
            this.OooO00o = oo0ooo0o;
        }

        @Override // z2.o0O.OooO00o
        @NonNull
        public Class<InputStream> OooO00o() {
            return InputStream.class;
        }

        @Override // z2.o0O.OooO00o
        @NonNull
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public o0O<InputStream> OooO0O0(InputStream inputStream) {
            return new o0OO00o0(inputStream, this.OooO00o);
        }
    }

    public o0OO00o0(InputStream inputStream, oO0OOo0o oo0ooo0o) {
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, oo0ooo0o);
        this.OooO00o = recyclableBufferedInputStream;
        recyclableBufferedInputStream.mark(OooO0O0);
    }

    @Override // z2.o0O
    public void OooO0O0() {
        this.OooO00o.Oooooo0();
    }

    @Override // z2.o0O
    @NonNull
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public InputStream OooO00o() throws IOException {
        this.OooO00o.reset();
        return this.OooO00o;
    }
}
