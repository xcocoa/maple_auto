package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import z2.o0O0oo00;
import z2.oO0o0000;

/* JADX INFO: loaded from: classes.dex */
public class oO0O0<Data> implements oO0o0000<byte[], Data> {
    private final OooO0O0<Data> OooO00o;

    public static class OooO00o implements oO0oO000<byte[], ByteBuffer> {

        /* JADX INFO: renamed from: z2.oO0O0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class C0257OooO00o implements OooO0O0<ByteBuffer> {
            public C0257OooO00o() {
            }

            @Override // z2.oO0O0.OooO0O0
            public Class<ByteBuffer> OooO00o() {
                return ByteBuffer.class;
            }

            @Override // z2.oO0O0.OooO0O0
            /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
            public ByteBuffer OooO0O0(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<byte[], ByteBuffer> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oO0O0(new C0257OooO00o());
        }
    }

    public interface OooO0O0<Data> {
        Class<Data> OooO00o();

        Data OooO0O0(byte[] bArr);
    }

    public static class OooO0OO<Data> implements o0O0oo00<Data> {
        private final byte[] OoooOoO;
        private final OooO0O0<Data> OoooOoo;

        public OooO0OO(byte[] bArr, OooO0O0<Data> oooO0O0) {
            this.OoooOoO = bArr;
            this.OoooOoo = oooO0O0;
        }

        @Override // z2.o0O0oo00
        @NonNull
        public Class<Data> OooO00o() {
            return this.OoooOoo.OooO00o();
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
        public void OooO0o0(@NonNull Priority priority, @NonNull o0O0oo00.OooO00o<? super Data> oooO00o) {
            oooO00o.OooO0o(this.OoooOoo.OooO0O0(this.OoooOoO));
        }

        @Override // z2.o0O0oo00
        public void cancel() {
        }
    }

    public static class OooO0o implements oO0oO000<byte[], InputStream> {

        public class OooO00o implements OooO0O0<InputStream> {
            public OooO00o() {
            }

            @Override // z2.oO0O0.OooO0O0
            public Class<InputStream> OooO00o() {
                return InputStream.class;
            }

            @Override // z2.oO0O0.OooO0O0
            /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
            public InputStream OooO0O0(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // z2.oO0oO000
        public void OooO00o() {
        }

        @Override // z2.oO0oO000
        @NonNull
        public oO0o0000<byte[], InputStream> OooO0OO(@NonNull oOO00000 ooo00000) {
            return new oO0O0(new OooO00o());
        }
    }

    public oO0O0(OooO0O0<Data> oooO0O0) {
        this.OooO00o = oooO0O0;
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0o0000.OooO00o<Data> OooO0O0(@NonNull byte[] bArr, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new oO0o0000.OooO00o<>(new g2(bArr), new OooO0OO(bArr, this.OooO00o));
    }

    @Override // z2.oO0o0000
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull byte[] bArr) {
        return true;
    }
}
