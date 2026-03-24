package cn.haorui.sdk.core.utils;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import androidx.core.content.ContextCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GPSUtils {
    public LocationListener locationListener = new a();
    private LocationManager locationManager;
    private Context mContext;
    private OnLocationResultListener mOnLocationListener;

    public interface OnLocationResultListener {
        void OnLocationChange(Location location);

        double getLatitude();

        double getLongitude();

        void onLocationResult(Location location);
    }

    public class a implements LocationListener {
        public a() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (GPSUtils.this.mOnLocationListener != null) {
                GPSUtils.this.mOnLocationListener.OnLocationChange(location);
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

    public GPSUtils(Context context) {
        this.mContext = context;
    }

    public Location getLocation() {
        String str = "gps";
        try {
            if (ContextCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") != 0 && ContextCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                return null;
            }
            LocationManager locationManager = (LocationManager) this.mContext.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
            this.locationManager = locationManager;
            List<String> providers = locationManager.getProviders(true);
            if (!providers.contains("gps")) {
                if (!providers.contains("network")) {
                    return null;
                }
                str = "network";
            }
            return this.locationManager.getLastKnownLocation(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void removeListener() {
        this.locationManager.removeUpdates(this.locationListener);
    }
}
