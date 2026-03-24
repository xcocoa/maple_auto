package z2;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class oe {
    private ByteBuffer OooO0O0() {
        int length = OooO00o().length;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[length + 4]);
        byteBufferWrap.putInt(length);
        byteBufferWrap.put(OooO00o());
        byteBufferWrap.flip();
        return byteBufferWrap;
    }

    public abstract byte[] OooO00o();
}
