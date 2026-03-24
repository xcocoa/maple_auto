package z2;

import javax.annotation.Nullable;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public interface vx {

    public interface OooO00o {
        vx OooO0O0(qx qxVar, wx wxVar);
    }

    boolean OooO00o(ByteString byteString);

    boolean OooO0O0(String str);

    boolean OooO0o(int i, @Nullable String str);

    long OooO0oO();

    void cancel();

    qx request();
}
