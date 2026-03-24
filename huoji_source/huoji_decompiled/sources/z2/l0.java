package z2;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import z2.i0;

/* JADX INFO: loaded from: classes.dex */
public class l0 implements j0 {
    private static final String OooO00o = "ConnectivityMonitor";
    private static final String OooO0O0 = "android.permission.ACCESS_NETWORK_STATE";

    @Override // z2.j0
    @NonNull
    public i0 OooO00o(@NonNull Context context, @NonNull i0.OooO00o oooO00o) {
        boolean z = ContextCompat.checkSelfPermission(context, OooO0O0) == 0;
        if (Log.isLoggable(OooO00o, 3)) {
            Log.d(OooO00o, z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z ? new k0(context, oooO00o) : new q0();
    }
}
