package z2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class v8 {
    public static final String[] OooO0o = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    private static v8 OooO0o0;
    private Context OooO00o;
    private LocationManager OooO0O0;
    public LocationListener OooO0OO = new OooO00o();
    private OooO0O0 OooO0Oo;

    public class OooO00o implements LocationListener {
        public OooO00o() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (v8.this.OooO0Oo != null) {
                v8.this.OooO0Oo.OnLocationChange(location);
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
    }

    public interface OooO0O0 {
        void OnLocationChange(Location location);

        void onLocationResult(Location location);
    }

    private v8(Context context) {
        this.OooO00o = context;
    }

    public static v8 OooO0O0(Context context) {
        if (OooO0o0 == null) {
            OooO0o0 = new v8(context);
        }
        return OooO0o0;
    }

    private boolean OooO0o0() {
        int i = 0;
        while (true) {
            String[] strArr = OooO0o;
            if (i >= strArr.length) {
                return false;
            }
            if (this.OooO00o.checkCallingOrSelfPermission(strArr[i]) == -1) {
                return true;
            }
            i++;
        }
    }

    @SuppressLint({"MissingPermission"})
    public String[] OooO0OO() {
        String str;
        String[] strArr = {String.valueOf(0.0d), String.valueOf(0.0d)};
        LocationManager locationManager = (LocationManager) this.OooO00o.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        this.OooO0O0 = locationManager;
        List<String> providers = locationManager.getProviders(true);
        if (!providers.contains("gps")) {
            str = providers.contains("network") ? "network" : "gps";
            return strArr;
        }
        Location lastKnownLocation = this.OooO0O0.getLastKnownLocation(str);
        if (lastKnownLocation != null) {
            OooO0O0 oooO0O0 = this.OooO0Oo;
            if (oooO0O0 != null) {
                oooO0O0.onLocationResult(lastKnownLocation);
            }
            strArr[0] = String.valueOf(lastKnownLocation.getLongitude());
            strArr[1] = String.valueOf(lastKnownLocation.getLatitude());
        }
        this.OooO0O0.requestLocationUpdates(str, com.anythink.expressad.video.module.a.a.m.ag, 1.0f, this.OooO0OO);
        return strArr;
    }

    public String[] OooO0Oo(OooO0O0 oooO0O0) {
        this.OooO0Oo = oooO0O0;
        return (Build.VERSION.SDK_INT < 23 || !OooO0o0()) ? OooO0OO() : new String[]{String.valueOf(0.0d), String.valueOf(0.0d)};
    }

    public void OooO0o() {
        this.OooO0O0.removeUpdates(this.OooO0OO);
    }
}
