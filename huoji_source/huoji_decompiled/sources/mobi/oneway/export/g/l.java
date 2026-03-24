package mobi.oneway.export.g;

import android.location.Location;
import android.location.LocationManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: mobi.oneway.export.g.l$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[a.values().length];
            a = iArr;
            try {
                iArr[a.lat.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.lon.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum a {
        lat,
        lon
    }

    public static String a() {
        return a(a.lat);
    }

    private static String a(a aVar) {
        Location lastKnownLocation;
        try {
            LocationManager locationManager = (LocationManager) mobi.oneway.export.a.b.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
            if (locationManager.isProviderEnabled("gps") && (lastKnownLocation = locationManager.getLastKnownLocation("gps")) != null) {
                int i = AnonymousClass1.a[aVar.ordinal()];
                return i != 1 ? i != 2 ? "" : String.valueOf(lastKnownLocation.getLongitude()) : String.valueOf(lastKnownLocation.getLatitude());
            }
            return b(aVar);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b() {
        return a(a.lon);
    }

    private static String b(a aVar) {
        double latitude;
        Location lastKnownLocation = ((LocationManager) mobi.oneway.export.a.b.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).getLastKnownLocation("network");
        if (lastKnownLocation == null) {
            return "";
        }
        int i = AnonymousClass1.a[aVar.ordinal()];
        if (i == 1) {
            latitude = lastKnownLocation.getLatitude();
        } else {
            if (i != 2) {
                return "";
            }
            latitude = lastKnownLocation.getLongitude();
        }
        return String.valueOf(latitude);
    }
}
