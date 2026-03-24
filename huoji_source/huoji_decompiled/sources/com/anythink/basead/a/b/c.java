package com.anythink.basead.a.b;

import android.text.TextUtils;
import com.anythink.basead.mraid.MraidWebView;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final int a = 0;
    public static final int b = -1;
    public static final int c = 100;
    private static Map<String, Integer> d = new HashMap();
    private static ConcurrentHashMap<String, MraidWebView> e = new ConcurrentHashMap<>(3);

    public static void a(String str, int i) {
        Integer num = d.get(str);
        if (num == null || num.intValue() < i) {
            d.put(str, Integer.valueOf(i));
        }
    }

    public static void a(String str, MraidWebView mraidWebView) {
        e.put(str, mraidWebView);
    }

    public static boolean a(l lVar, int i, n nVar) {
        if (!TextUtils.equals(String.valueOf(i), "1")) {
            if (TextUtils.equals(String.valueOf(i), "3") && lVar.G() == 1 && !TextUtils.isEmpty(lVar.B())) {
                return a(lVar, nVar);
            }
            return true;
        }
        if (!TextUtils.isEmpty(lVar.B())) {
            return a(lVar, nVar);
        }
        if (nVar.aj() != 1 && nVar.ak() <= 0) {
            return false;
        }
        if (TextUtils.isEmpty(lVar.y())) {
            return lVar.k() && nVar.ak() == 1;
        }
        return true;
    }

    public static boolean a(l lVar, m mVar) {
        if (lVar == null) {
            return false;
        }
        if (lVar.V() == -1) {
            IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
            if (iExHandlerB != null) {
                iExHandlerB.fillDownloadStatus(com.anythink.core.common.b.n.a().f(), lVar, mVar);
            } else {
                lVar.l(0);
            }
        }
        return a(lVar, mVar.j, mVar.n);
    }

    public static boolean a(l lVar, n nVar) {
        int iW = nVar.W();
        String strB = lVar.B();
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        if (iW == 0) {
            return true;
        }
        boolean zA = com.anythink.core.common.a.l.a().a(strB, iW);
        if (zA) {
            g.a(lVar, nVar);
        }
        return zA;
    }

    public static boolean a(m mVar, l lVar) {
        if (mVar == null || lVar == null) {
            return false;
        }
        return e.containsKey(b(mVar, lVar));
    }

    public static boolean a(String str) {
        Integer num = d.get(str);
        return num != null && num.intValue() == 0;
    }

    public static MraidWebView b(String str) {
        return e.remove(str);
    }

    public static String b(m mVar, l lVar) {
        return mVar.d + "_" + lVar.t();
    }

    public static boolean b(String str, int i) {
        return com.anythink.core.common.res.d.a(com.anythink.core.common.b.n.a().f()).b(i, com.anythink.core.common.o.g.a(str));
    }

    public static boolean c(String str) {
        return b(str, 1);
    }
}
