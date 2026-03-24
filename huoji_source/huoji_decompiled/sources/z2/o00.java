package z2;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.squareup.picasso.Utils;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class o00 extends o000OO0O<Location, o00> {
    private LocationManager OoooOoO;
    private OooO00o OoooooO;
    private OooO00o Ooooooo;
    private long o0OoOo0;
    private long OoooOoo = 30000;
    private long Ooooo00 = 1000;
    private float Ooooo0o = 10.0f;
    private float OooooO0 = 1000.0f;
    private int OooooOO = 3;
    private int OooooOo = 0;
    private boolean Oooooo0 = false;
    private boolean Oooooo = false;

    public class OooO00o extends TimerTask implements LocationListener {
        private OooO00o() {
        }

        public /* synthetic */ OooO00o(o00 o00Var, OooO00o oooO00o) {
            this();
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            o00O000.OooOO0(Utils.VERB_CHANGED, location);
            o00.this.OooO0oO(location);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            o00O000.OooO("onProviderDisabled");
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            o00O000.OooO("onProviderEnabled");
            o00 o00Var = o00.this;
            o00Var.OooO0oO(o00Var.OooOO0());
            o00.this.OoooOoO.removeUpdates(this);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            o00O000.OooO("onStatusChanged");
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            o00.this.OooO();
        }
    }

    public o00() {
        type(Location.class).url("device");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO() {
        if (this.Ooooooo == null && this.OoooooO == null) {
            return;
        }
        o00O000.OooO("fail");
        this.result = null;
        OooOOOO(null, o000O.OooOoO);
        OooOOOo();
        callback();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void OooO0o(Location location) {
        this.result = location;
        OooOOOO(location, 200);
        callback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0oO(Location location) {
        if (location == null || !OooOO0o(location)) {
            return;
        }
        boolean z = true;
        int i = this.OooooOo + 1;
        this.OooooOo = i;
        boolean z3 = i >= this.OooooOO;
        boolean zOooOO0O = OooOO0O(location);
        boolean zOooOOO0 = OooOOO0(location);
        if (this.Oooooo && !"gps".equals(location.getProvider())) {
            z = false;
        }
        o00O000.OooOO0(Integer.valueOf(this.OooooOo), Integer.valueOf(this.OooooOO));
        o00O000.OooOO0("acc", Boolean.valueOf(zOooOO0O));
        o00O000.OooOO0("best", Boolean.valueOf(z));
        if (zOooOOO0) {
            if (!z3) {
                if (zOooOO0O && z) {
                }
                OooO0o(location);
            } else if (!zOooOO0O || !z) {
                return;
            }
            OooOOOo();
            OooO0o(location);
        }
    }

    private static float OooO0oo(double d, double d2, double d3, double d4) {
        double radians = Math.toRadians(d3 - d) / 2.0d;
        double radians2 = Math.toRadians(d4 - d2) / 2.0d;
        double dSin = (Math.sin(radians) * Math.sin(radians)) + (Math.cos(Math.toRadians(d)) * Math.cos(Math.toRadians(d3)) * Math.sin(radians2) * Math.sin(radians2));
        return ((float) (Math.atan2(Math.sqrt(dSin), Math.sqrt(1.0d - dSin)) * 2.0d * 3958.75d)) * 1609;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Location OooOO0() {
        Location lastKnownLocation = this.OoooOoO.getLastKnownLocation("gps");
        Location lastKnownLocation2 = this.OoooOoO.getLastKnownLocation("network");
        return lastKnownLocation2 == null ? lastKnownLocation : (lastKnownLocation != null && lastKnownLocation.getTime() > lastKnownLocation2.getTime()) ? lastKnownLocation : lastKnownLocation2;
    }

    private boolean OooOO0O(Location location) {
        return location.getAccuracy() < this.OooooO0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean OooOO0o(Location location) {
        T t = this.result;
        if (t == 0 || ((Location) t).getTime() <= this.o0OoOo0 || !((Location) this.result).getProvider().equals("gps") || !location.getProvider().equals("network")) {
            return true;
        }
        o00O000.OooO("inferior location");
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean OooOOO0(Location location) {
        T t = this.result;
        if (t == 0 || OooO0oo(((Location) t).getLatitude(), ((Location) this.result).getLongitude(), location.getLatitude(), location.getLongitude()) >= this.Ooooo0o) {
            return true;
        }
        o00O000.OooO("duplicate location");
        return false;
    }

    private void OooOOOO(Location location, int i) {
        if (this.status == null) {
            this.status = new o000O();
        }
        if (location != null) {
            this.status.Oooo0O0(new Date(location.getTime()));
        }
        this.status.OooO0Oo(i).OooO0oO().Oooo0(5);
    }

    private void OooOOoo() {
        Location locationOooOO0 = OooOO0();
        Timer timer = new Timer(false);
        OooO00o oooO00o = null;
        if (this.Oooooo0) {
            o00O000.OooO("register net");
            OooO00o oooO00o2 = new OooO00o(this, oooO00o);
            this.OoooooO = oooO00o2;
            this.OoooOoO.requestLocationUpdates("network", this.Ooooo00, 0.0f, oooO00o2, Looper.getMainLooper());
            timer.schedule(this.OoooooO, this.OoooOoo);
        }
        if (this.Oooooo) {
            o00O000.OooO("register gps");
            OooO00o oooO00o3 = new OooO00o(this, oooO00o);
            this.Ooooooo = oooO00o3;
            this.OoooOoO.requestLocationUpdates("gps", this.Ooooo00, 0.0f, oooO00o3, Looper.getMainLooper());
            timer.schedule(this.Ooooooo, this.OoooOoo);
        }
        if (this.OooooOO > 1 && locationOooOO0 != null) {
            this.OooooOo++;
            OooO0o(locationOooOO0);
        }
        this.o0OoOo0 = System.currentTimeMillis();
    }

    public o00 OooO0o0(float f) {
        this.OooooO0 = f;
        return this;
    }

    public o00 OooOOO(int i) {
        this.OooooOO = i;
        return this;
    }

    public void OooOOOo() {
        o00O000.OooO("stop");
        OooO00o oooO00o = this.Ooooooo;
        if (oooO00o != null) {
            this.OoooOoO.removeUpdates(oooO00o);
            oooO00o.cancel();
        }
        OooO00o oooO00o2 = this.OoooooO;
        if (oooO00o2 != null) {
            this.OoooOoO.removeUpdates(oooO00o2);
            oooO00o2.cancel();
        }
        this.Ooooooo = null;
        this.OoooooO = null;
    }

    public o00 OooOOo(float f) {
        this.Ooooo0o = f;
        return this;
    }

    public o00 OooOOo0(long j) {
        this.OoooOoo = j;
        return this;
    }

    @Override // z2.o000OO0O
    public void async(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        this.OoooOoO = locationManager;
        this.Oooooo = locationManager.isProviderEnabled("gps");
        this.Oooooo0 = this.OoooOoO.isProviderEnabled("network");
        OooOOoo();
    }
}
