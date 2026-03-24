package com.cyjh.elfin.services;

import android.R;
import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import com.anythink.expressad.video.module.a.a;
import com.cyjh.elfin.entity.MsgItem;
import z2.b7;
import z2.bh;
import z2.dh;
import z2.i7;
import z2.ii;
import z2.l10;
import z2.m7;
import z2.p3;
import z2.v3;

/* JADX INFO: loaded from: classes.dex */
public class KeepMainService extends Service {
    private static final int OoooOoO = 3000;
    public static final String OoooOoo = "script_main_key";
    public static final int Ooooo00 = 1;
    public static final int Ooooo0o = 2;
    public static final int OooooO0 = 100;
    public static final int OooooOO = 101;
    public static final String OooooOo = "main_script_hot_update_notify_bundle";
    public static final String Oooooo = "script_main_key_sec_value";
    public static final String Oooooo0 = "script_main_key_encrypt_value";

    private void OooO0O0(Intent intent) {
        Bundle bundleExtra = null;
        String str = "ۚۙۡۘۨۛۥۘۥۛۜۘ۬ۥۜۚۙۢۦ۟ۘۘۦ۟ۙۚۤۨۛۤۖۘۖ۫ۦۤۖۙۧۧۛ";
        while (true) {
            switch ((((str.hashCode() ^ 427) ^ 158) ^ 103) ^ (-1082934730)) {
                case -1385960083:
                    String str2 = "ۛۢۧۗۙۜۦ۟ۜۘۦ۠ۘۘ۠۠۠ۘۤ۬ۧ۠ۥۘۜۨۘۖۚۖۘ۫ۡ۬ۢۘۜۙۛۥ۫۫ۜۜۖ۬ۗۢ۠ۙۚۤ۠ۢ۬ۧۡۨ";
                    while (true) {
                        switch (str2.hashCode() ^ 917111216) {
                            case -373049751:
                                str = "ۦ۠ۖۖۗۨ۫ۤۥۘۨۘۥۘۤ۫ۖۘۗ۫ۧۤ۠۠ۚۙۘۘۡۢ۬ۡۛ۫ۡ۟ۜۛ۫۬ۢۛۧۜۘ۫۬۟ۛ۟ۜ۫";
                                continue;
                            case 455875141:
                                str = "ۨ۫۬۠۬ۙۦۡ۟۠۫۫ۙۙۙۖۘۡۜۦۤۤۥۨۛۘۘ۟ۚۦ۬ۤۡۘۗۚۥۘ";
                                continue;
                            case 879102918:
                                str2 = "۟ۘۘۘۙۚ۫۬ۖۘۥۡۛۧۥۜ۬ۚۖۥ۠ۨۘۜۦۧۘۦۢۘۧۡۧۘ";
                                break;
                            case 1965946414:
                                String str3 = "۟ۘۤۗۜ۬ۜۧۘۛۢۙۨۖۢۚ۫ۛ۟ۤۖۚۛۙۛۜۛۖ۟ۚ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1415408148)) {
                                        case -1836667772:
                                            str3 = "ۘ۫ۙۧۢ۫ۘۘۢ۠ۚۛۧۜۙ۬ۖۖۘۖۛۖ۫۠ۨۤۧ۠ۚۚۖۘۚۜۦۘۙۢۨۘۥ۠ۥۛۜۡۢۘ۬ۤۥۜ";
                                            break;
                                        case -189987321:
                                            str2 = "ۖۙۡۘۡۤۙ۟ۡۗۡۖۥۘۜ۬ۙۛ۠ۡۦ۫ۜ۫ۡۦۚ۫ۨۘۙۙۢۘۚۘۘ۟ۨۘ";
                                            break;
                                        case 385121394:
                                            str2 = "ۙۜۗۗ۫ۜۘ۬ۚۖۘۥۦۡۘ۠ۗ۟ۗۨۜۘۥ۬ۖۡ۫ۦ۟۬ۥۘۚۦۧۘۡۘۘۘۜ۬ۗۢ۫ۚۡۦۡ۟ۗۛۤ۟۬";
                                            break;
                                        case 533372185:
                                            str3 = bundleExtra != null ? "ۜۙۚۢۜ۟ۧۨۘۘۥۗۡۘۛۦۥۤ۠ۗۜۨۧۧۘۧ۬ۤۚۧ۠ۨۖ۟ۘۘۘۛۡۘۡۡۧۛۘۖۘ" : "۫ۘۘۧۦۤۤۛۙۚ۬ۘۘۡ۠ۨۘۘۘۡۥ۫ۛۛ۫ۖۖۜۚۦۛۧ۟ۜۧۜۗۨۘۜۜۥۘۡ۬ۗ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1039943525:
                    str = "ۨۚۘۘۚۚۦۘۢۢۘۡۢۘۧۨۘۙۤۜۤۜۜۖۚۥۥۧۜۘۨۦۧۘۖۢ۟ۡ۠ۤۧ۟۬۫۬ۧۚۚۧ۬ۡۚۛۨۜۛۖۘ";
                    break;
                case -944653908:
                    m7.OooO0o0().OooOO0(bundleExtra.getString(Oooooo0));
                    str = "ۨۡۖ۠ۧۨۘۢۡۢۖۘ۠ۙۢۚۜۗۘۘۤۖ۟ۖ۬ۡۘۢۛۜ۟ۜۥۘ۬ۡۛۗۡۛ۫ۦۘۤۥۘۘ";
                    break;
                case -522647782:
                    return;
                case -133066197:
                    b7.OooO0Oo().OooOOO();
                    str = "ۦ۠ۖۖۗۨ۫ۤۥۘۨۘۥۘۤ۫ۖۘۗ۫ۧۤ۠۠ۚۙۘۘۡۢ۬ۡۛ۫ۡ۟ۜۛ۫۬ۢۛۧۜۘ۫۬۟ۛ۟ۜ۫";
                    break;
                case 180782425:
                    m7.OooO0o0().OooOO0O(bundleExtra.getString(Oooooo));
                    str = "ۛۥۖۘۘ۠ۖۜۖۢۚۖۘۘۥ۟ۗۤ۠۬ۘۗۦۖۘۜۘۜۥۦۤۛۖۘۖۥۚۤۚۢۜ۠ۥ۠ۛۙۛۘۘۙۛۨ";
                    break;
                case 1380078961:
                    str = "۬ۗ۠۫ۛۨ۬ۜۨۡۛ۟ۧۚ۟ۥۦۨۛۨۘۧۖۦۜ۫ۘۨۦ۬ۢۗۜۘۗۚۘۨۛۛۜۙۖۘۡۡۦۡۙۨۨۤۥۘۨۜۥۘ";
                    break;
                case 1862095603:
                    bundleExtra = intent.getBundleExtra(OooooOo);
                    str = "ۤۢۤۧۡۥۘۢۛۢۡ۟ۖۘۨۨۖۙ۫۫ۤ۬۠۫ۤ۬ۤ۬ۙۧ۠ۨۘ۫ۛۖۦۗۦۚۘۛۢ۠ۥۘۦۧ۟ۗ۠ۗۦ۫۫ۢۛۥۘ";
                    break;
            }
        }
    }

    private void OooO0OO() {
        String str = "ۚۛۨۘۨۙۡۘۦۖۧۘۗۘۘۘۧۥ۟ۢۥۖۛۦۧ۟ۗۥۥۙۗۥۦۧۘۦ۟ۜۥۧۥۘ۟ۧ۠ۢۥۖۘۡۧۘۖ۬ۗۢۤ۫۬۬ۙ";
        Notification.Builder builderOooO00o = null;
        while (true) {
            switch ((((str.hashCode() ^ 644) ^ 229) ^ 619) ^ (-1661191042)) {
                case -2041857135:
                    builderOooO00o.setContentText("防止应用被关闭，请保留该权限");
                    str = "ۜ۬ۡۘ۬ۢ۬ۗۧۡ۬ۗۡۘۤۚ۠ۙۖۢۗ۟ۦۘۜۜۧ۠ۨۡۤۖۤۥ۬۠۟ۛۖۛۥۘ۫۠ۜۦ۬ۙۜۥ۬۠ۤ۟ۡ۫۠";
                    break;
                case -1756480488:
                    startForeground(3000, builderOooO00o.getNotification());
                    str = "ۨۧۧۡۢ۟ۙۨۜۜ۟ۧۛۚۥۘۤۧۡۛۧۤۡۚ۠ۘۥۛ۬ۘۜۘۧۛۡۚۗۢ";
                    break;
                case -1524364976:
                    String str2 = "ۗ۠ۤۡ۠ۖۘۛۢۢۢۗۤۧۗۦ۠ۖۤۜ۟ۛۤۨ۠ۘۛۡۡۘۚۛ۠ۘۙۗۧۥۢۗۡ۬ۡۛۤۡ۠ۘۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 383911061) {
                            case -1513685778:
                                str2 = "ۜۙۢۗۚۗۗۢۗۖۙۖۘۗۗ۬ۧ۠ۙۙ۠ۢۜۨ۫ۘۧۘۖۘ۬ۦۗۥۘۖۡۡ۠۬ۚۙۖۘۚۢۖۘ۬ۜۡۘ";
                                break;
                            case -719484728:
                                str = "ۡۢۡۡۧۘۘۚۥۥۘۙۙۙۨۖۚۚۜ۠ۜۦۖۘ۬ۜ۟۟ۙۥۘۧ۬ۜۘۗۗۘۘۤۚ۫۠ۡۘ۟۫ۡ";
                                continue;
                            case 315781632:
                                str = "ۤۡۚۚۨۡ۬ۢۖ۫ۨۡۜۤۜۘۚۢ۟ۡۥ۫ۗۙ۟ۜۦۘۘۦۙۦۧۖۧۡۨۚۦۚۥۧ۠ۘ";
                                continue;
                            case 922598814:
                                String str3 = "۠۬ۛۛ۫ۦۘۡۖ۫ۖۖۖۖۖ۠ۘۖۘۘ۠ۙۧۨۜۡۛ۠ۜۡۥ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1346543911)) {
                                        case -820605066:
                                            str3 = Build.VERSION.SDK_INT > 24 ? "ۘۧۥۘۖۛۥۥۜۡۜۜ۬ۗۗۘۘۢۨۖۘۙ۬۬۟ۗۚۢۡۙۛ۠ۘۘۧۢ۟۬ۚۚۢۡۖۘۗۧۡۜۡۙۘۤۖ۟ۗۜۘ۫۟ۡ" : "ۧۘۨ۟ۖۥۘۡۜۦ۠ۤۜۘۦۙۢ۬ۢۚۨۤۤۦ۬۟ۖۖۜۘۥ۫۫ۡۡۜ۬ۤ۠ۦ۬ۦۢۥۨۛۡۦۘۥۨۚ";
                                            break;
                                        case -159944240:
                                            str3 = "۠ۧۨۘ۬ۖۢۙۘ۟ۘۤۦۢۥ۫ۥۚۜۘۙۥۧۛۨۢۜۤۗۧۡۘۘ";
                                            break;
                                        case 1131981192:
                                            str2 = "ۖۢ۬ۦۜۨۘۨۧۜ۬ۘۚۙۦۨ۬ۧ۫۬۟ۖۘۛۡۗ۟ۡۥۘۜۘۤۗۦۨۘۛۖۦۜۥۦۧۜۦۘ";
                                            break;
                                        case 1662675180:
                                            str2 = "ۤۥۦۘۡ۟ۧۤۖ۟ۤۢۥۡۚۘۤۤۗۤ۬ۜۘۙ۠ۙۙۛ۫ۤۚۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1046304268:
                    return;
                case -886161791:
                    builderOooO00o.setSound(null);
                    str = "ۘۥۥ۬ۗۘۛۗ۬ۤۤۨۨۢ۠ۦۧۧۧۢۛۜۗۥۢۘۧۛۛۦ";
                    break;
                case -56103295:
                    builderOooO00o = OooO00o(getApplicationContext(), "KeepMainService");
                    str = "ۤۡۡۘۤۥۘۨۗۥۘۜۥۘۤۚ۟ۛۧۢۛۙۥ۠ۖۨۖۦۜۘۖ۠ۨ";
                    break;
                case 48369668:
                    builderOooO00o.setSmallIcon(R.drawable.ic_dialog_dialer);
                    str = "ۢ۫ۡۘۛ۫ۖۘۜ۟۠ۧۢۨۘۛۜۤۖۥۦۗۘۥ۟ۛۘۥۢۚۛۥۡۘۙۧۗۥ۬۟ۜۜۥۚۤ";
                    break;
                case 294880825:
                    builderOooO00o.setContentText("防止应用被关闭，请保留该权限");
                    str = "ۨۙۙۨ۟ۦۛۢۨۘۡۨۥۘۗۚۗۢ۫ۧۜۚۜۘۗ۬ۚۙ۬ۧۖۧۥۘۘۤۢۚۗۦۚۦۖۨۛۗ";
                    break;
                case 307881181:
                    builderOooO00o.setContentTitle("预防应用退");
                    str = "ۚۥۜۧۚۦۘۢۘۧۖ۬ۦۘۛ۫ۘۧۘۘۥۖۖۢۥۖۘۚۛ۟ۥۦۘۦۦۗۧۖۦۦۘۨۘۤۧۖۤۦۘ۠ۙۤ";
                    break;
                case 1470799831:
                    builderOooO00o.setContentTitle("预防应用退出");
                    str = "ۤۙۦۜۚۚ۫ۘۦۘ۫۫۫۠ۧۚۦۨۘ۟ۤۢۛۢۚۖۚۤ۫ۢۘۚۖۘۦ۟ۥۘ";
                    break;
                case 1712513528:
                    builderOooO00o.setContentIntent(PendingIntent.getService(this, 0, new Intent(this, (Class<?>) KeepMainService.class), 0));
                    str = "ۢۖۥۧۡۦۘۜۧۜۘۨۢ۬ۡۧۨۗۙۚۜۡۤۥۚۘۧ۫۫ۥۙۚۦۨۧۘ۫ۤۖۘ";
                    break;
                case 1934766280:
                    str = "ۢۖۥۧۡۦۘۜۧۜۘۨۢ۬ۡۧۨۗۙۚۜۡۤۥۚۘۧ۫۫ۥۙۚۦۨۧۘ۫ۤۖۘ";
                    break;
                case 2100553423:
                    str = "ۗۧ۟ۚۜۗۡۤۡۥۜۥ۬ۛۗ۟ۛۡۢۦۦۘۛۧۘۘۤۜ۟ۤۡۤ";
                    break;
            }
        }
    }

    public Notification.Builder OooO00o(Context context, String str) {
        NotificationChannel notificationChannel = null;
        String str2 = "ۗۚۛۥۖۡۘۚۚۡۘۧ۠۬۟ۦۡۘۗۗۜ۠ۢۜۘۥۡۢۡ۬ۗۧۘۗۥۚۨۘۚۛۚۡ۫ۙۜ۬ۗۜۜ۫ۙۘۢۥۨۖۛ";
        while (true) {
            switch ((((str2.hashCode() ^ 283) ^ 635) ^ 295) ^ 96936578) {
                case -2012940430:
                    return new Notification.Builder(context, str);
                case -1903260908:
                    notificationChannel.enableLights(true);
                    str2 = "ۖ۟۠ۨ۬۟۠ۚ۟ۨ۬۬۬ۢ۫ۧۙۜۘۦ۟ۥۘۜۥۜۢۖۘۦۗۙ۬ۛۛۘۨۥۘ";
                    break;
                case -887696919:
                    str2 = "ۚۛ۠ۜۡۚۥۖۖۘ۟ۡۘ۟ۖۥۘۧۗ۟ۨۘۧۘۤۦۧۗۡۥۗ۟ۤ۠ۙۤۘۘۚۤ۟ۜۤۘۗۦۘ۟ۢۦ";
                    break;
                case -865897865:
                    notificationChannel = new NotificationChannel(str, "keep_live_service", 3);
                    str2 = "ۛۥۡۘۛۨ۬ۡۜۘۡ۫ۖۜۙۦۘۡۜۗ۬ۢۢۧۛۧۙۡۚۧۧۥۘۚۤۨۘۚۧ۟ۢۦ۟ۦۛۖۘۦۖۥۘۨ۠ۤ";
                    break;
                case -84693058:
                    ((NotificationManager) getSystemService("notification")).createNotificationChannel(notificationChannel);
                    str2 = "۠ۖۛۜ۫ۧۦۡۤ۬ۧۨۤ۟۬ۗۡۘ۠ۨۘۘۙۡۥ۬ۡ۟۠ۚ۠ۧ۠ۗۗۖۡۘ";
                    break;
                case -38432170:
                    return new Notification.Builder(context);
                case 2641005:
                    String str3 = "ۜۦۗۦۦ۫۬ۦ۠ۘۙۖۘ۟ۚۡۘۙۖۤۚۛۙ۠ۦۧۖۦۘ۟ۚۧ۬۫ۡۘ۬ۘۛ";
                    while (true) {
                        switch (str3.hashCode() ^ (-992360893)) {
                            case -1626531466:
                                str2 = "ۨۦۡۘۤۚۤۦۡۨۘۤۜۥۘ۫ۤۢۗۦۦۦۦۘۥ۫ۢۡۘۡۧۤۨۙۦ۠۠ۡۤ";
                                continue;
                            case -1123956541:
                                str2 = "ۢ۟ۘۛۨ۟ۛۦۦۘۨۧۧۗۖۦۥۨۖۘۦۡۘۘۚ۫ۜۚۡۧۘ۠ۤۦۘۚ۫ۥۜۤ۫۫ۙۖۘ۟ۛۦۘ";
                                continue;
                            case -342564607:
                                String str4 = "ۥۡۘۤۛ۟ۢۤۖۘۙۦۧۘۜۗۜ۬ۙۨۨۦۖۘ۟ۗ۫ۖۡۘۘۜۦ۬ۘ۟ۘۧۙۖۘۗۨ۬۫ۦۤ";
                                while (true) {
                                    switch (str4.hashCode() ^ 1055943189) {
                                        case -1252625095:
                                            str3 = "۠ۦۦ۫ۖۗۖۥۜۘۤۥۜۛ۠ۥۦۦ۠۠ۧۨۘۘ۟ۜۗۡ۫ۡۤۨۦۥۘ۬ۙۘۘ";
                                            break;
                                        case 451240128:
                                            str3 = "ۢۙۨۘۥۜۜۤۤۨۘ۠ۗۧۖ۠۠ۧۙۚ۬ۢۦۘ۟ۙۤ۟ۖۖۘۦۤۥ";
                                            break;
                                        case 1433460456:
                                            str4 = "ۛۛۤۤۥۛ۟ۖۤۥ۟ۧ۬ۤۜۘۡۖ۟ۜۡۘۜ۠۠ۛۜۧۘۗۘۡۘ۟ۛۙۢۢۖۘ";
                                            break;
                                        case 2075042290:
                                            str4 = Build.VERSION.SDK_INT >= 26 ? "ۢۙۧۗ۫ۥۜ۠ۘۘۘ۟ۥۘۡ۟۫ۤۤۤۡۛۖۘۜ۫ۥ۟ۚۖۦ۬" : "۟۠ۢۨۜۘۘ۬ۢۖۦۚۚ۫۬۫ۧۜۖۙۦ۬ۡۡۡۘۨۨۖۜۥ۫۫ۡۦ۠ۨۜۘ۬ۚۢۥۙۨۘۘ۬ۦۘ۟ۦۗۥۨۧۘۥۙۡۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1054397579:
                                str3 = "ۥۤۡۘ۫ۥۡ۫ۨۖۘۥۦۨۘۘۘۡۘ۫ۢۦۥۗۥ۬ۚۥ۬ۜۘۘ۠ۗ۬۟ۜۘ۫ۥۙۧ۬۟۬ۤۙ";
                                break;
                        }
                    }
                    break;
                case 75086533:
                    notificationChannel.setLightColor(-65536);
                    str2 = "ۛ۬ۤۥۧۘۖ۟ۜۘۢۚۜۤۦ۟۬ۘۢۖ۫۠ۨ۬ۜ۟ۨۜ۠ۙۦۘۚ۠ۡۘۗ۠ۢۥۜۘۜۛۥ۟ۢۧۦۤۛۗۦۘۦۛۥ";
                    break;
                case 705314815:
                    str2 = "ۢۙۡۧۥۧۘۜ۟ۘ۫۫ۘۘۨ۟۬ۨۚۡۥۨۗ۠ۧۦۘۚ۫ۦۘۖۙ۫ۧۤۜۘ۟ۧ۠ۘۜۦۚ۬ۗۦۛۡۘۥۢۥ";
                    break;
                case 1037223284:
                    notificationChannel.enableVibration(false);
                    str2 = "ۧۙۢۖۧۘۤۢۢۛۤۘۜ۫ۡۘۤۚۤ۠ۛۖۨۚ۫ۙۨۛۖۚۢۛۖۘ۫ۥۛۜۘۡۘۢۤۢ";
                    break;
                case 1633443894:
                    notificationChannel.setVibrationPattern(new long[]{0});
                    str2 = "ۦۚۜۘ۫ۘۛ۠۫ۖۜۛ۟ۚ۠ۥۘۘۥۚۦۚۦۦ۬۟ۙۛ۠۫ۥ۬ۙۢ۠ۖ";
                    break;
                case 1731059958:
                    str2 = "ۖۢۡۚۧ۫ۜۖۧۢۙ۟ۦ۫ۚ۟۫ۦۤ۠ۖۘ۠ۛ۬ۗۛۥۘ۟ۖۡۗۡۘۦۡۥۜۗۡۘۤۙۡۥۢۜۘۡۛۢ";
                    break;
                case 1990845984:
                    notificationChannel.setShowBadge(true);
                    str2 = "۬ۙۡۘۧۨۖۘۦۦۥ۟ۢۧ۟ۢۥۘۘۙۚۥۛۦۘۗۜۜۜۦۘ۬ۨ۟۟۠ۜۘۜۨۡ";
                    break;
            }
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        String str = "۟ۡۚۥۡۦۘۘ۫ۡۦۡۥۧ۠ۜۢۥۗۢۜۗۛۥۨ۬۟ۘ۫۬ۖۤۘۘۖۙ۬ۖ۬ۢ۟ۙۘ۬ۨۘۥۥۙ";
        while (true) {
            switch ((((str.hashCode() ^ 807) ^ 868) ^ 145) ^ (-1099974655)) {
                case -933713173:
                    str = "ۖۢۙۗۖۚۥۥۖۘ۬۠۬ۗ۫ۨۦۥۜۦ۟ۡۘۥۢۖۘۥۛۧۚ۫ۦۦ۫ۘۚ۟ۜۧۦ۫۫ۖۛۡۧۛ۟ۖۘۘ";
                    break;
                case -153273453:
                    str = "ۢۤۚ۠ۖ۠۬ۨۡۘ۬ۥۘۡۘۧۘۘۙۗۘ۠ۚۤۘۜۘۧۧۛۤۧۥۗۦۡۦۜۧۙۚۦۨ۫ۨۘ";
                    break;
                case 277423671:
                    return null;
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = "ۦۚۢۛۜۙۜۤۥ۟۟ۡۧۢۙۖۥۤۘۢۚ۬ۡۧۖۨۜۘ۠ۘۜۘ";
        while (true) {
            switch ((((str.hashCode() ^ 703) ^ 377) ^ a.H) ^ (-1845300895)) {
                case -2076343176:
                    OooO0OO();
                    str = "ۥۜۥۘۢۧۥ۟ۥۘۘۛ۬ۗۚ۫ۘۘۢۙۥۘۦۥۨۙۥۖۙۗۡۧۘۨ۠ۘۘۘۗۚۨۙ۠ۙۥۦۘ";
                    break;
                case -1822590764:
                    str = "ۛۙۗ۬ۡۖۘۥۜۦۗۚۡۘ۠۟ۨۗۢۨۢ۬ۡۛ۠ۨۘۢۙۘۘۛۖۡ";
                    break;
                case -1170144667:
                    return;
                case -680967411:
                    super.onCreate();
                    str = "ۢۧۨۘۘ۬ۨۘۧۤۢۛۚۚۛۚۧ۬۠ۨ۠ۚۙۛ۟ۥۦ۟۫ۘۜۘۜۧۖ۬ۜۖۦۢۤۨ۬ۗ";
                    break;
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int intExtra = 0;
        String str = "۫ۥۜۘۗۥۨ۠۫۬ۖۚ۫۠۬ۗۘ۬۟۠ۡ۬ۧۢۦۘ۬۬ۖۥۤۜۘ";
        StringBuilder sb = null;
        ActivityManager activityManager = null;
        StringBuilder sb2 = null;
        while (true) {
            switch ((((str.hashCode() ^ 559) ^ 154) ^ 47) ^ 1919237230) {
                case -2092757916:
                    str = "۠ۤۨۘۡۡۧۚۦۙ۬ۦۚۘۥۜ۫ۧۘۚۡۙۦۡۙۦ۬ۚ۠ۗۡۚۖۦۘۛۧۨۘۗۦ۠ۤۤۥۘۤۗۢ۠ۖۘۦۧۡۘۜۚۛ";
                    continue;
                case -1993368822:
                    String str2 = "ۡۤۙۛۥۘۜ۫ۙۖۨۜۘۖۙۖۖۡۛۚۤۡۚۚ۫۟ۥۧۘۖ۫ۛۧۡ۟۬ۨۘۘۤۦۧۘۥۦ۟ۤۡۚۧۨۗۨۤۛۙ";
                    while (true) {
                        switch (str2.hashCode() ^ 1002756750) {
                            case -1359082444:
                                str = "۠ۗۡۘۛ۬ۨ۫ۧۢۗۖۖۘ۫ۛۛ۟۫ۙۤۢۢۨۗۥۦۖ۠۬ۦ۠ۦۛۘۘۨۚۘۘۡۛۚ۫ۖ۠ۡۢ۫ۧ۫ۙ۫ۗۤۥۛ";
                                continue;
                                continue;
                            case -979532779:
                                String str3 = "ۖۢۤ۠ۙۙ۠ۖۡۘۙ۫ۛۧۘۜۘۜۚۨۚۦۧۘۛ۠ۗۦۜ۠ۧۜۜۨ۬ۧۜۥۤۛۨ۠ۤۦۘۡۦۦۢ۠ۢ۬۬ۨۘۧۨۛ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-470975683)) {
                                        case -1434077700:
                                            str2 = "ۜۗۡۘ۠ۡۜۗۙۚ۬ۦ۫ۙۦۛۦۤ۬ۦۚۢ۫ۘۧ۫ۖۨۘۘۙۨ۟۠ۛۗ۠۟ۘۘۗۗ";
                                            break;
                                        case 50530750:
                                            str3 = intExtra == 2 ? "۬۠۟ۙۨۡۜۜۧۛ۫ۧ۠ۥ۫۟ۤ۠ۗۙۖۘ۫ۢ۫ۧ۠ۥۜۤ۟ۙۛ۫ۤۘۤۘۦۦۘۦ۟ۡ" : "۠ۗۧۛ۫ۗۢۚۖۘۤۢۙ۬۫ۖۘ۠ۡۘۙۜۘۘۘ۫۫ۨۡ۟ۚۘۘۨۨۘۜۦۘۛۛۛۧۘۙ۬ۜۘۢۡ۠ۥۖۡۘ۫ۘۥۘ";
                                            break;
                                        case 510383611:
                                            str2 = "ۚۙۖۘۛۤۜۘۙۛۖۧۘۚ۠ۛۖۥۜۨۧۘۖۦۨۛ۠ۖۙۛۨۨۙ۫ۥۥۥ";
                                            break;
                                        case 556713647:
                                            str3 = "ۧۧۘۜۚۨۜ۬۟ۢۙ۠ۚ۠ۥۖۜۛۜ۟ۦ۟۠ۢ۟ۤۥ۠۫ۖۤ۠ۦۦۚۜۘۖۤۡ۟ۤۥۥ۠ۨۘۛۖۗۨۥۗۨۗۚ";
                                            break;
                                    }
                                }
                                break;
                            case -961904680:
                                str2 = "ۚۙۘۘ۠ۡۥۘۦۢۧۧ۟ۜۢۜۡۘۤۗۦۘۤۥۖۤۖۨۢۤۖۢۥۖۘ۠ۛۘۘۘۛۤۗ۫ۥۘۖۧۡ۫۫ۡۘ۠ۥۦۘۗ۬ۧۖۢۦ";
                                break;
                            case 674240545:
                                str = "ۡۚۜۘۖۖۘۘۡۦۢۢۛ۫۬ۛ۫ۦ۟ۨۘ۟۟ۨۘۖۙۜۘ۠ۧۖۜۜۜۡۦۘۥۙۤۖۘ۠۬ۡۘۘۜۚ۬ۚ۟ۦۘ";
                                continue;
                        }
                    }
                    break;
                case -1930958742:
                    bh.OooO0O0(this);
                    str = "ۖ۬ۜۘۥۜۘۘۛۖۘۘۥ۠۟ۢۗۨۥۙۚۛۘۦۘۡۢۡۘۨۤۥۜۥۤۚۚ۟۬ۢۤۚۗۥۨ۠ۘۘۛۘۙۡۛ";
                    continue;
                case -1898929758:
                    Process.killProcess(Process.myPid());
                    str = "ۜۨ۬ۦ۫ۥۘ۠۠ۥۗۦۧۘۗ۟ۗ۬ۡۧۦ۬ۡۦۜۜ۠۠ۛۦۖۦۜ۬۟ۨۖ";
                    continue;
                case -1799951644:
                case 308326891:
                    break;
                case -1655650147:
                    activityManager.killBackgroundProcesses(sb.toString());
                    str = "ۙۢۨۨ۟ۜۢ۫ۡۥۙۖۘۨۧۘ۟ۤۤ۠ۨۘۘ۟ۘۤ۟ۦۨ۬ۥۘۨۥ۟۠ۢۛۦۘ۠ۡ۫ۖۘ";
                    continue;
                case -1548284022:
                    ii.OooOo0O(this);
                    str = "ۖۛۧۖ۬ۧۤۨۨۘۦ۬ۤۢ۫۬ۘۡۧ۠ۦۙۧۤۡۘ۟ۡ۟ۖۤۨۘ۬ۧۥۘۢۢۛ۟ۡۨۡۦۚ۠ۧۘۘۡۥۘ";
                    continue;
                case -1377043794:
                    String str4 = "ۡۨ۬ۜ۬ۥۜۤۘۘۙ۟ۦ۬ۧۘۘۡۢۘۘۘۥۥۘۧۜ۫ۧۚۜۧ۟ۜ۬ۖۖۘۖۨۧۢۛۦۘ۟۠۫ۜ۟ۨۚۤۛ";
                    while (true) {
                        switch (str4.hashCode() ^ (-1160398403)) {
                            case -1915993229:
                                str = "ۖۛۡۖ۠ۖۡۦۡ۬۠ۡۘۡۤۦۡ۬ۥۘ۫ۥۖۛۥۡۚ۬ۗۢۗۘۡۙۥۙۖۦۧۦۖۨۘۘۤۙۗ۠ۨۛ";
                                continue;
                                continue;
                            case -788563498:
                                str4 = "۟ۚۨۙۖۥۘۚۚۦۙۘۨۘ۬ۗۖۨۜۚۦۧۦۦۨ۟ۢۥ۟ۢۥ۟ۜ۟۟۟ۤۨۘۘۘ۫ۡۦۧۥۡۘۦ۠ۧ";
                                break;
                            case 4642472:
                                str = "ۧۦۥۧۙ۫ۗۘۘۡۚ۠ۢۨۡۘۥ۬ۥۜۗۧ۟ۙۚۚۢۨۘۦۦۖۘۘ۫ۥۚۖۖۛۖۘ۫ۜۜۛۗۥۘۘۘۥۘ";
                                continue;
                            case 1897849522:
                                String str5 = "ۦۦۙۜۧ۫۬۠ۥۙۦۡۙۗۚۖۢۗۘۛۢۛۡۨۘ۬۬ۥۘۥۥۘۖۙۥۜۤۡۘ";
                                while (true) {
                                    switch (str5.hashCode() ^ (-615565833)) {
                                        case -234555665:
                                            str5 = intent == null ? "۟ۗۨۘۖۚۖۗ۫ۛ۬ۡۢۢۘۘ۠۠ۦۦ۫ۙۙ۫ۚۗۥۚۛۖۘۧۥۜۘ۟ۙ" : "ۗ۫ۙ۠ۚ۬ۤۗ۫ۙۛۚ۟ۤۤۡ۫ۛۘۨۘۙ۫۟ۖۢۥۘۛ۬";
                                            break;
                                        case 132910787:
                                            str4 = "ۗۥۨۛۗۦ۠ۖۥۜ۠۬ۡۢۢۦ۫ۚۛ۬ۙۡۘ۬ۛۙۜۙۛۡۦ۬ۘۜ";
                                            break;
                                        case 199235234:
                                            str4 = "ۚۦۨۢۡۙۖۗ۟ۡۜۘۚۨۜۜۨۧۙۧۦ۠ۨۤۨۨۧۥۙۘ";
                                            break;
                                        case 337125210:
                                            str5 = "ۤۡۨۘۤۜۙ۠۫ۦۘۛۥۧ۫ۙ۟ۖ۟ۙۖۘۘ۠ۧۥۘ۬ۡ۠ۖۜۧۘ۬ۖۖۘۨۜۥۚۢۛۜۘۙۥ۟ۦۘۚۡۚ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1260341941:
                    String str6 = "ۦۛۡۙۖۥۘ۠ۙۙۢۛۥ۟ۘۘۨۢۘۖۢ۬ۢۚۚۨۘۘۘۥۖۛۡۗۖۡۤۚۗۗ۫ۖۖۡ۫ۧۥۘۦۜ";
                    while (true) {
                        switch (str6.hashCode() ^ (-1904800575)) {
                            case -880543869:
                                str = "ۡۥۡۧۡۖۙۜۚۜۙۡۘۙ۟ۢۤۢۗۡ۫ۨ۫ۜۦۜۥۡۚ۫ۥۘۙۡۦ۬۫ۚۨۗۧۦۥۚ۬ۗۥۘۤ۠۫";
                                break;
                            case -862463816:
                                str6 = "۠ۨۖۧۛۧ۠ۖۖۘ۫ۤۨۛۙۦۘ۫۠ۜ۠ۖۘۘ۠۠ۙۛۤۨۘۚ۠۬۫ۢۗۡۚۨۘۖۦۗ۟ۢۦۘ";
                                break;
                            case -137458878:
                                break;
                            case 1359806882:
                                String str7 = "ۙۜ۫ۨ۬۬ۧۙۧۨۛ۟ۢ۟ۦۥۡ۫ۡ۟ۘۘۚۥ۠ۦۗۗ۟ۖ۠ۘۦ۠ۚۜۨۘۗۜۖۘ۬ۘۚ";
                                while (true) {
                                    switch (str7.hashCode() ^ (-315684819)) {
                                        case -1965457067:
                                            str6 = "ۥۥۦۚۚۨۘۙۦۢۛۤۡۗ۬ۥۘ۠ۚۡۘۖ۟ۚۧۚۥۘۜۚۦۘ۬ۘۚ";
                                            break;
                                        case -1250704394:
                                            str7 = "۟ۗۢ۠۬ۨۥ۟ۦۛ۬ۗۛۜۘ۠ۢۨۘ۬ۤۘۚۜۘۧۨۘۦۛۨۘۚۢۧۗۙ";
                                            break;
                                        case -601618067:
                                            str7 = intExtra == 100 ? "۬ۖ۠ۚۛۖۘ۫ۨ۬ۨۥۧۧۜۗ۠ۡۙۛۥ۫ۚۤۨۘۧ۟ۦ۫ۡۜۘ۟۟۬ۦۤ" : "ۙ۫۟ۖۧۨۘۚ۟ۘۘۧ۟ۡۘۙۛۖۗۘۤۛ۠ۚۧۨۘ۠ۦۙۙۦۛۖۛۨۘۤۧۘۘ";
                                            break;
                                        case -219093717:
                                            str6 = "ۢ۫ۦۘۜۤۖۛۥۨۗۡ۠۫ۥۥۘۙ۫ۖۘۛۜۨۘ۟ۡۡۤ۟ۨۘۛۜۤۛ۬ۘۘۙۖۧ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -1228116773:
                    String str8 = "ۢۜ۠۟ۛۘۥۧۘۘۜۧۡۘ۟ۘۧۗۚۦۘ۟ۗۖۘۜۗ۟۟ۦ۟ۜۦۧۘ";
                    while (true) {
                        switch (str8.hashCode() ^ 1557322378) {
                            case -1973524168:
                                String str9 = "ۤۚۖۘ۠ۗۜ۬۫ۤۦۜۤۘۗۜۨ۠ۦۢۢۜۢ۠ۚۘۚۦۤۧ";
                                while (true) {
                                    switch (str9.hashCode() ^ 1841077326) {
                                        case -948101498:
                                            str8 = "۠ۥۧۘ۠۫۠۟ۘۘۡۙۡۨۘۖۘۖۦۡۤۙۙۙ۫ۚۙۜۖۘۥۘ۟ۥۨۘۡۤۢۙۡۜۜۗۨ";
                                            break;
                                        case -566796562:
                                            str9 = intExtra == 1 ? "ۨۥ۫ۧ۟۬۟۬ۢۢۘۘۘۦۢۨۚ۠ۚ۟ۤۢ۠۟۠۬ۛ۬ۘۡۥۛۧ۟ۧ۟ۤۤۛۡۧۨۘۤۢۧ" : "ۤ۠۟ۜ۫ۜۘۜۘۡۛ۠۫۟ۛۜۘ۠ۘ۫ۦۚۚۛۙۤۚۧۥۤۢۧۨۡۘۛۤۢۨ۠ۦۘۤۙۜۘۙۚۚ۬ۖۙ";
                                            break;
                                        case -449863259:
                                            str8 = "۠ۜۧۘۚۤۘۘۜۥۡۘ۬ۗ۠۠ۧۡۙۛ۟ۙ۟ۢۚۧۗۥۗۗۖۥ۫۠ۨۤ۫۫ۘۘۖۘ۠ۡۧۛ۫ۜۘ۫ۜۥ";
                                            break;
                                        case 1186264573:
                                            str9 = "ۨۛۧۖ۟ۗ۟۟ۦۙۥۦ۟ۙۡۘۨۜۨۘۙۥ۬ۢۡ۠ۦۙ۬ۛ۫ۥۘ۠ۛۘۛۡ";
                                            break;
                                    }
                                }
                                break;
                            case 1004411696:
                                str8 = "ۘ۠ۥۘۘۥۢ۠۠ۢۜۥ۫ۥ۫ۛۧۙۖۘۛۙ۠ۙۖ۠۫۠ۨۘۜۘۗۘۘۘۧ۟ۦۘ۟۬ۘۦۧۘۢ۫ۙۨۜۙۗ۠ۥۘۨ۟ۡ";
                                break;
                            case 1184704442:
                                str = "ۧۨ۠ۚۦۥۡۡۨۤۤۥۡۤ۟ۤۚۜۘۢۢۡۘۛۧۦۖۨ۬ۥۤ۫۟ۡ۫ۗۡۧۘۜۢ۬ۧۨ۟";
                                continue;
                                continue;
                            case 2138225019:
                                str = "ۦ۟ۥۗ۠ۗۤۘ۟ۤۖۘۙۜ۬ۚۜۡۥۙۘۘۖ۟ۡۘ۠۬ۨۡ۟۟";
                                continue;
                        }
                    }
                    break;
                case -903890969:
                    sb2.append("KeepMainService -- key:");
                    str = "۟ۦۤۜۛ۠ۙ۟ۡۖۦۢ۟ۜ۬ۡۢۗۡۗۙۚۛۨۘۨ۫۟۠ۙۧۥ۠ۙۜۢۧۢۘۧۘۦۡۦۘ";
                    continue;
                case -619350207:
                    v3.OooO().OooO0oO();
                    str = "ۥۚۜۘ۬ۛۖ۬۠ۥۛۛۥۜۢۙۗۛۨۘۜ۫۫۟ۚ۠ۡۢۖۤ۟ۚۡۢۖۖۘۡۘ";
                    continue;
                case -452687217:
                    sb2.append(intExtra);
                    str = "ۦ۫ۦۥۧ۟۟ۙۤۢ۫ۧۖۧۖۘۤۙۦ۟ۖۗۗۙ۫ۤۨ۫ۘۙ";
                    continue;
                case -361462151:
                    str = "ۤۜۖۘۧۢ۠۬۫۫ۡۢۗۚۢۡۘۧ۟ۘۤۖۧۢۢۦۘۤۜۦۘۨ۫ۛ۫ۖ۫ۜۘۛۜۜۘۘۨ۬ۤۥۧۘۚۚۦۘ";
                    continue;
                case -270956746:
                    l10.OooO0o().OooOOOO(new p3());
                    str = "ۘۛۗۨۦۢۥ۟ۖۘ۬۠ۨۘۧۨۦۢ۠ۢۗۨۧۥۡۘۜۚۖۘۜۤۘۗ۟ۨۥۛۨ۟۠ۗۢ۬ۦۘ۫۠ۢۗۗۧ";
                    continue;
                case -215642502:
                    str = "ۤۡۚۗۥۙۜ۟ۜۘۧۡ۫ۚۚۥۘۘۤ۬ۙۘۨۘ۟ۢۙۗ۟ۤۤۤۜۤ۠ۨۘۜۤۢ";
                    continue;
                case -198926539:
                    i7.OooO().Oooo0o();
                    str = "ۧ۬ۦۘۜۥ۬ۖۜۥ۠ۡۛۜۙۧۖۨۖۘۛ۬ۥۢۜ۫۬ۖۘۡۥ";
                    continue;
                case -196802855:
                    sb = new StringBuilder();
                    str = "ۦۜۨۙۘ۟ۦۜۗۖۧۘۘۘۗۜۘۧۤ۫ۢۦۛۜ۟ۦۘۦۛۗۡۥۤ";
                    continue;
                case 173236517:
                    dh.OooOo00(this);
                    str = "۫ۧۜۘۖۢ۠ۛۗۦۘۧۤۜۙۙۚۖۙۤ۠۟ۜۜۖۡ۫ۙ۠ۜۧۘ";
                    continue;
                case 312195301:
                    sb2.toString();
                    str = "ۛ۟ۧۨۛۜۘ۠۠۠ۡ۠ۚۗۗۙ۠ۗ۫ۧۜۚۧۤ۬ۥ۬ۜۗۖۘۡۗ۫ۦ۠ۜۦۢۙۤۛۖۘۗۙۦۘۤۛۡۛ۠ۖۘۥۤۘ";
                    continue;
                case 322596496:
                    str = "ۡۜۥۘۜۢ۠ۙۙۥۛۖ۠ۜۨۥۘ۬ۦ۬ۘۜۖۘۢ۟ۦۙۚۗ۫ۗ۬ۙۦۧ۟";
                    intExtra = intent.getIntExtra(OoooOoo, -1);
                    continue;
                case 658066323:
                    return 2;
                case 677787701:
                    return 1;
                case 824339247:
                    sb.append(getPackageName());
                    str = "۠ۗۥۘ۬۠ۜۘۨۚۘۘ۫ۜۦۘۛۗۜۖۢۦۦۦۖۚ۫ۦۘۗۤ۫ۖۙۧ۟ۖ۟۫ۜ۫ۜ۟۬ۨۥۘۙۘ۫۬ۧۡۗۘۘۗۦۡ";
                    continue;
                case 962295090:
                    b7.OooO0Oo().OooO();
                    str = "۠۠ۨ۬ۨ۟ۢۜ۬ۖۖۘ۫ۛۢۚۛۙۘۘۖ۬ۡۘۘ۬ۡۘۘۘۤۨۜۘۚۜۧ";
                    continue;
                case 1282902807:
                    str = "ۢۗۡۘۗ۟ۨ۠۠ۚۗۙ۫ۡ۫ۥۘۛۡۘۡۖۙۗۨۘۤۤۘۘ۫ۤۙۤۨۧۖۜۘۡۚۜۘۙۚۙۘۚۜ۬۬۟";
                    continue;
                case 1419647864:
                    OooO0O0(intent);
                    str = "ۤۚۚۖۖۖۘۡ۫ۦۘۨۖۛۡۧ۫ۥۡۧۧۙ۫ۙ۫ۦۘۥ۫ۤۚ۟ۗۙۛۤۗۢۥۘ۟ۚۖۡۛۥ۟۬ۖۡۘ";
                    continue;
                case 1486729831:
                    String str10 = "ۨۚۘۨ۬ۗۙۢۜۘ۬ۗۚۖۢ۫۠ۜۘۗۥۥۚۡۘۘۜۤۥۖۤۥۨۖۖۘۦۥۧۜۤۜۘ۟ۜۦ";
                    while (true) {
                        switch (str10.hashCode() ^ (-1058864418)) {
                            case -637957504:
                                str = "ۙۢۨۨ۟ۜۢ۫ۡۥۙۖۘۨۧۘ۟ۤۤ۠ۨۘۘ۟ۘۤ۟ۦۨ۬ۥۘۨۥ۟۠ۢۛۦۘ۠ۡ۫ۖۘ";
                                continue;
                                continue;
                            case 936874517:
                                String str11 = "ۡۖۥۙۢۚۡۤۜۡۤۥۘۚۨۙۦۚۦۘۗۤۗ۫ۜۜۨ۫ۡۘ۟ۗ۬ۜۨۖۘ۬ۦۘۛۜۨۘۤ۫ۦۘ";
                                while (true) {
                                    switch (str11.hashCode() ^ (-1173779060)) {
                                        case -1718283708:
                                            str10 = "ۡۧۡۙۜ۬ۙۜ۟ۜۥۡۘۡۨۚ۫۬ۤۢۘۦۜۧۢۥ۫ۥۘۧۘۛۚۨۥۢ۟ۦ";
                                            break;
                                        case 492742760:
                                            str11 = activityManager != null ? "ۗۢ۠۠ۜۡۤۧۖۤۦ۟ۛۗۧۜۘۨۘۧۥۧۖ۠ۜۛۤۘۙ۠۬ۧ۬۫۬ۘ۫ۤۙۙۥۗۤۡۨۙۛۨۙۚۘۚۡۦ" : "۠۟ۡۘۙۦۚۛۦۦۘۡۘۡۡۘۘۦۜۛ۟ۘۧۘۨۜۨ۬ۦۖ۟ۘۖۘۧۜ۟ۗۜ";
                                            break;
                                        case 785153064:
                                            str11 = "ۙۘ۬۠ۦۘۡۖۘ۠ۢ۫ۥۙۗ۬ۘۡۘۗۤۖۘۗۛۘۛۛۘ۟ۜۥ۬ۡ۟۫۠ۖۛ۬۫ۘۦ۠۬ۢۘۗۦۘ";
                                            break;
                                        case 1487747324:
                                            str10 = "ۖۧۚ۠ۚۜۘۦۛۡۘۗۚۜۘ۬ۘۗ۫ۦۘۦۢۡۘۙۦۢۜۜۘۙ۫ۨۗۤۙۧ۫ۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1009994848:
                                str10 = "۫ۙۜۘ۠ۧۤۘۘۧۘ۫ۦۜۘۤ۫ۜۘۧۗۢۗۗۡۘۤۚۨۜۧۖ۫۟ۚ";
                                break;
                            case 1554572924:
                                str = "ۡۗۦۤۚۦۘ۫ۧۘۘۚۨۦۘۜۢۨۤۛۤ۬ۤۡۜۧۦۙۛۦۛۗۜ";
                                continue;
                        }
                    }
                    break;
                case 1508099311:
                    str = "۬ۦ۟ۙ۟۬۬۫ۖۥۥۦۘۚۢۨۘ۫ۤۨۘ۫ۥۖۘۛۚۙۥۙۢۨ۟ۤۚ۟ۖۘ۠ۛۜۘ۠۫ۜۘۙۜۧۤ۬ۤ۟ۡ";
                    activityManager = (ActivityManager) getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                    continue;
                case 1721635103:
                    str = "ۦۧۘۜۥۛ۫ۢۜۥۦۘ۠ۢۨ۠ۥۗۚۨۘ۟ۙۛۜۧ۠۫ۚۨۘۤۦۧ۫ۙۢ";
                    sb2 = new StringBuilder();
                    continue;
                case 1764719442:
                    l10.OooO0o().OooOOOO(new MsgItem(MsgItem.SCRIPT_UI_DIALOG_UPDATE));
                    str = "ۧۦۡۥۛ۬ۥۘۖۜ۬ۦۜۢۗۧۤۥۘ۫ۨ۠ۗۘۤۧۗۦۥ۫";
                    continue;
                case 1819941019:
                    sb.append(":download_server");
                    str = "ۛۖۛۚ۟ۥۛۛۗ۠ۤ۫ۥ۟ۘۘۚۛۛۦ۠ۗۨۤۜۖۤ۫ۚۙ";
                    continue;
                case 1830777604:
                    stopSelf();
                    str = "۟۫۟ۗۗۜۛ۫ۜ۬ۖۤۥۗ۟ۘ۟ۗ۬ۘۖۘۨ۫ۖۘ۠ۨۡۘۜۖۡۚۨ۠ۜۛ۬";
                    continue;
            }
            str = "ۜۨ۬ۦ۫ۥۘ۠۠ۥۗۦۧۘۗ۟ۗ۬ۡۧۦ۬ۡۦۜۜ۠۠ۛۦۖۦۜ۬۟ۨۖ";
        }
    }
}
