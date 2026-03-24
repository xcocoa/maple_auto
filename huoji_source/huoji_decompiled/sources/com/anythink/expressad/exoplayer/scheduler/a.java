package com.anythink.expressad.exoplayer.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.PowerManager;
import com.anythink.expressad.exoplayer.k.af;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    private static final int f = 8;
    private static final int g = 16;
    private static final int h = 7;
    private static final String i = "Requirements";
    private static final String[] j = null;
    private final int k;

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.scheduler.a$a, reason: collision with other inner class name */
    @Retention(RetentionPolicy.SOURCE)
    public @interface InterfaceC0128a {
    }

    public a(int i2) {
        this.k = i2;
    }

    private a(int i2, boolean z, boolean z3) {
        this(i2 | (z ? 16 : 0) | (z3 ? 8 : 0));
    }

    private static boolean a(ConnectivityManager connectivityManager) {
        if (af.a < 23) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        return !(networkCapabilities == null || !networkCapabilities.hasCapability(16));
    }

    private static boolean a(ConnectivityManager connectivityManager, NetworkInfo networkInfo) {
        if (af.a >= 16) {
            return connectivityManager.isActiveNetworkMetered();
        }
        int type = networkInfo.getType();
        return (type == 1 || type == 7 || type == 9) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(Context context) {
        boolean z;
        boolean zIsActiveNetworkMetered;
        int i2 = this.k & 7;
        if (i2 == 0) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return false;
        }
        int i3 = af.a;
        if (i3 >= 23) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                z = networkCapabilities == null || !networkCapabilities.hasCapability(16) ? false : true;
            }
        }
        if (!z) {
            return false;
        }
        if (i2 == 1) {
            return true;
        }
        if (i2 == 3) {
            return !activeNetworkInfo.isRoaming();
        }
        if (i3 >= 16) {
            zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
        } else {
            int type = activeNetworkInfo.getType();
            zIsActiveNetworkMetered = (type == 1 || type == 7 || type == 9) ? false : true;
        }
        if (i2 == 2) {
            return !zIsActiveNetworkMetered;
        }
        if (i2 == 4) {
            return zIsActiveNetworkMetered;
        }
        throw new IllegalStateException();
    }

    private boolean c(Context context) {
        if (!b()) {
            return true;
        }
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return false;
        }
        int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    private boolean d(Context context) {
        if (!c()) {
            return true;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        int i2 = af.a;
        return i2 >= 23 ? !powerManager.isDeviceIdleMode() : i2 >= 20 ? !powerManager.isInteractive() : !powerManager.isScreenOn();
    }

    private static void e() {
    }

    public final int a() {
        return this.k & 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00d5 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(Context context) {
        boolean zIsActiveNetworkMetered;
        boolean z;
        Intent intentRegisterReceiver;
        int intExtra;
        boolean z3;
        int i2 = this.k & 7;
        if (i2 != 0) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                zIsActiveNetworkMetered = false;
            } else {
                int i3 = af.a;
                if (i3 >= 23) {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null) {
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                        z = networkCapabilities == null || !networkCapabilities.hasCapability(16) ? false : true;
                        if (z) {
                            if (i2 != 1) {
                                if (i2 != 3) {
                                    if (i3 >= 16) {
                                        zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
                                    } else {
                                        int type = activeNetworkInfo.getType();
                                        zIsActiveNetworkMetered = (type == 1 || type == 7 || type == 9) ? false : true;
                                    }
                                    if (i2 == 2) {
                                        if (!zIsActiveNetworkMetered) {
                                        }
                                    } else if (i2 != 4) {
                                        throw new IllegalStateException();
                                    }
                                } else if (!activeNetworkInfo.isRoaming()) {
                                    zIsActiveNetworkMetered = true;
                                }
                            }
                        }
                    }
                    if (z) {
                    }
                }
            }
        }
        if (zIsActiveNetworkMetered) {
            if (!b() || ((intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) != null && ((intExtra = intentRegisterReceiver.getIntExtra("status", -1)) == 2 || intExtra == 5))) {
                if (c()) {
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    int i4 = af.a;
                    if (i4 < 23 ? i4 < 20 ? powerManager.isScreenOn() : powerManager.isInteractive() : powerManager.isDeviceIdleMode()) {
                        z3 = false;
                    }
                    if (!z3) {
                    }
                } else {
                    z3 = true;
                    if (!z3) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean b() {
        return (this.k & 16) != 0;
    }

    public final boolean c() {
        return (this.k & 8) != 0;
    }

    public final int d() {
        return this.k;
    }

    public final String toString() {
        return super.toString();
    }
}
