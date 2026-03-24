package com.anythink.expressad.foundation.g.f.g;

import android.text.TextUtils;
import com.anythink.expressad.foundation.h.w;
import com.github.kevinsawicki.http.HttpRequest;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static final String a = "d";

    public static String a(List<com.anythink.expressad.foundation.g.f.c.c> list) {
        com.anythink.expressad.foundation.g.f.c.c cVarB = b(list, "Content-Type");
        if (cVarB != null) {
            String strB = cVarB.b();
            if (!TextUtils.isEmpty(strB)) {
                String[] strArrSplit = strB.split(";");
                for (int i = 1; i < strArrSplit.length; i++) {
                    String[] strArrSplit2 = strArrSplit[i].trim().split("=");
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals(HttpRequest.PARAM_CHARSET)) {
                        return strArrSplit2[1];
                    }
                }
            }
        }
        return "UTF-8";
    }

    public static String a(List<com.anythink.expressad.foundation.g.f.c.c> list, String str) {
        com.anythink.expressad.foundation.g.f.c.c cVarB = b(list, str);
        return cVarB != null ? cVarB.b() : "";
    }

    private static void a(com.anythink.expressad.foundation.g.f.h.b bVar, String str, String str2) {
        if (bVar != null) {
            try {
                if (!w.a(str) && !w.a(str2)) {
                    bVar.a(str, str2);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static com.anythink.expressad.foundation.g.f.c.c b(List<com.anythink.expressad.foundation.g.f.c.c> list, String str) {
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                com.anythink.expressad.foundation.g.f.c.c cVar = list.get(i);
                if (cVar != null && str.equals(cVar.a())) {
                    return cVar;
                }
            }
        }
        return null;
    }

    public static boolean b(List<com.anythink.expressad.foundation.g.f.c.c> list) {
        return TextUtils.equals(a(list, "Content-Encoding"), "gzip");
    }

    private static boolean c(List<com.anythink.expressad.foundation.g.f.c.c> list) {
        if (TextUtils.equals(a(list, "Accept-Ranges"), "bytes")) {
            return true;
        }
        String strA = a(list, "Content-Range");
        return strA != null && strA.startsWith("bytes");
    }
}
