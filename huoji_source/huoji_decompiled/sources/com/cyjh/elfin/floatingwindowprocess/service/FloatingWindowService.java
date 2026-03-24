package com.cyjh.elfin.floatingwindowprocess.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.telephony.TelephonyManager;
import com.ac.R;
import com.anythink.basead.ui.GuideToClickView;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ElfinFloatViewEvent;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import z2.b7;
import z2.d3;
import z2.f6;
import z2.i7;
import z2.j3;
import z2.j7;
import z2.l10;
import z2.m7;
import z2.q7;
import z2.x4;
import z2.z6;

/* JADX INFO: loaded from: classes.dex */
public class FloatingWindowService extends Service {
    private static final String Ooooo0o;
    public static final int OooooO0 = 1;
    public static final int OooooOO = 2;
    public static final int OooooOo = 8;
    public static final int Oooooo = 102;
    public static final int Oooooo0 = 11;
    public static final int OoooooO = 101;
    public static final int Ooooooo = 201;
    public static final String o00O0O = "PARAM_V";
    public static final String o00Oo0 = "PARAM_KEYS";
    public static final String o00Ooo = "script_service_key_type";
    public static final String o00o0O = "script_service_key_encrypt_value";
    public static final String o00oO0O = "PARAM_APP_DOMAIN_NAME";
    public static final int o00oO0o = 1;
    public static final String o00ooo = "script_service_key_sec_value";
    public static final int o0OoOo0 = 202;
    public static final String o0ooOO0 = "PARAM_APP_2_DOMAIN_NAME";
    public static final String o0ooOOo = "PARAM_AUTH_KEYS";
    public static final int oo000o = 0;
    public static final String ooOO = "script_service_key_bundle";
    private final Handler OoooOoO = new Handler();
    private final String OoooOoo = "android.intent.action.PHONE_STATE";
    private PhoneStateReceiver Ooooo00;

    public class OooO00o implements Runnable {
        public final FloatingWindowService OoooOoO;

        public OooO00o(FloatingWindowService floatingWindowService) {
            this.OoooOoO = floatingWindowService;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = "ۗۘۧۘۖۡۡۘۜۛۚۗ۫ۖۘۨۡۛ۠ۦۨۘۡۗۚۤ۬ۨۘۘۖۘۘۗۘۨۘۦۙۜۦ۬ۥۨۢ۠۠ۘۜۗۘۖ۠ۢۧۛۗۛۥۗۤ";
            while (true) {
                switch ((((str.hashCode() ^ 673) ^ 794) ^ 143) ^ (-967834899)) {
                    case -1763466655:
                        l10.OooO0o().OooOOOO(new ElfinFloatViewEvent(10101));
                        str = "ۜ۠ۛۥۖ۟ۥۚۡۘۤۜۡۥۨ۟ۥۖۨۘۗۥۥۢۤۚۖۢۤ۫ۥۡۡۡۘ۫ۢۛ۠ۜۦۘۦۢۦۘۖۥ۠ۜۛۡۘ";
                        break;
                    case -1455434335:
                        return;
                    case 1682071646:
                        str = "ۗۖ۟۬ۡۖۡ۠ۧ۠ۘۡۙۛۡۙۜۘۢۦۖۘۛۛۨۘۨۨۨۘۥۙ۟۠ۥۥۤۢ۬ۦ۬ۥۢۧۢ۫۠ۨۜۘۥۥۧۙ۫ۛ";
                        break;
                }
            }
        }
    }

    public class PhoneStateReceiver extends BroadcastReceiver {
        public final FloatingWindowService OooO00o;

