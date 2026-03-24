package z2;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import z2.ee0;

/* JADX INFO: loaded from: classes2.dex */
public class le0 extends ee0.OooO0o {
    public le0(he0 he0Var, ee0.OooO0O0 oooO0O0, int i) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(oooO0O0.OooO00o ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.OooO00o = he0Var.o00O0O(byteBufferAllocate, oooO0O0.OooO0Oo + ((long) (i * oooO0O0.OooO0oO)) + 44);
    }
}
