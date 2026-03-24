package com.cyjh.mobileanjian.ipc.stuff;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import com.anythink.expressad.foundation.d.r;

/* JADX INFO: loaded from: classes2.dex */
public class AnalyseResultWrapper {
    private static Context OooO00o;
    private static Handler OooO0O0 = new OooO00o();

    public class OooO00o extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            String string = message.getData().getString(r.ah);
            int i = message.getData().getInt("status");
            Log.i("MyApp", string);
            if (i == 1) {
                Toast.makeText(AnalyseResultWrapper.OooO00o, string, 0).show();
            }
        }
    }

    private static void OooO0O0(String str, int i) {
        Handler handler = OooO0O0;
        if (handler == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putString(r.ah, str);
        bundle.putInt("status", i);
        messageObtainMessage.setData(bundle);
        OooO0O0.sendMessage(messageObtainMessage);
    }
}
