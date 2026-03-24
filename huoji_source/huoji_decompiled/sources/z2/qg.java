package z2;

import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.inf.OnElfCallback;

/* JADX INFO: loaded from: classes2.dex */
public interface qg {
    void OooO00o(String str, String str2, String str3, OnElfCallback onElfCallback);

    void OooO0OO(int i, int i2, OnScreenShotCallback onScreenShotCallback);

    void OooO0o(int i, int i2);

    void OooO0o0(String str);

    void OooO0oO(OnSpecialMqCmdCallback onSpecialMqCmdCallback);

    void OooO0oo(String str);

    void OooOO0(OnMqScriptCallback onMqScriptCallback);
}
