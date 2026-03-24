package z2;

import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class iy {
    private final FileChannel OooO00o;

    public iy(FileChannel fileChannel) {
        this.OooO00o = fileChannel;
    }

    public void OooO00o(long j, j00 j00Var, long j2) throws IOException {
        if (j2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j2 > 0) {
            long jTransferTo = this.OooO00o.transferTo(j, j2, j00Var);
            j += jTransferTo;
            j2 -= jTransferTo;
        }
    }

    public void OooO0O0(long j, j00 j00Var, long j2) throws IOException {
        if (j2 < 0 || j2 > j00Var.o00000O0()) {
            throw new IndexOutOfBoundsException();
        }
        long j3 = j;
        long j4 = j2;
        while (j4 > 0) {
            long jTransferFrom = this.OooO00o.transferFrom(j00Var, j3, j4);
            j3 += jTransferFrom;
            j4 -= jTransferFrom;
        }
    }
}
