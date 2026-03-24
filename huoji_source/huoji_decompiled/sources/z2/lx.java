package z2;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface lx {

    public interface OooO00o {
        OooO00o OooO00o(int i, TimeUnit timeUnit);

        int OooO0O0();

        int OooO0OO();

        OooO00o OooO0Oo(int i, TimeUnit timeUnit);

        @Nullable
        yw OooO0o();

        sx OooO0o0(qx qxVar) throws IOException;

        OooO00o OooO0oO(int i, TimeUnit timeUnit);

        int OooO0oo();

        tw call();

        qx request();
    }

    sx intercept(OooO00o oooO00o) throws IOException;
}
