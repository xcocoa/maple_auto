package z2;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import z2.o0O;

/* JADX INFO: loaded from: classes.dex */
public class e implements o0O<ByteBuffer> {
    private final ByteBuffer OooO00o;

    public static class OooO00o implements o0O.OooO00o<ByteBuffer> {
        @Override // z2.o0O.OooO00o
        @NonNull
        public Class<ByteBuffer> OooO00o() {
            return ByteBuffer.class;
        }

        @Override // z2.o0O.OooO00o
        @NonNull
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public o0O<ByteBuffer> OooO0O0(ByteBuffer byteBuffer) {
            return new e(byteBuffer);
        }
    }

    public e(ByteBuffer byteBuffer) {
        this.OooO00o = byteBuffer;
    }

    @Override // z2.o0O
    public void OooO0O0() {
    }

    @Override // z2.o0O
    @NonNull
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public ByteBuffer OooO00o() {
        this.OooO00o.position(0);
        return this.OooO00o;
    }
}
