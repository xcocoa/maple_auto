package com.octopus.ad.internal.utilities;

import android.text.TextUtils;
import com.octopus.ad.internal.h;
import com.octopus.ad.utils.b.f;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ReportEventUtil {
    private static final String TAG = "ReportEventUtil";

    public static void report(List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            f.a(TAG, "ReportEventUtil:" + str);
            if (!TextUtils.isEmpty(str)) {
                new h(UrlUtil.replaceToTouchEventUrl(str, "", "", "", "", "", "", "")).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
            }
        }
    }
}
