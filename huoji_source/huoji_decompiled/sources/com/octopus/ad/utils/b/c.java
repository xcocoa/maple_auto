package com.octopus.ad.utils.b;

import android.util.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static String a(String str) {
        try {
            return new String(Base64.decode(str, 0));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
