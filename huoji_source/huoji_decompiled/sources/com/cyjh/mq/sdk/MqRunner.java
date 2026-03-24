package com.cyjh.mq.sdk;

import android.widget.Toast;
import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRequestCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.cyjh.mqm.MQLanguageStub;
import com.cyjh.mqsdk.R;
import z2.ag;
import z2.dg;
import z2.he;
import z2.ne;
import z2.og;
import z2.qg;

/* JADX INFO: loaded from: classes2.dex */
public class MqRunner extends og implements qg {
    private OnMqScriptCallback OooOOO;
    private OnElfCallback OooOOO0;
    private int OooOOOo;
    private int OooOOo;
    private int OooOOo0;
    private int OooOOoo;
    private OnScreenShotCallback OooOo00;
    private String OooO = "";
    private String OooOO0 = "";
    private String OooOO0O = "";
    private String OooOO0o = "";
    private boolean OooOOOO = false;

    public static class OooO00o {
        private static final MqRunner OooO00o = new MqRunner();

        private OooO00o() {
        }
    }

    public static synchronized MqRunner getInstance() {
        return OooO00o.OooO00o;
    }

    @Override // z2.qg
    public void OooO00o(String str, String str2, String str3, OnElfCallback onElfCallback) {
        this.OooOO0 = str;
        this.OooOO0O = str2;
        this.OooOO0o = str3;
        this.OooOOO0 = onElfCallback;
        MQLanguageStub.InitElf(ag.OooO0Oo(), str, str2, str3);
        if (this.OooO0o0) {
            this.OooO00o.OooOo0 = onElfCallback;
            OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(80).addArg2(str).addArg2(str2).addArg2(str3).build());
        }
    }

    @Override // z2.qg
    public void OooO0OO(int i, int i2, OnScreenShotCallback onScreenShotCallback) {
        dg dgVar = this.OooO00o;
        if (dgVar == null) {
            this.OooOOo = i;
            this.OooOOoo = i2;
            this.OooOo00 = onScreenShotCallback;
        } else {
            dgVar.OooO = true;
            dgVar.OooOOOO = onScreenShotCallback;
            this.OooO00o.OooOOOo(Ipc.IpcMessage.newBuilder().setCmd(24).addArg1(i).build());
        }
    }

    @Override // z2.qg
    public void OooO0o(int i, int i2) {
        this.OooOOOo = i;
        this.OooOOo0 = i2;
        if (this.OooO0o0) {
            OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(84).addArg1(i).addArg1(i2).build());
        }
    }

    @Override // z2.qg
    public void OooO0o0(String str) {
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(82).addArg2(str).build());
    }

    @Override // z2.qg
    public void OooO0oO(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        if (this.OooO0o0) {
            this.OooO00o.OooOo0o = onSpecialMqCmdCallback;
        }
    }

    @Override // z2.qg
    public void OooO0oo(String str) {
        MQLanguageStub.InitHost(str);
        if (this.OooO0o0) {
            OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(83).addArg2(str).build());
        } else {
            this.OooO = str;
        }
    }

    @Override // z2.qg
    public void OooOO0(OnMqScriptCallback onMqScriptCallback) {
        this.OooOOO = onMqScriptCallback;
        dg dgVar = this.OooO00o;
        if (dgVar != null) {
            dgVar.OooOo00 = onMqScriptCallback;
        }
    }

    @Override // z2.sg
    public final OnRequestCallback b() {
        return null;
    }

    @Override // z2.sg
    public final OnElfCallback c() {
        return null;
    }

    @Override // z2.og, com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onConnected(dg dgVar) {
        super.onConnected(dgVar);
        dgVar.OooOo0 = this.OooOOO0;
        OooOO0(this.OooOOO);
        OooOO0o(Ipc.IpcMessage.newBuilder().setCmd(80).addArg2(this.OooOO0).addArg2(this.OooOO0O).addArg2(this.OooOO0o).build());
        OooO0o(this.OooOOOo, this.OooOOo0);
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onCrash(he heVar) {
        this.OooO0o0 = false;
        OooOO0O();
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onExit() {
        this.OooO0o0 = false;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void start() {
        if (!this.OooO0o0) {
            Toast.makeText(ag.OooO0o0(), ag.OooO0o0().getString(R.string.toast_script_engine_failed_start), 1).show();
        } else {
            notifyRotationStatus();
            OooOO0o(ne.OooO0OO(1));
        }
    }
}
