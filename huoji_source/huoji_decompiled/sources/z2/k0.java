package z2;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import z2.i0;

/* JADX INFO: loaded from: classes.dex */
public final class k0 implements i0 {
    private static final String OooooOO = "ConnectivityMonitor";
    private final Context OoooOoO;
    public final i0.OooO00o OoooOoo;
    public boolean Ooooo00;
    private boolean Ooooo0o;
    private final BroadcastReceiver OooooO0 = new OooO00o();

    public class OooO00o extends BroadcastReceiver {
        public OooO00o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            k0 k0Var = k0.this;
            boolean z = k0Var.Ooooo00;
            k0Var.Ooooo00 = k0Var.OooO00o(context);
            if (z != k0.this.Ooooo00) {
                if (Log.isLoggable(k0.OooooOO, 3)) {
                    Log.d(k0.OooooOO, "connectivity changed, isConnected: " + k0.this.Ooooo00);
                }
                k0 k0Var2 = k0.this;
                k0Var2.OoooOoo.OooO00o(k0Var2.Ooooo00);
            }
        }
    }

    public k0(@NonNull Context context, @NonNull i0.OooO00o oooO00o) {
        this.OoooOoO = context.getApplicationContext();
        this.OoooOoo = oooO00o;
    }

    private void OooO0O0() {
        if (this.Ooooo0o) {
            return;
        }
        this.Ooooo00 = OooO00o(this.OoooOoO);
        try {
            this.OoooOoO.registerReceiver(this.OooooO0, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.Ooooo0o = true;
        } catch (SecurityException e) {
            if (Log.isLoggable(OooooOO, 5)) {
                Log.w(OooooOO, "Failed to register", e);
            }
        }
    }

    private void OooO0OO() {
        if (this.Ooooo0o) {
            this.OoooOoO.unregisterReceiver(this.OooooO0);
            this.Ooooo0o = false;
        }
    }

    @SuppressLint({"MissingPermission"})
    public boolean OooO00o(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) r2.OooO0Oo((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (Log.isLoggable(OooooOO, 5)) {
                Log.w(OooooOO, "Failed to determine connectivity status when connectivity changed", e);
            }
            return true;
        }
    }

    @Override // z2.p0
    public void onDestroy() {
    }

    @Override // z2.p0
    public void onStart() {
        OooO0O0();
    }

    @Override // z2.p0
    public void onStop() {
        OooO0OO();
    }
}
