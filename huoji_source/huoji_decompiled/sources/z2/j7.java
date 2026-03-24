package z2;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import com.cyjh.elfin.entity.ElfinFloatViewEvent;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class j7 {
    private static final j7 OooO0Oo = new j7();
    private OooO0O0 OooO00o = new OooO0O0();
    private Messenger OooO0O0 = new Messenger(this.OooO00o);
    private Messenger OooO0OO;

    public static class OooO0O0 extends Handler {
        private OooO0O0() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            l10 l10VarOooO0o;
            ElfinFloatViewEvent elfinFloatViewEvent;
            super.handleMessage(message);
            int i = message.getData().getInt(d8.OooO00o);
            j7.OooO0O0().OooO0oo(message.replyTo);
            if (i == 2) {
                l10VarOooO0o = l10.OooO0o();
                elfinFloatViewEvent = new ElfinFloatViewEvent(10101);
            } else {
                if (i != 3) {
                    if (i == 4) {
                        l10.OooO0o().OooOOOO(new ElfinFloatViewEvent(4));
                        return;
                    } else {
                        if (i == 7) {
                            new f8().executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
                            return;
                        }
                        return;
                    }
                }
                l10VarOooO0o = l10.OooO0o();
                elfinFloatViewEvent = new ElfinFloatViewEvent(10103);
            }
            l10VarOooO0o.OooOOOO(elfinFloatViewEvent);
        }
    }

    public static j7 OooO0O0() {
        return OooO0Oo;
    }

    public void OooO(OooO0O0 oooO0O0) {
        this.OooO00o = oooO0O0;
    }

    public Messenger OooO00o() {
        return this.OooO0OO;
    }

    public OooO0O0 OooO0OO() {
        return this.OooO00o;
    }

    public Messenger OooO0Oo() {
        return this.OooO0O0;
    }

    public void OooO0o(int i) {
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(d8.OooO0OO, i);
        messageObtain.setData(bundle);
        try {
            this.OooO0OO.send(messageObtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0o0(int i) {
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(d8.OooO00o, i);
        messageObtain.setData(bundle);
        try {
            this.OooO0OO.send(messageObtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0oO(int i, int i2, String str) {
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(d8.OooO00o, i);
        bundle.putString(d8.OooO0O0, str);
        bundle.putInt(d8.OooO0OO, i2);
        messageObtain.setData(bundle);
        try {
            this.OooO0OO.send(messageObtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void OooO0oo(Messenger messenger) {
        this.OooO0OO = messenger;
    }

    public void OooOO0(Messenger messenger) {
        this.OooO0O0 = messenger;
    }
}
