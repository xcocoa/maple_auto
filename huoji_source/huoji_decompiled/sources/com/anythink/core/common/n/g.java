package com.anythink.core.common.n;

import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.k;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    private static void a(h hVar, int i, int i2, String str, String str2, int i3, Boolean bool, String str3, boolean z, boolean z3, boolean z4, boolean z5) {
        k kVar = new k(hVar.aj(), null);
        kVar.a = "1004684";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.k = String.valueOf(i);
        kVar.m = String.valueOf(i3);
        kVar.n = String.valueOf(hVar.aj());
        kVar.o = z ? "1" : "2";
        kVar.p = String.valueOf(i2);
        if (!TextUtils.isEmpty(str)) {
            kVar.q = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            kVar.r = str2;
        }
        kVar.s = bool == null ? "0" : bool.booleanValue() ? "1" : "2";
        kVar.t = str3;
        kVar.u = z3 ? "1" : "2";
        kVar.v = z4 ? "1" : "2";
        kVar.w = String.valueOf(i);
        kVar.x = z5 ? "1" : "2";
        e.b(kVar);
    }

    public static void a(String str, ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd) {
        String str2;
        String string;
        String string2;
        try {
            String strQ = n.a().q();
            str2 = "null";
            if (aTBaseAdAdapter != null) {
                String string3 = aTBaseAdAdapter.toString();
                h trackingInfo = aTBaseAdAdapter.getTrackingInfo();
                string2 = trackingInfo != null ? trackingInfo.toString() : "null";
                av unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                string = unitGroupInfo != null ? unitGroupInfo.toString() : "null";
                str2 = string3;
            } else {
                string = "null";
                string2 = string;
            }
            String str3 = "format: " + str + " | adapter: " + str2 + " | tracking: " + string2 + " | unitGroupInfo: " + string;
            if (baseAd != null) {
                str3 = str3 + " | baseAd: " + baseAd.toString();
            }
            e.a("Empty ATAdInfo", str3, strQ);
        } catch (Throwable unused) {
        }
    }
}
