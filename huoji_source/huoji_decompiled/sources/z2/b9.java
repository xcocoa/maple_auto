package z2;

import android.util.Log;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class b9 {
    public static boolean OooO00o(String str) {
        boolean zOooO0O0 = OooO0O0(str, 10000);
        Log.i("HostDomainManager", str + " net is " + zOooO0O0);
        return zOooO0O0;
    }

    public static boolean OooO0O0(String str, int i) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("HEAD");
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            int responseCode = httpURLConnection.getResponseCode();
            Log.i("HostDomainManager", str + " net responseCode: " + responseCode);
            return responseCode == 200;
        } catch (Exception unused) {
            return false;
        }
    }
}
