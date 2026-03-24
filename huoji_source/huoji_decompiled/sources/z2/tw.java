package z2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface tw extends Cloneable {

    public interface OooO00o {
        tw OooO00o(qx qxVar);
    }

    void OooOO0(uw uwVar);

    void cancel();

    /* JADX INFO: renamed from: clone */
    tw mo15clone();

    sx execute() throws IOException;

    boolean isCanceled();

    boolean isExecuted();

    qx request();

    f10 timeout();
}
