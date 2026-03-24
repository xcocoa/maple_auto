package com.anythink.china.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.anythink.china.a.a.g;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private static final String a = "OaidAidlUtil";
    private static final String b = "com.huawei.hwid";
    private static final String c = "com.uodis.opendevice.OPENIDS_SERVICE";
    private Context d;
    private ServiceConnection e;
    private g f;
    private com.anythink.china.a.a g;

    public final class a implements ServiceConnection {
        private a() {
        }

        public /* synthetic */ a(h hVar, byte b) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.anythink.china.a.a aVar;
            h.this.f = g.a.a(iBinder);
            try {
                if (h.this.f != null) {
                    try {
                        if (h.this.g != null) {
                            h.this.g.a(h.this.f.a(), h.this.f.b());
                        }
                    } catch (RemoteException e) {
                        if (h.this.g != null) {
                            aVar = h.this.g;
                            e.getMessage();
                            aVar.a();
                        }
                    } catch (Exception e2) {
                        if (h.this.g != null) {
                            aVar = h.this.g;
                            e2.getMessage();
                            aVar.a();
                        }
                    }
                }
            } finally {
                h.c(h.this);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            h.this.f = null;
        }
    }

    public h(Context context) {
        this.d = context;
    }

    private boolean a() {
        byte b2 = 0;
        if (this.d == null) {
            return false;
        }
        this.e = new a(this, b2);
        Intent intent = new Intent(c);
        intent.setPackage(b);
        return this.d.bindService(intent, this.e, 1);
    }

    private void b() {
        ServiceConnection serviceConnection;
        Context context = this.d;
        if (context == null || (serviceConnection = this.e) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
        this.f = null;
        this.d = null;
        this.g = null;
    }

    public static /* synthetic */ void c(h hVar) {
        ServiceConnection serviceConnection;
        Context context = hVar.d;
        if (context == null || (serviceConnection = hVar.e) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (Throwable unused) {
        }
        hVar.f = null;
        hVar.d = null;
        hVar.g = null;
    }

    public final void a(com.anythink.china.a.a aVar) {
        this.g = aVar;
        if (this.d != null) {
            this.e = new a(this, (byte) 0);
            Intent intent = new Intent(c);
            intent.setPackage(b);
            this.d.bindService(intent, this.e, 1);
        }
    }
}
