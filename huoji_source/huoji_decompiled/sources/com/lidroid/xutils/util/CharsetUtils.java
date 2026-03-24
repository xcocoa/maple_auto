package com.lidroid.xutils.util;

import com.anythink.expressad.exoplayer.b;
import java.util.ArrayList;
import java.util.List;
import z2.no;

/* JADX INFO: loaded from: classes2.dex */
public class CharsetUtils {
    public static final String DEFAULT_ENCODING_CHARSET = "ISO-8859-1";
    public static final List<String> SUPPORT_CHARSET;

    static {
        ArrayList arrayList = new ArrayList();
        SUPPORT_CHARSET = arrayList;
        arrayList.add("ISO-8859-1");
        arrayList.add(no.OooO0OO);
        arrayList.add("GBK");
        arrayList.add("GB18030");
        arrayList.add(b.i);
        arrayList.add("ASCII");
        arrayList.add("ISO-2022-KR");
        arrayList.add("ISO-8859-2");
        arrayList.add("ISO-2022-JP");
        arrayList.add("ISO-2022-JP-2");
        arrayList.add("UTF-8");
    }

    private CharsetUtils() {
    }

    public static String getEncoding(String str, int i) {
        for (String str2 : SUPPORT_CHARSET) {
            if (isCharset(str, str2, i)) {
                return str2;
            }
        }
        return "ISO-8859-1";
    }

    public static boolean isCharset(String str, String str2, int i) {
        try {
            if (str.length() > i) {
                str = str.substring(0, i);
            }
            return str.equals(new String(str.getBytes(str2), str2));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String toCharset(String str, String str2, int i) {
        try {
            return new String(str.getBytes(getEncoding(str, i)), str2);
        } catch (Throwable th) {
            LogUtils.w(th);
            return str;
        }
    }
}
