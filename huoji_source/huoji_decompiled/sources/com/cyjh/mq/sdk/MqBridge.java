package com.cyjh.mq.sdk;

import android.app.Application;
import com.cyjh.mobileanjian.ipc.interfaces.OnEngineStartCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.RootProgressListener;
import z2.ag;
import z2.le;
import z2.o00O0O0;
import z2.o00O0O00;
import z2.oo0o0O0;

/* JADX INFO: loaded from: classes2.dex */
public class MqBridge {
    public static void exit() {
        ag.OooO00o();
    }

    public static void init(Application application, String str, String str2, String str3, OnKeyEventListener onKeyEventListener, RootProgressListener rootProgressListener, OnEngineStartCallback onEngineStartCallback) {
        ag.OooO0O0(application, onKeyEventListener, rootProgressListener, onEngineStartCallback);
        ag.OooO0OO(str3);
        le.OooO0Oo(application, str, str2);
    }

    public static void setPaddleOcrV2Dir(String str) {
        o00O0O00.OooO0OO = str;
        o00O0O0 o00o0o0 = o00O0O0.OooO0O0.OooO00o;
        if (o00o0o0.OooO00o == null) {
            o00o0o0.OooO00o = new oo0o0O0();
        }
        o00o0o0.OooO00o.OooO00o.a();
    }
}
