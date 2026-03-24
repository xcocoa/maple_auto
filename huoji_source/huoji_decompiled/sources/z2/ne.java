package z2;

import com.cyjh.mobileanjian.ipc.share.proto.Ipc;

/* JADX INFO: loaded from: classes2.dex */
public final class ne extends oe {
    private Ipc.IpcMessage OooO00o;

    public ne(Ipc.IpcMessage ipcMessage) {
        this.OooO00o = null;
        this.OooO00o = ipcMessage;
    }

    public static final Ipc.IpcMessage OooO0OO(int i) {
        return Ipc.IpcMessage.newBuilder().setCmd(i).build();
    }

    @Override // z2.oe
    public final byte[] OooO00o() {
        Ipc.IpcMessage ipcMessage = this.OooO00o;
        if (ipcMessage == null) {
            return null;
        }
        return ipcMessage.toByteArray();
    }
}
