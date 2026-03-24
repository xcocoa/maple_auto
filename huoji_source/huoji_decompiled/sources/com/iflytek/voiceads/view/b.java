package com.iflytek.voiceads.view;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.utils.a;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b extends Handler {
    private a.c a;
    private a b;

    public interface a {
        void a();

        void a(Message message);

        void b();

        void b(Message message);

        void c();

        void c(Message message);
    }

    /* JADX INFO: renamed from: com.iflytek.voiceads.view.b$b, reason: collision with other inner class name */
    public enum EnumC0186b {
        max,
        normal,
        min
    }

    public b(Looper looper, a aVar) {
        super(looper);
        this.a = a.c.init;
        this.b = aVar;
    }

    public synchronized a.c a() {
        return this.a;
    }

    public void a(int i) {
        a(obtainMessage(i), EnumC0186b.normal, 0);
    }

    public void a(int i, int i2) {
        a(obtainMessage(i, Integer.valueOf(i2)), EnumC0186b.normal, 0);
    }

    public void a(Message message, int i) {
        a(message, EnumC0186b.normal, i);
    }

    protected void a(Message message, EnumC0186b enumC0186b, int i) {
        if (a() == a.c.exit) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Ad status is exit, invalid request!");
            return;
        }
        switch (message.what) {
            case 0:
                a(a.c.init);
                break;
            case 1:
                a(a.c.request);
                break;
            case 2:
                a(a.c.response);
                break;
            case 3:
                a(a.c.show);
                break;
            case 5:
                a(a.c.end);
                break;
            case 7:
                a(a.c.exit);
                break;
        }
        if (EnumC0186b.max == enumC0186b) {
            sendMessageAtFrontOfQueue(message);
        } else {
            sendMessageDelayed(message, i);
        }
    }

    public synchronized void a(a.c cVar) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "setStatus: pre=" + this.a + ", cur=" + cVar);
        if (this.a == a.c.exit) {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "Invalid setting of ad status, current status is already exit!");
        } else {
            this.a = cVar;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            switch (message.what) {
                case 1:
                    this.b.a(message);
                    break;
                case 2:
                    this.b.a();
                    break;
                case 3:
                    this.b.b();
                    break;
                case 4:
                    this.b.b(message);
                    break;
                case 5:
                    this.b.c(message);
                    break;
                case 7:
                    this.b.c();
                    break;
            }
        } catch (Exception e) {
            a(a.c.end);
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "process handle:" + e.getMessage());
        }
    }
}
