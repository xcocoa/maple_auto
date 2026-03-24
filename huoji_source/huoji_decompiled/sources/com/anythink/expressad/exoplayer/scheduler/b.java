package com.anythink.expressad.exoplayer.scheduler;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RequiresApi;
import com.anythink.expressad.exoplayer.k.af;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final String a = "RequirementsWatcher";
    private final Context b;
    private final c c;
    private final com.anythink.expressad.exoplayer.scheduler.a d;
    private C0129b e;
    private boolean f;
    private a g;

    @RequiresApi(api = 21)
    public final class a extends ConnectivityManager.NetworkCallback {
        private a() {
        }

        public /* synthetic */ a(b bVar, byte b) {
            this();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(Network network) {
            super.onAvailable(network);
            StringBuilder sb = new StringBuilder();
            sb.append(b.this);
            sb.append(" NetworkCallback.onAvailable");
            b.this.a(false);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            super.onLost(network);
            StringBuilder sb = new StringBuilder();
            sb.append(b.this);
            sb.append(" NetworkCallback.onLost");
            b.this.a(false);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.scheduler.b$b, reason: collision with other inner class name */
    public class C0129b extends BroadcastReceiver {
        private C0129b() {
        }

        public /* synthetic */ C0129b(b bVar, byte b) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(b.this);
            sb.append(" received ");
            sb.append(intent.getAction());
            b.this.a(false);
        }
    }

    public interface c {
        void a();

        void b();
    }

    private b(Context context, c cVar, com.anythink.expressad.exoplayer.scheduler.a aVar) {
        this.d = aVar;
        this.c = cVar;
        this.b = context.getApplicationContext();
        StringBuilder sb = new StringBuilder();
        sb.append(this);
        sb.append(" created");
    }

    private void a() {
        String str;
        com.anythink.expressad.exoplayer.k.a.a(Looper.myLooper());
        a(true);
        IntentFilter intentFilter = new IntentFilter();
        byte b = 0;
        if (this.d.a() != 0) {
            if (af.a >= 23) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.b.getSystemService("connectivity");
                NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(16).build();
                a aVar = new a(this, b);
                this.g = aVar;
                connectivityManager.registerNetworkCallback(networkRequestBuild, aVar);
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.d.b()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.d.c()) {
            if (af.a >= 23) {
                str = "android.os.action.DEVICE_IDLE_MODE_CHANGED";
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                str = "android.intent.action.SCREEN_OFF";
            }
            intentFilter.addAction(str);
        }
        C0129b c0129b = new C0129b(this, b);
        this.e = c0129b;
        this.b.registerReceiver(c0129b, intentFilter, null, new Handler());
        StringBuilder sb = new StringBuilder();
        sb.append(this);
        sb.append(" started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        boolean zA = this.d.a(this.b);
        if (z || zA != this.f) {
            this.f = zA;
        }
    }

    private void b() {
        this.b.unregisterReceiver(this.e);
        this.e = null;
        if (this.g != null && af.a >= 21) {
            ((ConnectivityManager) this.b.getSystemService("connectivity")).unregisterNetworkCallback(this.g);
            this.g = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this);
        sb.append(" stopped");
    }

    private com.anythink.expressad.exoplayer.scheduler.a c() {
        return this.d;
    }

    @TargetApi(23)
    private void d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.b.getSystemService("connectivity");
        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(16).build();
        a aVar = new a(this, (byte) 0);
        this.g = aVar;
        connectivityManager.registerNetworkCallback(networkRequestBuild, aVar);
    }

    private void e() {
        if (af.a >= 21) {
            ((ConnectivityManager) this.b.getSystemService("connectivity")).unregisterNetworkCallback(this.g);
            this.g = null;
        }
    }

    private static void f() {
    }

    private static /* synthetic */ void g() {
    }

    public final String toString() {
        return super.toString();
    }
}
