package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    private static final String a = "UMSysLocation";
    private static final int c = 10000;
    private LocationManager b;
    private Context e;
    private i g;
    private boolean d = false;
    private LocationListener f = new LocationListener() { // from class: com.umeng.commonsdk.proguard.g.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            com.umeng.commonsdk.statistics.common.e.a(g.a, "onLocationChanged");
            try {
                g.this.d = false;
                if (g.this.g != null) {
                    g.this.g.a(location);
                }
            } catch (Throwable th) {
                e.a(g.this.e, th);
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    };

    private g() {
    }

    public g(Context context) {
        if (context == null) {
            MLog.e("Context参数不能为null");
        } else {
            this.e = context.getApplicationContext();
            this.b = (LocationManager) context.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        }
    }

    public synchronized void a() {
        com.umeng.commonsdk.statistics.common.e.a(a, "destroy");
        try {
        } catch (Throwable th) {
            e.a(this.e, th);
        }
        if (UMUtils.checkPermission(this.e, "android.permission.ACCESS_COARSE_LOCATION") && UMUtils.checkPermission(this.e, "android.permission.ACCESS_FINE_LOCATION")) {
            LocationManager locationManager = this.b;
            if (locationManager != null) {
                LocationListener locationListener = this.f;
                if (locationListener != null) {
                    try {
                        locationManager.removeUpdates(locationListener);
                    } catch (Throwable unused) {
                    }
                }
                this.b = null;
            }
        }
    }

    public synchronized void a(i iVar) {
        Context context;
        LocationManager locationManager;
        final Timer timer;
        TimerTask timerTask;
        com.umeng.commonsdk.statistics.common.e.a(a, "getSystemLocation");
        if (iVar != null && (context = this.e) != null) {
            this.g = iVar;
            if (!UMUtils.checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION") || !UMUtils.checkPermission(this.e, "android.permission.ACCESS_FINE_LOCATION")) {
                i iVar2 = this.g;
                if (iVar2 != null) {
                    iVar2.a(null);
                }
                return;
            }
            try {
                this.d = true;
                locationManager = this.b;
            } catch (Throwable th) {
                com.umeng.commonsdk.statistics.common.e.a(a, "e is " + th);
                if (iVar != null) {
                    try {
                        iVar.a(null);
                    } catch (Throwable th2) {
                        e.a(this.e, th2);
                    }
                }
                e.a(this.e, th);
            }
            if (locationManager == null || !locationManager.isProviderEnabled("network")) {
                if (this.b.isProviderEnabled("gps")) {
                    com.umeng.commonsdk.statistics.common.e.a(a, "GPS_PROVIDER");
                    this.b.requestLocationUpdates("gps", 1000L, 0.0f, this.f);
                    timer = new Timer();
                    timerTask = new TimerTask() { // from class: com.umeng.commonsdk.proguard.g.3
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            try {
                                com.umeng.commonsdk.statistics.common.e.a(g.a, "GPS_PROVIDER runing");
                                Timer timer2 = timer;
                                if (timer2 != null) {
                                    timer2.cancel();
                                }
                                if (g.this.d) {
                                    if (g.this.b != null && g.this.f != null) {
                                        try {
                                            g.this.b.removeUpdates(g.this.f);
                                        } catch (Throwable unused) {
                                        }
                                    }
                                    if (g.this.g != null) {
                                        g.this.g.a(null);
                                    }
                                }
                            } catch (Throwable th3) {
                                e.a(g.this.e, th3);
                            }
                        }
                    };
                }
            }
            com.umeng.commonsdk.statistics.common.e.a(a, "NETWORK_PROVIDER");
            this.b.requestLocationUpdates("network", 1000L, 0.0f, this.f);
            timer = new Timer();
            timerTask = new TimerTask() { // from class: com.umeng.commonsdk.proguard.g.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        com.umeng.commonsdk.statistics.common.e.a(g.a, "NETWORK_PROVIDER runing");
                        Timer timer2 = timer;
                        if (timer2 != null) {
                            timer2.cancel();
                        }
                        if (g.this.d) {
                            if (g.this.b != null && g.this.f != null) {
                                try {
                                    g.this.b.removeUpdates(g.this.f);
                                } catch (Throwable unused) {
                                }
                            }
                            if (g.this.g != null) {
                                g.this.g.a(null);
                            }
                        }
                    } catch (Throwable th3) {
                        e.a(g.this.e, th3);
                    }
                }
            };
            timer.schedule(timerTask, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
        }
    }
}
