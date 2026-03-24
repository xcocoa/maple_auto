package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class k {
    private static final String b = "BaseStationUtils";
    private static boolean c;
    private static Context d;
    public PhoneStateListener a;
    private TelephonyManager e;

    public static class a {
        private static final k a = new k(k.d);

        private a() {
        }
    }

    private k(Context context) {
        this.a = new PhoneStateListener() { // from class: com.umeng.commonsdk.proguard.k.1
            /* JADX WARN: Removed duplicated region for block: B:48:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // android.telephony.PhoneStateListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                StringBuilder sb;
                String string;
                StringBuilder sb2;
                super.onSignalStrengthsChanged(signalStrength);
                com.umeng.commonsdk.statistics.common.e.c(k.b, "base station onSignalStrengthsChanged");
                try {
                    k.this.e = (TelephonyManager) k.d.getSystemService("phone");
                    String[] strArrSplit = signalStrength.toString().split(o4.OooO00o.OooO0Oo);
                    String string2 = null;
                    if (k.this.e.getNetworkType() != 13) {
                        if (k.this.e.getNetworkType() != 8 && k.this.e.getNetworkType() != 10 && k.this.e.getNetworkType() != 9 && k.this.e.getNetworkType() != 3) {
                            int gsmSignalStrength = (signalStrength.getGsmSignalStrength() * 2) - 113;
                            sb2 = new StringBuilder();
                            sb2.append(gsmSignalStrength);
                            sb2.append("");
                        }
                        String strE = k.this.e();
                        if (TextUtils.isEmpty(strE) || !strE.equals("中国移动")) {
                            if (!TextUtils.isEmpty(strE) && strE.equals("中国联通")) {
                                int cdmaDbm = signalStrength.getCdmaDbm();
                                sb = new StringBuilder();
                                sb.append(cdmaDbm);
                                sb.append("");
                            } else if (!TextUtils.isEmpty(strE) && strE.equals("中国电信")) {
                                int evdoDbm = signalStrength.getEvdoDbm();
                                sb = new StringBuilder();
                                sb.append(evdoDbm);
                                sb.append("");
                            }
                            string2 = sb.toString();
                        } else {
                            string2 = "0";
                        }
                        string = string2;
                        com.umeng.commonsdk.statistics.common.e.c(k.b, "stationStrength is " + string);
                        if (!TextUtils.isEmpty(string)) {
                            try {
                                UMWorkDispatch.sendEvent(k.d, com.umeng.commonsdk.proguard.a.h, b.a(k.d).a(), string);
                            } catch (Throwable th) {
                                e.a(k.d, th);
                            }
                        }
                        k.this.c();
                    }
                    int i = Integer.parseInt(strArrSplit[9]);
                    sb2 = new StringBuilder();
                    sb2.append("");
                    sb2.append(i);
                    string = sb2.toString();
                    com.umeng.commonsdk.statistics.common.e.c(k.b, "stationStrength is " + string);
                    if (!TextUtils.isEmpty(string)) {
                    }
                    k.this.c();
                } catch (Exception e) {
                    e.a(k.d, e);
                }
            }
        };
        if (context != null) {
            try {
                this.e = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable unused) {
            }
        }
    }

    public static k a(Context context) {
        if (d == null && context != null) {
            d = context.getApplicationContext();
        }
        return a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e() {
        try {
            String simOperator = ((TelephonyManager) d.getSystemService("phone")).getSimOperator();
            if (TextUtils.isEmpty(simOperator)) {
                return null;
            }
            if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
                if (simOperator.equals("46001")) {
                    return "中国联通";
                }
                if (simOperator.equals("46003")) {
                    return "中国电信";
                }
                return null;
            }
            return "中国移动";
        } catch (Throwable th) {
            e.a(d, th);
            return null;
        }
    }

    public synchronized boolean a() {
        return c;
    }

    public synchronized void b() {
        com.umeng.commonsdk.statistics.common.e.c(b, "base station registerListener");
        try {
            TelephonyManager telephonyManager = this.e;
            if (telephonyManager != null) {
                telephonyManager.listen(this.a, 256);
            }
            c = true;
        } catch (Throwable th) {
            e.a(d, th);
        }
    }

    public synchronized void c() {
        com.umeng.commonsdk.statistics.common.e.c(b, "base station unRegisterListener");
        try {
            TelephonyManager telephonyManager = this.e;
            if (telephonyManager != null) {
                telephonyManager.listen(this.a, 0);
            }
            c = false;
        } catch (Throwable th) {
            e.a(d, th);
        }
    }
}
