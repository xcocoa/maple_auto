package com.cyjh.elfin.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.anythink.expressad.d.b;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.util.ArrayList;
import z2.t4;

/* JADX INFO: loaded from: classes.dex */
public class NetStateReceiver extends BroadcastReceiver {
    private static final String OooO00o = "android.net.conn.CONNECTIVITY_CHANGE";
    private static final String OooO0O0;
    private static boolean OooO0OO;
    private static int OooO0Oo;
    private static BroadcastReceiver OooO0o;
    private static ArrayList<OooO00o> OooO0o0;

    public interface OooO00o {
        void OooO00o();

        void OooO0O0(int i);
    }

    static {
        String str = "ۤۗۧۜۛۨۘۨۜۡۘۛ۠ۗۨ۫ۘۘۗۖ۠ۘۖۧۢۦ۫۬ۤ۠ۥۡ۠ۘ۫ۖ۠ۧۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 5) ^ 387) ^ 674) ^ (-127559631)) {
                case -1579522381:
                    OooO0O0 = NetStateReceiver.class.getSimpleName();
                    str = "ۤۥۨۦۤۜۛۚ۠ۘۥۖۥۦ۬ۜ۠ۖۚۙۘۘۤۗۡۗۡۧۘۥۦۖۘۦۥۖۡ۬ۧ۟۫ۥ۬ۨ۬ۜۛۦۨۤۖۘۦۙۘۚۚ";
                    break;
                case 135259642:
                    OooO0o0 = new ArrayList<>();
                    str = "ۡۘۦۘۖۤۜ۠ۖۧۘ۫ۤۦ۫ۚۤۤۢۜ۟ۚۘۘۧۖ۫ۗۥۛۥۦۚ";
                    break;
                case 354658742:
                    OooO0OO = false;
                    str = "ۜۖۗۚ۠ۖۢ۟ۨۥۚۧۥ۟ۦۘۚ۬ۥۤۚۡۘۙ۟۟ۙۥۖۘۥۥۚۘۤۦۗۢۖۚ۟۬ۛۦۦۦۤۨۡۘ";
                    break;
                case 1073520662:
                    return;
            }
        }
    }

    public static void OooO(Context context) {
        String str = "ۦۤۛ۟ۧۡۢۖۡۘۚۦۥۘۤۧۨۜ۟ۚۙۙۦ۠ۨ۫ۤ۬ۖۘۧ۟ۡۘۧ۫ۡۥ۬ۜۘۡ۠ۗۙ۫ۙ";
        while (true) {
            switch (str.hashCode() ^ (-808388938)) {
                case -1578545619:
                    str = "ۦۘۤۚۦۚۡۜۧۤۢۙۤۡۛۗۥۨۘۧۗۨۥۛۤ۫ۨ۬ۧۜ۫ۨۨۜۘ۫ۧۡ۠۬ۡۘ۬ۦۧۘۨۜۨۘۨۥۖ";
                    break;
                case -1441344585:
                    return;
                case 166369082:
                    try {
                        context.getApplicationContext().unregisterReceiver(OooO0o);
                        return;
                    } catch (Exception e) {
                        return;
                    }
                case 2092249687:
                    String str2 = "ۖۥۦۘۢۡۦۙ۟ۘۤۦۗۥۡۘۡۦۘۚۦۘۙۘۥۙۖۨۜۛ۠";
                    while (true) {
                        switch (str2.hashCode() ^ (-1379319691)) {
                            case -885561339:
                                str2 = OooO0o == null ? "ۜۙۜۘۧۗۥۦۥ۫ۦۥۧۘۢۦۧۘۡۜۖۜۜۥ۠ۦۥۘ۠ۙ۟ۨۖۗۛۢۤۦۨۖۘ۟ۜۘۙۥۤ" : "ۡۗۙۨۜۡۨۖۜۙ۠ۖۘۥۜ۬ۢۤ۠ۨۜۨۖ۫ۜۧۢۥۘۤۤ۫ۙ۠ۜ۫ۧ";
                                break;
                            case 77970307:
                                str = "ۖۨۧ۟ۤۢۛۜۖۘ۬ۦۗۥۡۖۘۚۧۖ۫ۚۧۖۦ۫ۖۛۘۘۙ۠ۥۘۤ۟۫۠ۖۦ";
                                continue;
                            case 506051240:
                                str2 = "ۙۚۨۚۨۗ۟ۜۖۖۦۖۘۦ۠ۙۗۖۥۘۘ۫ۜۘۙۛۜۘۚۜ۬ۜ۟۠ۥۚۜۘ۫ۦۖۘ";
                                break;
                            case 693646998:
                                str = "ۗۢۤۢۚۨۖۦۘۘۗۚ۬ۙۦۘۛ۠۬۫ۖۛۡۚ۫ۖ۬ۖۢ۬ۨ۬ۧ۫۠ۡۖۛۤۢۜۥۖۘ";
                                continue;
                        }
                    }
                    break;
            }
        }
    }

    public static void OooO00o(Context context) {
        Intent intent = null;
        String str = "۠ۖۗۨۛ۠ۜ۫ۨۘۖۗۛۤۦۖۘۜ۟ۘۘ۬ۖۖۖۥۘۖۜۢ۟ۗۡۘ۫ۖۜۘۡۡۦۘ۟۫ۥۦ۫۠";
        while (true) {
            switch ((((str.hashCode() ^ 76) ^ 113) ^ 646) ^ (-95856283)) {
                case -2132680272:
                    intent.setAction(OooO00o);
                    str = "۠۬ۘۘۧۖ۬ۤۧۚۚۨۡۖۦۘۘۗ۟ۜ۠ۤۜ۫ۥۘ۬ۘۨ۬ۧۦۙۛ۟۫۫۟ۢۛۥۘۦۤۜۘ";
                    break;
                case -1357791541:
                    intent = new Intent();
                    str = "ۚۚۙۘۛۢ۬۫۫ۧۥ۟۫ۧۜۘۖۜ۫ۙۙۦ۫ۜۗۛۙۨۦۗۨۘۙۦ۟ۜۗۡۦ۬۬ۤۨۘۡ۠ۥۘۙ۟ۡ";
                    break;
                case -877099990:
                    context.sendBroadcast(intent);
                    str = "ۛۦۜۙ۟ۖۜۤۦۦۛ۫ۙۚۚ۬۬ۗ۟ۨۘۨ۠۬۠ۚۨۘۨۢ۫ۧۧۗۚۙۨۘۛ۬۟۠ۘ۬";
                    break;
                case 1386936673:
                    return;
                case 1905481101:
                    str = "۫ۚ۫ۢۜۘۘۙۦ۠۠ۧ۟ۗۘۘ۠ۡۦۘۧۚۙۧ۟ۨۘۨۥۨۘ۫ۤۚ";
                    break;
            }
        }
    }

    public static int OooO0O0() {
        while (true) {
            switch (((("ۗۘۧۢۙۧۜۨۙۨۖۥۘ۬۠ۖۘۥ۫ۘۘۖۚۖۘ۫ۚۤۖ۟۠۟ۙۜۘۘ۫ۜ۠ۤۥۘۖۧ۠۟ۖۡۚۢۗۤ۫ۘۢ۠ۖۘۢۗۘ".hashCode() ^ 155) ^ 290) ^ 113) ^ 1118955624) {
                case 1336525028:
                    return OooO0Oo;
            }
        }
    }

    private static BroadcastReceiver OooO0OO() {
        String str = "ۢۚ۠ۧۛۙۤۙۨۙۧ۟ۘۜۥ۠۬ۢ۬ۢۧۥۤۘ۟ۥ۬ۖ۟ۘۘۚۜۜۘۘۥ۬";
        while (true) {
            switch (str.hashCode() ^ 376790885) {
                case -2018381265:
                    String str2 = "۟۬ۖ۬۟ۡ۠ۘۙۚ۟ۦۧۙۗۚۜۙۥۥۧ۬ۨۡ۬ۜۨۚۚۗۘۖ۫ۜۦۡۧۤۨۙۤۥۘۗۗۥۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1087782265)) {
                            case 446945515:
                                str2 = OooO0o != null ? "۫ۘۧۘۦۨۖۜۢۨ۟ۖۡۘۢۦۧۘۡۜۗۨۧۨۛۗۨۘۦۢۡۖۙۥ۠ۤ۬۟ۚۡ" : "ۘۦۡ۠ۘ۟ۛۤۗۗۗۛۦۥ۬ۥۗۤۤۦۥۗۥۦۤۧۧۡۥۘ۬۠ۖۘۘۜۢ۟ۡۘۙۧ۬";
                                break;
                            case 687211554:
                                str2 = "ۛ۟۬۫۫ۡ۟ۥ۟ۙۖۡۨۦۖۥۜۡۘ۠ۧۜۢۗۚۛۡۛۨۖۖۘۦۡۧ۫ۢ۫";
                                break;
                            case 1762844324:
                                str = "۬ۤۢۚۤۜۘۜۗۖۖۦۢۤۤۜ۠ۖۚۥۚۢۖۘۤۖۨۧۜۖۖۘ";
                                continue;
                            case 1797098268:
                                str = "ۦ۟۫ۜۘ۫ۢۥ۠ۚۤۡ۬ۘ۬ۙ۠ۘۤۨۚۢۦ۬ۤۙۗۡۨۘ۠ۖ۟ۘۡ۠۟ۡۡۢۙۧ";
                                continue;
                        }
                    }
                    break;
                case -1374812376:
                    break;
                case -769522391:
                    synchronized (NetStateReceiver.class) {
                        String str3 = "ۙۖۙۜۥۜۘۜۥۖۡۦۡۚۛۘۤۢ۫۫ۤۥ۟ۥۡ۟ۗ۠ۜۡۚ";
                        while (true) {
                            try {
                                switch (str3.hashCode() ^ (-2010518989)) {
                                    case -588602007:
                                        break;
                                    case 1107884691:
                                        OooO0o = new NetStateReceiver();
                                        break;
                                    case 1203988145:
                                        String str4 = "ۜ۬ۥ۠۬ۢۛۦۚۤۧۙۨۙۧ۠۠ۙ۠ۗۚ۫ۧۙۡۚۡۘۨۙۜۘ";
                                        while (true) {
                                            switch (str4.hashCode() ^ 145850081) {
                                                case -1471364359:
                                                    str3 = "ۙۥۥۥۖۦۘۧۘۤۙ۫۠۠ۦۥۘۗۤۦۘۙۧۨۖۧۗ۫ۢۘۘۦۖ۫";
                                                    continue;
                                                case 1021107738:
                                                    str3 = "ۥۦ۟۫ۜۛۘۤۜۘ۠ۨۙ۫ۜۜۘ۠ۜۙۥ۬ۜۘۨۘۚۜۢۦۥۡۨ۠ۚۡۢ۬ۚۜ۬ۧۨ";
                                                    continue;
                                                case 1218219267:
                                                    str4 = OooO0o != null ? "ۤۤۨۘۘۘۥۘ۟ۖۜۘۖۧۙ۫۠ۖۘۥۡۚۧ۟ۦۘ۬۟ۥۘۤۗۢ۫۬ۨۗۗۢ۫ۖۥ۫۫ۜ۟ۙۜ" : "ۛۛۗۦۢۜۛۗۥۘۦۜۦ۫ۙ۠۫ۥۨۛۦۧۘۦۤۤ۟ۖۦۘ۟ۚۥ";
                                                    break;
                                                case 1517361194:
                                                    str4 = "ۗۧۨۘۤ۟ۘ۟ۧۥ۠ۧۖۥ۬ۚۗ۠ۜۖۖ۬ۤۛ۫ۛۘ۟ۤۗۖ";
                                                    break;
                                            }
                                        }
                                        break;
                                    case 1867516698:
                                        str3 = "ۨ۟ۡۘ۫ۗ۫ۨ۫ۛۧۤۧۖ۬ۧۨۘۛۖۨۧۢۚۙۚۖۚۨۘۘۡۦۜ۟ۛ";
                                        break;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        break;
                    }
                    break;
                case -268286515:
                    str = "ۜۚۘۘۥۥ۫ۡۡۛۢ۫ۗۤۘۜۚۜۥۖۦۢ۟ۛۙ۟۫ۤۧۡ";
                    break;
            }
        }
        return OooO0o;
    }

    public static boolean OooO0Oo() {
        while (true) {
            switch (((("ۧۗۛۛ۬۫ۡۨۧۙۨۧ۟ۨ۟ۜ۫ۛۛۤۧۚۡۜۘ۫۫ۦۚۢۨ۫ۨۖۘ۫۬ۜۘۤۜۨ۫۟ۖۘ".hashCode() ^ 753) ^ 968) ^ 752) ^ 953752007) {
                case 363300706:
                    return OooO0OO;
            }
        }
    }

    public static void OooO0o(Context context) {
        IntentFilter intentFilter = null;
        String str = "ۨ۫۬ۜۖۜۧۚۨۘ۬ۛۨۘۨ۫ۢ۠۫ۨۛۚ۫ۘۢۨۚ۟ۢۨۨۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 170) ^ 923) ^ 916) ^ 1869389962) {
                case -1885085340:
                    intentFilter.addAction(OooO00o);
                    str = "ۛۛۥ۬ۥۦۘۛۥ۟۠ۗۜۚۘۙۤۙۛ۫ۜۙ۫ۚۛۤۡۜۘۗ۠ۥۗۧۢۘۘ۬ۘۖۨۘۜۧ۫ۖ۟ۖۚۚۖۘ";
                    break;
                case -1182535528:
                    intentFilter = new IntentFilter();
                    str = "۟ۥۚۧۡۢ۬ۗۡۙۨۚۧ۟ۥۘۨۖۚۥ۬ۙۛ۬ۙۤۗۙ۟ۖۘۚۦۦۛ۠ۜۘۨۙۧۜۗ۟ۤۘۜۘۤۛۛۛۡۜۘۤۨۧۘ";
                    break;
                case -1037655551:
                    str = "ۜ۫ۜۖۡۦۛۜۥۘۢۡۜۘۙۧۥۘۥۤۥۜۡۚۦۥ۟ۢۜۙۥۧۥ";
                    break;
                case -737756276:
                    return;
                case 1552252644:
                    context.getApplicationContext().registerReceiver(OooO0OO(), intentFilter);
                    str = "ۤۙۤۚۖۚۛۚۖۘۘ۫ۨۧۦۛۤ۠ۨۘۛۥۨۙۛۖۘۛۡۦ۬۫ۖۗ۠۠ۘ۫ۗ";
                    break;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0018. Please report as an issue. */
    private void OooO0o0() {
        OooO00o oooO00o = null;
        String str = "۠ۨۡۜۛۖ۬ۜۗۖۦۗ۠۠۟ۙۙۙۘۥۤۛ۫ۖۘ۫ۨۧۢ۠ۡ۟۠ۤۛۦۨۘۖۚۚۥۖ۫۟۠۟۠ۨۨۘ";
        int i = 0;
        int i2 = 0;
        int size = 0;
        while (true) {
            switch ((((str.hashCode() ^ 841) ^ 41) ^ 360) ^ 1960673914) {
                case -1828681872:
                    String str2 = "ۚۚۨۘۢۢۥۚۗ۬ۢۙۘۘۧۖۚۦۡۧۜۨۛ۫۬۬۬ۤۧۗۡۘۘ۫ۜۘۜۤۨۧۨۘۘ۬ۛۥ";
                    while (true) {
                        switch (str2.hashCode() ^ 1214279033) {
                            case -1982130198:
                                str2 = "ۢۖۦۙۘۜۘۛۨۘۗۖۥ۟ۚۗۨۚ۟ۥۢۖ۫۫ۘۘۤۜۡۘۧۦ۠ۙۦۤۡ۠ۦۘ۠۬ۢۜۚۨ";
                                break;
                            case -156951333:
                                break;
                            case 598125672:
                                String str3 = "ۤۥ۟۫ۧۛۙۧۥۧۚ۬ۤۖۡۡ۠ۢۚۖۡۘ۬ۢ۫ۙۗۚۗۢ۬ۥ۫ۡۘۚۤۢۥۧۘۚۡ۬";
                                while (true) {
                                    switch (str3.hashCode() ^ 2006095210) {
                                        case -1555343554:
                                            str2 = "ۢۘۘۘۢۗۗ۫ۜ۠۬۬ۧۛۛۖۘۨۛۜۚۦۨ۬۟ۗۤۡۘۢۛۧ۫ۦۨ۫ۗۛۚۖ۟۠ۛ۠";
                                            break;
                                        case 635142323:
                                            str3 = "ۙۤۨۘۜۘ۬ۖۧۤۡۘۦۗ۬ۘ۠ۛ۬ۚۥۙۧ۟ۜۘۜ۬ۦۤۙۥۘۙۚۙۨۧۦۜۗۛۖۢۖۘ";
                                            break;
                                        case 1699663406:
                                            str2 = "ۤۘۥۘۙۛۥۚۖۗۜۨ۫ۡۛۖۘ۬ۨۥۘۥۧۖۘۛۗۨۦۢۡۡۙۖۡۥۖۘۗۧۨۗۛۨۘۨ۬ۧ";
                                            break;
                                        case 2029644368:
                                            str3 = i2 < size ? "۠ۚۚ۫۫ۨۘ۟ۖۨ۬ۢۛۛۗ۠ۗۧۗ۬ۥۡۤۥۛۡ۟ۙۤۛۨۧ۫ۥۚۘۥۨۧۖۘۘۥۜ" : "۫۠۬ۜ۫ۘۧۖۥۡ۫ۘۗۨۡۘ۬۫ۘۤۘۤۗۖۗۛ۠ۦ۬۟ۙ";
                                            break;
                                    }
                                }
                                break;
                            case 808948787:
                                str = "ۙۙۘۘۢۥۦۘۨۦۚۙۖۜۖۗ۠ۜۥۨۥۢۘۘۡۨۘۘۤۙۗۥ۟ۢ";
                                break;
                        }
                    }
                    str = "ۧۗۢ۠ۧۙۨۦۧۘ۬ۙ۫ۢۨۜۦۗۤ۫ۡۨۛۦ۟۠ۚۖۘۥۨۗ";
                    break;
                case -1701215629:
                    i = i2 + 1;
                    str = "ۖۡۜۘ۫ۗۘۖۛ۟ۛۢ۫ۜۧۗۗۖۘ۬ۖۖۖۚۦۗۚ۠۬ۤ۫۬ۥ۟ۚۙ۬";
                    break;
                case -1685120624:
                    oooO00o.OooO0O0(OooO0Oo);
                    str = "ۨۘۢۡۨۚۖ۫ۙ۫ۗۥۡ۬ۙۙۦۤۧۨۘۥ۟۬ۚۥۗۙۨۙ";
                    break;
                case -1487997768:
                    break;
                case -1468983447:
                    String str4 = "۬ۦۦۘۡ۬ۨ۠۠ۖۘ۠ۛۘۘۘ۫ۜۘۤ۫ۧۚۢۨۡۥۧ۟ۦۦۖۗۥ۫ۦۘۡۜۧۢۥۡ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1633681575)) {
                            case -1996918729:
                                str4 = "ۡۘ۠ۧۧۗۜۘۚۡۡۘۦۨۧۘ۬ۙۖۚۙ۫۟۬ۤ۫ۙۖۛۚۖۥۧۤۘۧۘ";
                                break;
                            case -189735338:
                                str = "۟۬ۖۙۨ۟ۙۢۖۧۤۧۢۢۥۖۜۨۚۡۡ۟ۧۘ۟۠ۜۢۨۘۙۛۨۘۦۦۘۘ۫ۘ۬ۖ";
                                break;
                            case 685577437:
                                String str5 = "ۦۤۦۘ۬۬ۦ۫ۚ۬۫ۨۘۨۢۡۘۢ۟۫ۛۘۗۢۖۧۘۛ۫ۖۘۧۥۨۘۢ۠ۚۢ۠۫ۜۨۘۗۘۨۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-1676387646)) {
                                        case -1971906604:
                                            str5 = !OooO0o0.isEmpty() ? "۬ۤۡۘۚۚ۟ۥۗۦۚۢ۫ۜۚۗۧۤۗۦۘۦۗۥۘۙ۠۠۬ۨۡۘ" : "ۚۧ۬۬ۘۜۘۙۦۦۘۖ۫ۥۙۘ۬۠ۜۦۘۙۦۘۚۖۧۚۥۘۘۤۤۦۘ۠ۘۤۡۚ۬ۛۦۥۘۘۗۛۗۖۨۘ۬ۖ";
                                            break;
                                        case -1841555052:
                                            str5 = "ۧۛۦۘ۫ۢۗۦۖۛۗ۬ۥۘ۫ۚۡۗۥ۬ۘۙۦۘۢۘۨۜۡ۬ۜ۫ۜۘ۟ۡۖۢۨۧ";
                                            break;
                                        case -927077152:
                                            str4 = "ۧۙۜۘۤۢ۫۬ۢۤۥۜۥۜۦۧۘ۬ۥ۟ۡۢۡۘۦ۬ۡۚۘۙۡۘۨ۠ۢۘ۟ۖۘۘ";
                                            break;
                                        case 581984359:
                                            str4 = "ۚۘ۟۫ۡۧۘۤۥۜۘۚۥۘۘۚۙۡۘ۠ۗۨۦۜۘۘۢۦۚۥۤۙۖۧۘۧ۫ۦۘۜ۠ۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 857383705:
                                break;
                        }
                    }
                    break;
                case -1371363668:
                    str = "ۗ۟ۘۙ۠ۛۦۛۙۧ۬ۚ۬ۗ۠ۘۚۛۢۜ۟۠ۛۛۥۜۘۘۦۤۦۘ";
                    break;
                case -1344183666:
                    str = "ۧۥۘۤۤۙۛۧۥۤۖۢۗۛۚۖۨۗۗۨۙۨۦۢۦۤ۬ۗۦۢۤ۠ۘ۠ۚۘۨ۫ۡۘۦۤۢ";
                    i2 = 0;
                    break;
                case -1320613782:
                    str = "۫ۙۗۢۙ۠ۥۡ۬۠ۢۤۥۖۙۘۨۘۥ۟ۧۢۖۧۘ۬ۡۖۘۧۚۡۘ۟ۡۖۦۡۥۘ";
                    break;
                case -729106528:
                    oooO00o.OooO00o();
                    str = "۫ۙۗۢۙ۠ۥۡ۬۠ۢۤۥۖۙۘۨۘۥ۟ۧۢۖۧۘ۬ۡۖۘۧۚۡۘ۟ۡۖۦۡۥۘ";
                    break;
                case 214142084:
                    String str6 = "ۨۖۨۘۗ۠ۚۙۥۥۢۢۘۘۚۤۙۘۛۥۗ۬ۧۛۘۘ۬۫ۘ۬ۗۧۢۛ۬ۚۤ۠ۦۜۢۙۗۖۖ۟ۢۘۤۖۖۛۥۘۙۨ۟";
                    while (true) {
                        switch (str6.hashCode() ^ (-2141578261)) {
                            case -1810506895:
                                str = "ۡۛۥۘۙۜ۬ۤۗۗۥۙۨ۠ۜۥۖۘۙۜ۬۫ۤۢۨۘۧ۫ۛۡۗۡۘۖۨۧۗۗۖۘ";
                                continue;
                            case -1319147189:
                                str6 = "ۗۤۚۡ۫ۨۘۨۘۡ۬ۚۙۦۧۧۡۢۙۖۜۛۡ۫ۨۧۖۜۘۖۧۜۡۨۨۨۖۨۚۦۚۙۨۧۙۗۖۘۥۘ";
                                break;
                            case -1195579816:
                                String str7 = "ۚۨۥۥۤۧ۠ۡۘۥۦۦۘۥۗ۬ۗۙۦۗۚۚۜۦ۟ۤۛۦۖۖ۬";
                                while (true) {
                                    switch (str7.hashCode() ^ (-2026416471)) {
                                        case -838012170:
                                            str6 = "۫ۥ۫ۢۤۧۖۥۦۨۧۧۦۗ۬ۗۜۘۧۡۧ۬ۛ۬ۗۢ۠ۦۖۘ";
                                            break;
                                        case -525191081:
                                            str7 = OooO0Oo() ? "۬ۗ۠ۘۥۜۡۢ۬ۛۜۚ۟ۡۘۡ۠ۛۦۢۡۘۛۧۥۘۖ۫ۙۧۥۘۜ۬۠ۡۘ۠ۦۧۥ۬ۢۥۘ" : "ۗۥۦۘۦۡۖۘۖۜ۫ۘ۫ۡۘۚۢۛۛۚۘۘ۫ۜۢۙۚۢ۫ۤۛۘ۬ۖۘ۠ۖۜ۟۟ۙۤۘۜۘۚ۟ۥۨۤۨۗۥۘۧۗۛ۫ۤۙ";
                                            break;
                                        case -154628073:
                                            str7 = "ۙ۫ۜ۫ۚۢۨ۬ۡۤۘۧۚ۬ۛۨ۠ۗۚۡۨ۬ۜۨۘۧۡۧۘۗ۠ۦۘ۠ۜۜۥۚۜۘ";
                                            break;
                                        case 1066051489:
                                            str6 = "ۢ۠ۗۤۜۜۖۧۚۦ۠ۖۚۖۚ۬ۡۡۘ۟ۘۧۘۡۧ۫۠ۦۦ۠ۡۦۤۚۦۘۚ۠ۘۘ۠ۖۨ۬ۡۗۗۦۦۨۢۦۘۘۖ۠ۨۘۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1710869020:
                                str = "ۖۢ۫۫ۘۥۘۗ۫ۙۘۘۤۙۗۖۛۦۧۘ۟ۦۗ۠ۘۙۗۘۜۘ۫۬ۜۘۨۦۘ۫ۖۥۢۡۘۙۜۡۘ";
                                continue;
                        }
                    }
                    break;
                case 400960293:
                    size = OooO0o0.size();
                    str = "ۦۨۚۢۖۨۘۦۚۦۘۦۧۥۡۧۜۘ۫ۥۥۧۚۗۜۢۘۘۛۛۡۜۖۖ۠ۦ۟ۧۘۗۥۨۘۡۦۧ";
                    break;
                case 505579568:
                    str = "۠ۢۘۘۡۛۡۤۙۡۘۖۧۤ۬ۛۘۜ۟ۡۛۜ۠ۙۛۨۧۘۘۦۨۙۤۢۙ۟۫ۨۚۙ۟ۡۨۨۢۧۨۘۖۤۢ";
                    oooO00o = OooO0o0.get(i2);
                    break;
                case 654290333:
                    String str8 = "ۨۦ۫ۢۛۚۜ۬ۥ۬۫ۢۛۗۤۙۨۡۡۤۗۘۡ۟۫۬۬۟ۡۛ۬ۢۖۧۘۜۨۧۘۨۙۙ۟ۙۜۨ";
                    while (true) {
                        switch (str8.hashCode() ^ 897228261) {
                            case -1377948966:
                                break;
                            case -992422567:
                                String str9 = "ۗۛۢۙۦۦۘۙۗ۬ۥۙۦۘۛۖۖۘۧۖۢۜ۟ۥۘۥ۠ۜۘۚۙۜ۫ۛ۟";
                                while (true) {
                                    switch (str9.hashCode() ^ (-2079564779)) {
                                        case -1121100999:
                                            str9 = "۫ۥۙۚ۫ۨۘۧۖۡۘ۫ۨۢ۬۠ۡۘۙ۬ۨۘ۫ۡ۬۬ۘۖۘۨۧ۠ۥۘۤۧۙ۟ۘۘ۟۫ۤۘۘۗۢۚۤۗۖۘۦۛۘ";
                                            break;
                                        case 1220498443:
                                            str9 = oooO00o != null ? "ۙۙۧۛ۠ۗ۫ۥ۫ۗۙۤۜۥۘۢ۬ۨۘۥۛۜۗۦۨۘ۬ۘ۫۬ۖۗۧۖۧۘۧ۠ۨۘۨۚۖۘ۠ۖۨۜۡۘۘ۠ۙۙ" : "ۦۚۜ۫ۜۦۘۥۨۡۘۥۢۧ۬۟ۚۤۥۜ۠ۤۨۤۨۤ۠ۧۗۡۗۥۨۘۡۘۨ۫ۥۘ";
                                            break;
                                        case 1355229124:
                                            str8 = "۠ۚۡۚۜۗۚۧۛۢۢۥۦ۟ۖۘۖۡ۬۠ۦۢۥۙۤۨۜۜۛۡۤۧۡۡۘۡ۟ۧ";
                                            break;
                                        case 2041139492:
                                            str8 = "ۜۨۘۦۘۥۘۤۗۖۨۦ۫ۚ۬۬۬ۢۤۤۛۘ۫۬۬ۚۖۧۘ۬۟ۦۘۙۥۖۘۦ۟ۖ۠ۜۨۢۨۡۙۛۛۛۛ۬ۗۖۙۧۜۨ";
                                            break;
                                    }
                                }
                                break;
                            case 172498472:
                                str8 = "ۡۜ۫ۧۤۥۘۗ۟۫ۚۤۡۚۥۛۖ۬ۦۘۡ۠ۦۘۗۚۜ۠۠ۘۢۛ";
                                break;
                            case 1590717544:
                                str = "ۘۤۗۦۚ۟ۤ۫ۢۗۤۜۙۗۧ۠۫۫۬ۘۘۘۡ۟ۜۢۜۡۢ۫ۥۦۧۖۢۧۡۢۘۢۧۥۢۛ۫ۗۧۡۦۖ۬";
                                break;
                        }
                    }
                    break;
                case 770795498:
                    str = "۟ۥ۫۬ۘۢۨ۬ۗۧۨۖۘ۟ۜۧۖۗۘۙۖۡۘۚۜۧ۫ۚۤۖۢ۫۟ۗۜۘۡ۟ۨۛۥۙۨۦۜ";
                    break;
                case 1276398109:
                    str = "ۗ۟ۖۚ۠ۧۖ۠ۜ۬ۙۤ۟ۙۦۨ۫ۜۜۤۖۘۧ۠ۖۤۡ۬ۥۧۘۚ۟ۥۘۜ۫ۖۡۛۥۜۚۨۙۘۢ۬۠ۧ";
                    i2 = i;
                    break;
                case 1575293755:
                    str = "ۧۥۘۤۤۙۛۧۥۤۖۢۗۛۚۖۨۗۗۨۙۨۦۢۦۤ۬ۗۦۢۤ۠ۘ۠ۚۘۨ۫ۡۘۦۤۢ";
                    break;
            }
            return;
        }
    }

    public static void OooO0oO(OooO00o oooO00o) {
        String str = "ۧ۫ۡۘ۠ۗ۠ۥۜۘ۠ۘۧۗۛۨۨۦۚۜۚۚۙۜۨۘ۟۟۬۫۠ۥۧۧۗ۬ۘۘ۬ۤۡۛۤۘ";
        while (true) {
            switch ((((str.hashCode() ^ b.b) ^ 1000) ^ 786) ^ 1084565239) {
                case -2102439421:
                    str = "ۨۚۥۙۘۖۘۢۦۧۘ۬ۜ۠۫۟ۥۛۙۜۤۧ۠ۢۢۘۘۗۜۛۦۧۜ";
                    break;
                case -795066345:
                    OooO0o0.add(oooO00o);
                    str = "ۚۤۛۘۖۦۛ۠ۗۤۙۜۘۜۗ۬ۙۤۨۘۚۗۜ۟ۗۖۘۘ۫ۜۘۢۥۚ۬ۢۖۡ۠ۛ۟ۨۢۜۤۜ";
                    break;
                case -312144004:
                    OooO0o0 = new ArrayList<>();
                    str = "ۦۧۗۜۧۢۛۙۖ۟ۖ۟ۨۥۦ۫ۢۘۦۢۤۛۧۡۦۦ۠ۨۙۥۘ";
                    break;
                case -34359273:
                    String str2 = "ۘۖۛۡۖۘۜ۠ۗ۬ۥۧۘۤۖۥۘۥۖۥۘۥۙۜۘۗۗۘۚ۠ۦ۬ۛ۠ۥۖ۫ۙۖۛۡۨۘ۟ۤۖ";
                    while (true) {
                        switch (str2.hashCode() ^ 490911369) {
                            case -816855346:
                                str = "ۦۧۗۜۧۢۛۙۖ۟ۖ۟ۨۥۦ۫ۢۘۦۢۤۛۧۡۦۦ۠ۨۙۥۘ";
                                continue;
                            case 1692400153:
                                str2 = "ۗۢ۫ۧۨۥۘ۬۫ۙۜۦۡۢۜۚ۫ۥ۠۟ۦۘۜ۫ۖۙۧ۬ۡ۠ۥۡۗۛ۬ۨۘۘۧۦ۬ۙۥ۬ۚۗۨۘ۟۟ۛۥۘ۬ۜۡۧۘ";
                                break;
                            case 1857558004:
                                String str3 = "۟ۜۥۘ۟ۦۛ۟ۧۢۚۖۨۤۡۜۘۜۦۥۘۜۤۛۨۡۨۘ۬ۖ۠ۖۥۙۖۘۨۦ۬۬ۙۜۘۦۛۥۦۗۘۘۙۚ۫ۚۥۜۙ۠ۡ";
                                while (true) {
                                    switch (str3.hashCode() ^ 627616176) {
                                        case -1688863067:
                                            str2 = "ۚۜۛۥۛ۠ۚۜۤ۠ۧۜۘۙ۠ۦۘۚۦ۟ۡۚ۟ۙۢ۟ۧۧۨۘۥ۫ۜۥۘۧۧ۠ۚ۠ۘ۟ۛۦۥ";
                                            break;
                                        case -419843960:
                                            str3 = "ۦ۟ۥۘ۫ۛۨۘۦۘ۠ۥۧۡۚۡۙۤۢۙۥۡۤۥۨۢۨ۠ۘۘ";
                                            break;
                                        case -357316189:
                                            str2 = "ۤ۬ۦۘ۬ۦۚۘۧۘۙۙۖۚۙۦۘۚۖ۟ۚۤۙ۬ۦۚۥ۟ۘۘۚۜۖۤۘۚۜۡۨ";
                                            break;
                                        case 543918739:
                                            str3 = OooO0o0 == null ? "ۥۡۧۡۖۚ۠۟ۗ۠ۜۚۗ۠ۚۡۚۨۘ۟ۚۨۘۙۡۗۗۡۨۧۢۙۤ۠ۡۨۡۘۜۢۘۤۚۜ" : "ۛۖۖۥ۫ۖۜ۬ۢۦ۟ۨۡۧۡۥۛ۟ۨۖۗۥۚۥۗۨۚ۟ۧۙ۫ۡۘۦۖۛۙۖ۟ۨۙۚۜۦ۬ۖۨۨ";
                                            break;
                                    }
                                }
                                break;
                            case 1926409737:
                                str = "ۦ۬۟ۤ۟ۥۘ۬ۚۗۧۨۙۤۧۘۧ۬ۘۙۤۗۘۛۦۘۢۢۖۘۡۖۖۜۖ۫ۡۘۖۘۛ۫۠ۡۦۡۗ۟۟ۢۦۘۧۥۥۘۘۙۘ";
                                continue;
                        }
                    }
                    break;
                case 1698382239:
                    return;
            }
        }
    }

    public static void OooO0oo(OooO00o oooO00o) {
        ArrayList<OooO00o> arrayList = null;
        String str = "ۙۛۙۖۦۡ۠ۗۤۙ۫ۖۘۚ۟ۚۤ۫ۘ۫ۖۡۚ۠ۛۚۨۚۖۨ۟ۚۜ۬ۗۗۨۛۚۤۥۘۡۘ";
        while (true) {
            switch ((((str.hashCode() ^ 869) ^ 102) ^ 793) ^ 1358958616) {
                case -1909268916:
                    str = "ۧۤۦۗ۬ۦۢ۫ۖۘۦۚۙۖۧۡۘۚۡۚۨۢ۬ۡۥۥ۫ۡۘۘۚۡۜ";
                    continue;
                case -910710539:
                    arrayList = OooO0o0;
                    str = "ۙۛۦۘ۫ۨۜۘۖۢۧ۠ۛۧۙۨۜۘۙۧ۫ۥۡۚۗ۠۠ۦۢۨۘۡۧۖۘ۠ۢ۠ۜۤۗۡ۠ۖۘۦۘۘۗۘۦۘۘۙۚۙ۬ۧۨ۫ۡ";
                    continue;
                case -694768193:
                    String str2 = "۬ۤۛۚۦۙۢۡۜۘۚۥ۫ۡۤۚ۠ۥۛۗ۟ۦۜۖۘۡۧۨۥۥۨ";
                    while (true) {
                        switch (str2.hashCode() ^ 1672195147) {
                            case -1369840440:
                                break;
                            case -939144337:
                                str2 = "ۜۗۤۜۧ۬ۡۘ۫ۡۜۘۨ۫ۚ۠ۢۡۢ۠ۖۘۖۤ۠۬ۡۨۧۢۖۚۘۨۥۡۥۘۥۨۙۢۖۥۜۡۦۘۚۧ۫ۜۘۥۚۗ۬";
                                break;
                            case 303633419:
                                String str3 = "ۚۗۨۘۧ۟ۡۢۢۡ۟۬ۦۨۥۧۘۥۛۜۘۛۘۢۢۜۨۘ۫ۘۧۘۥۨۗۨۜۡۘ۟ۙۤۤۡۘۦ۬ۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1429816247) {
                                        case -1419131892:
                                            str3 = arrayList != null ? "۫ۤۗۛۨۨۘۥۧۛۛۙۘ۟ۦۘۥۗ۠۬ۥۖۘۥۦۨۘۡۘۘۙۦۥۖۖۚۡۥ" : "ۧۗۚۦ۬ۜۘۜۙۖۧۢۘ۠ۘ۠ۢۖ۫ۧ۟ۢۦۛۗ۟ۨۛۥ۟ۢ۫۫ۦۚ۟ۨ۠ۚۘۖۚ۠۬ۛۦۛ۟ۦ";
                                            break;
                                        case -562635563:
                                            str3 = "ۨ۟۠۫ۗۢۙۦۨۥ۫ۚۥ۠ۖۘۜۖۡۗۧۙۖۙۨۘۥ۬ۖۘۚ۠ۨ۬ۦۧۘۤۤۦۘۦۧۖۜۜۜ";
                                            break;
                                        case 238163314:
                                            str2 = "ۨۤۘۤۙۖۘۚ۫۠۠ۗۥۘۥ۫ۗ۟ۢۘۘ۠ۛۡ۫ۗ۫ۧۤ۟۫۟ۤۜۦۨۘۡۤۢ۟ۘۙۚۖۘۦۤۥۘ۠ۛۜ";
                                            break;
                                        case 1605631332:
                                            str2 = "ۘ۬ۧۨۘۛۨۤۢۡۙۡۖۢۛۧۦۧۦۘۘۘۡۚۖۨۙۙۜۜۦ۠ۚۥۘۖۥۨۘۘۨۧۘۚۥۘۨۤ۬ۘۖ";
                                            break;
                                    }
                                }
                                break;
                            case 1576301953:
                                str = "ۦۗۦۘۥ۠ۡۘۗ۟ۥۤۙۘۢۥۚۜۖۡۛۦ۟ۙۜۘۤ۬ۘۘۤۢۨ۟ۜۘۘۦۧۨۘ۟۠ۦۘۘۧۚ۬ۜۨۧۘۤ";
                                break;
                        }
                    }
                    break;
                case 1293121357:
                    String str4 = "ۚۢۖۘۛۘۦۘۘۥۡۥۖ۠۬ۘۘۘ۬ۥ۬ۨ۟ۚ۬ۨۦۙۗۥ۬ۡۘۤۛ۟ۘۖۧ";
                    while (true) {
                        switch (str4.hashCode() ^ (-895824429)) {
                            case -1569466735:
                                str4 = "۬ۥۥۗۨۗۜۦ۫ۛ۫ۥۘۖۜۚۡۛ۠ۖۖۜۢۛۗۤۤۖۜۚۖ";
                                break;
                            case -968168252:
                                String str5 = "ۥ۟ۘۖ۟ۤۜ۬ۙۨۛ۫۠ۜۘۜۤۡۢ۠۬ۧۛۡۛۨۗ۠ۗۖۨۜۜۘۗۛۙۚ۠ۖۤۨۘۛ۫ۥۘۡۨۨ۫ۥۛ۠ۖۖۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-461997568)) {
                                        case -2088927065:
                                            str5 = arrayList.contains(oooO00o) ? "ۨۨۨۘۧۚ۠۬ۙۨۘۘ۫ۙۦ۟۠ۢۗ۠۠ۛۤ۬ۨۗۜۖۜۘ۟۟ۨۢۨ۫ۨۜۖۘ" : "ۛ۠ۗۚ۫ۛۢۖۛ۫ۜۨۗ۠۠۫ۡۙۗۨۡۘۢۖۡۖۤ۫ۛ۫ۡۙۛۥۘ۫۟ۚۘۘۖۗۡۛ";
                                            break;
                                        case -384893305:
                                            str4 = "ۡۧۥۘ۟۫ۢۜۦ۠۟ۛۧۤۥۘۗ۬ۡۙۛۤۙۖۡۘۢ۠۫ۛۛۦۘ۫ۥۤۗ۠ۥۘ۠۫ۖۘۗ۟ۢۨۖ۬ۤۖۛ";
                                            break;
                                        case 1239162983:
                                            str4 = "ۙ۟ۦۜ۠ۖۘۘۢۚۛ۬۠ۥ۟ۘۘ۟ۤۨۡۦۘۗۚۜۘۢ۟ۨۨۘ۬";
                                            break;
                                        case 1558102379:
                                            str5 = "ۢۖۜۘۜۤۡۘۤۡۘۘۦۦۘۘ۬ۥۡۘۤۛ۟۫ۥۧۧۦۧۘۗۗۢۧ۬ۗۚ۫ۥۢ۠ۚۡۦۧۥۗ۟ۙۧۢۛۢۨ۫۬۟۬ۖ";
                                            break;
                                    }
                                }
                                break;
                            case -910876532:
                                break;
                            case 1928269331:
                                str = "ۦۦۘۘۘۜۡۘۢۧۨۚ۠ۧۙۡۗۙۧۚۡۦۙۢۢۥۚ۠ۡۗۘۥۢ۠ۖۜۢۦۘ۬ۜۨۘۧۙۖۘ۟ۜۧۘ";
                                break;
                        }
                    }
                    break;
                case 1724124544:
                    OooO0o0.remove(oooO00o);
                    str = "۬ۡۖۘۖۙۖۘۥۥۨۘۚۢۘۡۤۙۨۡۧۖۖۘ۟ۘۖۘۦ۠ۜۘۚۗۖۘۗۡۧۘۡۖۦۘۙۧۤۖۢۥ";
                    continue;
                case 2137424915:
                    return;
            }
            str = "۬ۡۖۘۖۙۖۘۥۥۨۘۚۢۘۡۤۙۨۡۧۖۖۘ۟ۘۖۘۦ۠ۜۘۚۗۖۘۗۡۧۘۡۖۦۘۙۧۤۖۢۥ";
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = "۠ۤ۬۫۠ۨۘۖۗۖ۟۫ۤۨۘ۟ۛۡۢ۠ۚۥۖۨۘ۫۫ۥۖۧۨۘ۠ۜۖۙ۠ۚۦۨۘۨۤۚ";
        while (true) {
            switch ((((str.hashCode() ^ 717) ^ 662) ^ UiMessage.CommandToUi.Command_Type.SET_CHECK_BOX_VALUE) ^ (-857362540)) {
                case -2137874506:
                    return;
                case -1972879332:
                    String str2 = "۬ۥۡۗۡۤۡ۫ۨ۫ۛۡۜۙۘۡ۬ۦۘ۬ۦۘۢۙۛۘۤۥۘۜۧۦۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 1266069798) {
                            case 343651651:
                                str2 = "۠ۢۘ۟ۛۚ۬ۜۚ۬ۖۙۚۢۢۦۦ۬ۜۦۨۧۘۦ۬ۗۖۤۗۦ";
                                break;
                            case 984601172:
                                str = "ۖۥۜۘۙۛۨۘۥ۟ۗۙۘۥۘ۫ۥۤۚۨۦۘۦۤ۟ۡۦۡۖۜۦۘۚۙۨۘۘۧۖۛۜۢ";
                                continue;
                            case 1398800211:
                                String str3 = "ۡۢۥۘۤۡ۠ۨۜۚۗۛ۫۬۟ۦۘۖۚۢ۫ۡۜ۫۠ۖۘ۟ۜۧۘ۟ۤۚۛ۫۫ۧۥ۟ۘۜۘۘ۬ۚۛ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1038980443) {
                                        case -2026218248:
                                            str2 = "ۧۚۜۘۦۤۦۧۢۖۘۤۚۡۘۛۢ۫۟ۚۜۛۙۨۡۨۢۛۦ۠ۦۜۘ۫۠ۦۘ۫ۨۧ";
                                            break;
                                        case -1243171937:
                                            str3 = "ۘۛ۫ۥۖۧۘۢۢۖۘۘۥ۟ۨۘۤۢ۟۟۬ۚ۫ۛ۫ۥ۟ۧۜۘ۬ۡۥۘ۟۫ۨ۠ۥ۬";
                                            break;
                                        case -850884154:
                                            str2 = "ۢ۠ۛۙۥۡۘۥۙۦۥۥۘۘۙۧۜۘۖۦۦۘ۫ۛ۟۠ۘۖۘۧۘۗ۠ۜۚۖۡ۟ۢۦۘۙ۠۟ۙۡ۬ۦۜۘۗۜۗۦ۟ۚۧۙۦ";
                                            break;
                                        case 1722463435:
                                            str3 = intent.getAction().equalsIgnoreCase(OooO00o) ? "ۧۡۘۢ۫۟ۥۜۛۚۖۢ۫ۜۦۘۨ۟ۛ۟ۖۤۚۜۡۘۘۖۧۙۘۙۖۤۥۦۙۡۘ۫ۖۧۢۤۗ۫۠ۜۜۖۛ" : "ۤ۟۬ۤۢ۟ۛۖۚ۟ۜۘۜ۟۠ۙۘۛۘۤ۫ۜۗۡۥ۠ۚۨۡۘۤ۫ۙۧۛۢۛ۫ۡۘۢۜ۬";
                                            break;
                                    }
                                }
                                break;
                            case 1853863512:
                                str = "ۘۜۧۘۚۚۥۘۨ۟ۗۥۖۤ۠ۥۛ۠ۧۜۘ۫ۘۧۗۡ۬ۢۨۛۛ۠ۘ";
                                continue;
                        }
                    }
                    break;
                case -1645363512:
                    getClass().getName();
                    str = "ۚ۬ۡ۠ۜۨ۬ۘۘۘۖۦ۟ۗۢۤۨۧۘۦ۬ۘۘۧۨۙۖۜۚۗۦۘۤۙ۬ۚۢۚۚ۟ۨۨۥۛ";
                    break;
                case -921347482:
                    String str4 = "ۛۘۡۘۘۗ۫ۧۨۨۘۗۗۘۗ۫۠ۥۧۗۘ۠ۨۘ۠ۗۧۙ۟ۗ۫ۘۤۜۤۘۘۦ۟ۨۧۚۨۘۦۡ۫۟۟ۙۥۥۨ";
                    while (true) {
                        switch (str4.hashCode() ^ 419425789) {
                            case -2011016305:
                                str = "۠ۥۨۘۦۥۚۚۦۙۛ۟ۗۚۙ۬ۜۧۧۛ۫ۦ۫ۢۖ۬ۘۥۛۢۢۖۨۖۘ۠ۙ۫ۡۢۙۙۧ۠ۥۥۡۘۨۨۨۙۤۗۦۧۘ";
                                continue;
                            case -704380474:
                                String str5 = "ۗۜۨۘۡۛۨۜۖۙ۫ۘ۠ۡۗۡۤۢۖۙۘۖۢۘۦۘۡۖۘۘۤۡ۟ۜۛ۬ۤۨۛۛۚۘۜۖۛۖۢۦ۫ۦۜۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ 815018060) {
                                        case -2072668741:
                                            str5 = !t4.OooOO0(context) ? "ۗۖ۠ۜۚۖۤۗۘۛۥۘۦ۠ۜۚۧۜۘۨۦۦۨۦۜۘۛۛۦۘۡۢۦۘ۬ۙۖۖۡۦ" : "ۧۖۖۢ۠ۚ۟۟۠ۚ۠ۢۡۦۜۜۢۖۚ۠ۧۨۥۧ۬ۜۤۤۧۤ۬۬ۢۛ۟ۗۙۡۘۘۨ۠";
                                            break;
                                        case -385714144:
                                            str4 = "۫۬ۘۡۥۛۚۤۜۜ۟ۦۘۗۜۦۘ۫ۛۥۘۘۙۨۘ۬ۘۨۘۛۡۡۘۦۘ۠ۘۖۙۚۧ۟ۦۖۗۘۡ۟ۥۛۘۖ۫۬";
                                            break;
                                        case 812534178:
                                            str5 = "ۤۧۨۘۗ۟ۧۧۗۜۙۙۨۘۜۚۦۘۨۧۥ۟ۨۥۘ۟۠ۜ۫ۥۚ۬ۦۡۘۜۧۘۜۨ۫ۥۤۥۘۢۜۤۧۜ۫ۧۖ۬ۨ۟ۨۧ۠ۡۘ";
                                            break;
                                        case 2001352669:
                                            str4 = "ۘۜۜۡۘۡۘۤۘۥۗۡۧۘۦۤۙۡۢۗۘ۫ۨۘۗۨۗۜۜۡۘۦۢۧ";
                                            break;
                                    }
                                }
                                break;
                            case 1166411159:
                                str = "ۡۦۖۡۨۡۘۡ۫ۧۛ۟ۧۜۘۛۥۜۗۤۥۤ۫ۦۡۙۨۛۜ۠ۘۨۤۚۗۚۨ";
                                continue;
                            case 1888289699:
                                str4 = "ۦ۠ۦۦۙۘۘۧ۫ۢ۬ۗۤۘ۬ۜۙۖ۫۠ۥۘۨۦۧۘۖۘۚۜۤۨ";
                                break;
                        }
                    }
                    break;
                case -870794507:
                    OooO0OO = true;
                    str = "ۧۧۗۛۜۘۙۦۧۜۗۢۥۨۧۘۙۨ۟ۤۙۜۡۘۨۢۜۥۨۧ۟۠ۧۛ۬ۤۜۘ۬ۡۘۖ۠ۘۘ";
                    break;
                case -816081083:
                    OooO0OO = false;
                    str = "ۗۡۦۗۘۢۦ۟ۘۘۚ۠ۥۧۨۡۧۤۤ۫ۚۘ۟ۘۖۘۥ۫ۖۖۘۥۚۨۘۗ۟ۡ۬۟ۚۜۗۢ۠ۚۧۡ۟ۡۘ۠ۡ۬ۚۖۤ";
                    break;
                case -339734037:
                    str = "ۡۤۖۘ۫ۙۖ۟ۥۧۘۗۧۙۤۦۘۖۦۜۥۗۜۤ۬ۖۘ۠ۗۥۘۢۗۨۘ۟ۦۧۘ۫ۘۚ۫ۢۜ۠ۖ۬ۗۙۙ۠";
                    break;
                case -184106269:
                    str = "ۘ۬ۦۘ۟ۥۜۘ۠ۨۚۛۡۢ۠ۙ۠ۡۥۡ۟ۥۡۦۘۖۦۗۦۘ۫ۛۖۘۜۤۥۜۙۜۘۖۘۜۥۖۥۡۖۧۖۖۖۘ";
                    break;
                case -92610189:
                    str = "ۤۤۥۗۥۦۚۡۦۘۗۤۤۦۧۘ۫ۛۘۧۗۗ۠ۦۗۜۡۘۨۜۥۘ۠ۚۚۙ۟ۗۘۦۨۘ۫ۧۥۘۗۧۖۘ۠ۥۛ۟ۘۧۘۙ۬۫";
                    break;
                case 338831530:
                    getClass().getName();
                    str = "ۤۥ۬ۤۙۜۘ۟ۜۙۨۘۦۦ۠ۘۧۨۖۦۦۧۙۙۥۨ۬ۘۚۦ۠۟ۗ۟ۨ۟ۦۗۤۨۘۛ۠ۛۢۘۥۘۥ۟ۦۘۖۚ۟ۖۖۧ";
                    break;
                case 715566504:
                    OooO0o0();
                    str = "ۖۥۜۘۙۛۨۘۥ۟ۗۙۘۥۘ۫ۥۤۚۨۦۘۦۤ۟ۡۦۡۖۜۦۘۚۙۨۘۘۧۖۛۜۢ";
                    break;
                case 1132918833:
                    OooO0Oo = t4.OooO0OO(context);
                    str = "ۘ۬ۦۘ۟ۥۜۘ۠ۨۚۛۡۢ۠ۙ۠ۡۥۡ۟ۥۡۦۘۖۦۗۦۘ۫ۛۖۘۜۤۥۜۙۜۘۖۘۜۥۖۥۡۖۧۖۖۖۘ";
                    break;
                case 1322592461:
                    str = "ۚۗ۠ۢۢۤ۬ۦۖۗۖۖۘ۫۠ۦۨۜۦۘۡۦۡۚۘۨۘ۫ۛۨۙۛۥۧۥ۬ۛۘۚ";
                    break;
                case 2015056350:
                    OooO0o = this;
                    str = "۟ۢۘۘۧۢۥۥ۬ۨۘۖۜۤۢۡۜۧ۠ۗۤ۠ۧۘۖۜۘۚ۠ۢ۬۠۬ۛۧۨۙۜۨۘۙۧ۬ۥۘۜۘ";
                    break;
            }
        }
    }
}
