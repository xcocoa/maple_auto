package com.lidroid.xutils.util;

import android.webkit.MimeTypeMap;
import com.alibaba.sdk.android.oss.common.OSSConstants;

/* JADX INFO: loaded from: classes2.dex */
public class MimeTypeUtils {
    private MimeTypeUtils() {
    }

    public static String getMimeType(String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf == -1) {
            return OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(iLastIndexOf + 1));
    }
}
