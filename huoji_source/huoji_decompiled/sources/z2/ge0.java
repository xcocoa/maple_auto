package z2;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import z2.ee0;

/* JADX INFO: loaded from: classes2.dex */
public class ge0 extends ee0.OooO0O0 {
    private final he0 OooOOO0;

    public ge0(boolean z, he0 he0Var) throws IOException {
        this.OooO00o = z;
        this.OooOOO0 = he0Var;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.OooO0O0 = he0Var.Ooooooo(byteBufferAllocate, 16L);
        this.OooO0OO = he0Var.o0OoOo0(byteBufferAllocate, 32L);
        this.OooO0Oo = he0Var.o0OoOo0(byteBufferAllocate, 40L);
        this.OooO0o0 = he0Var.Ooooooo(byteBufferAllocate, 54L);
        this.OooO0o = he0Var.Ooooooo(byteBufferAllocate, 56L);
        this.OooO0oO = he0Var.Ooooooo(byteBufferAllocate, 58L);
        this.OooO0oo = he0Var.Ooooooo(byteBufferAllocate, 60L);
        this.OooO = he0Var.Ooooooo(byteBufferAllocate, 62L);
    }

    @Override // z2.ee0.OooO0O0
    public ee0.OooO00o OooO00o(long j, int i) throws IOException {
        return new de0(this.OooOOO0, this, j, i);
    }

    @Override // z2.ee0.OooO0O0
    public ee0.OooO0OO OooO0O0(long j) throws IOException {
        return new je0(this.OooOOO0, this, j);
    }

    @Override // z2.ee0.OooO0O0
    public ee0.OooO0o OooO0OO(int i) throws IOException {
        return new le0(this.OooOOO0, this, i);
    }
}
