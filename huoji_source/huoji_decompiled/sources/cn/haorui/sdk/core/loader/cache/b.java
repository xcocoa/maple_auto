package cn.haorui.sdk.core.loader.cache;

import android.text.TextUtils;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.utils.MacroUtil;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public final String a(SdkAdInfo sdkAdInfo, String str) {
        String[] strArr = {"__ACCEPT_ID__", "__STRATEGY_DEALID__", "__ACCEPT_APPID__", "__ACCEPT_PID__", "__SDK__", "__GROUP_ID__", "__P__", "__TIMEOUT__"};
        String[] strArr2 = new String[8];
        strArr2[0] = sdkAdInfo.getAccept_id() == null ? "" : sdkAdInfo.getAccept_id();
        strArr2[1] = sdkAdInfo.getStrategy_dealid() == null ? "" : sdkAdInfo.getStrategy_dealid();
        strArr2[2] = sdkAdInfo.getApp_id() == null ? "" : sdkAdInfo.getApp_id();
        strArr2[3] = sdkAdInfo.getPid() == null ? "" : sdkAdInfo.getPid();
        strArr2[4] = sdkAdInfo.getSdk() == null ? "" : sdkAdInfo.getSdk();
        strArr2[5] = sdkAdInfo.getGroup_id() != null ? sdkAdInfo.getGroup_id() : "";
        strArr2[6] = String.valueOf(sdkAdInfo.getPrice());
        strArr2[7] = String.valueOf(0);
        return TextUtils.replace(str, strArr, strArr2).toString();
    }

    public final void a(String[] strArr, String str, HRAdInfo hRAdInfo) {
        String req_id = hRAdInfo.getReq_id();
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                String str2 = strArr[i];
                if (!TextUtils.isEmpty(str2)) {
                    strArr[i] = MacroUtil.replaceUUIDMacros(str2, str, req_id);
                }
            }
            hRAdInfo.setClickUrl(strArr);
        }
    }
}
