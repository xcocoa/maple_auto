package cn.haorui.sdk.platform;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.b;
import cn.haorui.sdk.core.utils.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ADPlatformHelper {
    private static final String TAG = "ADPlatformHelper";

    private static boolean checkPlatformPermission(Context context, String str) {
        List<String> neededPermissions = a.a(str).config().getNeededPermissions();
        if (neededPermissions == null) {
            return true;
        }
        Iterator<String> it = neededPermissions.iterator();
        while (it.hasNext()) {
            if (ContextCompat.checkSelfPermission(context, it.next()) != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkTypeSupport(b bVar, String str) {
        for (AdType adType : a.a(str).support()) {
            if (bVar.getAdType().equals(adType)) {
                return true;
            }
        }
        return false;
    }

    public static SdkAdInfo[] filterValidSdk(Context context, SdkAdInfo[] sdkAdInfoArr, b bVar) {
        if (sdkAdInfoArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(sdkAdInfoArr.length);
        for (int i = 0; i < sdkAdInfoArr.length; i++) {
            if (isSdkValid(context, sdkAdInfoArr[i], bVar)) {
                arrayList.add(sdkAdInfoArr[i]);
            }
        }
        return (SdkAdInfo[]) arrayList.toArray(new SdkAdInfo[0]);
    }

    private static boolean isSdkValid(Context context, SdkAdInfo sdkAdInfo, b bVar) {
        String str;
        String sdk = sdkAdInfo.getSdk();
        if (TextUtils.isEmpty(sdk)) {
            str = "sdk invalid, platform is empty";
        } else {
            Iterator<String> it = PlatformFactory.ploatforms.iterator();
            while (it.hasNext()) {
                if (it.next().equalsIgnoreCase(sdk) && checkPlatformPermission(context, sdk) && checkTypeSupport(bVar, sdk)) {
                    return true;
                }
            }
            str = "sdk invalid (" + sdk + "), check lib import";
        }
        LogUtil.e(TAG, str);
        return false;
    }
}
