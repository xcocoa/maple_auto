package com.anythink.expressad.exoplayer.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.anythink.expressad.exoplayer.k.af;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public c a;
    private final Context b;
    private final b c;
    private final BroadcastReceiver d;

    public final class a extends BroadcastReceiver {
        private a() {
        }

        public /* synthetic */ a(d dVar, byte b) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            c cVarA = c.a(intent);
            if (cVarA.equals(d.this.a)) {
                return;
            }
            d dVar = d.this;
            dVar.a = cVarA;
            b unused = dVar.c;
        }
    }

    public interface b {
        void a();
    }

    private d(Context context, b bVar) {
        this.b = (Context) com.anythink.expressad.exoplayer.k.a.a(context);
        this.c = (b) com.anythink.expressad.exoplayer.k.a.a(bVar);
        this.d = af.a >= 21 ? new a(this, (byte) 0) : null;
    }

    private c a() {
        BroadcastReceiver broadcastReceiver = this.d;
        c cVarA = c.a(broadcastReceiver == null ? null : this.b.registerReceiver(broadcastReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
        this.a = cVarA;
        return cVarA;
    }

    private void b() {
        BroadcastReceiver broadcastReceiver = this.d;
        if (broadcastReceiver != null) {
            this.b.unregisterReceiver(broadcastReceiver);
        }
    }
}
