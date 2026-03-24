package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.text.TextUtils;
import com.octopus.ad.b.b;
import com.octopus.ad.b.c;
import com.octopus.ad.internal.h;
import com.octopus.ad.internal.m;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class UrlUtil {
    public static String CLT_TYPE = "__CLT__";
    public static String CLT_TYPE_999 = "__CLT-999__";
    public static String E_TS_E = ".EVENT_TS_END.";
    public static String E_TS_S = ".EVENT_TS_START.";
    public static String LOSS_REASON = "${LOSS_REASON}";
    public static String RAW_X_DOWN = ".SCRN_CLK_PT_DOWN_X.";
    public static String RAW_X_DOWN_DP = ".SCRN_CLK_PT_DOWN_X_DP.";
    public static String RAW_X_UP = ".SCRN_CLK_PT_UP_X.";
    public static String RAW_X_UP_DP = ".SCRN_CLK_PT_UP_X_DP.";
    public static String RAW_Y_DOWN = ".SCRN_CLK_PT_DOWN_Y.";
    public static String RAW_Y_DOWN_DP = ".SCRN_CLK_PT_DOWN_Y_DP.";
    public static String RAW_Y_UP = ".SCRN_CLK_PT_UP_Y.";
    public static String RAW_Y_UP_DP = ".SCRN_CLK_PT_UP_Y_DP.";
    public static String SECOND_PRICE = "${SECOND_PRICE}";
    public static String TS = ".UTC_TS.";
    public static String V_D = ".VIDEO_DURATION.";
    public static String WIN_BIDDER = "${WIN_BIDDER}";
    public static String WIN_PRICE = "${WIN_PRICE}";
    public static String X_DOWN = ".AD_CLK_PT_DOWN_X.";
    public static String X_DOWN_DP = ".AD_CLK_PT_DOWN_X_DP.";
    public static String X_UP = ".AD_CLK_PT_UP_X.";
    public static String X_UP_DP = ".AD_CLK_PT_UP_X_DP.";
    public static String Y_DOWN = ".AD_CLK_PT_DOWN_Y.";
    public static String Y_DOWN_DP = ".AD_CLK_PT_DOWN_Y_DP.";
    public static String Y_UP = ".AD_CLK_PT_UP_Y.";
    public static String Y_UP_DP = ".AD_CLK_PT_UP_Y_DP.";

    public static class DNSResolver implements Runnable {
        private String domain;
        private InetAddress inetAddr;

        public DNSResolver(String str) {
            this.domain = str;
        }

        public synchronized InetAddress get() {
            return this.inetAddr;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                set(InetAddress.getByName(this.domain));
            } catch (UnknownHostException unused) {
            }
        }

        public synchronized void set(InetAddress inetAddress) {
            this.inetAddr = inetAddress;
        }
    }

    public static boolean isSendTouchEventUrl(String str) {
        int i = str.contains(X_DOWN) ? 1 : 0;
        if (str.contains(Y_DOWN)) {
            i++;
        }
        if (str.contains(X_UP)) {
            i++;
        }
        if (str.contains(Y_UP)) {
            i++;
        }
        if (str.contains(RAW_X_DOWN)) {
            i++;
        }
        if (str.contains(RAW_Y_DOWN)) {
            i++;
        }
        if (str.contains(RAW_X_UP)) {
            i++;
        }
        if (str.contains(RAW_Y_UP)) {
            i++;
        }
        if (str.contains(TS)) {
            i++;
        }
        return i == 9;
    }

    public static String px2dip(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str) && !str.equals("-999") && !str.equals("0")) {
                return String.valueOf((int) ((((long) Double.parseDouble(str)) / context.getResources().getDisplayMetrics().density) + 0.5f));
            }
            return str;
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }

    public static String replaceLossUrl(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.contains(WIN_PRICE)) {
            str = str.replace(WIN_PRICE, i + "");
        }
        if (str.contains(LOSS_REASON) && !TextUtils.isEmpty(str2)) {
            str = str.replace(LOSS_REASON, str2);
        }
        return (!str.contains(WIN_BIDDER) || TextUtils.isEmpty(str3)) ? str : str.replace(WIN_BIDDER, str3);
    }

    public static String replaceToTouchEventUrl(String str, c cVar, String str2, String str3, String str4) {
        if (str.contains(X_DOWN) && !TextUtils.isEmpty(cVar.a())) {
            str = str.replace(X_DOWN, cVar.a());
        }
        if (str.contains(Y_DOWN) && !TextUtils.isEmpty(cVar.b())) {
            str = str.replace(Y_DOWN, cVar.b());
        }
        if (str.contains(X_UP) && !TextUtils.isEmpty(cVar.e())) {
            str = str.replace(X_UP, cVar.e());
        }
        if (str.contains(Y_UP) && !TextUtils.isEmpty(cVar.f())) {
            str = str.replace(Y_UP, cVar.f());
        }
        if (str.contains(RAW_X_DOWN) && !TextUtils.isEmpty(cVar.c())) {
            str = str.replace(RAW_X_DOWN, cVar.c());
        }
        if (str.contains(RAW_Y_DOWN) && !TextUtils.isEmpty(cVar.d())) {
            str = str.replace(RAW_Y_DOWN, cVar.d());
        }
        if (str.contains(RAW_X_UP) && !TextUtils.isEmpty(cVar.g())) {
            str = str.replace(RAW_X_UP, cVar.g());
        }
        if (str.contains(RAW_Y_UP) && !TextUtils.isEmpty(cVar.h())) {
            str = str.replace(RAW_Y_UP, cVar.h());
        }
        if (str.contains(X_DOWN_DP) && !TextUtils.isEmpty(cVar.a())) {
            str = str.replace(X_DOWN_DP, px2dip(m.a().h, cVar.a()));
        }
        if (str.contains(Y_DOWN_DP) && !TextUtils.isEmpty(cVar.b())) {
            str = str.replace(Y_DOWN_DP, px2dip(m.a().h, cVar.b()));
        }
        if (str.contains(X_UP_DP) && !TextUtils.isEmpty(cVar.e())) {
            str = str.replace(X_UP_DP, px2dip(m.a().h, cVar.e()));
        }
        if (str.contains(Y_UP_DP) && !TextUtils.isEmpty(cVar.f())) {
            str = str.replace(Y_UP_DP, px2dip(m.a().h, cVar.f()));
        }
        if (str.contains(RAW_X_DOWN_DP) && !TextUtils.isEmpty(cVar.c())) {
            str = str.replace(RAW_X_DOWN_DP, px2dip(m.a().h, cVar.c()));
        }
        if (str.contains(RAW_Y_DOWN_DP) && !TextUtils.isEmpty(cVar.d())) {
            str = str.replace(RAW_Y_DOWN_DP, px2dip(m.a().h, cVar.d()));
        }
        if (str.contains(RAW_X_UP_DP) && !TextUtils.isEmpty(cVar.g())) {
            str = str.replace(RAW_X_UP_DP, px2dip(m.a().h, cVar.g()));
        }
        return (!str.contains(RAW_Y_UP_DP) || TextUtils.isEmpty(cVar.h())) ? str : str.replace(RAW_Y_UP_DP, px2dip(m.a().h, cVar.h()));
    }

    public static String replaceToTouchEventUrl(String str, c cVar, String str2, String str3, String str4, int i) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("url must no null");
        }
        if (i == 2) {
            cVar = new c();
            if (str.contains(CLT_TYPE)) {
                cVar.a("0");
                cVar.b("0");
                cVar.c("0");
                cVar.d("0");
                cVar.e("0");
                cVar.f("0");
                cVar.g("0");
                cVar.h("0");
                str = replaceToTouchEventUrl(str, cVar, str2, str3, str4);
            }
            if (str.contains(CLT_TYPE_999)) {
                cVar.a("-999");
                cVar.b("-999");
                cVar.c("-999");
                cVar.d("-999");
                cVar.e("-999");
                cVar.f("-999");
                cVar.g("-999");
                cVar.h("-999");
                str = replaceToTouchEventUrl(str, cVar, str2, str3, str4);
            }
        } else {
            str = replaceToTouchEventUrl(str, cVar, str2, str3, str4);
        }
        if (str.contains(CLT_TYPE)) {
            str = str.replace(CLT_TYPE, String.valueOf(i));
        }
        if (str.contains(CLT_TYPE_999)) {
            str = str.replace(CLT_TYPE_999, String.valueOf(i));
        }
        if (str.contains(TS)) {
            str = str.replace(TS, String.valueOf(System.currentTimeMillis()));
        }
        if (str.contains(E_TS_S)) {
            str = str.replace(E_TS_S, str2);
        }
        if (str.contains(E_TS_E)) {
            str = str.replace(E_TS_E, str3);
        }
        return str.contains(V_D) ? str.replace(V_D, str4) : str;
    }

    public static String replaceToTouchEventUrl(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("url must no null");
        }
        if (str.contains(X_DOWN)) {
            str = str.replace(X_DOWN, str2);
        }
        if (str.contains(Y_DOWN)) {
            str = str.replace(Y_DOWN, str3);
        }
        if (str.contains(X_UP)) {
            str = str.replace(X_UP, str2);
        }
        if (str.contains(Y_UP)) {
            str = str.replace(Y_UP, str3);
        }
        if (str.contains(RAW_X_DOWN)) {
            str = str.replace(RAW_X_DOWN, str4);
        }
        if (str.contains(RAW_Y_DOWN)) {
            str = str.replace(RAW_Y_DOWN, str5);
        }
        if (str.contains(RAW_X_UP)) {
            str = str.replace(RAW_X_UP, str4);
        }
        if (str.contains(RAW_Y_UP)) {
            str = str.replace(RAW_Y_UP, str5);
        }
        if (str.contains(TS)) {
            str = str.replace(TS, String.valueOf(System.currentTimeMillis()));
        }
        if (str.contains(E_TS_S)) {
            str = str.replace(E_TS_S, str6);
        }
        if (str.contains(E_TS_E)) {
            str = str.replace(E_TS_E, str7);
        }
        return str.contains(V_D) ? str.replace(V_D, str8) : str;
    }

    public static String replaceWinUrl(String str, int i) {
        if (TextUtils.isEmpty(str) || !str.contains(SECOND_PRICE)) {
            return str;
        }
        return str.replace(SECOND_PRICE, i + "");
    }

    public static void sendClickInfoToServerWithReplace(b.j jVar, String str, String str2, String str3, String str4) {
        String strB = jVar.b();
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        new h(replaceToTouchEventUrl(strB, str, str2, str3, str4, "", "", "")).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
    }

    public static void sendOnCompletionInfoToServer(b.j jVar) {
        String strI = jVar.i();
        if (TextUtils.isEmpty(strI)) {
            return;
        }
        new h(replaceToTouchEventUrl(strI, "", "", "", "", "", "", "")).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
    }

    public static void sendOnPauseInfoToServer(b.j jVar) {
        String strH = jVar.h();
        if (TextUtils.isEmpty(strH)) {
            return;
        }
        new h(replaceToTouchEventUrl(strH, "", "", "", "", "", "", "")).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
    }

    public static void sendOnStartInfoToServer(b.j jVar) {
        String strG = jVar.g();
        if (TextUtils.isEmpty(strG)) {
            return;
        }
        new h(replaceToTouchEventUrl(strG, "", "", "", "", "", "", "")).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
    }

    public static void sendViewShowInfoToServer(b.j jVar) {
        String strA = jVar.a();
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        new h(replaceToTouchEventUrl(strA, "", "", "", "", "", "", "")).executeOnExecutor(com.octopus.ad.utils.b.h.b().d(), new Void[0]);
    }

    public static boolean testDNS(String str) {
        try {
            DNSResolver dNSResolver = new DNSResolver("sv.adintl.cn");
            Thread thread = new Thread(dNSResolver);
            thread.start();
            thread.join(1500L);
            return dNSResolver.get() != null;
        } catch (Exception unused) {
            return false;
        }
    }
}
