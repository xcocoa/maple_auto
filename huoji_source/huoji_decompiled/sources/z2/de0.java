package z2;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import z2.ee0;

/* JADX INFO: loaded from: classes2.dex */
public class de0 extends ee0.OooO00o {
    public de0(he0 he0Var, ee0.OooO0O0 oooO0O0, long j, int i) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(oooO0O0.OooO00o ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + ((long) (i * 16));
        this.OooO00o = he0Var.o0OoOo0(byteBufferAllocate, j2);
        this.OooO0O0 = he0Var.o0OoOo0(byteBufferAllocate, j2 + 8);
    }
}
