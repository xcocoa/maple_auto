package com.anythink.core.common.o;

import android.text.TextUtils;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class u {
    private static String a(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        if (length == length2) {
            return str;
        }
        int iAbs = Math.abs(length2 - length);
        StringBuilder sb = new StringBuilder(str);
        for (int i = 0; i < iAbs; i++) {
            sb.append(o4.OooO00o.OooO0Oo);
        }
        return sb.toString();
    }

    public static boolean a(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(String str) {
        return str.matches("[\\u4e00-\\u9fa5]+");
    }
}