        public PhoneStateReceiver(FloatingWindowService floatingWindowService) {
            this.OooO00o = floatingWindowService;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int callState = 0;
            String str = "۬ۛۜۧۡۡ۟ۚۜۘۨۤۦۘۗۗۨۘۚۖۘۘ۬ۜۦۘۘۤۛۦۡ۠ۧۨۧۘۡۡ۬ۙۚۖ";
            StringBuilder sb = null;
            StringBuilder sb2 = null;
            TelephonyManager telephonyManager = null;
            StringBuilder sb3 = null;
            String action = null;
            Boolean bool = null;
            while (true) {
                switch ((((str.hashCode() ^ 580) ^ 784) ^ 652) ^ (-1360209397)) {
                    case -1879721129:
                        sb.append(x4.OooO0O0().OooO00o(f6.OooOO0O, bool));
                        str = "ۛۦۘ۫ۢۛۚۦۗۤۥ۬۫ۛۨۘۧ۫ۥۘ۠ۖۜ۠۟۠ۖۛۡۢۡ۠ۥۨۛۖۘۛ";
                        continue;
                    case -1450381267:
                        return;
                    case -1351836231:
                        String str2 = "ۖۘۨۘۢۢۨۗ۟ۡۤ۟۫۫ۜۚ۫ۜۘ۫ۜ۫۟۟ۘۘۚۘۥۘۛۥۚۖۥۚۛۙ۫۬ۥۨۧۛۜۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 483305117) {
                                case -506905257:
                                    str2 = "۬ۥۡۨ۟ۜ۠ۙۘۨۢۦۢۡۘۢ۟ۧۥۙۘۘۛۘۦۘۙۖۘۘ۫ۢ۠";
                                    break;
                                case -128533776:
                                    String str3 = "ۘۡۦۘ۬ۢ۠ۗۗۥۗۡۨۢۚۦۘۛ۟ۙۦۥۡۘۖۤۤ۠۠ۡۘ۟ۖ۬ۤ۠ۖۘ۫۠ۦۧۢۗۚۤۡۘۙۧۜۘۢۥۗ";
                                    while (true) {
                                        switch (str3.hashCode() ^ 1383216189) {
                                            case -932506142:
                                                str3 = callState != 2 ? "۟ۥۡۤۜۧۙۗۦۘۖۗۜۚ۬ۜۥۤۡۘۖ۟۟ۘ۬ۦۘۗ۟ۧۙۖۧۗۥۖۘۚۘ۟ۧۡۧۖۤۖۖۦۦۘۥۚۤۧۡۖۖۛ۟" : "ۜۢ۟ۗۦۘۨ۠ۥۧۡۦۘۦۗۦۥ۫ۢ۟ۘۤ۠۬ۘۦۘۙۜۖۖۘ";
                                                break;
                                            case -291227345:
                                                str2 = "ۥ۬ۚۨۨۜ۫ۨ۟ۧۖۡۗۖۨۘۙۧۨۚ۬ۜۖۘۚ۫ۚۧۖۘ";
                                                break;
                                            case 410166788:
                                                str2 = "ۙۢۖۘۙۘ۬ۤ۫ۥۛ۠ۧۡ۬ۤ۟۬ۥ۟ۨۨۧ۫ۧۧۘۦۘۥۧۘ";
                                                break;
                                            case 2029889216:
                                                str3 = "ۥ۠ۦۨۛۙۙۜ۟ۖۘۖۚۖۘۙ۬ۡ۠ۜ۠۫۫ۨۘۖۘۥۘ۟ۥ۬۫ۧۦۤۖ۬ۜۤۡۘۖۘۢۚ۠ۦ۠ۖۦۧۨۨۘۤۛ۠";
                                                break;
                                        }
                                    }
                                    break;
                                case 766457043:
                                    str = "۫۬۬ۜۜۨۢۨۗۙ۠ۖۡۖۤۦۗۧ۟ۧۥۘۢۦۦۘۜۜۥۙۡ۫۟ۢۦ۫ۢ";
                                    continue;
                                case 1605837735:
                                    str = "ۙ۠ۘۘۜ۠ۡ۬ۤۛۥ۠ۛ۬۬ۗۚۢۘ۫ۜۙۢۡۜۘۛۘۧۘۗۥۗۖۘۧۘۡۢ۫ۜۛۡۘۗ۟۬";
                                    continue;
                                    continue;
                            }
                        }
                        break;
                    case -1071316155:
                        String str4 = "ۨۧ۟ۚۨۜۗۥۧۘۤۙۧۚۦۡۙۛۥۘۦۘۛۜۧ۫ۥۤ۫ۢ۟ۦۘۧۥ۬ۤ۬۟ۗۜۦ۬ۤۜ";
                        while (true) {
                            switch (str4.hashCode() ^ (-515958212)) {
                                case -468916746:
                                    str4 = "ۛۗۗۧ۟ۜۥۥۜۨۨۜۛ۟ۨۘۦۡ۫ۨۤۥ۫ۙۨ۟ۧۘۙۛۜۗۜۘ۫ۛۨۘۗ۬ۥۚۨۥۦۜۤۜۚۡۘ";
                                    break;
                                case 601896779:
                                    str = "ۥۤۥۘۤۡۧۘۦ۟ۡۘ۠ۦۚ۬ۦۘۘۢ۬ۨ۠۬ۦۘۗۗۡۘ۬ۨۥۘ۬۫ۡۧۢۧۗ۟ۨۘ۬ۛ۫ۢۥۘۙۥۜۖۦۘ";
                                    continue;
                                    continue;
                                case 1121579051:
                                    str = "۬۠ۘۖۡۘۘۢۘۤ۟۟ۥۘۥۖۨ۬۟ۨۘۖ۠۬ۡۡ۟ۘۧۙ۬ۙۚۢۤۜ۟ۛۜۘ";
                                    continue;
                                case 1755006263:
                                    String str5 = "ۖۡ۟ۢ۠ۨۙۜۙ۠ۗ۟ۤۨۧۘ۠ۜۥۗ۫ۙۦۨۡۘۥۘۡۦۨ۟ۤۘۘۧۨۥۘ";
                                    while (true) {
                                        switch (str5.hashCode() ^ 1434408625) {
                                            case -195734352:
                                                str5 = "۟ۚ۬ۛۨۜۘ۫ۖ۬ۥۖ۟ۧۖۙۧ۟ۧ۠ۦ۬۟ۦۢۘۤۗۡۧۖ۠ۛۘۘۜۛۦۨۧۡۘۜۡۛۖۘ۠ۛ۬۟";
                                                break;
                                            case 801370470:
                                                str5 = callState != 1 ? "ۜۖۛ۟ۢ۠ۜ۬ۢۡۢۖۜۤ۟ۢ۫ۦۖ۬ۡۦۥۖۖۤۥۘۘ۫ۙۧۨۛ۠۫ۥ۟ۗۦۥ۬" : "ۧۛۛۢ۫ۤۗۦۛۚۨۦۘۛۢۘۘۚۡۥۘ۟ۢۘۘ۬ۡۘۘ۠ۖۚ۠ۤۦ۬ۦ۟۠۟۟ۥۨ۠ۥۙۤ۟ۖۥ۠۠ۥۘۖۘۡۘۦۖ۫";
                                                break;
                                            case 1291260827:
                                                str4 = "ۗۘۨۘۜۗ۫۠۟ۧۤ۬ۚۘ۟ۢۤۖۧۘۡۢۤۛۥۚۥ۟ۜۚۢۙۤۡۙۡۦۘۘۗۥۗۢۢۡۛۨ۠ۙۙۖۘ۟۫ۨۘۙۘۖۘ";
                                                break;
                                            case 1308892687:
                                                str4 = "ۦۜۨۘۘۛۜۡۥۥۘ۬ۘۤۚ۟ۨۘۛۢۗۙۧ۬ۡۥۖ۟ۦۜۛ۠ۦۘۖۥۗۗۥۙۘۖۛۘۥۡ۬۟ۦ۫ۚ۠ۥۙۗۛۨۤ";
                                                break;
                                        }
                                    }
                                    break;
                            }
                        }
                        break;
                    case -1043025720:
                        String str6 = "ۖ۟ۤ۠ۗۧۡ۬ۨ۠ۖۗۛ۟ۜۙۨ۠ۖۥۛ۠ۜۥۦ۟ۡۙۚۡۖ۠ۘۧۘۤۘۥۘ۠۠ۥۨۡ۠ۨۦۜۘۗ۬۠ۖۥۤ";
                        while (true) {
                            switch (str6.hashCode() ^ 5690147) {
                                case -1895349179:
                                    str6 = "ۧۧۛۙ۫ۦۙۦۙ۫۟ۧۢۥ۬۠ۜۢۙ۬ۜ۫ۚ۫۠ۥۜۘۡۙۤ۫ۖ۠ۙۥۡۘۗۧۤۦۧۡۘ";
                                    break;
                                case 1059966374:
                                    String str7 = "ۘ۟ۢۤۜۦۘۧ۠ۨۘۜۘۥۜۦۨۘۡۧۧۜ۬۠ۘۡۧۘۡۚۢۘۦۘۥۤ۟۠۟ۙ۬ۨۙ۫ۛۖۘۙ۬ۚۦ";
                                    while (true) {
                                        switch (str7.hashCode() ^ 168592152) {
                                            case -1969575875:
                                                str6 = "ۗۢۛۡۖۡۘ۟ۘۖۙۤۤۚۗۜۡۧۘۨۗۡۘ۬ۘۘۨۗۢۙۜ۬ۖۤۧۥۙۗ۠ۥۧۚ۫ۙۦۖۖۨۘۘۛۛۖۡۨ۠";
                                                break;
                                            case -1127457043:
                                                str7 = x4.OooO0O0().OooO00o(f6.OooOO0O, bool) ? "ۗۥ۬۟۠۫۫ۨۧۘۧ۫ۦۘۨۘ۫۟ۜۢ۬۫ۦۘۥۙۡۘۙۗۙ۬ۨ۠ۡ۟ۘۘۖ۟ۧ۠ۢۘۡۛۢۜ۠ۘۤۗۥۘ" : "ۥۖۜۘ۫۫ۛۚ۠ۧۥۨۨۘۛۢۡۘۘ۬ۧ۬ۦۢ۫ۚۗۜ۟ۛۖۥۦ۫ۖۡۨۤۙ۫ۥۘۘۗۨۘ";
                                                break;
                                            case -237838880:
                                                str6 = "ۤۧۗ۬ۢۢۤۦۙۗۚۙۖۖۧۘۧۘۚۘۜۘۡۛۤۜۗۤۦ";
                                                break;
                                            case 906019839:
                                                str7 = "ۜۤ۫۟ۜۡ۟ۛۜۘ۫ۛۥۨۚۧۤ۫۟ۘۤۨۘۙ۫ۧۨۚۦ۟";
                                                break;
                                        }
                                    }
                                    break;
                                case 1253079255:
                                    break;
                                case 2092648492:
                                    str = "۟ۗۚۚۤ۟ۗۦ۟ۖۜۗ۟ۡۘۗۗ۬ۤۧۙۨۗۘۢۥۖ۟ۨۜۘۦۤۜ۬ۨۦۘ۫ۨۖۦۚۤ۫۠ۜۙ۬";
                                    break;
                            }
                        }
                        break;
                    case -1000597522:
                        String str8 = "ۗۥ۟ۗۚۡ۫۠ۛۥۥۨۘۙۖۥ۫ۢۙۙ۠ۘۘ۟ۗۜۘۜۦۦۡۙۙۨۛۜۜۥۜۦ۠۬۠۬۟";
                        while (true) {
                            switch (str8.hashCode() ^ 1863803023) {
                                case -1681065174:
                                    break;
                                case -1449665727:
                                    String str9 = "ۦۚۚۥۙۜۘۨۖ۫۬ۧۨۘۘۡ۬۠ۢۦۘ۫ۤۥۨۥۤۛ۟ۛ۠۬ۜ۫ۛۡۘۖۖۡۘۚۢۜۗ";
                                    while (true) {
                                        switch (str9.hashCode() ^ 2024060039) {
                                            case -1836999376:
                                                str8 = "ۢ۬ۨۘۚۥۘۘۥۡ۫ۗۜۧۘۖۜۤ۠۫ۢۨۧۥۤۦۘ۟۟۠ۧ۬ۡ";
                                                break;
                                            case -584964615:
                                                str9 = "۠۬ۥۘۘۤۘ۫ۤۜۘۗۚۦۘۤۚۜۘۤۚۡۘۘۘۗۡۥۗۙ۠۫ۤۚۙۚ۠ۢۧۤ۫ۢۥۥۡۘۛۦۧۘۚۙۜ۟ۖ۫ۨۘۗ";
                                                break;
                                            case -535560419:
                                                str9 = x4.OooO0O0().OooO00o(f6.OooOO0O, bool) ? "۬ۦ۬ۛۢ۠ۢۚ۫۟۫ۙۨۖۙۛۡۜ۫ۘۛۧ۬۠۟ۘۦۘۨۜۖ" : "ۙۧۛۢۘۛ۠ۨۜۦۨۘۧۡۘۡۢۖۘ۬۫ۚ۠ۚۘۘۡۘۛۜۜ۫ۖۧ۬ۤ۟ۡۘ۬ۛ۠ۗۡۦۨۨ۬ۙۤۤۜۘۛۤۖۘ";
                                                break;
                                            case -117420359:
                                                str8 = "ۛۨۦۘۗۦۘۖۡۜۘ۫۬ۥۧۡ۟ۖۥ۫۬ۥۡۧۙۜۡۖ۬۬ۨۖۤۡۦۘ۬۠ۚ";
                                                break;
                                        }
                                    }
                                    break;
                                case -540312153:
                                    str8 = "۫۬ۧۤۧۨۘۧ۬ۧۢ۠ۙ۬ۨۨۘۤ۬۫ۡ۠۬ۜۥۖۗۘ۟ۛۦۦ۬ۚۖۡۜۖ۠۫ۦۜۘۨۘ۬ۛۘۘۨ۬ۘۘ۫۟۠ۦۗۙ";
                                    break;
                                case -210892914:
                                    str = "ۗۚۗ۬ۡۥۘۢۧۘۘۙ۬ۚۜۘ۬۠ۨۘۧۘۘۘۛۜۤۨۨۚۥۜۘ۬ۢۤۛۧۥۘۙۚۡۢۡۢ";
                                    break;
                            }
                        }
                        break;
                    case -584512607:
                        str = "ۗۚۗ۬ۡۥۘۢۧۘۘۙ۬ۚۜۘ۬۠ۨۘۧۘۘۘۛۜۤۨۨۚۥۜۘ۬ۢۤۛۧۥۘۙۚۡۢۡۢ";
                        continue;
                    case -324603929:
                        sb.append("继续选项>>>");
                        str = "ۤۚۤۢۨۖۘۚۚۡۘۘۢۧ۟ۧۧۥۚۛۨۙ۫ۤۡۘۖۤۧۚ۠۠ۥۙۖ۠۬ۦۘ۬۫ۥۤۢۡ";
                        continue;
                    case -289100386:
                        str = "ۢۜۦۘ۬ۗۖۤ۠ۛۡۨۤۗۖۚۤۨ۫ۚۖۥۢۗۖۘۜۧۦۨۥ۠۫ۛ۠ۗۜۘۘ";
                        bool = Boolean.TRUE;
                        continue;
                    case -227220804:
                        str = "ۜۦ۟۟۟ۥۘۥ۟ۥۘۖۡۤۦ۫ۖۧۗۛۡۡۘۜ۬ۖۜ۫ۜۘۜۧ۬ۙۢۗ۠ۥۤۨۜۖۖۘۦ۟۠۟ۖۨۡۗ۫ۚ۟۫";
                        sb3 = new StringBuilder();
                        continue;
                    case 21793598:
                        sb2.append(telephonyManager.getCallState());
                        str = "ۗۛۤۧۘۨۜۨ۠ۢۙۦۘۘ۠۬۠ۤۜۛۘ۫ۖ۠ۨۥ۫ۘۘۢۗۨ";
                        continue;
                    case 86367098:
                    case 784813639:
                        break;
                    case 200914352:
                        sb2.toString();
                        str = "ۚۗۘۢۙۥۘۘۘۜۦۖۙۥۚۗ۬ۢۜۘۚۡۥ۬ۧۘۥۙۘۚ۬ۖۤۖۖ۟ۨۜۘۛۙۘۘۥۛۢۡۖۥ۬ۙۗ";
                        continue;
                    case 640863163:
                        str = "۠ۙۡۘ۬ۚ۠ۛۘۧۘۙۗۥۘۙۡۦۘ۟۟ۗۢۚۨۘ۠۠ۡۜۨۢۡۚۜۘ۠ۛۖۘۛۨۢۙۙۤۖ۫۫ۡۨ۫ۡۜۘ";
                        sb2 = new StringBuilder();
                        continue;
                    case 844357708:
                        str = "ۛۛۘۘۡۚۦ۟۬ۙۖۥ۬ۗۖۘ۬ۘ۠ۨۤ۬ۖۛۨۘۚۛۘۘ۫ۥۜ";
                        continue;
                    case 1013530372:
                        sb = new StringBuilder();
                        str = "ۘۖۢ۫۬ۤۤۖۖۘۖۘۘ۬۫۠ۢۧۡۤۨۨۘۘۙ۠۫ۨۡۥۛۚۡۧۧۧۦۨۘ۠۫ۤۥۤۥۢۨۘۖ۠۠";
                        continue;
                    case 1049247484:
                        sb.toString();
                        str = "ۗۜۥۙۜۨۥۢۦۘۥۤۙۧۢۡۚ۫ۦۘ۟ۘۜۘۡ۬ۘۢ۫۫۠ۙ۬ۢۜۘ۠ۗۘ۫۟ۨۦۦۗ۟ۖۤۛۖۚ۠ۡۛۙ";
                        continue;
                    case 1108704689:
                        sb3.append(action);
                        str = "ۥ۠ۨۙۨۨۙۙۡۨۨۘۤۙۛۙۖۥۘ۠ۘۨۧۤۦۘۢۛۧۙ۬ۤۙ۫ۥ۫ۢۘۘ۫ۥۧۥۤۙۤۧۗۡ۬";
                        continue;
                    case 1278954519:
                        sb3.append(">>>>>>action>>>>");
                        str = "ۨۛۜۘۡ۬۟۬ۛ۟ۡ۟ۤۡۦۨۚۧۦۛۜۗۛۦۘۖۦۘ۫۬۬ۛۧۘۘۧۛۘۦۨ۟ۖۥۡ";
                        continue;
                    case 1432909317:
                        str = "ۚۧۙۡۗۖۘۚ۫ۖۜۧۨ۫ۨۛۡۥۘۘ۟۫ۡۤۢۘۦۜۘۡۚ۟ۜۤۢۙ۬ۛ۬ۦۢۚۨۤۖۢ۟ۛۖۘۛۡۥۘ۟۠";
                        action = intent.getAction();
                        continue;
                    case 1564993587:
                        str = "۬۠ۚۡۢۘۘۥۡۧۚۨۙۨۧۛۛۢۖ۟ۦۘۧۦ۫ۥ۬ۛ۫ۚۡ۟ۘۦۘۢۧۙ";
                        callState = telephonyManager.getCallState();
                        continue;
                    case 1660447775:
                        str = "ۗۙۖۙۡ۟ۨۡۗ۬ۢۦۘۜۗۡۘۘۥۧۘۗۗۧۚۧۦۘۚۚۨۘ۬۟ۧ۬ۡۜۡ۟ۦۘۙ۫ۖۘۨ۟ۡۘ";
                        telephonyManager = (TelephonyManager) context.getSystemService("phone");
                        continue;
                    case 1695643341:
                        str = "ۢۙۤۗۥۧۘۤۗۥ۫ۙۙ۫۠ۖۘۛۛۜۘۢۛۡۥۡۘۙۥ۠۫ۤۢۚۤۗۘۦۜۡ۬۠ۙ۬ۥۨ۟ۜۧۤۜۘ";
                        continue;
                    case 1714682382:
                        i7.OooO().Oooo0o0();
                        str = "۫۠ۘۖۢۦۗۙۚۦ۟۠ۘۘۧۘ۟ۛۛۙۤۤ۫ۛۥۘ۬ۗۚۙۘۘ";
                        continue;
                    case 1718241924:
                        sb3.toString();
                        str = "۫ۨۤ۠۠ۡ۟ۙۖۤۜۙۘۨ۬۬۠ۢۘۛۤۨۜ۫ۖۤۘۤۨۤۙۢۨۘۢ۠ۦ";
                        continue;
                    case 1747090502:
                        str = "ۖۜۧۘۚۡۤ۟ۥۧۚۙۚۥۧۥۨۖۚۥۥۦ۫ۧۢۨۜۗۧۨۜۘۘۧۤ۬ۡ۫ۨۧۨۘۦۙۧ";
                        continue;
                    case 1853588294:
                        sb2.append("tm.getCallState()>>>>");
                        str = "ۤۖۘۡۘۘۥۘۨۘۖ۟ۖۘۦۥۥۘۢۨۧۚ۠ۜۘۘۜۖ۬ۡۖ۟۠۬ۡۤۤۘۘ";
                        continue;
                    case 2055834049:
                        String str10 = "ۙۘۢۗۚۘ۟ۡ۟ۧۦۡۘ۟ۘۘۛۢۜۘۧۡۢۚۥ۫ۘۛۚۧۥ۟۫ۜۘ۠ۦ۠";
                        while (true) {
                            switch (str10.hashCode() ^ 96822455) {
                                case -1655294657:
                                    str = "ۘۨ۟ۗ۠۟ۖ۬ۙۢۚۖۘۡۖۦۘۤۨۤۙۛۗ۫ۥۥۘۧۘۛ۠۠ۧ";
                                    continue;
                                    continue;
                                case -1344237887:
                                    String str11 = "ۛۜۖۘۦۘۦۚۜۘۙۛۛۙۖۨۡ۫ۥۚۚۨۘۢۤۦۡۢۥۦۡۤۦۘۨۖۖ";
                                    while (true) {
                                        switch (str11.hashCode() ^ (-519574081)) {
                                            case -1773747183:
                                                str10 = "ۢ۬ۜۘۗۥ۬ۦ۠ۨۘۨۢ۫۫ۥ۟ۘۥۡۘۡۡۜۗۢۜۘۦۤۧۙ۫ۗ۫ۗۖۘۥۖۥۨۦۧ";
                                                break;
                                            case -664055234:
                                                str11 = "android.intent.action.NEW_OUTGOING_CALL".equals(action) ? "ۗۢۢ۠ۥ۫۬ۢۜۘۙۗ۟ۙۧۧۗۡۦۘۗ۬ۨۘۥۦۡۡۢۖۘۘۚۙۘۙ۫ۨۗۦۘ۬ۨۜۘۘۨۥۘ۬ۗۙ۬۠۫" : "۠ۦۧۘ۟ۜۖۘۜۘۘۘۘ۬۠ۥۢۤۡۨۚۘۦۘۗۦۜ۫ۤۚۘ۠ۡۨۚ۟ۡ۫ۘۗۜۥ۬ۧۚۜۖۘۚۛ۬";
                                                break;
                                            case 324678195:
                                                str10 = "ۘۚ۬ۘ۬ۡۛۜۡۘۥۧۘۦۧ۟ۥۢۖۘۘ۫ۡ۠ۦۦۘۡ۠۬ۗ۠ۡۘۙۛۦۢۨۥۘۢۗۘۘۙۡۗۦۨۘۦ۠ۘۘ";
                                                break;
                                            case 1645019358:
                                                str11 = "۬۬ۚ۟ۢۚۜۤۦۦ۫۫۟ۛۘ۟۬۠ۦۡۘۘۡ۠ۥۦۦۘۚۖۘۜۗۡۗ۫ۘ۠۫ۧۘۘۗ";
                                                break;
                                        }
                                    }
                                    break;
                                case -407884594:
                                    str = "ۨ۬ۨۘ۟ۨۛۤۧۤ۟ۡۗۛۨۛۘۖۥ۠ۦۘۢۖۡۘۢۥۘۙۖ۠ۧۘۡ۫ۦۧۘۢۡ۟ۘ۬ۜۛۗ۬ۘۢۙۥۚ۫ۧ";
                                    continue;
                                case 2094667805:
                                    str10 = "ۥ۫۟ۙ۫ۘۚۨ۬ۡۛۨۘۥۥ۟ۧۧۖۖۛۡۘۥۧۜۘ۬۠ۙۡۥۖ";
                                    break;
                            }
                        }
                        break;
                    case 2110980399:
                        String str12 = "۫ۖۥۘۙ۫ۚۥۜۘ۟ۘۥۘۦۢۜۘۗۢۗۢ۟ۘ۫ۘۘ۠ۚۛۗۥۘ";
                        while (true) {
                            switch (str12.hashCode() ^ (-1258760726)) {
                                case -349227765:
                                    str12 = "ۛۥۙ۬ۧۥۘۛۗۨۗ۬ۥۘۡ۟ۥۘۘۨۤ۫ۨۥۘۥۖۗۙۨۛۜۜۤۥۡۥۘۢۚۧۦۤۖ۬ۨۡۘ۫ۥۧۘ۫۫۬ۧۜۜۚۗۚ";
                                    break;
                                case 779722908:
                                    break;
                                case 952058432:
                                    String str13 = "۬ۤۘۗۗۖ۟ۖۦۘۨۦۜ۟۟ۦۖۙۤ۬۬ۦ۬ۧۨۘۗۛۚۥۤۤۗۚۥۘۗۛۙۘۥۘ۟ۜۨۡۦۙ۟۠۫۟ۚۧۥۧۘ";
                                    while (true) {
                                        switch (str13.hashCode() ^ (-851145467)) {
                                            case -1249544816:
                                                str12 = "ۛ۫ۨۤ۬۫ۙۦۘ۫ۘۥۘۥۧۦۡۥۧ۫ۚ۟ۧۥۢۖۧۗۥۨۗ";
                                                break;
                                            case -526236260:
                                                str13 = "android.intent.action.PHONE_STATE".equals(action) ? "ۧۖۡ۬ۜۘۘۢۤۥۜۦۧۘ۟ۥۘۨۧۜۖ۠ۤۘۙۘۘۡۖ۫ۘۜۙۙ۫ۨۡۖۨۘ۬ۗۥۘۗۡۧ" : "ۤۜۡۘۘۘ۬ۜۤۜۘۡۗۦۘ۫ۨۘۚ۠ۛ۬ۥۦۜۥۧۘۦۚ۠ۨ۬۟ۨ۬ۛ۠۟ۖ۫۫ۢۛۘۢ";
                                                break;
                                            case 813257426:
                                                str13 = "ۛۧۢۤ۫ۖ۠ۥۜۘۦۥۦۙۗ۠ۗ۬ۛۜۙۛۨۨۢ۠ۦۖۛۧۡۙۦۘۙۡۜۘ";
                                                break;
                                            case 1419119859:
                                                str12 = "ۖ۬۟ۘۥۖۘۤ۠ۢۗ۫ۖۥ۠ۘۖۡۨۨ۫ۚۚۘۖۚۥۘۖ۬ۘۘۙۗۖۘۙۡۗ۟ۖۛ۠ۦۖۤۘۥۢ۟ۙۜۘۨ۠۫ۡۘ";
                                                break;
                                        }
                                    }
                                    break;
                                case 1747332160:
                                    str = "ۜۛۨۘۙ۟ۨۘۧۨۖۘ۟ۡۢۢۦۦۘۧۜۛۙۜ۫ۢۜۦۥۥۦۜۢۜۥ۟ۥ۬ۡۧۦۘۧۘۡ۬ۗۘۦ۫ۛ۠ۘ";
                                    break;
                            }
                        }
                        break;
                }
                str = "۫۠ۘۖۢۦۗۙۚۦ۟۠ۘۘۧۘ۟ۛۛۙۤۤ۫ۛۥۘ۬ۗۚۙۘۘ";
            }
        }
    }

    static {
        String str = "ۛۚۧۦۛۚۜۖۦۦۚۨۖۜۥۘۙۜۙۚۖۚۥۧۤۘ۟ۙۢ۠۠ۤ۬ۥۥۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 472) ^ 202) ^ 243) ^ (-2125934659)) {
                case 1840053445:
                    return;
                case 1921176059:
                    Ooooo0o = FloatingWindowService.class.getName();
                    str = "ۜۤۗۗۛ۫ۖۥ۫ۜ۟ۧۥۘۘۦ۠ۛۘۛۜۜۘۘ۠۫ۥ۬ۧۙۙۖ۠ۘ۬۬ۧۨۛۨ۟ۦۡۛۖ۠۟ۧ";
                    break;
            }
        }
    }

    private void OooO00o() {
        Notification.Builder builder;
        try {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            Resources resources = getResources();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str = "۫ۥۨۢۧۢۙۘۡۖۧۧۙۖۙۛۡۥ۠ۦۧۚ۠ۦ۫ۤۦۘ۠ۛۚۛۡۥۘۖ۟ۛ";
            while (true) {
                switch (str.hashCode() ^ (-917916921)) {
                    case -1568444003:
                        str = "۫ۖۖۘۖۛۙۙۜۘ۫۬ۖ۟ۢۤ۫ۢۨۗۛۨۡۤۡۘۥۨۛ۠ۙۡۡۤۧۦۘۦۧۦۖۘۜ۠ۡۘۢۛ۬۬ۢۙ";
                        break;
                    case -1204917644:
                        builder = new Notification.Builder(this);
                        break;
                    case 22956237:
                        String str2 = "ۗۤۢ۟ۖۙۜۢۗۙ۠ۛۧۥۡۦۚۘۘۙۤۥۡۡۨۡ۟۬ۥۗۖۘۙۡۦۨۧۖۨۤ۫ۥۤۗۨۘۛۚۛ۬۠ۘۘۤ۫ۦۘ";
                        while (true) {
                            switch (str2.hashCode() ^ 1601801877) {
                                case -155901524:
                                    str2 = "۟ۖۡۘۜ۬ۡۗۦۡ۟ۧ۟ۖۛۨۦۦۢ۫ۙۖۜۥۨۨۢ۫ۘۘۖۘۖ۬ۤۜۥۜ";
                                    break;
                                case 22510493:
                                    str = "ۙۙۛۗۢ۬ۢۥۜۤ۫ۗ۫ۜۘۛۖ۬ۘۤ۬ۗۜ۫ۚۧۡۘۙۨ۫ۙۜۖۘۢۥۘۘ";
                                    continue;
                                case 247014351:
                                    str = "ۗۗۦۘۜۜۤۖۡۢۨ۬ۨۘ۫۬ۖۛ۟ۘۜۙ۬ۦ۠ۜۢۥۘۨۤۦ۫ۡۖ۫ۢۙ۠ۨۢ۬۫ۦۥۦ۬ۘۖ";
                                    continue;
                                case 1886391327:
                                    str2 = Build.VERSION.SDK_INT < 26 ? "ۦۦۙۨۘ۟۠۬ۘۘۦۤۢۜۜۦۘۡۤ۟۫ۦۡۘۚ۟ۜۘ۫ۙۤۘۤۨۤۢ۫۬۟۫ۜۘۥ۫۫ۥ" : "ۛۛۙۜۚۘۘ۬ۤۜۘۡۧۘۛۗۢۘۢۘۢۖۘۖۦۦۘ۬ۤ۫۟ۚۙ۠۬۠ۡۡۧۨۚۨ۬ۡ۠ۡۘۚۙۗۧۗۛۥۘۧۧۦۘ";
                                    break;
                            }
                        }
                        break;
                    case 755732340:
                        NotificationChannel notificationChannel = new NotificationChannel("createRecordingNotification", "Channel1", 3);
                        notificationChannel.enableLights(true);
                        notificationChannel.setLightColor(-65536);
                        notificationChannel.setShowBadge(true);
                        notificationChannel.enableVibration(false);
                        notificationChannel.setVibrationPattern(new long[]{0});
                        String str3 = "ۗۙۜۖ۬ۖۘۧۙۘۧۦۘۘۗ۬۫ۙ۫۠ۖۖۤۤۡۘۡ۫ۥۘۙ۠ۦۦ۟ۖۘۧ۫۬ۡۚۨۘۢۢۛ۫۟ۜۘۜ۫";
                        while (true) {
                            switch (str3.hashCode() ^ (-1874992151)) {
                                case -1593205436:
                                    builder = new Notification.Builder(this);
                                    break;
                                case -1253536659:
                                    String str4 = "۠ۤۤۙۜۜۘۧۨۡۘۚۡۖ۟ۜۨۘۜۥۡۘۥۡۜ۫ۢۘۘۗۗۖۘۡۛۛۧۢ۫ۚۤۗ۫ۙ۫۟ۘ۬ۜۘۜۘۨۙ۬";
                                    while (true) {
                                        switch (str4.hashCode() ^ 1996861551) {
                                            case -2063953794:
                                                str4 = "ۖۛ۬ۥۧۤ۬ۢ۠ۘۚۘۘۦۖۦۖۗۡ۬ۥۧ۟۟۟۬ۢۚ۟ۢۜۖۧۘۜۜۛۦۛۤۧۜ";
                                                break;
                                            case -1118879456:
                                                str3 = "۫۟ۨۘ۠۬۫ۛۛۧۧۗ۠ۘۧۡۖۖۜۘ۠ۢۖ۟ۡ۫ۛۚۜۡۖۨۦۗۡ۠ۗۗ۟ۗۨ۟ۙۜۘ";
                                                continue;
                                            case -955639931:
                                                str3 = "ۙۙۗۜ۟ۘۨ۬ۢۦ۬ۛۦۜۘ۠ۢ۠ۢۤۘۘۤۡۧۘۢۚ۬۠ۗۗ";
                                                continue;
                                            case -617279412:
                                                str4 = notificationManager == null ? "ۨ۫ۘۘ۠۬۠ۥ۬ۜۘۧۥۨۥۘۢۨۡۘ۫ۥۥۧۦۦۘۨۡۙۢۚ۬" : "ۛۘۖۖۚۨۘۥۦۤۙ۫ۘۘ۠ۥۧۘۗۧۙۘۙ۬ۨۥ۫۫۬ۥۙ۠ۖۘۗۨۥۘۥۗۙۢۧ۠ۥۥۜۧۛۤۥ۠ۥۘۡۥۚ۬ۦۨ";
                                                break;
                                        }
                                    }
                                    break;
                                case 578078762:
                                    notificationManager.createNotificationChannel(notificationChannel);
                                    builder = new Notification.Builder(this, "createRecordingNotification");
                                    break;
                                case 1579923752:
                                    str3 = "۟ۢۢۡۚۖۘ۫ۢۘۘۙۢۨۨۜۦۘۨ۫ۥۘۧ۬ۛ۟ۧ۠ۧۦۤۥۘۜۢۖۡۡۖۜۢۘ۬ۖ۬ۘۘۖۦۧ۠ۧ۟";
                                    break;
                            }
                        }
                        break;
                }
            }
            builder.setTicker(resources.getString(R.string.app_name));
            builder.setSmallIcon(R.drawable.ic_launcher);
            builder.setWhen(jCurrentTimeMillis);
            Notification notificationBuild = builder.build();
            notificationBuild.icon = R.drawable.ic_launcher;
            notificationBuild.flags = 2;
            notificationBuild.flags = 34;
            notificationBuild.flags = 98;
            startForeground(getResources().getInteger(R.integer.notification_id), notificationBuild);
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
    }

    private void OooO0O0(Intent intent) {
        Bundle bundleExtra = null;
        String str = "ۘ۟ۘۨۥۘۢۘ۬ۖۧۚۜۘۥۘۦۤۘۘۧۖۥۘۗۘۨۘۜۛ۟ۙ۬ۢۘۦۨ۟ۢۥۜۨۘۡۨۡ";
        int i = 0;
        while (true) {
            switch ((((str.hashCode() ^ 588) ^ 3) ^ 720) ^ (-220125424)) {
                case -2147016158:
                    OooO0Oo();
                    str = "ۚۨۖۧۦۜۨۤۜۘۡۜۧۧۧۤۚۢۢۨۙۜۦۢۖۙۥۘۘۤ۠۠ۡ۠ۦۘۜۧ۟ۙۨ۫۫ۗۖۘۤۖۥۨۡۛ";
                    continue;
                case -1954234887:
                    m7.OooO0o0().OooO(bundleExtra.getString(o00Oo0));
                    str = "ۧۖۤۙۥۚۥۦۤۤۡ۟ۡۜۧ۟ۘ۬ۘۡۡۘۗۗۗ۠ۦ۫ۧۥۖۘ";
                    continue;
                case -1691788841:
                    j3.OooOOo0(bundleExtra.getString(o00oO0O));
                    str = "ۡۙۙۦۧۜۥۨۗۛۤۦۘ۟ۛ۬ۧۧۘۘۘ۟ۘۘۛۛۡۘۖۚۦۘ۠ۢۨۘۚ۠ۜۥۨۘۢۚۨۦۢ۟۠ۡۖۘ۫ۢۤۚۗۗۛ۫";
                    continue;
                case -1524599291:
                    bundleExtra = intent.getBundleExtra(ooOO);
                    str = "ۚ۫ۦۘۗ۫۠ۖ۟ۛۡۡ۫۟ۖۤۥۜۧۘۨۗۦ۫ۘۦۧۜۨۥۧۡۧۙۤۧۖۜۘۜۤۜۘۡ۫ۡۜۙۖۛۧۨۧۥۥ۠ۛ";
                    continue;
                case -1243077569:
                    m7.OooO0o0().OooOO0O(bundleExtra.getString(o00ooo));
                    str = "ۡۦۨۘۦۧۤۦ۬۠ۦۖ۟ۘ۬ۗۜۛۙۜ۟ۦۘۢۚۘۘۖۧۛۦۧ۟ۙۙۜۘۡۢۚ";
                    continue;
                case -1067778009:
                    String str2 = "ۥۘۘۚۜۜۨۧۨۧۛۤۧ۠ۗۘۥۨۘۥ۟ۥۘۢ۫ۖۦ۫ۚۙ۠ۧۧۤۛۘۚۧ۬ۖ۫ۗ۟ۥۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1217326110) {
                            case -1035541627:
                                str = "ۙۡۚ۠ۡۧۘۨ۫۠ۙۡۡۘ۠ۚۚۦ۫ۥۘۖ۠ۥۙۜۥۘۥۦۥۛۦۚ۠ۨۨ۟۫ۗۖۘ۬ۘۜۢ۫ۖۘ۫ۜ۬ۖۚۨۥۦ۠";
                                continue;
                                continue;
                            case -35314530:
                                str = "ۙۤ۟۟ۨۛۦۙۘۥۥۘۙۦۢۜ۟ۦ۫ۢۦۦ۟ۙ۫۟۠ۧۤ۠ۙۛۦۘۨۚۖۘ۟ۙۧ۠ۜۜ";
                                continue;
                            case 682182007:
                                String str3 = "ۘ۬۟ۗۤۥۛ۠ۥۡ۟ۖۘ۫ۜۥۜۢۤۡ۠ۘۛۥۖۤۡۨۘۡ۬ۘۥۨۚۦۤۙۖۛۦ۬ۘۨۘۢۧۜۘۗۧۘۧۦۙۥۚۘۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-335307617)) {
                                        case -1436038700:
                                            str3 = "ۢۤۜۛۜۨۤۨۛۖۧۤ۟ۢۖ۫ۥ۫۟ۚۨۥ۠ۨۚۗ۟ۥۥ۫";
                                            break;
                                        case -1018207782:
                                            str2 = "ۖ۟ۙ۫ۘ۠ۨۜۘۡۖ۠ۚۘۘۧۤۨۗ۬ۙۚۥۡۥۡۘۖۚۤۢۧۛ۬۟۟۬۫ۗ۬ۧۧ";
                                            break;
                                        case -68623986:
                                            str3 = i == 0 ? "ۙ۠۟ۗۙ۬ۚۦ۠ۙۨۦۧۙۗۛۖۧۡۤ۠ۨ۬ۨۖۧۥۘۘۚۘۦۗۧۙۡۚ" : "ۡۦۥۧۦۚۨۙۜۘۖۙۡۨۢۦۦ۟ۧۨۨۘۡۗۚۚۛۜۙۨۗۧۨۘۛۡۧۘۚۢۦۨۡۨۜ۠ۘۨۤۜ۬ۖۨۢۚۡ";
                                            break;
                                        case 1712951439:
                                            str2 = "ۛ۬ۨۘۗۘۧۘ۫ۜ۟ۨۡۡ۬۫ۧۡۧۘۘۡۖۧۢ۬ۖۘۖۗ۫ۨۨۦ۟ۙۦۛۙ۬";
                                            break;
                                    }
                                }
                                break;
                            case 2138744133:
                                str2 = "۬ۢۘۜۗۘۛۙۜۘۗۙۘۘۧۚۖۜۗ۫۟ۙ۠ۤۦۜۙۗۡۘۡۢۨۘۙۤۙۗۤۗۛ۫ۥۘۧۤۦۘۛۡۧۘ۬ۘۧۘ";
                                break;
                        }
                    }
                    break;
                case -1008330389:
                    String str4 = "ۥۚۚۚ۫ۥۘۥۧ۬ۙۜ۟ۜۧۦۘۘۗۖۖ۠ۥۘۜۙۗ۬۬ۘۚۢۗۖۜۡۘۨۛۘۘ";
                    while (true) {
                        switch (str4.hashCode() ^ (-891950589)) {
                            case -2062275988:
                                str4 = "۟ۙۡۘۚۥۙ۫ۡۛۚۨۙ۟ۗۥۘۖۖۚۡۖۛۜۡۛۖۧۘۤۜۤۗۜۜۢۜۧ";
                                break;
                            case 710945990:
                                String str5 = "ۨ۬ۧۤۢۦۛۢۗۡۢۘۘۥ۟۬ۚۨۥۘ۫ۖۦۘۦۛۖۘ۬ۙۧۢ۟۫ۧۖۛۨ۟ۨۦۚۛۤۗ";
                                while (true) {
                                    switch (str5.hashCode() ^ 425274369) {
                                        case -1422464478:
                                            str4 = "ۥۘ۬ۘۘۗ۟۠ۦۖ۬ۙ۫۠ۦۘۘۖ۟۠ۧۛۤۧۘۦۤ۬ۡ۠ۡۘۚۜۧۥۡۥ۫ۧ۟ۢۖۛۡ۠ۧۛۙۨ";
                                            break;
                                        case -1400506297:
                                            str5 = i == 1 ? "ۖۦۘۘۖۛ۟ۛ۟ۛ۬ۚ۠ۢۙۚۧۖۜۧ۫ۛ۟ۥۖۤۖ۫ۢۚ۫ۘ۠۬۫ۖۤ" : "ۛۗۜۘ۠ۘۡۗۨۢۜۗ۫ۜۘ۠ۤۗۨۖۘۖۚۡۛۚۨۜۤۡۘۥ۠ۖۚ۟ۧۤۛۛ۫ۗۘ۫ۚ۟۫ۚۤ";
                                            break;
                                        case -252865789:
                                            str4 = "۬ۦۦ۫ۘۨ۫ۥۡۘۡۥۦۘۚۛۤۦۙۥۘۤۢۧۡۤ۫ۥۤ۬۫۫ۜۘۨۧ۫ۗۗۖۘۖۧۡۢۖۖۘۙۥۖ۫ۤۥۙۥۚۜ۟ۜۘ";
                                            break;
                                        case 1200647702:
                                            str5 = "ۚۚۦۘۨۧۜۗۖۛ۠ۖۘۜۢ۫۬ۧۥ۫۠ۨۧ۫ۧۖ۫ۛۛۚۡۦۤۛۧۛ۠ۢۘۘۚ۫ۥ";
                                            break;
                                    }
                                }
                                break;
                            case 986828831:
                                break;
                            case 1692402004:
                                str = "۟ۥۥۘۢۥۡۢۘ۠۫۬ۦۢۨۘۘۛۖۧۚۙۨۚۡۘۤۗۨۛۤۗ";
                                break;
                        }
                    }
                    break;
                case -990841560:
                    m7.OooO0o0().OooOO0(bundleExtra.getString(o00o0O));
                    str = "ۚۦۚۖۡۥۘۦ۬ۧۨۛ۬۫ۥۦۘۤۜۦۘۜۦۛۖۖۧ۠ۙۤ۠ۜ۠ۥۤ۫ۙۦۛۧۖۖۘۢۚۡۘۖۘۛ۠ۚۨۘۛۦۚ۫ۜۘ";
                    continue;
                case -962747379:
                    str = "ۨۤۤۚۢ۫ۖۤۡۘۨۖۜۘۚۦۡۚ۠ۜۚ۬ۦۘۦۢۘۢۤۡۘۥ۟ۥۘۨۚ۟ۤ۫ۧۧ۟ۦۘۛ۫ۚ";
                    continue;
                case -877900362:
                    i = bundleExtra.getInt(o00Ooo, 0);
                    str = "۠ۢۡۘۦۘۛۖۦ۠ۖۢۜۛۦ۟ۚ۬ۛۧۗۖۛۨۤۖ۬ۡۨۥۘۘۤۨۘۤۘۖۘۚۦۥۘۚ۫";
                    continue;
                case -759869433:
                    String str6 = "۟ۙۜۡ۫ۦۡۨۦۘۜۨۖۤ۬ۜۢۡۗۥۢۧ۫ۨۖ۠ۙۡۘۦۗ۠ۖ۠ۘۘۦ۠ۚۜۧۜۘۨ۫ۧۙۨۘۘۚۗ۬ۗ۠ۘۙ۬ۡۘ";
                    while (true) {
                        switch (str6.hashCode() ^ (-303325952)) {
                            case -581026123:
                                String str7 = "۬۬ۘ۠۬ۦۘ۫ۡ۟ۗۤۥۗۡۜۘ۠ۛۛۖۛۢۖۧ۫ۥ۫ۗۦ۟ۚۜ۫ۦۤۧۗۥۨۢ۬ۦۘۛۢۢۥۤۢ";
                                while (true) {
                                    switch (str7.hashCode() ^ 429484374) {
                                        case -1752090761:
                                            str6 = "۟ۜۜ۫ۗۛ۟ۚ۠ۛۥ۠ۙۧۖۘۗ۟ۧۛۦ۠ۧۖۜۤۧۡ۬ۤۘ۫ۨۜۘۙۗۖ";
                                            break;
                                        case -1512129218:
                                            str6 = "ۡ۬ۨۘ۬ۖ۫۟ۙ۟ۜۙۘۗۘۚۡۦۨۘۨ۠ۘۘۛۢۖۘۜۦۨۘۢ۠۠ۖۛۦۦۤ۫ۛۗۘۗۤۨ۫ۧۢۖ۟ۧ۬۫ۗۙۗ";
                                            break;
                                        case -736632656:
                                            str7 = bundleExtra != null ? "ۦۡۡۘۖۜۜۘۚۚۘۡۖۡۘۤۜۖۜۧۥۗۘۜۘۗۨۧۨۖۛۜ۟ۤۚ۠ۚۧ۟ۗۚۙ۟ۢ۟ۖۘ۠۟ۙ۬ۦۚ" : "ۛۘ۠ۛۚۡۗۛۨۘۛ۫۟ۧۢۤۜۜۙ۫ۗۖ۫۫ۡۢۖ۬ۧۥ۬ۦۘۘۛ۟ۢۤۖۜۢۘۦۘ";
                                            break;
                                        case -544368977:
                                            str7 = "ۢۘۥۡۦۥۘۡۧۤۘۚۦۧۜۥۘۥۘۙ۟۠ۡۘۤۢۦۘۢ۬ۥۡۚۡۘۨۛۜۨۧۘۘۖۥۦۘۛۤۖۖ۬ۦ۟ۧۛۚۙ۟ۚۡۖ";
                                            break;
                                    }
                                }
                                break;
                            case 362237552:
                                str = "ۘۧۖۘۘ۟ۦۘۜۥۡۘۛ۠ۜۦۤۖۘۡۗۦۦۛۘۘۦۘ۠ۗۛۘۡۘۘۥ۠۠ۜ۫ۦۘۡۨۖۦۜۗۖۡۘۘ۫ۢۖۘ";
                                break;
                            case 431852855:
                                break;
                            case 1912742046:
                                str6 = "۠ۚۜۘۧۘۘۘۛۖۡۧۡۢۘۥ۫ۙۗۘۘۚ۠ۤۖ۟ۦۘ۬ۦۖۘۢۙۡۘ";
                                break;
                        }
                    }
                    break;
                case -688541675:
                    str = "ۜۨ۠ۤۢۡۘۚۖۙۛۘۘۚۘۘ۠ۦۙ۬ۡۡ۠۠۠ۥۛ۫۠ۛۥۘۡۨۙۡۢۦۘۛۥۨۚۚۦۙ۬ۤۙۘۜ";
                    continue;
                case -168356387:
                    j3.OooO0O0 = bundleExtra.getString(o00O0O);
                    str = "۠ۤۨۡۜۨۘ۬ۛۖۘۚ۠ۥۖۗۗۙۜۗۤ۟ۙۘۖۛۦۦۘ۠ۚۖ۬ۤۗ۟۫ۖۖۚۤۘۢۛۛۛۚۧۨۜ";
                    continue;
                case 11825340:
                    j3.OooOOo(bundleExtra.getString(o00oO0O));
                    str = "۬ۙۖ۟ۛۦ۟ۤ۟ۧۧۚۜۡ۟ۚ۫ۚ۟ۨۤۗۢ۠ۚۖۗۤۡۥۤۥۨۘ۬ۢ۠ۗۖۥۡۦۨۘۚۢ۟ۛۤ۠ۙۛۜۙۨۖۘ";
                    continue;
                case 334522546:
                    j3.OooO0OO = bundleExtra.getStringArray(o0ooOOo);
                    str = "ۡۛۤۤۜۥۦۦۨۤۥ۠ۚۦۨۘۢۥۗۘۘ۟ۙۦ۬۫ۖ۬ۛۙۥۘ۫۠ۙۦۥۤۢۙۢۛۗۡۘۧۚ۠ۗۨ۫";
                    continue;
                case 396569445:
                    break;
                case 560397165:
                    b7.OooO0Oo().OooOOO();
                    str = "ۖ۟ۡۘۥ۠ۚۥۙۨۗ۠ۦۜۧۡۨ۬ۦۘۨۢۘۘۖۗۥۘۚ۫ۢۖۙۘۘۖۘۨ۟ۛۥۥۢۙۥۚ۬";
                    continue;
                case 1171428909:
                    j3.OooOOOo(bundleExtra.getString(o0ooOO0));
                    str = "ۥۡ۫ۢۘۨۖ۬ۨۘ۬۟۠ۖۡۘ۫ۚۡۥۢ۠۫۬۫ۡۗ۟ۥ۫۟ۗۨۤۤۛۘۦۘۘۜۧۛ";
                    continue;
                case 2063182031:
                    return;
            }
            str = "ۖ۟ۡۘۥ۠ۚۥۙۨۗ۠ۦۜۧۡۨ۬ۦۘۨۢۘۘۖۗۥۘۚ۫ۢۖۙۘۘۖۘۨ۟ۛۥۥۢۙۥۚ۬";
        }
    }

    private void OooO0OO() {
        String str = "ۢ۠ۧۧۚۖ۟ۛ۟ۦۡۙۜۡۡۘۧۢۚۦۧۘۡ۫۬ۜۡۡۧۖۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 78) ^ 478) ^ 985) ^ 1282254993) {
                case -1025089145:
                    OooO0Oo();
                    str = "۟ۦۡۘۢۖۘۘۚ۫ۖ۫ۦۖۘۛۜۚۛۧۥۘۙۚ۠ۖۛۦ۟ۜۜۢۦۗ";
                    break;
                case 75671691:
                    return;
                case 1192546438:
                    z6.OooO0Oo().OooO0o(this);
                    str = "۬ۘ۟ۢۡ۫ۜۨۤۨۧۜۘۚ۠ۢۘۖۧۘۦۥۡۘۘ۠۠ۢۜۜۢۛ۠۬۠ۖ۟";
                    break;
                case 1195083249:
                    str = "ۨۡۤۧۛۡۤۜۡۘۥۜ۠۬ۥۘۘ۠۫ۜۜۧۨ۫ۙۨۢۥۧۨۡۘۥ۬ۘۡۘۧۘۧۗۗۚۦۧ۬ۢۘ۟ۖۨۘۤ۟ۥ۫ۡ۫";
                    break;
            }
        }
    }

    private void OooO0Oo() {
        String str = "۠ۙۚۖۡۧۘ۠ۨ۠ۖۘۨۛۨۚۙۦ۠ۙۦۡ۫ۦۙ۬ۖۡۘۡ۟ۨۢۢۖۘۛۛۖ۠ۚۨۘۡۜ۠۫ۡۤۙۙۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 367) ^ 540) ^ 555) ^ (-1186950723)) {
                case -1425546892:
                    return;
                case -1250717508:
                    str = "ۨۤۖۡۨۡۘۨۨۚۗ۫ۧ۫۠ۗۦۖۤۧ۠ۗۚۢۘۛۖۘۤۘۨۜۗ۠۠ۥۧۧۥۤۘۢۛ";
                    break;
                case -1183324751:
                    b7.OooO0Oo().OooO();
                    str = "۟ۗ۫۟ۧۧۜۡۥۘۘ۟ۥۗۢۢۢۢۡۜۘۨ۠ۗۘۧۧۧۡۖۘۙ۬ۥۦۥ۠۬ۤ۠ۖۗۡۘۚۙۙۖ۠۫ۖ۟ۥۗ۫۟";
                    break;
                case 1341569463:
                    i7.OooO().OooOOO0(b7.OooO0Oo().OooO0OO(), b7.OooO0Oo().OooO0o0(), b7.OooO0Oo().OooO0o());
                    str = "ۧۖ۠ۥۢۦۚۚۡۘۨۢۨۥۢ۫ۦۖۗۖۜۘۨۖۢۚۛۤ۫ۙۨۖۙۗ۬ۙۡ";
                    break;
            }
        }
    }

    private void OooO0o0() {
        String str = "ۛۚۜۘۧ۫ۡ۫۬ۛۥۙۙۙ۠ۢ۫ۨۘۛۜۛۙۤۦۨۗ۬ۤۢۡ۠ۧۡۘ۟ۨۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 152) ^ 226) ^ GuideToClickView.a.f) ^ (-60396819)) {
                case -1713265473:
                    return;
                case 264774294:
                    str = "۬ۘۙۦ۟ۘۙ۫ۙۡ۬۬ۨۤۛۖۧۚۘۦۢۧۢ۬ۢۗۥ۟ۧ۠ۥۚۙۘۦۘ";
                    break;
                case 860214867:
                    b7.OooO0Oo().OooO00o();
                    str = "ۡۛۡ۫ۥۗ۬ۗۜۘۖ۫ۨۘۚ۫ۤ۟ۤۢ۫ۢۙۧۗ۫ۗۛۨۘۚۤۛۘۘۨۘۚۗۙ۟ۨۜۘۛۧۥۤۥ۬۠ۗۦۘ۟ۚۥۥۜ۠";
                    break;
                case 1000362846:
                    z6.OooO0Oo().OooO0O0();
                    str = "ۚۖۘۘۥ۬۫۬ۘ۫ۥۘۜۘۦۘۖۘ۠۟ۘۘ۫ۗۨۘۨۜ۟ۡۧۛ۟ۧۙ";
                    break;
                case 1101205068:
                    i7.OooO().Oooo0o();
                    str = "ۜ۬ۦۘۢۢۢ۫ۚۜۘۨ۟ۦ۟ۜۘۘۛۥۡۦۖۦۘۦ۠ۖۘۢۨۗۜۚۙ";
                    break;
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String str = "ۨۖ۫ۥ۟ۖۧۦۥۘۨ۠۟ۨ۫ۨۘ۠۠۫ۚۙۡۘۙۢۖ۬ۨۨۘۗۧۦۘۖۢۡۘ۠۬ۘۘۤ۫ۖۧۜۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ UiMessage.CommandToUi.Command_Type.GET_FW_ENABLE_VALUE) ^ 713) ^ 227) ^ (-1088287576)) {
                case -555221230:
                    str = "ۗۤۡۘۦۚۜۤۜ۟۫ۦ۫ۚۖۨۢۙۨۤۖۗۡۖۧ۟ۧۜۘ۬ۙۤۗۥۢۙۦۛ";
                    break;
                case -83044657:
                    return j7.OooO0O0().OooO0Oo().getBinder();
                case 1495211413:
                    str = "۠ۨۦۧۖۢ۫۠۬۠ۡۥۚۢ۫ۛۤ۬ۚۙۚۘۚۜ۠۟ۙۧ۟۠ۨۘ۬ۧۦۚۨۖۘۜۘۘۧ۫ۡۙۡۙ";
                    break;
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        IntentFilter intentFilter = null;
        String str = "ۖ۬ۘۘ۟۠ۛۜۥۥۘۘ۫ۤۚۨ۠۫ۜۡۤۦۘۘ۬۠ۛۨۤۖۗۗ۫";
        while (true) {
            switch ((((str.hashCode() ^ 661) ^ 759) ^ 104) ^ 575188055) {
                case -2047685392:
                    return;
                case -1825334237:
                    intentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
                    str = "ۡ۬ۘۘۦۚۦۥۚۛۙۘ۬ۢۤ۟ۡۦۚ۠ۤۖۗۙۨۤۨۡۘۢ۟ۥۘۚۜۙۢۦۤ۠۫۠ۛۗۛ۠ۚۦۛۥۗ";
                    break;
                case -1785885862:
                    str = "۫۠۠۬۬ۜۚۨۖۘۨۦ۠ۜۖۨۘۡ۫ۨۢۡۜ۠ۗۨۙۢۖۢ۠ۨۡۗ۠ۛۗۡۨۡۘۖۙ۫";
                    break;
                case 48228196:
                    intentFilter.addAction("android.intent.action.PHONE_STATE");
                    str = "ۨ۟ۙۘۡۧ۟ۨ۟ۦۡۦۛ۬ۨۨۙۖ۟ۛۡۘ۫ۖۘۛۖۙۘۡۚۖ۟۫ۧۖۡۛۦۥۘۡۢ۟ۖ۬ۥۘۢۤۥ";
                    break;
                case 185231717:
                    registerReceiver(this.Ooooo00, intentFilter);
                    str = "ۛۡۧۨ۫ۥۨ۫ۥۘۜۦ۫ۚۢۘۘۘۗۜۙ۠ۜۘۢۚۙ۬ۡۜۨۥۘ۠ۚۥۘۘۜۥ";
                    break;
                case 265667381:
                    super.onCreate();
                    str = "ۖ۠ۥۧۢۡۜ۠ۖۘۧۘ۬ۡۥۦۚۜۗۨۜۜۢۢۜۢۡۘۤۧۘۘۨ۬ۤ۫ۖۘۘۘۘ۠ۖۦ۬ۨ۠ۤۤ۫ۗ۬ۢۖ۠ۛ۟";
                    break;
                case 539273304:
                    intentFilter = new IntentFilter();
                    str = "ۡ۟ۥۘۨ۟ۗ۠۟ۘۢۦۧ۠ۧۡ۫ۦۧۚۛۧۦۘ۬ۖ۬ۗۦ۠ۧۡۡۡۘۡۡۧۘۨۖ۠ۚۙ";
                    break;
                case 553157393:
                    this.Ooooo00 = new PhoneStateReceiver(this);
                    str = "ۘۥۜۧۡۖۘۘۘ۟ۦۗۢۥۢ۫ۙ۠ۚۗ۟ۧۨۨۜۘۜۨ";
                    break;
                case 1852550745:
                    OooO00o();
                    str = "ۚۗۗۡ۟ۤۗۢۗۜۦۤۛ۫ۡۘۗۧۤ۬ۤ۬۠۟ۥۘۙۘۚۧۜۧۢ۬ۥۦۗۨۗۧۡ۬ۘۧ۟ۨۥۨۖۦۘ";
                    break;
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        String str = "۠۫۫ۢۜۖۘ۟ۘۘۙ۠ۦۢۜ۫۠ۡۧۘ۠ۢۥ۫ۗۡۛۢۛۗۛۡ۠ۘۖ۬ۡۧ۬۫ۙۛۦۙۤ۫ۤۡۥ";
        while (true) {
            switch ((((str.hashCode() ^ 720) ^ 846) ^ 905) ^ 1249182550) {
                case -977521347:
                    unregisterReceiver(this.Ooooo00);
                    str = "ۘ۟ۨۘۙۙ۠ۖ۫ۜۤۦۨۚۘۘۛ۫ۘۘۚۛۚ۟ۗۨۘۥۖۖۘۤ۬ۖۙۤۤۤۢ۫۬۬ۨۨۢ۬ۘۥۘۜۢ۬";
                    break;
                case -331203295:
                    return;
                case 1556529492:
                    super.onDestroy();
                    str = "ۨۘۥۘ۬ۘۜۘۖۖۢ۠ۦۥ۟ۛۖۥ۠ۛۖ۬ۘۥۢۚ۬ۢۖ۟ۥ۬۟ۢۘۨۦۘۙ۠ۘۖۤۧۜۙۙ۠ۜۘۘۨۘ۟ۘ۠ۛ";
                    break;
                case 1748166006:
                    str = "ۖۨۖۜۗۢۨ۟۫۠ۧۙۧ۫ۡۘۛۤۨۚۖۘۧۖۦۘۘۜۗۖۚۖ۬ۚۖۘۤۜۢ۟ۡۧۘۖۥۜۤۜۥ۫۠ۥۘ";
                    break;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001a. Please report as an issue. */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int intExtra = 0;
        int i3 = 0;
        int i4 = 0;
        String stringExtra = null;
        int intExtra2 = 0;
        long longExtra = 0;
        StringBuilder sb = null;
        String str = "۬۬۟ۢۜۥۘ۫ۥۢۡۛۘۧۜۥۘۗۚ۟ۜ۬ۜۜۘ۬ۖ۫ۧۤۘۘۤۖ۫ۙۤۤۜ۬ۢۘۜۡۘ۟۟ۚۜۡۘۘۨۗۤۢۜۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 193) ^ 765) ^ 383) ^ (-504587580)) {
                case -2131275165:
                case -1718181171:
                case -1199593516:
                case -537069361:
                case -402323159:
                case -76114553:
                case 90412484:
                case 441393717:
                case 726106469:
                case 1570368281:
                case 1758371629:
                case 1761675370:
                    str = "ۜۤۖۘۥۜۨۘۚۦ۠ۜ۟ۘ۠ۥۥۘۦۥۡۢۧۥۘۜ۫ۘۜۗۡۘۚ۠۬۟ۘۜۚۨۨۥۙۗۘۖ۟۬ۡۧۘۡۤۖۘ";
                    break;
                case -1847597455:
                    String str2 = "ۙۥۘۤۢۦ۬ۡۛۨ۫۟ۛۥۘۦۚۢۤۚۗۢۤۧۙۚۨۘ۫۫ۜۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 26240003) {
                            case -1727429559:
                                str2 = "ۨۘۥۘۤۗۜۘۡ۬ۗۗۜۘ۬ۗۥۘۙ۬ۘۘۜ۟ۨۗ۟۠ۖۢۚۛ۫ۨۧۛۥۘ۟ۡ";
                                break;
                            case -120076680:
                                str = "ۥۧۡۘۘۡ۠۫ۚۢۨۢۛۦۦۨۚۢۘۜۥ۫ۦۥ۬۬ۤۖۙۤۚۥۖۛۜۖۧۘ۫ۚ۫۠۠ۧۛ۫ۦ۬۟ۘۘ";
                                continue;
                            case 1681623987:
                                str = "ۚۨ۟ۤۦۛۡۙ۟ۘۛۨۘ۟۟ۙۥۜۘۘ۫ۜۢۨۛۨۨ۫ۦۖۤ۟۠ۘۥۛۨۛ";
                                continue;
                            case 1868702592:
                                String str3 = "ۗۡ۠ۨۖ۫ۘ۟ۦۘۥۘۚۗۗۡ۬۠ۤ۫ۨۥۢ۫ۥۘۛۦۦۘۧ۟ۨۖۖۜ۟ۥۘۗۙۖۘۦۚۛۚۥ۠۫ۘۗۗ۠ۦۘۜ۠";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1504550997)) {
                                        case -2125618432:
                                            str2 = "ۡ۠ۦۘۡۘ۬ۥۧۚۚ۟ۢۧۙۗۘۘۙۥۧۚۥ۠۫ۙ۬ۢۨۤۦۚۛۧۥۚۨۥۦ۟۟ۨ";
                                            break;
                                        case -1296122389:
                                            str3 = "ۥۤۦۜۖۢۚۡ۬۬ۙۙۖۘۘ۠ۘۤ۫ۤۦۘۧۢۛۧۙۙۚ۠ۜۘۖۘۖۡۜۨ";
                                            break;
                                        case 240790487:
                                            str3 = i4 != 101 ? "۟۬ۢۦۢۜۘۗ۫ۜۘۢۡۙ۫ۧۢۧۘۘۘۜۙۜۘ۠۠ۢ۫۠ۚۡۗۜۖۙ۫ۨۚۛۢ۟۫۠ۖۘۧۢۖۘۡۚۙ۬ۦۖۚ۬ۨۘ" : "ۡۚۘۘۖۡۗۤۡۘۛۥۡۘۤۛۜۢۢۧ۬ۙۛۘ۬ۢ۠۫ۦۚۥ";
                                            break;
                                        case 1995294992:
                                            str2 = "ۤۤۚۤۙۘۘۡۤۤۡۤۗ۬ۥۢ۟ۗ۫ۦۨۡۘۢۡۛ۠ۖۤۖۜۘۥ۟ۥۘ۬ۗۜۘۨۦۡۥ۬";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1768416079:
                    sb.append("ENGIN_MQRUNNER_TOKENKEY: token = ");
                    str = "ۢۖۦۘۢۤۢ۟ۙۛۥۡۡۘۤ۠ۨۖۗۘۦ۬ۜۚۨۛۛۢۧ۠۟ۢ";
                    break;
                case -1643303413:
                    String str4 = "ۥۙۡۘ۠ۛ۫ۥۢۖۜۗۤ۠ۚۥۤۘۘۢۨۨۗۙ۫ۨۛۜۧ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1272593468)) {
                            case -757125490:
                                str = "۟ۙۨۧۧۜۚۘۨۥۨۘۗۘۚۜۤۚۖ۬ۗۗۖ۠۬ۢۖۥۤۥۘۚ۫۫ۙۡ۫ۡۦ۠ۢۡۜۘۘۦۜ۟ۡۡۘ";
                                continue;
                            case -756594187:
                                str4 = "ۘ۬ۜۧۧۜۘۘۥۡۘۛۧۢۦ۟ۨۘۡ۠ۖۘۡۥۘۗۨۛۘۧۡۘۚۜۢ";
                                break;
                            case 291771159:
                                String str5 = "ۜۖۚۥۢۢ۟ۧۤۚۗۚۡۘۨۢ۫ۙۤۜ۬ۛۦۘ۫ۛۧۥ۠ۦۘۗۥۘۙ۟۟ۢ۟ۨ۟ۧۧۚۙ۫ۥ۠";
                                while (true) {
                                    switch (str5.hashCode() ^ 1364319010) {
                                        case -310406001:
                                            str4 = "ۙ۠۠ۦۦۦۛ۟۠ۚۧۦۘۗۨۤ۠۟ۡۗ۟ۖۙۨۡۘ۟ۢۨۧ۬ۢۛۧۘۛۜۘ۠۠ۧۗۛ";
                                            break;
                                        case -136919347:
                                            str4 = "۬ۜ۟ۤۙۤۡ۫ۡۘۗۗۛۦۗ۬ۧۦۘۘۦۡۖۘۦۧۢۜ۫ۦۘۗۡۡۘۢۨۦۘۧ۫ۘۥ۬ۨۛۚ";
                                            break;
                                        case 462961436:
                                            str5 = "ۛۗۘۨۘ۬ۨۥۘۘۥۛۖۦۤ۫ۤۛۤۙۗۨۘ۬ۦۘۥۜ۫ۖ۟ۘۡۖۙۛ۬ۚ";
                                            break;
                                        case 1505910492:
                                            str5 = i4 != 2 ? "ۤ۫ۧۘۢۛۖۘۥۦ۟۠ۜۛۜۘۧۖ۬ۛۖ۫ۚ۟ۥۘۡۧۘۖ۬ۙۢۢۧۗۥۢۘۙۥ۠ۘۘۤۛ۟۟ۗۥۘ" : "ۨ۫ۦۛ۟ۨۘۗۙۜۘۨ۠ۗۖۛۖۥۗۥۥ۬ۗۨۙ۫۫۬ۜۘۚۘۘۘۖۘۦۘۦ۠ۥۥۖۥۛۚۦۘ۠۫ۦۘ۫ۗۗ";
                                            break;
                                    }
                                }
                                break;
                            case 1805303016:
                                str = "ۨ۠ۥۘۤۜۘۘۧۤۢۜۙۦۘ۬ۗۘۘۗ۬ۚۨۦۡۘۦۖۦۘۗۨ۬ۚۤۤ";
                                continue;
                        }
                    }
                    break;
                case -1453724852:
                    q7.OooO0o0().OooOO0O();
                    str = "ۜۥۡۢۧۥۖۘۡۘۥۧۥ۬ۘۖۜ۟ۦۥ۫ۙۨۨۘۨۘۥۘۦ۬ۨۘۨ۠ۢۦۦۘۖۤۡۤۡۤۘ۬ۥ۟ۗ";
                    break;
                case -1297551989:
                    i3 = 0;
                    str = "ۡۜ۫ۥۘ۬ۡ۬ۘۘۜۡۦۘۧۗۡۘ۬ۚۨۘۤ۟ۥۚۨۜۘۛۨۢۤۘۘ";
                    break;
                case -1252696051:
                    String str6 = "ۡ۟ۦ۠ۦۨۘ۫ۗۦ۫ۦ۫ۜ۬۬ۥ۠ۤ۠ۗ۠ۜۤۥۘ۠ۨۥۨۖۗۛۧۥ۫ۦ۟";
                    while (true) {
                        switch (str6.hashCode() ^ (-1269595712)) {
                            case -1600725740:
                                str = "ۢ۫ۥۤۤۢۡ۫ۢۢ۫۫ۚۥۨۘۢۖۧۡۨۧۘۚۘۧ۫ۚۨۘ۟ۗۤۗۗۧۛۨۥۘ۟ۚۚۨۗۨۡۛۘۘۧ۬ۧۥ۠ۚ۟ۧ۬";
                                break;
                            case -1441796576:
                                break;
                            case -728641768:
                                str6 = "ۦۙۥ۫ۢ۫ۛ۫ۛۡۤۡۖۙۨۘۛۧۘۥۙۖۘۛۜۤ۬ۖ۟۠ۘۘ";
                                break;
                            case 1217759770:
                                String str7 = "ۡۛۦۧ۟ۥۤۧۡۘۗۢۜۘ۟ۦۢۡ۟ۖۘۛۨۥۘۧۤۖۘۛ۟ۤ۫ۘۖۘۨۨۙۖ۫ۘۘ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-1017448912)) {
                                        case -1691451583:
                                            str6 = "ۚ۠ۤۚ۠۬ۡۜۗ۟ۨۘۡۧۜۘۚۜ۠ۧۙۖۤۧ۟ۨ۬۟ۖ۟۠ۖۧۗ۟۟ۖۗۧۗۘ۟ۡ";
                                            break;
                                        case -1133307673:
                                            str7 = b7.OooO0Oo().OooO0OO != 3 ? "۠ۙ۟ۦۛ۠ۖۗ۟ۙۖۖ۟ۖۢۜۛ۟ۛ۫ۥۥۥۦۡ۬ۨۧ۠ۚۚ۠ۚۙۤۜۘۗۤۙۖۡۘۘۡ۠ۥۘۛۚۥ" : "ۚۚۥۘ۫ۛۙۤۜۥۙۘۦ۬ۖۧۚۥۥۤ۟۠ۗۢۨۗۤۧۧۥۜۘۢۘۘ۫ۢۡۨۧۖۗۧۖۘ";
                                            break;
                                        case -396505922:
                                            str7 = "۠ۡۤ۫۫ۘۜ۬ۤ۠ۘ۟ۖ۬ۗۙ۬ۙۘۖۨۥۨۥۘۥۜۥۘۡۚۚۥۛۚۚۖۤۡۖ۬ۤ۬ۡۘۗ۠ۡۘۖۧۜۘۘ۠ۛۘۦۗ";
                                            break;
                                        case -96972350:
                                            str6 = "ۡۘۤۡۤۛۜۛۖۗ۬۫۬ۜۛۘۚۥۚۢۘۡۡۦۥۘۤۙ۫۠ۜ۟ۘ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    str = "ۜۤۖۘۥۜۨۘۚۦ۠ۜ۟ۘ۠ۥۥۘۦۥۡۢۧۥۘۜ۫ۘۜۗۡۘۚ۠۬۟ۘۜۚۨۨۥۙۗۘۖ۟۬ۡۧۘۡۤۖۘ";
                    break;
                case -1019969710:
                    stopSelf();
                    str = "ۦۦ۫۠ۛۧۧۦۡۘۦ۫ۚۜۡۢ۬۟ۡۨ۟ۢۤۚۜۥۥ۫ۧۥ۟ۢۦۘۖۗۙۢۖۢۙۦۜۙۘۥۡۤ۠۟ۨۘۘۦۘۘ";
                    break;
                case -986525154:
                    z6.OooO0Oo().OooO0o0();
                    str = "ۗۙ۠ۛ۬ۚ۠ۘۥۘۖ۟ۙ۟ۜۡۨۧ۠ۜ۬ۚۜۧۥۘۘۧۜۡۖۘۘۧۜۜۢۗۨۨ۬ۘۘۨۖۜ";
                    break;
                case -960474760:
                    String str8 = "ۨۖۢۜۢۙۗۜۤۦۤۘۘۧ۫ۖۤۥۗ۠ۜۘۥۨۥۘۚۛۖ۫ۨۥۘۜۧۦۦۧۙۙۥۘۘۛ۠ۡ۟۫ۚۧ۠ۨۘ";
                    while (true) {
                        switch (str8.hashCode() ^ 1232560806) {
                            case -2097097223:
                                str8 = "ۚ۟ۧۥۤۛۘۜ۠۫۫ۧۖۚۢۜ۬ۜۨۙۡۨ۫۬ۡۢۜ۟۬۟ۡۛۚۢۨۘ";
                                break;
                            case -1699257153:
                                String str9 = "ۗۢۧ۠ۨۚۘۦۥۨۧۘ۬ۤۥۘ۬ۤۜۛۗۛ۟۠ۧۤۙۦ۬ۗۛۘ۬ۚۜۢۦ";
                                while (true) {
                                    switch (str9.hashCode() ^ 1207327591) {
                                        case -662766528:
                                            str8 = "ۤ۫ۡ۬ۖۖ۠ۛۘۘۛۨۥ۬ۜۥۘۖۡۥۘۤۦۥۡۖۖۘۥۙۘۗۤۖۘ۠ۘۘۘ۠۠ۜ";
                                            break;
                                        case 151371475:
                                            str9 = "۫ۧۜۗۖۚۧۗۧۦۛۥ۠۟ۤۧۗۛ۟ۡۢۙۙۥۙۨۨۘۥۤۛۘۧۥۘ۠۫۠ۖۢۦۛۗ۟۠ۢۜۜ۟ۦۗۘ۟۬ۜ";
                                            break;
                                        case 308027877:
                                            str8 = "۟ۚۧۚۙۤۖۘۗۢۜۖۘۨ۠ۗۥۨۜۘۢۨ۬ۚۥۛۘۘۘۘ۠۠ۚ۫ۘۗۦ۫ۚ";
                                            break;
                                        case 1467560742:
                                            str9 = i4 != 3 ? "ۘۗ۟ۢۢۛۦۜۦ۟۠ۙ۬ۨۨۘۥۛ۬۬۟ۨۘۗۧۜۘ۠ۚۧۜۖ۟ۚۙۘۘ۬ۜۘۥ۠ۥۘ۠ۘۚ۫ۤۜۡ۫" : "ۜ۬ۖۧ۬ۚ۫۠ۥۘ۫ۤ۠ۤۤۖۨۙ۠ۘۗۘۘۚ۬ۘۡۘۖۘ۬ۦۦۘۛ۫ۦۧۜۘۜۖ۬ۚۡۜۘۗۤۦۖۦۘۦ۠ۥۧۛۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case -714088333:
                                str = "۠ۥۙۗۨۥۖ۠ۦۘۛ۫ۜۘ۠ۢۘۘۤۜ۫۫ۡۦ۟ۡۥۨۙۛۗ۠ۚۖۖۧۤۧۚۧۤۡ۠۟ۦ";
                                break;
                            case -398243181:
                                break;
                        }
                    }
                    str = "۠ۧۢۜ۫ۢۦۥۨۡۡۘ۠۟ۦۧۘۜۘۦ۠ۜۘۙۡۚۙۙۨ۠ۜۖۘ";
                    break;
                case -904569873:
                    AppContext.OooO00o().Ooooo00 = true;
                    str = "۫ۚۥۦۡۙۢ۠۟ۗۚۢۨ۬۫ۚۜۨ۟ۢ۬ۦ۠۟ۥۤۧ۫ۦۤ";
                    break;
                case -900080048:
                    z6.OooO0Oo().OooO0oO();
                    str = "ۦۙۤۤۧۜۘۛۧۖۗۘۜۘۢۦۤ۟ۦۡۧۙۙۧ۬ۛ۫۠ۚ۬ۜۦۘۚۧۥۡۛ۫";
                    break;
                case -876324584:
                    sb.append(longExtra);
                    str = "ۨۘۜۥۦۨۘۜ۬ۖۗۛۖۘۦۨۢۙۡۛ۠ۤ۬۟ۡۛۦۨۖۘۙۖۚ";
                    break;
                case -723363233:
                    i7.OooO().OooOOoo(114);
                    str = "ۛۙۚۘۦۡۖۧۨۘ۟ۢۡۙۤۨۛ۫ۥۗۥۜۧۤۡۘۛۙۦۘۙ۬ۥ";
                    break;
                case -648689499:
                    String str10 = "ۡۖۛ۠۬ۨ۠ۙ۠۟ۛۨۚۖ۠ۨۡ۫ۚۘۘ۫ۡۚ۠ۙۦۘۛ۫ۖۘ۬ۚۤ۬۟ۘ۠ۦ۟۠ۘۘۦۤۢۨۤۖۘ";
                    while (true) {
                        switch (str10.hashCode() ^ 70036356) {
                            case -1871500805:
                                str10 = "ۗۤ۠ۦۦۘۖ۠ۡۘ۬ۨ۟ۧۢۤ۟۫ۜۘ۫۫ۧۚۘ۠ۢ۟ۧ۫ۘۥ۠ۧۨۥ۠۫ۜۥۜۙۜ";
                                break;
                            case -1314229772:
                                str = "ۚۛۨۘ۬ۗۥۘۢۜۚۖۤۤ۬ۙۨ۬ۥۧۗۥ۬ۦۤۗۡۤۘۨۧۦ۫ۛۘۜۢۛۚۛۘ۠ۚۖۘۥۘۛۨۦ۫ۧۖ۠ۧۡ";
                                continue;
                            case -27948520:
                                String str11 = "ۤۦۗۗۛ۟ۨۡۚۢۦۖۘۘۗۡۗۦۚۖ۠ۨ۫ۧۚ۫ۚۦۧۡۜۘۛۦۢۛۘۚ۫۬ۖ";
                                while (true) {
                                    switch (str11.hashCode() ^ (-1493199557)) {
                                        case -2063056040:
                                            str10 = "ۧۜۜۘۧۦۡ۫ۖۜ۬ۘۤۢ۬ۡۖۖۧۨۗۥۡۗۚۧۛۖۘۙۢ۠ۥۖۨۜ۫ۖۘۙۨۧۘۗۘۜۨۦ۟ۗۤۤ۬ۥۛۛۙۜ";
                                            break;
                                        case -1585474170:
                                            str11 = "ۧۢۘۘ۬۬ۛۧۨۜ۫ۙۙۢۗۤۦۗۡۧۙۖۗۙۦۢۤۖۚۦۨۘ";
                                            break;
                                        case -590762780:
                                            str10 = "ۥۜۡ۫۫ۥۘۗۙۡۘ۫ۧۛ۬۫ۜۘۗۚۨۨۘۨۧ۬ۡۗۤۚۦ۬ۦۘۛۧۡۘۖۥۥۘ۬۟ۥۦۦ۬";
                                            break;
                                        case 385948695:
                                            str11 = i4 != 1 ? "ۚۡۨۨۢۚۗۢ۫ۖۛۘۡ۬ۨۧۗ۬ۥ۟ۥۘۗۨۘۗۨۥۘ۟ۜ۟ۛۛۨۛۥۥۘۗۚ۠ۙ۫ۜۘ۠۬۬ۧۘۡۥۘۚۤۖ۫" : "ۖۚ۠ۘۤۡۘۥ۬ۘۘۚ۟ۢۖۨۡۙۡۖۙۧۖ۬ۜۘ۠۟ۛ۠ۚۜۘۛۢ۫ۢۜۡۨ۟ۨۘ۠ۤۡۨۘۚۗۦ۬ۥۖۥۘۖۛۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1644870222:
                                str = "ۙۚ۟ۛ۬ۦۚۧۚۘۦۘۡۜۚۧۛۥۙۧۖۘ۬۫ۘۘۦۤۜۘۢۗۘۦۙۧۡۖۡۘ";
                                continue;
                        }
                    }
                    break;
                case -615836724:
                    str = "ۡۚۦۘ۬ۚۡۘۦۢۥ۠ۙۘۖۨ۫۠ۘۥۗۜۧۛۨۛۛ۠۬ۤ۟ۥۘۗۤۨ۬ۨۤۧۥۘۙ۠ۧ";
                    break;
                case -599382422:
                    longExtra = intent.getLongExtra("tokenKey", 0L);
                    str = "ۦۡۥۦۜ۟ۢ۠ۗۘۖۧۘۛۙۗۛ۬ۥۦۤۨۘۡ۫ۢۙۤۦۚۚۙۧ۬۟ۛۨۙۤۙ۟۠ۛۥۘۚۦۖۘۜ۟ۖ";
                    break;
                case -484312380:
                    sb = new StringBuilder();
                    str = "ۙ۠ۧ۠ۡۤۨۤۨۙۡۘۤۡۘۘۨۘۙۧۧۨۘۛۜۘۧۦ۫ۙۤ۬ۘۘۘ۟ۥۧۘۥۗۧۗۢۚ۬ۘۘۚۥۛ";
                    break;
                case -335476202:
                    str = "۠ۢۜۜۧ۠ۚۘۗۤۜ۟ۚۜۦۦ۠ۖۜۤۡۤۜ۟۬ۤ۠۬۠ۖۜۥۦۘ۠۟۫ۨۖۦۘ۟۫ۡۘ";
                    i4 = intExtra;
                    break;
                case -325980080:
                    String str12 = "ۚۡۖۜۘۤۚۖۨ۠ۜۘۖۡۚۛۢۚ۟ۗۡۦۡۜۥۨۧۘۨۙۦۘۦۢۥۘ۬۟ۥۘۘۧۜ۫ۘۗۧ۬۟ۘۘ";
                    while (true) {
                        switch (str12.hashCode() ^ 2059393753) {
                            case -2085521931:
                                String str13 = "ۨۥۘۦۘ۫ۙۚۜۧۗۖۘۙ۟۠ۛۘۜۘۨۚۨۘ۠ۦۡ۬ۙۥۖۙ۟ۘۡۥۛۜۚۚۨ۬۬ۢ۠۬۬۬۫ۛۥۨۘ۟ۡ۠";
                                while (true) {
                                    switch (str13.hashCode() ^ (-925157022)) {
                                        case -2028833160:
                                            str13 = "ۜۧ۟ۜ۠ۜۤ۠۟ۥۨۤۡ۬ۚۚۥۘۙ۠ۘۘ۟ۖ۠۠ۡۗۖۡۥۘۖۛۘۘۦۜۚ";
                                            break;
                                        case -925348031:
                                            str13 = b7.OooO0Oo().OooO0OO == 0 ? "ۘۙۨۦۘ۟ۧۖۙۜۧۤۡۚۨۨۤۢۥۦۛ۠ۛۖۘ۟ۧ۬ۘۥ۠۟۠ۖۚۛۖ" : "ۛۨ۫۬ۛ۠ۥۛۘ۟ۛۜۤۛۘۘۜۜۨۘۥ۠ۡۧۡۗ۟ۖۧ۫ۢۡۧۡۤ۬ۙۜۘ";
                                            break;
                                        case -737744849:
                                            str12 = "ۥۢۚۧۛۥۜ۬۠ۗۢۦۘۨ۠ۡۘۚۙۤ۠ۘۘۘۧۤۖۤۡۧۜۦۡۘ";
                                            break;
                                        case 1431992520:
                                            str12 = "۬ۡۡۘۥۦۧۘۦۡۜۖۗۦۘ۫ۤۛ۠ۢۢۥۨۨۘ۫ۚۡۘۘۘۘۘۧۚۗۢۤ۫ۡۗ۫";
                                            break;
                                    }
                                }
                                break;
                            case 266826042:
                                str = "ۨۛ۠۟ۗۨۖۗۗ۬ۚ۟ۧۛۙۢۤۧ۟ۖ۟۬ۘۖۤ۟ۧۡۘۤۛۡۘۤۧ۫";
                                continue;
                            case 1272307294:
                                str12 = "۫ۜۘۘۤۡۨۙۚۜۢۡ۟ۘ۫ۘۘۢۢۨۨ۠۫ۨۚ۠ۤ۟ۦۘۘۛۖۘۢ۠ۘۨۥۖ";
                                break;
                            case 2088867003:
                                str = "ۤ۫ۘ۫ۖ۬ۛۖۖۘۚۚۡۘۚۧۖۛۜۨۘ۬ۢۜۘۢۢۜۘۗۨۨۛۧۘۘۙۘۦۧ۠۟۟ۜۧۢۙۘ۫ۧۜۘۚۤ۬۟ۢۥ۫ۨۨۘ";
                                continue;
                        }
                    }
                    break;
                case -64774771:
                    System.exit(0);
                    str = "ۢۚۥۘۘ۠ۘۥ۟ۨۘۥ۬۠ۡۙۗ۬ۥۡۘۜۡ۬۫۬ۛۙۗ۠۬ۦۨ۠ۡۘۜۡۢ";
                    break;
                case -54998014:
                    OooO0OO();
                    str = "ۜۤۖۘۥۜۨۘۚۦ۠ۜ۟ۘ۠ۥۥۘۦۥۡۢۧۥۘۜ۫ۘۜۗۡۘۚ۠۬۟ۘۜۚۨۨۥۙۗۘۖ۟۬ۡۧۘۡۤۖۘ";
                    break;
                case 68802653:
                    b7.OooO0Oo().OooO0OO = 1;
                    str = "ۨۛ۠۟ۗۨۖۗۗ۬ۚ۟ۧۛۙۢۤۧ۟ۖ۟۬ۘۖۤ۟ۧۡۘۤۛۡۘۤۧ۫";
                    break;
                case 161020790:
                    String str14 = "۬ۘۛ۠ۦۦۨ۠ۡۗۙۛۤۚۥۘۜۖۤۦۦۘۘۜۖۥۙۘ۬ۜ۠ۦۘ";
                    while (true) {
                        switch (str14.hashCode() ^ (-563777581)) {
                            case -1290375040:
                                str = "ۥۤۡۗ۟ۨ۟ۧۦۨۧۙ۬ۘ۫ۘۘ۫۬۫ۜۘۙ۬ۛۚۥۖۘۖۗۥۛۚۢۚۗ۬ۦ۬ۚۦ۫ۥ";
                                continue;
                            case 1453378027:
                                String str15 = "ۨۘۘۘۗۢۘ۟ۧۡۘۦۛۘۚ۟ۨۚۤۖۘۘۤۦ۟ۙ۬ۢ۟ۡۘۚۘ۫۬۟۫ۚۛ";
                                while (true) {
                                    switch (str15.hashCode() ^ 1306479853) {
                                        case -1066787652:
                                            str14 = "ۦ۬ۨۘۥۤۛ۠۟ۧۦۛۤۡۙۡۘۙۥۜۘۡۗۛۚ۟ۥۘ۫ۚۦۘۙ۠ۚۧ۫ۗ۟ۥۤۢ۠ۗۥۨۥۧۥۜ۠۠ۜ۬ۗۗۗۙۨۘ";
                                            break;
                                        case 108576744:
                                            str14 = "ۨۗۛۗۦ۫ۛۡۙۧۦۤۗ۟ۘۨۥۡۘ۫۫ۡۘۦۧۖۗ۠ۦۘۨۡۖۘۦ۬ۢۖۨۡ۟ۥۗ۠۬ۦۘ";
                                            break;
                                        case 641697613:
                                            str15 = i4 != 102 ? "ۡۧۢۛۨۦۘۘ۠ۧۚۜۧۘۘۥ۫۫ۥۖۛۘۙ۫ۛۨۨۢۜ۠ۖ۫ۘ۟ۖۢۥۨۧۖۤ۬ۥۖۘ" : "ۤ۟ۗ۬ۜۨۘۡ۠ۦۘۨ۫۫ۜ۟۬ۢۦۦۘۤۧۖۤۨۗ۠ۥۜۘۧۧۦۛۤ۠ۧۘۤۖۙۜۦۛۤ۫ۖۡ۟ۢۗ";
                                            break;
                                        case 1196883227:
                                            str15 = "ۧۗۥۦۡۜ۠۟ۨۦۜۡۛ۬ۥۖۡۨۚۦۖۘۗۖۜۘ۬ۦۧ۠ۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1801095769:
                                str14 = "ۤۙۘۘۧۢۚۙ۫ۖ۬۫ۚۛ۬ۙۚ۟ۦۜۧۛۗۢ۬ۚۦ۟ۡۥ۟ۙۡ۬۫ۨ۠ۥۢۦۦۤۨۘ۬ۢ۫ۥ۬ۗ۫۬ۧۡۖ";
                                break;
                            case 2003809480:
                                str = "۫۟ۖۜۡۢۛ۟ۢۗۢۥۙۗۥ۬ۢۥۛ۟ۖۘۛۥۜۢۡ۠ۧۜۡۘ";
                                continue;
                        }
                    }
                    break;
                case 484698141:
                    OooO0O0(intent);
                    str = "ۧۘ۟ۖۘۜۘۦ۠۟ۛۡۦ۬ۜۥۘۗۘۗۘۤ۬ۗۧۦۡۨۘۛۢۚ";
                    break;
                case 674075429:
                    i7.OooO().Oooo00o(intExtra2);
                    str = "ۜ۫ۦۘ۟ۢ۬ۦۜۨ۬ۨۡۨ۫ۡۘۤۨۥۘۙۙ۠۠ۖۢۘۤۖۖۦۘۘ۟ۦۘۥۨ";
                    break;
                case 700609665:
                    sb.toString();
                    str = "۟ۛۖۘۙ۬ۗۨۛۙۦۖ۠۟ۙۦۡۜۥ۬ۦۧۡۖۨۘۗۥۦۘۛ۬ۙ";
                    break;
                case 723186344:
                    str = "۫ۥۨۘ۠ۛۨۘۨۡۦۤ۠ۡۙ۠ۢۢۢۗۚۖۚۜۚۙ۫۬۬ۡۡۘۥۛۧ۠ۥۜۘ";
                    break;
                case 729352649:
                    OooO0o0();
                    str = "ۡ۬۟ۖۖۥۘۗ۬ۤۚ۟ۧ۠ۧۥۖۚ۬۟ۧۙۤۧۥۘۙ۟ۤۡۢۧ۠۫ۚۤۤۥۘۘۡۥۘۗ۬۫ۘۧۚۙۘۜ";
                    break;
                case 879445807:
                    switch (i4) {
                        case 8:
                            str = "ۘۧ۟۠ۨۗۥۚۜۘۚۖۘۘۨۜۜۘۙۜۗۜۛۖۥۦۜۘۢۗۥۘۙۚۛۜۖۦۜۚ۫ۨۧۙۗۧۜۙۚۙۨۙۡۢۚۧۤۛۨۘ";
                            continue;
                        case 9:
                            str = "ۗۚۦۘۧۘۦۘۥۜۦۖۙۘۘ۬ۜۡۨۥۡۧۧۜ۬ۨ۠۟۠۫ۡۗۧ";
                            continue;
                        case 10:
                            break;
                        case 11:
                            str = "۠ۗ۬۬ۚۡ۠ۧ۬ۥۛۨۡۜۦۘ۬ۛ۬ۥ۬ۛ۫ۗۨۘۦ۟ۙۚ۫ۦ";
                            continue;
                        case 12:
                            str = "ۗۛۥۧۜ۠ۢۡۡۘۥۨۜۘۖۙۡۘۧۖ۠ۢۘۦۗۨ۫ۗ۠ۥ۠ۜۜۘۛۢ۟ۨۖۢ";
                            continue;
                        case 13:
                            str = "۟ۡۚۦۡ۬ۛۨۢۧ۬ۛۢۚ۠ۡۙۗۚۢۦ۠۫ۛۦ۠ۥۘ۫ۤۧۢ۟ۥۘۡۢۧ";
                            continue;
                        default:
                            str = "ۨۖۘۘ۬ۘۜ۬ۤۨۥۖۤۥۨۗۧۡۙۧ۫ۨ۬ۛۡۘۜۖۜۘ۠۫ۚ۫ۛ۟ۢۤۨۘۘۖۘۙۢۤ";
                            continue;
                    }
                    str = "۠ۧۢۜ۫ۢۦۥۨۡۡۘ۠۟ۦۧۘۜۘۦ۠ۜۘۙۡۚۙۙۨ۠ۜۖۘ";
                    break;
                case 879957777:
                    String str16 = "۠۫ۖۘۜۢۦ۟ۡ۠۬ۦۡۙۦۧۘۙۗۧۗۚۙۥۜۛ۬ۖۖۘ۫ۡۢ";
                    while (true) {
                        switch (str16.hashCode() ^ 144597117) {
                            case -1629907010:
                                str = "ۗۗۖۚۛۖۧۧۘ۟ۜۘ۬ۤۥۘۘۖۙۤۖۥۡۙۨۢۡۜۘۦۛۖۜۚ۫ۘۘۦۘۜۧۡۘۡ۫ۡۧ۬ۢ۠۟ۦۡۚۨۨۜ";
                                continue;
                            case -1103558191:
                                str = "۟ۨۜۙۦ۠ۥۨۦۘۦ۟ۡۘ۟ۛ۠ۗ۟۟ۙۗۡۘۖ۠ۘۤ۠ۢۡۥ۠۟۬ۥۘۤ";
                                continue;
                            case 628129790:
                                String str17 = "ۙۧۜۥۚۚۤۧۙۖ۫ۧ۠ۥۙۖۗۨ۬ۚۙۗۨۥۘ۠ۢۦۘۖۢ۠ۖۙ۫ۦۨ۫ۜۘۢۥ۟ۛۖ۬ۚ۟۬ۖ";
                                while (true) {
                                    switch (str17.hashCode() ^ 1610706540) {
                                        case -527561130:
                                            str16 = "ۛ۫ۦۘۖۖۡۘۖۚ۠ۙ۟ۢ۠ۢۛۦ۟ۘۘ۬ۖۖ۟ۧۜۘۚۤۡۘۡ۠ۥۘ۬ۧۖۘۧۜۙۦۚۚۖۜۨۦۚۙ۟ۚۖۘۗۨۨۛۜۛ";
                                            break;
                                        case 712769804:
                                            str17 = "ۙۤۦۚۗۘۘۧۚۡۘۡۢۧۡۢۢۖ۟ۡۘۤۨۨۡۘ۠ۧۛۡۘۘ۠۬ۙ۫ۙۡ۬۫";
                                            break;
                                        case 815325244:
                                            str16 = "۬ۨۗۨۘ۫ۘ۫۬ۡۖۘۘۚۜۘ۟ۙۖۛۦ۠ۨۢ۫ۚ۫ۘۢۤۤۗ۠۬ۡۙ";
                                            break;
                                        case 1708569012:
                                            str17 = i4 != 202 ? "ۡ۫ۜۨۡۧۧۛ۟ۡۖۧۘۙ۠ۨ۟ۚۚۙۘۗۤۜۘۚۜۤۡۨۦۘ" : "ۢۢۡۙ۠ۡۖۡۜۛۢۥۘ۫ۦۘۘۤۚۦ۬ۨۦۜۖۘۚۤ۟ۚۦۚ۫ۧۡۘۢ۠ۖۘۥ۬ۙۙۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1602687917:
                                str16 = "ۤۨ۠ۨۙۧۨۦۦۙۦۘۚۦۜۘۧۧ۫ۢ۠ۜ۬ۨۦۚۙۨۘ۠ۨ۬";
                                break;
                        }
                    }
                    break;
                case 968031196:
                    break;
                case 969035747:
                    b7.OooO0Oo().OooOOO0(longExtra);
                    str = "ۢ۬ۥۖۨۜۧۨۙۡۡۡۘۛۜۚۗ۟۟ۙۜۨۘۘۖۘۘۦۘۛۢۘۤۨۨۥۘۢ۫ۖۘۡ۫۫۠ۥۙ۠ۗۖۘۛ۠ۗ۬ۘۥۥۨ";
                    break;
                case 1047995047:
                    b7.OooO0Oo().OooO0OO = 1;
                    str = "ۚۙۚ۬ۡۖۨۜ۬ۘۦ۟ۢۚ۟ۘۛۥۢۦۘۧۢۨۖۗۡۘۢۛۙۦۢۥۤۘۤ";
                    break;
                case 1087123099:
                    this.OoooOoO.postDelayed(new OooO00o(this), 1000L);
                    str = "۟ۙۘۘۦۤۜۨ۟ۛۘ۟ۘۚ۬ۡۘۨ۬ۥۘۥۧ۬ۜۛۜۘۢ۬ۦۙۤۛۢۚۖۢۧۦۘ۫ۗۚۤۙۘۘۛۜۙۨۙۡۘ";
                    break;
                case 1088500423:
                    String str18 = "ۜ۟ۥۡۖۨۢۤ۠۬۟۟۠۠۟ۦ۠ۜۙۨۚۢۚۖۘۖۗ۟ۤۧۥ";
                    while (true) {
                        switch (str18.hashCode() ^ 1674755304) {
                            case -1434287347:
                                str = "ۚۦۜۚۦۜۚۖۙۡۧۡۘۧۨۛۢۛۖۦۥۜۧۙۛۖ۬ۦۘۙۨۨۡ۫ۖ۟۫ۛ";
                                continue;
                            case -597897472:
                                str = "ۜۗ۟ۤ۟ۖ۬ۜ۠ۗۢۧۛۖۧۘۢۤۖۘۧۚۛۢۨۜ۬۟ۡۦ۠ۜۢۖۜۘ۬ۧۖ";
                                continue;
                            case 240366959:
                                String str19 = "ۖۡۘۘۛۗۖۜ۫ۨۘۙۙۚ۟ۚ۬۠ۗۢۛۡ۟ۖ۫۫ۘۘۧۜۚۢۚۡۘۨۧۘۘۦۖۖ۠ۧۥۦ۫۫ۢ۠ۡۘ";
                                while (true) {
                                    switch (str19.hashCode() ^ (-36196111)) {
                                        case -1797017238:
                                            str19 = "۟ۘۨ۟ۛ۟ۙۡ۫۠ۤۘۘۘ۬ۡۙ۠ۘۘۚۙۧۨۦۗۚ۫ۚۥۨۚ۬ۚۨۜۤۜ۬ۘ۬ۗ۬";
                                            break;
                                        case -1509955207:
                                            str18 = "۠ۨۜۘۙۤۨۘ۠ۖۜۤ۠ۜۛۛۘ۬ۨۧۧۥۡۚۚ۟ۤۗ۠ۙۤۗۚۦۤ۬۟ۧۧۖۖۚۛ";
                                            break;
                                        case -997915646:
                                            str19 = i4 != 201 ? "۬ۥۘۘۚۧۘۖ۫ۧۥۤۡۘۚ۟ۜۨۖۥۘۜ۠ۜۘۚۤۦۤۛۖۖۤۜۘۥۛۥۤۖ۬۠۟ۖۥۘۨ۬ۙۥۤۡۘ" : "ۖۖۤۡۘۦۘۨۥ۠ۜۨ۫ۛ۬۟ۡ۬ۡۛۦ۠ۗۛ۟ۧۙۤ۫ۛۖۧۘۡۚ۠ۥ۬ۖۜ۬ۜ";
                                            break;
                                        case -634705718:
                                            str18 = "ۥۖۦۘۤۛ۬ۨۘۡۦ۠ۜۘۡۜۛۢۚۙۗۨۜۘۨۨۡۘۙۛۧۗۤۗۚۚۘۥ۫ۦ";
                                            break;
                                    }
                                }
                                break;
                            case 2104043503:
                                str18 = "ۜۘۧۘۡ۠ۥۘۥۘۚۡۡۥۘۨۛۖۘۡ۟ۤۥۖۖۘۙۡۗ۫ۖۘۘۗۥ۬ۨ۬ۦۘ۬ۘۡۜ۬۟۬۫ۡۥۥۡۘ۟ۛۗۘۜۦۤۥ۬";
                                break;
                        }
                    }
                    break;
                case 1093629138:
                    stringExtra = intent.getStringExtra("localGamePackage");
                    str = "ۗۡ۫۫ۗۗۚۖ۬ۢۗۜۘ۠۫ۙۘ۬ۡۘ۫ۢۥۗۥۤۘۡۚۡۧ۠ۛۛۨۤۥۦ۬۟ۘۘ۬۫ۜۥۡۨ۟۬ۥۘۧۡۨۘۨ۟ۗ";
                    break;
                case 1254773963:
                    str = "ۙۙۨۘ۫ۨ۬ۦۡۜ۟ۡۗۗۗۖۘۖۥۖ۟ۨۖۛۜۤۖۧۧۢۥۚۙۦ۬ۡۖ۬ۜۦۨۘۦۦۙ";
                    break;
                case 1321454267:
                    str = "ۘۡۡۨۨۥۘۥۚ۫۬ۘۢۛۦ۟ۦۙ۟ۛۘۚۙ۟۬۫ۥۧۢۙۡۤ۠ۚۡۥ۠۬ۘۨ۫ۦۗۛۢۥۖۨۨۘۙۨۜۧۢ";
                    break;
                case 1340977528:
                    String str20 = "ۙۨۘۘۖ۬۟ۘۦ۠ۚۙ۫ۖ۠ۛ۟۠۫ۡۘۥۜۨۚۨۦۡۘۛۜ۬ۗۙۘۘۨۦ۟";
                    while (true) {
                        switch (str20.hashCode() ^ 523920041) {
                            case -1962989505:
                                String str21 = "۟ۢ۠۫ۖۧۛۘۖۘۨۖۚۨۘۜۜ۟ۘۖۜۗۗۘۥۢ۬ۢ۫ۤۥ۫ۚۜۧۢۧۢۙۡۗۢۢۗۥ۫ۖۘۖۚۦۛۧۡۘ";
                                while (true) {
                                    switch (str21.hashCode() ^ (-2134026986)) {
                                        case -1023710740:
                                            str21 = "۟ۡۢۡۘۦۙۚ۫ۧ۠ۖۘۨۙۤۨۘۚۙۚۛ۫ۡۛۜ۬۟ۤۘۘ";
                                            break;
                                        case 823774150:
                                            str21 = intent != null ? "ۗۜ۫ۛۨۘۘۜۡۤۥۦۘۨ۬ۦۖۨۧۧ۟ۛۤۚۨۢۥۡۦۙۡ۬ۖۢۗۤۢ" : "ۥۡۢۜۙۤۛۨ۟ۛۨ۟ۜۡۖۘۤۖۧ۬ۡ۬ۖۡۡۘۦ۫۟ۥ۫ۘۨ۫ۜۘ۫۫ۙۙۛۨۘۜ۬ۤ";
                                            break;
                                        case 954482715:
                                            str20 = "۟ۡۜۢۡۦۜۙۗۖۧۡۢۧۘۘ۠ۥۦۨۘۙۗۙۖۘ۠ۖۦۡۖۥ";
                                            break;
                                        case 1494360922:
                                            str20 = "ۧۧۤۗۨۙۛۙ۟۬۫۬ۨۙۦۘ۟ۧۛ۫ۤۡۗۤۘۘۧۦۨۖ۟ۦۛۧۚۛ۫ۡۡۡ۬ۦۧۢ";
                                            break;
                                    }
                                }
                                break;
                            case -172191267:
                                str20 = "ۡۥ۟ۗۚۘۜۦۘۦۖۜۙۛ۬ۤۜۢۛ۬ۜۧۨ۟ۢۘۛۤۜۦۘ۬ۧۨ۠ۨۨۘ۫ۢۚۡۨۢۦۖۥ۠ۡۦۢۧۥۘۤ۟۠";
                                break;
                            case 179999016:
                                str = "ۙۥۥۛ۟ۧۦۖۡۘۗۚۖۡۨۥ۫ۚۥۘۦۘۖۘۥۖۗ۠ۘۛ۠ۡ۫ۙۚۖۘۥ۠ۥ";
                                continue;
                            case 1212158637:
                                str = "۟ۖۚۖۧۙۛ۠ۙۚۥۧۘۦ۫ۜۢۜۘۘۙۜۛۛ۠ۨ۫ۖۧۘۗ۬ۥۘۦۖۘۥۦۗۢۦۘۘۚ۟ۡۤ۬ۙۤ۬ۦ";
                                continue;
                        }
                    }
                    break;
                case 1386748742:
                    Process.killProcess(Process.myPid());
                    str = "ۥۚۘۖۧۘۨ۬ۤۗۤۢ۟ۧۦۨۖۜۘۨ۠ۙۧۢۡۖۥۜۗۦۖۘ";
                    break;
                case 1527056793:
                    str = "ۦ۬ۘۘۥۖ۬۠ۧۦۘ۫۫۬ۚۦۜ۫ۖۤۡۨۡۘۖۚۨ۟ۘۡۘۜۚۖۘۧۜ۠ۖۨۖۨۤۨۡۛۚ";
                    break;
                case 1618650759:
                    String str22 = "۬ۥۢۜۖۤۨۤۥۖۛۥۙۚۦۜۖۜۘۙۖۧۘۘۨۢۨۡ۠ۖۜۚۛۗۨۢۙ۫ۜ۬ۢ۠ۦۥۘ";
                    while (true) {
                        switch (str22.hashCode() ^ 1117977234) {
                            case -1453710923:
                                str = "۬ۨۗۧۛ۠ۘۥۖۘۡۙ۟۟ۤ۠۠ۘۙۧۘۢۧۨۡۢۖۦ۠";
                                break;
                            case -1316329401:
                                String str23 = "ۖۛۥۘۘ۠ۖ۬ۛ۬ۡۢۘۡۘۘۗۤ۟ۧ۫ۧۥۜۡ۫ۧۥۘۚۡ۟ۜ۬ۨ۫۬ۖۛۨۡۘۢۥۚۖۡۘۜۥۙ";
                                while (true) {
                                    switch (str23.hashCode() ^ (-1713827838)) {
                                        case -1068008195:
                                            str23 = "ۢۦ۫ۜ۬ۗۦۛۦۚۜۘۤۡۤۦۦۡ۠۫ۘۘۘۤۜۘۗۧۙۚۛۗۜۡۡۛ۫ۡ۬۟ۦۘۗ۠۫ۗۖۖۘۦۙۢۦۢۧۚۚۚ";
                                            break;
                                        case -155767590:
                                            str23 = b7.OooO0Oo().OooO0OO != 2 ? "ۚۡۥۦۘۨۘۨۛۢ۟ۦ۠ۜۢۥۘ۠ۖۨۗ۬ۦۘۛۜۥۘ۬۠ۛۖۛۡ" : "ۢۥۨۘۜ۟۬۠ۡۘ۠ۥۡۙۙۥ۬ۧۥۖ۠۟ۤۡۘ۬۟ۢۖۖ۫";
                                            break;
                                        case 465153782:
                                            str22 = "۟ۘۧۘۜۗ۫ۚۡۘۘۦۧۜۡۤۡۦ۫ۚۦۘۗۙۚۙ۠ۙۦۡۢۤۗۘۘۗ۟ۖۜۦۙ۠ۗۗ۫ۙ۬ۚ۟ۖۘۦۖۥۘۧۜۨۘ";
                                            break;
                                        case 1822322624:
                                            str22 = "ۚۚۙۗۡۜۙۤۖۢۖ۬ۚۦ۟ۢۚۘۘ۟ۨۥۘ۠۫ۘۜۧۢۘۖۚ";
                                            break;
                                    }
                                }
                                break;
                            case -782580219:
                                str22 = "ۨۢۜۘۘۧۢ۬ۥۨۢ۫ۨۗۨۜۨ۬ۡۧۘۢۧۦۘۖۧۘۚۧۜۘۜۖۧ۠۬ۨۚۢ۠ۜۛۥۘ۬ۖۗۥۤۡ";
                                break;
                            case 199826243:
                                break;
                        }
                    }
                    break;
                case 1654547427:
                    intExtra2 = intent.getIntExtra("userId", 0);
                    str = "ۤۥۦۙۖۡ۫ۡۗ۠ۡۡۘۤۧۧۡ۫ۢۡۗۘۘۤۨۙۛۛۤۥۢۢۙۖۛۘۧۙ";
                    break;
                case 1673430171:
                    i7.OooO().Oooo0oo();
                    str = "ۖۖۡۥۘۡۗۙۦۗۜۥۥۦۡۤۥۛ۟ۛۦۙ۠ۤۤۜۘۦۨۖ۫ۚۜۘۛۨۖۢۘۘ۠ۛۙ۬ۢۛ۬۬ۜۘۖۥۢۖۨۧ";
                    break;
                case 1724144919:
                    z6.OooO0Oo().OooO0oO();
                    str = "ۤۦۥۖۖۖۘۜۗۜۘۙۛۨۘۙۢۨۖۗۡۚۧۨۗۧۥۘۜۥۖ۫ۜۘۘ۠ۛۘۘۧۖ۠۠۠۟ۚۦ۬ۡ۟ۛ۬ۚۖۧۨ۠۬";
                    break;
                case 1904853396:
                    str = "ۡۚۦۘ۬ۚۡۘۦۢۥ۠ۙۘۖۨ۫۠ۘۥۗۜۧۛۨۛۛ۠۬ۤ۟ۥۘۗۤۨ۬ۨۤۧۥۘۙ۠ۧ";
                    i4 = i3;
                    break;
                case 2033882245:
                    intExtra = intent.getIntExtra(d3.OooO, 0);
                    str = "ۚۡۙۜۗۘۘۤۢۛۤۨۥۙۧۘۘۚۘۖۘۥۡۘۥۥۘ۫ۤۧۜۚ";
                    break;
                case 2122442809:
                    i7.OooO().OooOooO(stringExtra);
                    str = "ۚ۠ۡۧ۫ۚ۠ۚۥۘ۫ۘۦۘۜۥۨۘۡۙۡۛۨۗۛۖ۟ۘۖۘۛۚۦۘۘۡ۟۫۟";
                    break;
            }
            return 2;
        }
    }
}
