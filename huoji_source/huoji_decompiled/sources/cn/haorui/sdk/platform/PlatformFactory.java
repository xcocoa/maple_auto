package cn.haorui.sdk.platform;

import cn.haorui.sdk.core.e;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.platform.hr.HRSdkPlatform;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class PlatformFactory {
    public static Set<String> ploatforms;

    public static Map<String, e> createAll() {
        HashMap map = new HashMap();
        map.put(HRConstants.PLATFORM_HR, new HRSdkPlatform());
        ploatforms = map.keySet();
        return map;
    }
}
