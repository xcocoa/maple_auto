package z2;

import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* JADX INFO: loaded from: classes2.dex */
public abstract class gi {
    public abstract void OooO(String str);

    public abstract IRunner OooO00o();

    public abstract void OooO0O0(String str, String str2, String str3, OnElfCallback onElfCallback);

    public boolean OooO0OO() {
        return OooO00o().isScriptStarted();
    }

    public void OooO0Oo() {
        OooO00o().pause();
    }

    public abstract void OooO0o(boolean z, int i, int i2, int i3, int i4);

    public void OooO0o0() {
        OooO00o().resume();
    }

    public void OooO0oO(OnScriptListener onScriptListener) {
        OooO00o().setOnScriptListener(onScriptListener);
    }

    public abstract void OooO0oo(OnSpecialMqCmdCallback onSpecialMqCmdCallback);

    public void OooOO0(pg pgVar) {
        OooO00o().setScript(pgVar);
    }

    public void OooOO0O() {
        OooO00o().start();
    }

    public void OooOO0o() {
        OooO00o().stop();
    }
}
