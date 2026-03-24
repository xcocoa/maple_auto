package z2;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.http.bean.SignaClass;
import com.cyjh.http.bean.request.BaseRequestValueInfo;
import com.cyjh.http.bean.request.DeviceInfo;
import com.cyjh.http.bean.response.AliCloudServerResponse;
import com.cyjh.mqm.ElfinNativeJni;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class gc {
    public static long OooO0o;
    private static gc OooO0o0;
    private Context OooO00o;
    public DeviceInfo OooO0O0 = new DeviceInfo();
    public AliCloudServerResponse OooO0OO;
    public int OooO0Oo;

    private gc() {
    }

    public static gc OooO0OO() {
        if (OooO0o0 == null) {
            synchronized (gc.class) {
                if (OooO0o0 == null) {
                    OooO0o0 = new gc();
                }
            }
        }
        return OooO0o0;
    }

    private int OooO0Oo() {
        return new Random().nextInt(8);
    }

    private String OooO0oO(String str, Object obj, int i) throws Exception {
        String strOooO0O0 = n4.OooO0O0(obj);
        return TextUtils.isEmpty(strOooO0O0) ? "" : de.OooO0O0(str, strOooO0O0, i);
    }

    public Map<String, String> OooO(String str, BaseRequestValueInfo baseRequestValueInfo) throws Exception {
        HashMap map;
        synchronized (this) {
            SignaClass signaClass = new SignaClass();
            String strOooO0O0 = n4.OooO0O0(baseRequestValueInfo);
            signaClass.SignContent = strOooO0O0;
            signaClass.Signature = de.OooO0Oo(strOooO0O0);
            int iOooO0Oo = OooO0Oo();
            String strOooO0oO = OooO0oO(str, signaClass, iOooO0Oo);
            map = new HashMap();
            map.put("Data", strOooO0oO);
            map.put("R", String.valueOf(iOooO0Oo));
            if (!TextUtils.isEmpty(j3.OooO0O0)) {
                map.put("V", j3.OooO0O0);
            }
        }
        return map;
    }

    public BaseRequestValueInfo OooO00o(Context context) {
        BaseRequestValueInfo baseRequestValueInfo = new BaseRequestValueInfo();
        if (TextUtils.isEmpty(this.OooO0O0.DeviceCode) || TextUtils.isEmpty(this.OooO0O0.DeviceId)) {
            DeviceInfo deviceInfoOooO00o = ae.OooO00o(context);
            DeviceInfo deviceInfo = this.OooO0O0;
            deviceInfo.DeviceId = deviceInfoOooO00o.DeviceId;
            deviceInfo.DeviceCode = deviceInfoOooO00o.DeviceCode;
            String str = "getBaseRequestParams1 mDeviceInfo: " + this.OooO0O0.toString();
        }
        DeviceInfo deviceInfo2 = this.OooO0O0;
        baseRequestValueInfo.DeviceId = deviceInfo2.DeviceId;
        baseRequestValueInfo.DeviceCode = deviceInfo2.DeviceCode;
        String str2 = "getBaseRequestParams2 mDeviceInfo: " + this.OooO0O0.toString();
        baseRequestValueInfo.TemplateVersion = j3.OooOO0o();
        baseRequestValueInfo.AppId = j3.OooO0o();
        baseRequestValueInfo.TemplateFileId = j3.OooOOO0();
        baseRequestValueInfo.AppVersion = a4.OooO0o0();
        baseRequestValueInfo.AppInfo = j3.OooO0OO();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        OooO0o = jCurrentTimeMillis;
        baseRequestValueInfo.ClientTimestamp = jCurrentTimeMillis;
        if (!TextUtils.isEmpty(j3.OooO0O0)) {
            baseRequestValueInfo.V = j3.OooO0O0;
        }
        return baseRequestValueInfo;
    }

    public Context OooO0O0() {
        return this.OooO00o;
    }

    public void OooO0o(Context context) {
        this.OooO00o = context.getApplicationContext();
    }

    public boolean OooO0o0() {
        return this.OooO0Oo == 1;
    }

    public Map<String, String> OooO0oo(String str, BaseRequestValueInfo baseRequestValueInfo) throws Exception {
        HashMap map;
        synchronized (this) {
            SignaClass signaClass = new SignaClass();
            String strOooO0O0 = n4.OooO0O0(baseRequestValueInfo);
            signaClass.SignContent = strOooO0O0;
            signaClass.Signature = de.OooO0Oo(strOooO0O0);
            int iOooO0Oo = OooO0Oo();
            String string = ElfinNativeJni.getString(n4.OooO0O0(signaClass), iOooO0Oo);
            map = new HashMap();
            map.put("Data", string);
            map.put("R", String.valueOf(iOooO0Oo));
        }
        return map;
    }

    public String OooOO0(String str, BaseRequestValueInfo baseRequestValueInfo) {
        String string;
        synchronized (this) {
            StringBuffer stringBuffer = new StringBuffer(str);
            try {
                stringBuffer.append("?AppId=");
                stringBuffer.append(baseRequestValueInfo.AppId);
                stringBuffer.append("&AppVersion=");
                stringBuffer.append(baseRequestValueInfo.AppVersion);
                stringBuffer.append("&PlatformId=");
                stringBuffer.append(dc.OooO00o().OooO0O0());
            } catch (Exception e) {
                e.printStackTrace();
            }
            string = stringBuffer.toString();
        }
        return string;
    }
}
