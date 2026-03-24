package z2;

import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* JADX INFO: loaded from: classes2.dex */
public class ki extends gi {
    @Override // z2.gi
    public void OooO(String str) {
        MqRunner.getInstance().OooO0o0(str);
    }

    @Override // z2.gi
    public IRunner OooO00o() {
        return MqRunner.getInstance();
    }

    @Override // z2.gi
    public void OooO0O0(String str, String str2, String str3, OnElfCallback onElfCallback) {
        MqRunner.getInstance().OooO00o(str, str2, str3, onElfCallback);
    }

    @Override // z2.gi
    public void OooO0o(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // z2.gi
    public void OooO0oo(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        MqRunner.getInstance().OooO0oO(onSpecialMqCmdCallback);
    }

    public void OooOOO(String str) {
        MqRunner.getInstance().OooO0oo(str);
    }

    public void OooOOO0(String str, String str2, String str3) {
        MqRunner.getInstance().OooO00o(str, str2, str3, null);
    }
}
