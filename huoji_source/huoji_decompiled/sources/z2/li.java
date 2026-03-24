package z2;

import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.MqRunnerLite;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* JADX INFO: loaded from: classes2.dex */
public class li extends gi {
    @Override // z2.gi
    public void OooO(String str) {
    }

    @Override // z2.gi
    public IRunner OooO00o() {
        return MqRunnerLite.getInstance();
    }

    @Override // z2.gi
    public void OooO0O0(String str, String str2, String str3, OnElfCallback onElfCallback) {
        MqRunner.getInstance().OooO00o(str, str2, str3, onElfCallback);
        MqRunnerLite.getInstance().OooO00o(str, str2, str3, onElfCallback);
    }

    @Override // z2.gi
    public void OooO0o(boolean z, int i, int i2, int i3, int i4) {
        MqRunnerLite.getInstance().setImageCrop(z, i, i2, i3, i4);
    }

    @Override // z2.gi
    public void OooO0oo(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        MqRunnerLite.getInstance().OooO0oO(onSpecialMqCmdCallback);
    }

    public void OooOOO0(String str) {
        MqRunnerLite.getInstance().OooO0oo(str);
    }
}
