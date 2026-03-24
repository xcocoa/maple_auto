package z2;

import com.cyjh.mobileanjian.ipc.share.proto.Ipc;

/* JADX INFO: loaded from: classes.dex */
public final class o00O implements o00O0OO {
    private dg OooO00o;

    @Override // z2.o00O0OO
    public final void OooO00o(dg dgVar) {
        this.OooO00o = dgVar;
    }

    @Override // z2.o00O0OO
    public final void OooO0O0(Ipc.IpcMessage ipcMessage) {
        dg dgVar = this.OooO00o;
        if (dgVar != null) {
            dgVar.OooOOOo(ipcMessage);
        }
    }
}
