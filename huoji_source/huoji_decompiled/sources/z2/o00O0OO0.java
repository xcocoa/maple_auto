package z2;

import android.content.Context;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import z2.o00O0O0;

/* JADX INFO: loaded from: classes.dex */
public final class o00O0OO0 {
    public o00O0OOO OooO00o = new o00OO000();

    private void OooO00o(Context context) {
        o00O0OOO o00o0ooo = this.OooO00o;
        if (o00o0ooo != null) {
            o00O0O0.OooO0O0.OooO00o.OooO00o().OooO00o(Ipc.IpcMessage.newBuilder().setCmd(288).addArg2(o00OO.OooO00o(o00o0ooo.a(context))).build());
        }
    }
}
