package z2;

import java.io.IOException;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public interface mz {
    public static final mz OooO00o = new OooO00o();

    public class OooO00o implements mz {
        @Override // z2.mz
        public boolean OooO00o(int i, List<dz> list) {
            return true;
        }

        @Override // z2.mz
        public boolean OooO0O0(int i, List<dz> list, boolean z) {
            return true;
        }

        @Override // z2.mz
        public void OooO0OO(int i, ErrorCode errorCode) {
        }

        @Override // z2.mz
        public boolean OooO0Oo(int i, l00 l00Var, int i2, boolean z) throws IOException {
            l00Var.skip(i2);
            return true;
        }
    }

    boolean OooO00o(int i, List<dz> list);

    boolean OooO0O0(int i, List<dz> list, boolean z);

    void OooO0OO(int i, ErrorCode errorCode);

    boolean OooO0Oo(int i, l00 l00Var, int i2, boolean z) throws IOException;
}
