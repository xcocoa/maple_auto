package z2;

import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.inf.IRunner;

/* JADX INFO: loaded from: classes2.dex */
public interface rg extends IRunner {
    boolean a();

    OnScriptListener d();

    OnSpecialMqCmdCallback e();

    OnMqScriptCallback f();
}
