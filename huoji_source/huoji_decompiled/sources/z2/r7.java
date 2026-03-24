package z2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService;
import java.util.concurrent.Executors;
import z2.ad;

/* JADX INFO: loaded from: classes.dex */
public class r7 {
    private static final r7 OooO0o = new r7();
    private static final String OooO0o0 = "z2.r7";
    private Messenger OooO00o;
    private OooO0O0 OooO0OO = new OooO0O0();
    private Messenger OooO0Oo = new Messenger(this.OooO0OO);
    private ServiceConnection OooO0O0 = new OooO00o();

    public class OooO00o implements ServiceConnection {
        public OooO00o() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            r7.this.OooO00o = new Messenger(iBinder);
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putInt(d8.OooO00o, 30000);
            messageObtain.setData(bundle);
            messageObtain.replyTo = r7.this.OooO0Oo;
            try {
                r7.this.OooO00o.send(messageObtain);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static class OooO0O0 extends Handler {

        public class OooO00o implements ad.OooO00o {
            public OooO00o() {
            }

            @Override // z2.ad.OooO00o
            public void OooO00o(int i, String str) {
                String unused = r7.OooO0o0;
                String str2 = "doSpecialFuction --> uploadInstanceData onFailure message=" + str;
            }

            @Override // z2.ad.OooO00o
            public void OooO0O0(String str) {
                String unused = r7.OooO0o0;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Script scriptOooO0oO;
            super.handleMessage(message);
            Bundle data = message.getData();
            int i = data.getInt(d8.OooO00o);
            int i2 = data.getInt(d8.OooO0OO);
            if (1 == i) {
                dh.OooOOOO();
            } else if (i == 4) {
                dh.OooOOO();
            }
            String string = data.getString(d8.OooO0O0);
            if (i2 == 1002) {
                dh.OooO0o0(i == 6 ? 0 : -1, string);
                return;
            }
            if (i2 == 1001) {
                dh.OooO0Oo(i == 6 ? 0 : -1, string);
                return;
            }
            if (i2 == 1003) {
                new g8().executeOnExecutor(Executors.newCachedThreadPool(), string);
                return;
            }
            if (i2 == 1101) {
                String unused = r7.OooO0o0;
                l10.OooO0o().OooOOOO(new eh(10101));
            } else if (i2 == 1004 && c9.OooO0oo() && (scriptOooO0oO = b7.OooO0Oo().OooO0oO()) != null) {
                ad.OooO0o().OooOO0(AppContext.OooO00o(), scriptOooO0oO.getId(), string, new OooO00o());
            }
        }
    }

    public static r7 OooO0o() {
        return OooO0o;
    }

    public void OooO0o0(Context context) {
        Intent intent = new Intent(context, (Class<?>) FloatingWindowService.class);
        ServiceConnection serviceConnection = this.OooO0O0;
        if (serviceConnection != null) {
            context.bindService(intent, serviceConnection, 1);
        }
    }

    public void OooO0oO(int i) {
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(d8.OooO00o, i);
        messageObtain.setData(bundle);
        messageObtain.replyTo = this.OooO0Oo;
        try {
            this.OooO00o.send(messageObtain);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void OooO0oo(Context context) {
        context.unbindService(this.OooO0O0);
        this.OooO0OO = null;
        this.OooO0Oo = null;
        this.OooO00o = null;
    }
}
