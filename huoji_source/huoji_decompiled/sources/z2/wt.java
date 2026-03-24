package z2;

import com.hlzn.socketclient.pbmsg.MessageProtobuf;

/* JADX INFO: loaded from: classes2.dex */
public class wt {
    private eu OooO00o;

    public void OooO00o(MessageProtobuf.Heartbeat heartbeat) {
        eu euVar = this.OooO00o;
        if (euVar == null) {
            return;
        }
        euVar.OooO0OO(heartbeat);
    }

    public void OooO0O0(eu euVar) {
        this.OooO00o = euVar;
    }
}
