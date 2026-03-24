package com.cyjh.mobileanjian.ipc.uip;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mqm.MQUipStub;

/* JADX INFO: loaded from: classes2.dex */
public class UisScriptRunner {
    private static UisScriptRunner OooO0O0;
    private static boolean OooO0OO;
    private MQUipStub OooO00o = new MQUipStub();

    public class OooO00o extends Thread {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ long OoooOoo;
        public final /* synthetic */ String Ooooo00;
        public final /* synthetic */ String Ooooo0o;
        public final /* synthetic */ String OooooO0;

        public OooO00o(String str, long j, String str2, String str3, String str4) {
            this.OoooOoO = str;
            this.OoooOoo = j;
            this.Ooooo00 = str2;
            this.Ooooo0o = str3;
            this.OooooO0 = str4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            boolean unused = UisScriptRunner.OooO0OO = true;
            UisScriptRunner.this.OooO00o.StartLoop(this.OoooOoO, this.OoooOoo, this.Ooooo00, this.Ooooo0o, this.OooooO0);
            boolean unused2 = UisScriptRunner.OooO0OO = false;
        }
    }

    private UisScriptRunner() {
    }

    private static void OooO0O0() {
        try {
            Thread.sleep(50L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static UisScriptRunner getInstance() {
        if (OooO0O0 == null) {
            OooO0O0 = new UisScriptRunner();
        }
        return OooO0O0;
    }

    public void startLoop(String str, String str2, String str3, long j, String str4) {
        if (OooO0OO) {
            stopLoop();
            while (OooO0OO) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        new OooO00o(str, j, str2, str3, str4).start();
    }

    public void stopLoop() {
        if (OooO0OO) {
            this.OooO00o.StopLoop();
            UipEventStub.hasEvent(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId("stop_id").setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_EXIT).build()).build().toByteString());
        }
    }
}
