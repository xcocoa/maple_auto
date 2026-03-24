package com.cyjh.mq.sdk;

import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRequestCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.google.protobuf.ByteString;
import z2.fe;
import z2.fe.OooO0O0;
import z2.fe.OooO0o;
import z2.pg;
import z2.qg;
import z2.rg;

/* JADX INFO: loaded from: classes2.dex */
public class MqRunnerLite implements qg, rg {
    private pg OooO00o;
    private fe OooO0O0;
    public OnScriptListener OooO0OO;
    public OnElfCallback OooO0Oo;
    public boolean OooO0o;
    public OnRequestCallback OooO0o0;
    public OnSpecialMqCmdCallback OooO0oO;
    public OnMqScriptCallback OooO0oo;

    public static class OooO0O0 {
        private static final MqRunnerLite OooO00o = new MqRunnerLite(0);

        private OooO0O0() {
        }
    }

    private MqRunnerLite() {
        this.OooO0Oo = null;
        this.OooO0o0 = null;
        this.OooO0o = true;
        this.OooO0O0 = new fe();
    }

    public /* synthetic */ MqRunnerLite(byte b) {
        this();
    }

    public static synchronized MqRunnerLite getInstance() {
        return OooO0O0.OooO00o;
    }

    @Override // z2.sg
    public final void OooO(ByteString byteString) {
    }

    @Override // z2.qg
    public void OooO00o(String str, String str2, String str3, OnElfCallback onElfCallback) {
        this.OooO0Oo = onElfCallback;
        fe feVar = this.OooO0O0;
        try {
            feVar.OooO0oo.put(feVar.new OooO0O0(2, "", str, str2, str3, 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // z2.sg
    public final void OooO0O0(ByteString byteString) {
    }

    @Override // z2.qg
    public void OooO0OO(int i, int i2, OnScreenShotCallback onScreenShotCallback) {
    }

    @Override // z2.sg
    public final void OooO0Oo(ByteString byteString) {
    }

    @Override // z2.qg
    public void OooO0o(int i, int i2) {
        fe feVar = this.OooO0O0;
        try {
            feVar.OooO0oo.put(feVar.new OooO0O0(3, "", "", "", "", i, i2, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // z2.qg
    public void OooO0o0(String str) {
        fe feVar = this.OooO0O0;
        try {
            feVar.OooO0oo.put(feVar.new OooO0O0(4, "", "", "", "", 0, 0, str));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // z2.qg
    public void OooO0oO(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        this.OooO0oO = onSpecialMqCmdCallback;
    }

    @Override // z2.qg
    public void OooO0oo(String str) {
        fe feVar = this.OooO0O0;
        try {
            if (!feVar.OooO0OO) {
                fe.OooO0o oooO0o = feVar.new OooO0o("ScriptRunnerLite_Request");
                feVar.OooO0Oo = oooO0o;
                oooO0o.start();
            }
            feVar.OooO0oo.put(feVar.new OooO0O0(1, str, "", "", "", 0, 0, ""));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // z2.qg
    public void OooOO0(OnMqScriptCallback onMqScriptCallback) {
        this.OooO0oo = onMqScriptCallback;
    }

    @Override // z2.sg
    public final void a(String str) {
    }

    @Override // z2.rg
    public final boolean a() {
        return this.OooO0o;
    }

    @Override // z2.sg
    public final OnRequestCallback b() {
        return this.OooO0o0;
    }

    @Override // z2.sg
    public final OnElfCallback c() {
        return this.OooO0Oo;
    }

    @Override // z2.rg
    public final OnScriptListener d() {
        return this.OooO0OO;
    }

    @Override // z2.rg
    public final OnSpecialMqCmdCallback e() {
        return this.OooO0oO;
    }

    @Override // z2.rg
    public final OnMqScriptCallback f() {
        return this.OooO0oo;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public boolean isScriptStarted() {
        fe feVar = this.OooO0O0;
        if (feVar == null) {
            return false;
        }
        return feVar.OooOOo();
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void notifyRotationStatus() {
        this.OooO0O0.OooOOo0();
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void pause() {
        fe feVar = this.OooO0O0;
        if (feVar != null) {
            feVar.OooOOO().Pause();
        }
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void resume() {
        fe feVar = this.OooO0O0;
        if (feVar != null) {
            feVar.OooOOO().Resume();
        }
    }

    public void setImageCrop(boolean z, int i, int i2, int i3, int i4) {
        this.OooO0O0.OooOOOo().SetImageCrop(z, i, i2, i3, i4);
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setOnScriptListener(OnScriptListener onScriptListener) {
        this.OooO0OO = onScriptListener;
        fe feVar = this.OooO0O0;
        if (feVar != null && onScriptListener != null) {
            feVar.OooO0oO = onScriptListener;
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setScript(pg pgVar) {
        this.OooO00o = pgVar;
        fe feVar = this.OooO0O0;
        if (feVar != null && pgVar != null) {
            feVar.OooO0o0 = pgVar;
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void start() {
        fe feVar = this.OooO0O0;
        if (feVar != null) {
            if (!feVar.OooO00o) {
                new fe.OooO0OO(feVar, (byte) 0).start();
                return;
            }
            OnScriptListener onScriptListener = feVar.OooO0oO;
            if (onScriptListener != null) {
                onScriptListener.onScriptIsRunning();
            }
        }
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void stop() {
        fe feVar = this.OooO0O0;
        if (feVar != null) {
            new StringBuilder("stop: ").append(feVar.getClass().getSimpleName());
            feVar.OooOOO().Stop();
        }
    }
}
