package z2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.hlzn.socketclient.bean.ServiceParam;
import com.hlzn.socketclient.service.SocketService;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class iu {
    public static final String OooO00o = "iu";

    private static Intent OooO00o(Context context, Intent intent) {
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        ResolveInfo resolveInfo = null;
        if (listQueryIntentServices == null || listQueryIntentServices.size() == 0) {
            return null;
        }
        if (listQueryIntentServices.size() > 1) {
            for (ResolveInfo resolveInfo2 : listQueryIntentServices) {
                if (resolveInfo2.serviceInfo.packageName.equals(context.getPackageName())) {
                    resolveInfo = resolveInfo2;
                }
            }
        } else {
            resolveInfo = listQueryIntentServices.get(0);
        }
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        Intent intent2 = new Intent(intent);
        intent2.setComponent(componentName);
        return intent2;
    }

    public static void OooO0O0(Context context, String str) {
        OooO0OO(context, str, null);
    }

    public static void OooO0OO(Context context, String str, ServiceParam serviceParam) {
        Intent intent = new Intent(OooO00o(context, new Intent(context, (Class<?>) SocketService.class)));
        intent.putExtra(bu.OooOOO, str);
        if (serviceParam != null) {
            intent.putExtra(bu.OooOOOO, serviceParam);
        }
        context.startService(intent);
        ju.OooO0OO(OooO00o, "toSocketService --> serviceTag=" + str);
    }
}
