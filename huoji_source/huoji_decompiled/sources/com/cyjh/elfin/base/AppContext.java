package com.cyjh.elfin.base;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Process;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.multidex.MultiDex;
import com.ac.R;
import com.cyjh.elfin.services.KeepMainService;
import com.cyjh.elfin.ui.activity.ElfinFreeActivity;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import z2.a6;
import z2.a7;
import z2.aj;
import z2.b5;
import z2.bh;
import z2.d7;
import z2.dh;
import z2.ec;
import z2.f6;
import z2.g6;
import z2.gc;
import z2.h6;
import z2.i6;
import z2.i7;
import z2.ih;
import z2.ii;
import z2.j3;
import z2.ka0;
import z2.m7;
import z2.oi;
import z2.qd;
import z2.u5;
import z2.x4;
import z2.y8;
import z2.z6;

/* JADX INFO: loaded from: classes.dex */
public class AppContext extends Application implements f6 {
    public static AppContext o00Oo0;
    public static int o00Ooo;
    public String OoooOoO;
    private String OooooOO;
    private String OooooOo;
    public boolean OoooOoo = false;
    public boolean Ooooo00 = false;
    public boolean Ooooo0o = false;
    public boolean OooooO0 = true;
    public boolean Oooooo0 = false;
    public boolean Oooooo = false;
    public boolean OoooooO = false;
    public boolean Ooooooo = false;
    public boolean o0OoOo0 = true;
    public String ooOO = "";
    public String o00O0O = "";

    public static AppContext OooO00o() {
        while (true) {
            switch (((("ۙۧۤۢ۟ۡۘۛۧۛۥ۠ۦۘۧۘۗۖ۫ۡۘۜۤۢۨۤۛۢۚۚ۬ۧۘ".hashCode() ^ 544) ^ 504) ^ 840) ^ (-869930506)) {
                case -214148826:
                    return o00Oo0;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|76|3|72|4|(7:5|SW:6|69|74|27|(4:28|29|SW:30|111)|22)|78|21|22|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
    
        r1.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO0O0(int i) {
        BufferedReader bufferedReader;
        int i2;
        int i3;
        String str;
        String line;
        String str2;
        String strTrim = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/" + i + "/cmdline"));
            try {
                line = bufferedReader.readLine();
                str2 = "۫ۛۧۘۖۥۘ۫ۡۙۤۡۥۦۘ۠ۘۥۖ۬ۗۛ۬ۨۘۤۖ۫ۥۛۡۘۢۗۛۧ۫ۖ۫۬۫ۜ۫۫۠۬ۜۤۙۖۧۨ";
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    str = "ۜۚۖۨۢۗۙ۟ۖ۠ۥ۟ۘۥۜۛۙ۬۬ۧۦۢۨۡۜ۬ۜۘۨ۠۟ۙۘ۬ۥ۠ۗۦۥۨۨۜۜۡۤۗۥۜۘۤۡۢۤۚۡ";
                    while (true) {
                        switch (str.hashCode() ^ (-1915448777)) {
                            case -1081658372:
                                break;
                            case 52784856:
                                break;
                            case 1119172553:
                                break;
                            case 1253629941:
                                break;
                        }
                    }
                } finally {
                    while (true) {
                        switch (i2) {
                            case -967639166:
                            case 411070407:
                            case 1673867309:
                                while (true) {
                                    switch (i3) {
                                        case -1608721397:
                                            continue;
                                        case -1216821291:
                                            continue;
                                        case 294070875:
                                            if (bufferedReader == null) {
                                            }
                                            break;
                                        case 1859015333:
                                            break;
                                    }
                                }
                                break;
                            case 1976192643:
                                break;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
        while (true) {
            switch (str2.hashCode() ^ (-1903375916)) {
                case -271693088:
                    strTrim = line;
                    break;
                case 27460172:
                    str2 = "ۤ۫ۥۙۖۦۘۚۡ۫۬ۘۜۘ۬ۘۦۘ۫ۡۤۛ۟ۖۙۡۘۘۡۦۘۘۨۥۘۖۢۧۡ۠ۙۛۦۧۧۚۡۘ";
                    continue;
                case 951541230:
                    strTrim = line.trim();
                    break;
                case 1917778614:
                    String str3 = "ۧۧ۫ۥۚۖۘۘۤۚۦۢۨۘۚۗۖۘۡۜۜۦۙۛۘۙ۬ۧۜۖۖۦۡ۫ۤ۠ۗۧۜۘ";
                    while (true) {
                        switch (str3.hashCode() ^ (-1902079120)) {
                            case -1482709370:
                                str3 = !TextUtils.isEmpty(line) ? "ۘۙۘۘۙۡۥۨۜۤۢۡۨۘۢ۬ۢۖ۬ۘۘۡۦۚۖۛ۬۫ۧۥۜۥۘ" : "۟ۥ۟ۜۨۨۘۨۛۖۘۚ۠ۨۨ۬ۛۢۡۘۢۤۥۨۚۘۦۜۨۘ۫ۛۧۦ۬ۧۥۜۛۘۚ۠ۡۙۛ۫ۘۘۖۧۡۘ";
                                break;
                            case 617016979:
                                str3 = "۬ۨۦۘۢۛۖۘ۫ۦۙۨ۬ۜۘۢۥۛۤۨ۟ۡۤۤ۫ۦۘۖ۬ۛ۠ۤۤ";
                                break;
                            case 1330767487:
                                str2 = "ۡۤ۬۫ۥ۟۬ۗۥۡۡۥۚۡۛ۫ۗۥۢۦۘۘ۠ۖۜۢۨۗۤۙۥۘۢۛ۬۬ۧۥۘۧۚۥۘۥۙۨۖۙ۟ۜۙۙ۠ۙۙ۠ۨ";
                                continue;
                                continue;
                            case 1549864039:
                                str2 = "ۜۡۜۘۥۛۜۘۖۘۡ۠ۧۚۤۚۜۧ۫ۘۘۨ۟ۡۘۥۥۦۥۦۧۘۚ۠ۖۙۗۙ۠ۤۦ۠۬ۡۚۧۜۦۥۡۜۘ";
                                continue;
                        }
                    }
                    break;
                default:
                    continue;
            }
            th = th;
            th.printStackTrace();
            str = "ۜۚۖۨۢۗۙ۟ۖ۠ۥ۟ۘۥۜۛۙ۬۬ۧۦۢۨۡۜ۬ۜۘۨ۠۟ۙۘ۬ۥ۠ۗۦۥۨۨۜۜۡۤۗۥۜۘۤۡۢۤۚۡ";
            while (true) {
                switch (str.hashCode() ^ (-1915448777)) {
                    case -1081658372:
                        str = "ۙۨۖۘۡۙۢۚۦۖۗۚۡۘۙۜۧۛ۟ۧۢۤۥۚۘۘۥۘۘۚۚ۠ۧۢۜۛۖۥۡۗۦۗ۠ۜ۠ۛۦۘۨۧۘۗۗۖۘۘۨۥ";
                        break;
                    case 52784856:
                        try {
                            bufferedReader.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        break;
                    case 1119172553:
                        String str4 = "۫ۦۘۢۡۦۘۗۥۡۘۛۦۨۘۜۨۨ۬ۨۦۘ۫ۘۦۘۡۗۙۖۧۜۨ۬ۛ۠ۖۜ۬۬ۜۘۧۡۚۚۘۦۘ";
                        while (true) {
                            switch (str4.hashCode() ^ (-698337095)) {
                                case -2077061346:
                                    str = "۠ۨۥۘۖۨۗۗۚ۫۠۟ۙۙۡۦۧۥۡۘ۟ۖۙۢ۟ۦ۬ۙۙۚۖۜ۠ۥۡۙۨۘۤ۠ۖۖۙ۠ۤۘۙۙۘ";
                                    continue;
                                case -1816484005:
                                    str4 = bufferedReader == null ? "۠۟ۦۤ۟ۗۖۤۨۘۨ۠ۡۘۜۡۤۢۥۖۘۘۦۗ۠۠ۗۚۤۨۘۜۢۡۚ۫۬۬ۤۥۧۧۤۜۙۥ" : "ۚ۠ۨۜۛۘۘۡۥۨۧۖۘۘۙۜ۟۬۟ۖۤۚۖۘۛۨۦۛۖۥۜۤ۬";
                                    break;
                                case -281131909:
                                    str4 = "ۜ۠ۥۘۡۥۧۛۛۨ۠۠۟ۤۜۧۘۖۥ۬ۖۧۡۘۤۚۦۜۢۦۘۛ۫ۙۦۖۛۗۗۧۗۧۦۘۘۙۖۢۤۜۢ۠ۡ";
                                    break;
                                case 1051850207:
                                    str = "ۛۧۚۙۧۗۢۢۨۥ۬ۦ۬ۡ۬۫ۤۥۘ۫ۛۜۧۙۜۢۚۜ۬ۘ۫۠ۗۨ۬ۤ۬ۚۚۖۢۤ";
                                    continue;
                            }
                        }
                        break;
                    case 1253629941:
                        break;
                }
            }
            return strTrim;
        }
        bufferedReader.close();
        return strTrim;
    }

    private void OooO0OO() {
        String str = "ۨۚۘۘۥۨۘۦۧۜۘۥۙۙ۫ۨ۬۟ۜۥۤۖۙ۫ۦۥ۫ۗۥۖۘ۫ۡۜۧۛۚۜۗۨۘۥ۠ۤۙۨۘۨۛ۫";
        while (true) {
            switch ((((str.hashCode() ^ 436) ^ 456) ^ 382) ^ (-2013549844)) {
                case -1564866166:
                    OooO0o0();
                    str = "ۧۤۡۤۥۡۘۦۖۤۙ۠ۥۖۨ۬ۤۗ۬ۜۨ۬ۡۦۖ۫۟ۗۙ۬ۜۙۜۤ۫۬۫۬ۗۚۡۖۨ";
                    break;
                case -1539351929:
                    z6.OooO0Oo().OooO0o(this);
                    str = "۟ۨ۟۟ۙۨۘۙۚۦۦ۠ۜۘۧۚۥۡۖ۠۟ۘۧۡۘ۬ۖ۫ۢۜۢۚۙۧۨۨ۠ۗ۬۟ۧۤ۠";
                    break;
                case -326863438:
                    System.loadLibrary("mqm");
                    str = "ۜۥۜۚۡۧۖۙ۟۠ۦۜۘۤۡۡۘ۫ۢ۟ۘۚ۠۟ۙۤۨۙ۬۬ۤ۬۬ۘ۬۫ۗۨۘۜۘۖۦ۠۠";
                    break;
                case 230607593:
                    gc.OooO0OO().OooO0o(this);
                    str = "ۜۚۢۘ۫ۡۤۙۥۘۙ۠ۧۡۖۥۘۖ۬ۖۙ۟۠ۥۡۢۡۚۚۨ۟۫ۢۥۡۥۤۛۨ۬ۥۘۗۘۗ";
                    break;
                case 281422990:
                    j3.OooOOO(i6.OooO0O0(), i6.OooO0oO, Long.parseLong(getResources().getString(R.string.elfin_appid)), 653L, getResources().getString(R.string.pay_vsersion), 2, "6.7.3", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCDrrGt+/bokrHsUBfylH+MsiojIBGQQLWlup1avdwsvnZ+seh1y2y+1QWHjTDNcwXpcbIOOz7qlJ2CtKsap/NwUvXHt2TmRP4262F41f2HUU9VlB0Rc2lAgTuRghpeqKGvyQO3RpiGWcgh1ukrGUDR9F55kxoAe9i+RgYFUFn8wIDAQAB", "MIICcwIBADANBgkqhkiG9w0BAQEFAASCAl0wggJZAgEAAoGBAKkABISPx6VxlDG/3SYxOlhic25QZpBZDDI+YnRWAV6SK7BbyyXTPCXqU0USQlTXe2ecuuEcKjqCpbwo52qLEdd/5x15isGMCsSDUuRdFhS9iHOgv95iND2X3hT23tyXpyQTZaOPpjVkKk9lk74PrjCJBtCuhhCcSueDTbmuw+yPAgMBAAECfzjFyL6/jlIF1cLgsWojH3aRnDVyzQGw6Gf4jRqHye37LLISJCyQyaPzFAYgHChkOxCTljQJQiZlvUd4dkVUcqlmjTI31wTvCJREJDGz6pqgJ0V3fQMMjHyGHf6G3Pio3Nzjll28apR7Xhzy9ISwPJBX0REWGOfbUJTBxYC2gfECQQDRltLMtdQZY2NV8fNJmpKbYFbIDNOQbESLk74d8CIn9keK9ANth9l1MBP4XlQwnwREWgM6meHC3qO3VqnF0TVTAkEAzmxIYk5Ecn8nuh4VQsf9ixCbABzHu0ZhBIpJBgIVKL4wnurpltvuGM7JXh8vZb4MxoTilC2x9oi6pzHS7t7oVQJARpSaDKI2+Q3FSA4gteq98GEzGE9pd7teIfrxDTfu6LJBSYP/G4WiL5qvPvbVN0J1t2bwq21i37MGQxmGNr3LTQJAMk0MrnfoEgaORbpC8A0P6a1YOATLXwVdat/Pv5kOUulVq8QOu+ZH9N+fDkKHKEHRlyaWmAkyjqLu6QMpJXBIKQJABP7dESwipWkS7vym5cw62uoa9VCeKi6A+GKFy+tHdat8Rmdysc+EUfVoKtsndSW0o+nZ49cPR4o3m2h5SNXI/Q==", getString(R.string.elfin_appinfo));
                    str = "۠ۦۖۗ۟۟ۗ۫ۦۘۤۡۦۘۡۛۥۘۘۚ۫ۧۘ۬۟ۧۧۖۗ۟ۙۜۨۛۧۢۤۧۜ۬ۦۥۜۦ";
                    break;
                case 589221105:
                    ec.OooO0Oo().OooO0o0(this);
                    str = "ۜۡۧۘۤۖۦۘۘ۬ۛۜ۟ۢۨۧۜۤۗۖۘۚۜۚۙ۠ۥۤ۟ۦۘۤۚۢۙۚ۠ۗۗۙۤۛۙۡۗ";
                    break;
                case 675697949:
                    str = "ۙۢ۟ۜۘۦ۟ۦ۠ۡۤۘۢۢۢۗۢۚۙۙ۫ۚۘۤۖ۬ۚۤۙ۫ۨۦۜۦۤ۫ۗۘۡۘ۬ۙ۫ۚۦۘ۟ۚۢ";
                    break;
                case 683180998:
                    a6.OooO0O0().OooO0OO(this);
                    str = "ۚۙ۟ۜۙۗۖۨۥۦۖۖۘ۬ۨۡۘۨ۠۬ۚۢۥۘۦۤ۫۬ۘۥۢۜۥۘۘۙ۟ۘ۠";
                    break;
                case 894936875:
                    return;
                case 1959160406:
                    ih.OooO0Oo().OooO0o0(this);
                    str = "ۧۜ۬ۡۙ۬ۦۖۧ۬ۨ۠ۙ۫۠۠ۘۚۤۛۥۜۘۤ۬ۜۖۛۙۡۘۨۘۜۢۖۛۙۨۙۛۗۦۢ";
                    break;
                case 2107982567:
                    i7.OooO().OooOooo(0);
                    str = "ۢ۬ۦۙۚۘۘۡۛۖ۬ۧۙۧۙۛۢۨۡۘۗ۟ۦۗۘ۫ۚ۟ۡ۫ۛۨۚۙۦۖۜ۟ۗۦۢ۠ۛۦۘ";
                    break;
            }
        }
    }

    private void OooO0Oo() {
        String str = "۠۟ۛ۠ۢ۠ۧۧۢۘۘۙۤۥ۫۟ۜۨۡۖۡ۬ۘۦ۬ۘ۬۬ۜۛۤ۟۠ۛۛۨۘ۫ۚ۫ۡۚۖۘ";
        while (true) {
            switch ((((str.hashCode() ^ 439) ^ 849) ^ 133) ^ 1462911648) {
                case -1787834259:
                    i7.OooO().OooOooo(0);
                    str = "ۢۘۢۧ۬ۚ۠۫ۤ۫ۨۥۘۦ۠ۢ۠۬۫۬ۢۡۙۢۢۙ۠ۗۧۦۧۦۧۘ۫۟ۨ";
                    break;
                case -1612624199:
                    ec.OooO0Oo().OooO0o0(this);
                    str = "ۙۢۦۘۥۜۡ۠ۘۧۡۚۡۘۖۧۥۘۨۛ۟۟ۤ۠ۜۘ۫۟ۘۘۗۤۧۥۘۦۘۦۖۖۦ۫ۜۜۥۤۜ۠ۛۦۢۥ";
                    break;
                case -820098517:
                    System.loadLibrary("mqm");
                    str = "۠ۤۨۘ۬ۛۙۤۨۘ۟ۨۡۘۢ۬ۖۚۡ۫۠ۛۜۘ۟ۨ۫ۙۢۚۘۗۖ۫۫ۙ۫ۤۨۘۜۥۦ۠ۛ۠۠ۗۥ۠ۡۦ۫ۢۨۚۦۜ";
                    break;
                case -749757229:
                    OooO0oo();
                    str = "۠ۨۜۘۜۗ۟ۙۨۨ۟۫ۜۘۚۘۖۘ۬۬ۨۗۛۥۘۥۥۨۘۤۜۜۘ۟ۘ۠ۘۥۥۙۥۘ";
                    break;
                case -605814170:
                    ka0.Oooo0(this);
                    str = "۫۠ۜۘۘۥۖۘۡۖۧۘۛۨۜ۟ۥۙۥۥۖۘۡۚۛۤ۬ۧۧ۠ۨۘ۫ۜۘ۟ۛۨۘۢۧ";
                    break;
                case -339453181:
                    gc.OooO0OO().OooO0o(this);
                    str = "ۤۦ۟ۘۗۙۦۤۘۘۚۨۧۘۦ۫ۘۘۤۨۘۤۙ۫ۥۤۢۜۡۥۘۖۚۨ";
                    break;
                case -273337815:
                    ih.OooO0Oo().OooO0o0(this);
                    str = "ۥۘۚۜۧۨۘۜۚ۫ۢۗۛۚۢۦۘۨۜۛۧۖۖۘ۬۬ۖ۠ۨۢۜۥۘۘۧۜۛ۫۬۟";
                    break;
                case -248241510:
                    return;
                case -119413051:
                    j3.OooOOO(i6.OooO0O0(), i6.OooO0oO, Long.parseLong(getResources().getString(R.string.elfin_appid)), 653L, getResources().getString(R.string.pay_vsersion), 2, "6.7.3", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCDrrGt+/bokrHsUBfylH+MsiojIBGQQLWlup1avdwsvnZ+seh1y2y+1QWHjTDNcwXpcbIOOz7qlJ2CtKsap/NwUvXHt2TmRP4262F41f2HUU9VlB0Rc2lAgTuRghpeqKGvyQO3RpiGWcgh1ukrGUDR9F55kxoAe9i+RgYFUFn8wIDAQAB", "MIICcwIBADANBgkqhkiG9w0BAQEFAASCAl0wggJZAgEAAoGBAKkABISPx6VxlDG/3SYxOlhic25QZpBZDDI+YnRWAV6SK7BbyyXTPCXqU0USQlTXe2ecuuEcKjqCpbwo52qLEdd/5x15isGMCsSDUuRdFhS9iHOgv95iND2X3hT23tyXpyQTZaOPpjVkKk9lk74PrjCJBtCuhhCcSueDTbmuw+yPAgMBAAECfzjFyL6/jlIF1cLgsWojH3aRnDVyzQGw6Gf4jRqHye37LLISJCyQyaPzFAYgHChkOxCTljQJQiZlvUd4dkVUcqlmjTI31wTvCJREJDGz6pqgJ0V3fQMMjHyGHf6G3Pio3Nzjll28apR7Xhzy9ISwPJBX0REWGOfbUJTBxYC2gfECQQDRltLMtdQZY2NV8fNJmpKbYFbIDNOQbESLk74d8CIn9keK9ANth9l1MBP4XlQwnwREWgM6meHC3qO3VqnF0TVTAkEAzmxIYk5Ecn8nuh4VQsf9ixCbABzHu0ZhBIpJBgIVKL4wnurpltvuGM7JXh8vZb4MxoTilC2x9oi6pzHS7t7oVQJARpSaDKI2+Q3FSA4gteq98GEzGE9pd7teIfrxDTfu6LJBSYP/G4WiL5qvPvbVN0J1t2bwq21i37MGQxmGNr3LTQJAMk0MrnfoEgaORbpC8A0P6a1YOATLXwVdat/Pv5kOUulVq8QOu+ZH9N+fDkKHKEHRlyaWmAkyjqLu6QMpJXBIKQJABP7dESwipWkS7vym5cw62uoa9VCeKi6A+GKFy+tHdat8Rmdysc+EUfVoKtsndSW0o+nZ49cPR4o3m2h5SNXI/Q==", getString(R.string.elfin_appinfo));
                    str = "ۚ۫۫ۦۙۘۘۨ۟ۤۘ۬۫۟ۖۡ۟۬ۗ۟ۨۨۖۖۧۗۨۦۖ";
                    break;
                case 984439526:
                    OooO0o0();
                    str = "ۘۥۜ۬۫ۜۘۤۛ۠ۖۤۤۢۢۢۜۦۛ۫ۛۙ۟ۤۖۘۙۦۚۧۛۡۘۖۢۜۖۤۨۘ";
                    break;
                case 1125781379:
                    z6.OooO0Oo().OooO0o(this);
                    str = "ۥۙۙۤ۫ۙۚۦۚۙۧۧۜ۠ۤۨۢۘۙۢۗ۬ۘۘۤۧۤۢ۫ۤ";
                    break;
                case 1381943819:
                    OooO0oO();
                    str = "ۗۧۦۘ۫۟ۨۘ۠ۜ۠ۥۗۥۘۖۧۜۡۥۢۥۡ۬ۘۢۡۘۥۗۡۨۨۧۘ";
                    break;
                case 1939067215:
                    a6.OooO0O0().OooO0OO(this);
                    str = "۬ۗ۬ۜۚۡ۫ۨۘ۠۟ۘۘۖ۟ۤۢۘۥۘۨۡۤۤ۠ۢۗۙۧۥ۟ۨۘ";
                    break;
                case 1967874422:
                    str = "۬۫۫ۜۛۜۖۡۥۘۘۥۛۙۗۙۨۦۚۢۜۘۛۧۖۘۡۗۘۦۙ۬ۛ۟ۥۘ۫ۦ۬۬ۡۘۢۙ۬۠۫۬ۤ";
                    break;
            }
        }
    }

    private void OooO0o() {
        String str = "ۗۗۡۘ۬ۛۢۧۤ۟ۗۥۨۘۡۨۦۖ۠ۛ۟۬۠ۡۗۥ۠ۛۢ۠ۗۨۘ";
        while (true) {
            switch ((((str.hashCode() ^ 200) ^ 873) ^ 721) ^ 1778942510) {
                case -1006541320:
                    String str2 = "ۜۤۘۘ۬ۥۗۦۤۦۘۜۚۖۢ۠ۛۨۧ۫ۧۧۡۨۤ۬ۤۘ۬ۡۜۜۙۜۗۧ۫ۛۢ۫ۤۡۖۘ";
                    while (true) {
                        switch (str2.hashCode() ^ 541466939) {
                            case -1505713680:
                                str = "ۙۘۘۚۨۙۤ۬ۥۘۙۙۦۘۖۙۡ۟ۢۧۦ۠ۥۚۘۜۢۨۖۘ۠ۘۢۖۚۘۘۖۧ۠ۚۙۨۘۤۡۨ";
                                continue;
                            case 1009731645:
                                str = "ۤ۠ۖۚۢۡۘ۠ۜ۠ۤۗۚۤۧۦۘۘۜۧۘ۬۟ۛ۬ۢۥۤۢ۬ۦۖۛۜۧۗ۟۟ۨۡ۠۠ۨۗۜۘ۟ۜۦۜۚۨۘ";
                                continue;
                            case 1621056095:
                                String str3 = "ۛۥۙۜ۠ۥۘۖۧ۫۠ۡۦۘ۫ۦۚ۠ۗۤ۟۬ۘۖۤۚ۠۬ۘ۫۬۟ۛۥۘ۬ۧ۟ۚ۟۠۠ۤۚۗۗۥۦۤۖۘ";
                                while (true) {
                                    switch (str3.hashCode() ^ 1814697801) {
                                        case -2105699426:
                                            str2 = "۠ۦۨۦۥ۠ۜ۬ۨۤ۟ۡۘۥۢۜۘۚۤۛۥۥۥۘۘۤۨۘۗۤۖۘۢ۫ۙۥ۬ۚ۫ۜ۠ۚۨۘ۠ۙۧۥ۫ۢۚۨ۬۬ۚۘۤ۬";
                                            break;
                                        case 356222722:
                                            str3 = "ۖۥۡۘۜۢۘۘۤ۟ۜۦۨۘۘ۟ۗۚۚۡۥۘۙۘۤۜۤۡۘۤۚۦۧۜۘ۟ۥۚ۬ۙۥ";
                                            break;
                                        case 1094276901:
                                            str3 = this.OooooOO.endsWith(":enginfloat") ? "ۖۤۗۦۘۨۙۖۥۘۢ۫۠ۛۦۖۨۢۘۘۥۥ۫ۗۡۖ۫ۨۘۚۢۢ" : "ۢ۟ۤ۟ۢ۟ۖۗۧ۟ۧ۟ۙۡۨۘ۟ۦۘۘۡۡۖ۟ۗۨۘۤۢۗۛۛۨۥۥۖۘۥ۟ۥۘ";
                                            break;
                                        case 1635306015:
                                            str2 = "۫ۥۙ۠۫۫ۙۗۚ۫ۚ۫ۨۗۥۘۖۥۘۙ۫ۡۤۙۡۢۨ۠ۗ۫ۨۢ۬ۛ۠۫۠ۙۤۢۧ۬ۨۘ۠ۨۛۘۢۙۡۖ۟ۦۡۦۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1965271019:
                                str2 = "ۧۛۙ۫۫ۜۥۗۘ۫ۦۥۘۧۜۚۡۚۘۚۛۦۧۢۚۦ۬ۡۘۡۗۦۢ۬ۢۜۙۙ";
                                break;
                        }
                    }
                    break;
                case -201457809:
                    this.Oooooo = true;
                    str = "ۙۘۘۚۨۙۤ۬ۥۘۙۙۦۘۖۙۡ۟ۢۧۦ۠ۥۚۘۜۢۨۖۘ۠ۘۢۖۚۘۘۖۧ۠ۚۙۨۘۤۡۨ";
                    break;
                case -174968734:
                    str = "۠۠۫ۛۜ۠۬۟ۛۨۗ۫ۙۖۜۘ۠ۧۦۘۜۖۘۘۚۨ۠ۤۧ۠ۢۥۤ۟ۥۡۘۖۙۘۜۚۨۖۘۧۢۛۧۢۜۖ۫ۥۙ۬۫";
                    break;
                case 75298454:
                    this.OooooOo = getPackageName();
                    str = "ۖۗۥۘۚۘۦۘۙ۟ۙ۠ۢۨۘ۫ۖۖۗۥۘۘۚۚ۬۬ۧۚۘۚۡۙۨۘۛۧۦۜ۫۠ۗۡۦۗ۟";
                    break;
                case 118446661:
                    return;
                case 241589913:
                    this.OooooOO = OooO0O0(Process.myPid());
                    str = "ۛۘۜۘۤ۟ۛ۠ۤۜ۫ۚۚۦ۠ۥۖ۫۠ۖ۬ۙۖۗۦۤۥۘۤۖۗۥۦۡۨۤۙۡۙۗ۫۫ۖۘۦۖۗ۬۫ۜۘ";
                    break;
                case 914357734:
                    String str4 = "ۥۧۜ۫ۚۡ۟ۜۦۧۚۡۛۥۖۘ۟ۜۖۘۘۦۢۧۢۥۘۙۥۖۙۛۡۜ۠ۜۘ۫ۢۚ";
                    while (true) {
                        switch (str4.hashCode() ^ (-947015846)) {
                            case -1991229797:
                                str = "ۧ۬ۜۘۜۡۚۗۨۡۗۙۧۨۡۧۤۚۧۧۧۘ۫ۙۜۗۗۚۛۧۗۖۤۗ۬ۨ";
                                continue;
                            case -1549770599:
                                str4 = "ۧ۫ۗۖۘۦۘۢۗۡۘۧۚۛۙ۫ۛۛۘۦۦۦۗۦۛۨۘۤ۫ۢۚۛۖ";
                                break;
                            case -1131278770:
                                String str5 = "ۡۛ۟ۡۦۤۖۧۦۗۦۧۘ۫ۛۤۛۖۖۤۨۨۘ۬ۛۦۘۗۙۡۘۜ۫ۥۘ۬ۜۖ۟ۢۜۘۨۥۙۡۤۖۚۙۛۗۘ۟";
                                while (true) {
                                    switch (str5.hashCode() ^ 1922048171) {
                                        case -1107227275:
                                            str4 = "۟۫ۖۥۗۗۙۗۜۘۨۖۗ۫ۦۖۚۚۛۘۗۖۢ۠ۖ۟۟ۡ۟ۧۨۘۛۚۗۦۨۥۖۜۗۗۗۨۤ۫ۛ۠ۜۦۜۧۖۘۚۙۧ";
                                            break;
                                        case -377488852:
                                            str4 = "ۛۤۡۘ۠ۙ۬۫ۗۘۘ۟ۧۦۢۡۜۜۨۧۘۦ۟ۗ۟ۜۜۧ۠ۙۧ۫ۨۘ۬ۦۘۘ۟ۤۚ";
                                            break;
                                        case -86099802:
                                            str5 = "۫ۚۤۙۨۤۛۤۖۤۤۜ۬ۛۗۗۗۢ۟ۥۚۧۗۗۛۢۢۡۧۖۘ";
                                            break;
                                        case 810716391:
                                            str5 = getPackageName().equals(this.OooooOO) ? "ۡ۫ۜۘۘۨۖۨۛۡۙۙۦۘ۠ۜۘۘۨۗ۫ۡۧ۠۠ۥۜۘۙۗۙۘۥ" : "۠ۦ۬ۤۛۦۘ۟ۦ۬ۙۢۗۖۜۘ۬ۜۨۘۧۧۜۘ۫۫ۚ۠ۤۥۤ۟ۡۤۛۥۢۚ۫ۧۘ۠ۦۤۢۖۛۚۖۢ";
                                            break;
                                    }
                                }
                                break;
                            case 1276581733:
                                str = "ۤ۟ۜۚۙۥۘۚ۬ۥۛۢۤۘۦۘۚۢۛۥۘۚۜ۬۟ۧۜۥۘۘۘۨۘ";
                                continue;
                        }
                    }
                    break;
                case 1040565921:
                    o00Ooo = Process.myPid();
                    str = "ۤۗ۠ۚۤۥۘۧۤۨۘ۠ۦۦۘ۠ۨۦۢ۬۫ۖ۫ۜۘۢۘۤۢۙۘۡۚۥۚ۬ۡۘۥۥ۬ۦۛۘۧۥ۫ۗ۟۠۬ۘۢۘۖۚۜۦۘ";
                    break;
                case 1988735500:
                    this.Oooooo0 = true;
                    str = "ۤ۟ۜۚۙۥۘۚ۬ۥۛۢۤۘۦۘۚۢۛۥۘۚۜ۬۟ۧۜۥۘۘۘۨۘ";
                    break;
            }
        }
    }

    private void OooO0o0() {
        String str = "ۗ۠ۥۘۖ۠ۡ۫ۧۜ۠ۡۜۘۖۜۚ۟۬ۥۘ۠ۨۦۘۧۖۨۘۦ۬ۖ۬ۘۢ۠ۢۗۥۥۘ۬ۜۜ۬۟ۤۦۢۜۘ۫ۧۤۨ۠۟ۖۤ۫";
        while (true) {
            switch ((((str.hashCode() ^ 566) ^ 925) ^ UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE) ^ (-743840699)) {
                case -2095512173:
                    str = "ۦ۠ۚۤۘۘۘۖۦ۠۫ۗۨ۫ۗۜۚۗۗۢۘۘ۫ۤۛۚۖۤ۟ۙۦۘ۫ۖۦۘۜۜۡۘ";
                    break;
                case -1742933888:
                    x4.OooO0O0().OooO0o0(this);
                    str = "۟ۡۚ۫ۗۗ۠ۖۡۘۖۜۘ۟ۜۘ۬ۢۜۗۗ۠ۦ۟ۡۧۤۨۘۜۚۗۧۙۜۘۖ۠ۛ";
                    break;
                case -1311762948:
                    qd.OooO0OO().OooO0Oo(this);
                    str = "۟ۦۖۘ۟ۖۙ۫ۨۘۡ۬ۚۨۖ۠ۧۖۗۗ۬ۘ۫ۙۙۜۘۖ۟ۙۤۜۥ۠ۜۛۥۜۧۘ۫ۦۘۙۜ۫ۙ۟۬";
                    break;
                case -674492378:
                    m7.OooO0o0().OooO0oo(this);
                    str = "ۚ۬ۖۘ۫ۛۙ۬۫ۨۘۖ۠ۨۘۤۨۢۢۥۡۘۚۡۨۛۚۗۛ۠ۜۨۖ";
                    break;
                case 728343858:
                    return;
                case 835882626:
                    b5.OooO0OO().OooO0o0(this, g6.OooO0o);
                    str = "ۛۧۧ۟ۡۜ۟ۘۨ۫ۗۤۡۡۡ۫ۙ۟ۘۦۙۖۢۧ۠ۥۘۙۗ۫ۧۜۛۛ۬ۢۢۧۜۘۡۚۦۙۛۡۘ۫۫ۦۘۘۨۜ";
                    break;
                case 970566762:
                    h6.OooO0O0(this);
                    str = "ۡۚۖۘۛۜۡۘۢۥۦۘۙۨۖۙۤۨۚۦۘۢۢۡۘۢۧۗ۬۫۫ۢۢۘۖۜۘ۠ۖۢۤۛۥۚ۟ۡۘۦۦ۠ۘۙۖ";
                    break;
            }
        }
    }

    private void OooO0oO() {
        String str = "۬ۧۨۙ۟ۨۘۖۤۖۚ۟ۦۜۥ۬ۥۨۘ۬۬ۨۘۜۢۡ۟ۙۤۙ۫ۗ";
        while (true) {
            switch ((((str.hashCode() ^ 552) ^ 111) ^ 6) ^ (-1962393730)) {
                case -1537529957:
                    bh.OooO0oO(false);
                    str = "ۦۚۜۦۦۨۘ۬ۙۚ۟ۙۖۘۙۘۘۧۥۡۘۘۥۜۘ۟ۖۖۘۗۥۨ";
                    break;
                case -293355001:
                    str = "ۘۜۧۘۧۢۧۛۤۛۢ۠۬ۖۜ۬ۚ۟ۘ۬۟۫ۢۛۘۘ۟ۧ۟ۥۢۖ۠ۛۖۛۗۦۘ";
                    break;
                case 40055241:
                    bh.OooO00o(this, "67e0ebf048ac1b4f87f502bd", "BillApk");
                    str = "۫ۛۛ۬۬ۥۘۘۚۛ۫ۨۚۚۘۨ۫ۢۨۘۨ۫ۨۚۧۥ۫ۖۦۘ۫ۧۙ۬ۗۖۡۗۜۙۙ۠ۜۡۜۘۤ۫ۦۚۦ۬ۨۡۡۘۡۛۗ";
                    break;
                case 1963421604:
                    return;
            }
        }
    }

    private void OooO0oo() {
        String str = "ۥ۠ۙۤۦۚ۫ۙۥۘۥۘۡۗۖۨۛۖۘۡۜۢۤۛۙۡۧۖۘۖۗۖۘۙ۫ۘۧۨۤۘۘۗۡۤۢ۬ۥۡۘۥۛۙ۫ۧۘ۫۬";
        while (true) {
            switch ((((str.hashCode() ^ 991) ^ 920) ^ 876) ^ (-1754144657)) {
                case -1304726696:
                    str = "ۙۖۤۢ۫ۙۘۦۦۗ۠ۛ۟ۗۢۜۖۜ۠ۜۤۖ۬ۛ۫ۨۨۘۥۡۜ";
                    break;
                case -26317313:
                    startService(new Intent(this, (Class<?>) KeepMainService.class));
                    str = "ۘ۟ۧۘۚۜۘۙۙۢۧۦۢۖ۠ۛۙ۬ۗۙۦۨۘۜۡۖۗ۬ۛۡ۬ۥ";
                    break;
                case 927538770:
                    return;
            }
        }
    }

    public void OooO() {
        String str = "ۘۜۨۥ۟ۜۘۦۢ۠ۗ۠ۡۘۚ۫ۥۛۙۨۘۜ۠ۛۚۚۗ۬ۖۘ۫ۢۜۗۦۛۧۥۨۘ";
        StringBuilder sb = null;
        ActivityManager activityManager = null;
        while (true) {
            switch ((((str.hashCode() ^ 999) ^ 155) ^ 883) ^ (-802409599)) {
                case -2117574772:
                    sb.append(":download_server");
                    str = "۠ۢۙۖ۬ۜۧ۟ۛ۠۫ۜۘ۬ۧ۟ۡۦۜۘۘۡۤۚۘ۬ۥۚۥۘۜۗۧ";
                    break;
                case -1874382855:
                    Process.killProcess(Process.myPid());
                    str = "۫۟ۙ۬ۜۘۛۖۤۡۚۧۘۘۧۗۨۢ۫ۡۘۛۤ۬ۛۗۘۤ۬ۖۘۨۡۘۖۙۦۨۘۚۨۦۤۜۥۡۘۜۗ۟";
                    break;
                case -1842075610:
                    bh.OooO0O0(this);
                    str = "ۨۡۗ۠۟ۚ۟ۘۢۚۢ۟۫ۤۜۘۨۨۖۘ۫ۚۘۘۘۡۖ۠ۙ۬ۤ۟ۥۡ۟ۢ";
                    break;
                case -1427395787:
                    String str2 = "۟۬ۡۜۦ۟ۤۛۢۢۥۜ۬ۘۨ۠ۤۢ۬ۚۘۗ۫ۖۘۘۧۤۚۙ۬ۨۥۜۤۨۦ";
                    while (true) {
                        switch (str2.hashCode() ^ 1851378543) {
                            case -1045345959:
                                str2 = "ۖ۫ۛۛۜۘۘۤۦۖۘۢۥۘۘ۠ۤۦۦۥۘۜۘۜۘ۬ۘ۠ۛۨۤۘۚۗ";
                                break;
                            case -398595910:
                                str = "ۗۗۨۘۛۤۧۨۚۜۘۚۛۡۜۛۧۡ۠ۦ۟ۜۘ۠ۢۚ۬ۗۘۘۙ۠ۢۜۥۡۛۘۖۙۦۦۥ۫۫ۜۛ۟ۦ۟ۛۚۢۨۢۖۘ";
                                continue;
                            case 660774316:
                                str = "ۨۚۘۜ۬ۧۢۧ۠ۘۡۧۧۡۤۙۘ۫۫ۙۤ۫ۘۡۘۙۙۚ۠ۗۢۜ۠ۢۖۨۗۥ۠۫ۖ۬ۦۨۥۦ۟ۚۨ";
                                continue;
                            case 1198126245:
                                String str3 = "۠ۗۢ۫۫۟ۗۚۗۤۨۘ۫ۛۘۘۢۘ۟ۖۚۨۘۧۚۖۘۤۜۜۘۙۡۙ۫ۘۜۘ۬ۗۖۘۢۥۦۘۗۤۧۙ۬ۡۙ۠ۖ۟ۖ۠ۙۦۧ";
                                while (true) {
                                    switch (str3.hashCode() ^ (-1310312652)) {
                                        case -1516470899:
                                            str2 = "ۜۡ۬ۤۚۦۚۨۗۚۦۙۙۡۙۘۢۤۛ۟۬ۖۚۥۦۤۤۧۡۦۘ";
                                            break;
                                        case -1307183792:
                                            str3 = "ۙۧۥۘۧۡۡۘۛۜۜۘۚ۟ۥۚ۠ۚۜۖۦ۬ۜۜۥ۠۬ۚ۬ۥ۟۟۠ۖۦۘۜ۠ۢۙۚۚۤۧۡ";
                                            break;
                                        case -732052762:
                                            str3 = activityManager != null ? "ۙۧۘۘۢۙ۫۟ۧۦۘۜۡۥۘۡۘۥۘۨۧۧۛۤ۟۬۫ۙۢ۬ۤۤۥ۟ۧۦۦۗۦ۬" : "۠ۗۢۦ۫۠ۧۜۦۙ۠ۛ۬ۥۥۨ۫ۡۘۤ۬ۦ۬ۥۛۨۘۘۖ۠ۡۖ۫ۗۛۡۘۙ۫ۙۥ۟ۖۘۛ۬ۜۨ۠۟ۘۡۥ۠ۦ";
                                            break;
                                        case 1756452386:
                                            str2 = "ۧ۟۟۬ۨۢۚۗۧ۟۫ۘۙۨۨۘۘ۬۬ۜ۬ۥۨۚۛۧۥۘۨۚۖ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case -794064947:
                    sb = new StringBuilder();
                    str = "۫ۡۥۖۧۦۘۡۥۡۢۧۡۘۢ۬ۙ۟ۗ۟ۥۘ۟ۦۘۦۦۡۧ۟ۡۨۘۜ۠ۦۘۥ۠ۨۗۘۡ۬ۚۧۜۨۡۢۡۘ";
                    break;
                case -636652973:
                    sb.append(getPackageName());
                    str = "ۛۨ۟ۛ۠ۦۘۛ۟ۡۘۚ۬ۨۘۧ۟ۘۘ۬۬ۨۘۤۜۛۨۥۗۜۛۜۘ۬ۡۙۢۡ۬ۥۛۡ";
                    break;
                case -519937467:
                    str = "۟ۗۦۘۢۢ۠ۛۤۚۙۘۢ۟ۡۘۗۗۜۘۥۢۘۗۜ۬۫ۚۥۘۨۡۚ۟ۡۢۨۡۘ";
                    break;
                case -418806271:
                    ((ActivityManager) getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
                    str = "ۧ۫ۡۖ۟ۖۙۙۧۛۗۡۘ۬ۛۛۙۖۖۘ۫ۙۦۘ۠ۤ۫ۚۦۥ۟ۦۡۢۚۦۘۤۖ۫۫ۧ۟ۜ";
                    break;
                case 515433390:
                    y8.OooO0o();
                    str = "ۨۘۦۘۡۗۧۢۡۙۖۘۥۗۙۡۖۚ۫۬۬ۘۤۨۗۙۙۢۥۖۧۚۛۚ۠ۤۗ۟ۜۥ۟ۛ۫ۚۖۘ۬۠۟ۛۥ۠۬ۢۤ";
                    break;
                case 1141235977:
                    activityManager.killBackgroundProcesses(sb.toString());
                    str = "ۨۚۘۜ۬ۧۢۧ۠ۘۡۧۧۡۤۙۘ۫۫ۙۤ۫ۘۡۘۙۙۚ۠ۗۢۜ۠ۢۖۨۗۥ۠۫ۖ۬ۦۨۥۦ۟ۚۨ";
                    break;
                case 1260385101:
                    return;
                case 1270103679:
                    dh.OooOo00(this);
                    str = "ۘ۠ۦۨ۟ۖۛۦۘۘ۬ۥۜۘۖۜۘۘ۬ۚۥ۠ۧ۠ۙ۫ۖۘۨۡۧۚۤۚۘۖ۟ۗۙۙ۟ۘۤۖۡۘۜۘۢۤۤۧ";
                    break;
                case 1530002794:
                    ii.OooOo0O(this);
                    str = "۠ۥۘۘ۠ۢۙۚۜۦۜ۠ۧۚۨۡۘ۠ۚۖۘ۫ۤۨۖۧۡۘۤۧۛۡۢۙۧۢۜۘ۫۫ۘۨۢ۟۠۟ۦۘ۟ۨۖۚۜۤ";
                    break;
                case 1611640719:
                    str = "ۨۥۖۘۜ۟ۤ۬ۡۚۙۢۙۗۧۛۜۤۨۡۗۘۦ۬ۜۗۢۖۘۥۤۨۧۡۤ۬ۥۨۢۜ۬ۧۗۦۘ۟ۗۖۘۙۖۛ";
                    activityManager = (ActivityManager) getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                    break;
                case 1965611615:
                    System.exit(0);
                    str = "۬ۖۦۨۜۦۘۢۛۗۤۛ۬ۘۧ۫ۢۗ۠۠ۥ۫ۘۧۡۘۦۖۨ۟ۤۚ۟ۦۧۗۤۗۜۛۡۘۗۦۥۘ";
                    break;
                case 2029848374:
                    i7.OooO().Oooo0o();
                    str = "ۦۨۨۘۨۘۧۘ۠۫ۜۘۗۙۛۥۢۖۛۜۡۘۡ۬ۤۦۙۨۘۜۚۢۖ۟ۥ۬ۚۧۢۨۨۘۨۘۨۙۚ۫ۨۤۚۢ۟۠";
                    break;
            }
        }
    }

    public void OooOO0(int i) {
        String str = "۫ۜۧۘۤۛۘۘۚ۠ۖۨ۫۫۬ۨۦۘ۠۟ۨۘۛۘۥۘۡ۫ۤۗۗ۟ۤۢۢۢۙۜۖۥ۠";
        while (true) {
            switch ((((str.hashCode() ^ 302) ^ 107) ^ 634) ^ (-1135132027)) {
                case -1906971298:
                    str = "ۢۢۦۘۨۥۧۨۚۖۢۤۡۖۥۨۘۖ۬۬ۢ۬۬۠ۤ۫۟ۡۛۤۗۥۖۘۖۘۦ۟";
                    break;
                case -1095868539:
                    Toast.makeText(this, i, 0).show();
                    str = "ۙۡۖۡۦۨۘۤۡۦۦۖ۫ۘۙۦۜۘۨۦۚۢۦۢۛۛۧۨۗۜ۬ۘۨۜ۠ۢۙۡ۟ۢ۟ۥۘۖۤۖۘ۠ۚ۫ۚۥ۫ۘۢۡ";
                    break;
                case -909322019:
                    return;
                case 482053655:
                    str = "ۦۨۜۜ۬ۛۤۗ۠ۡۛۗۘۨۦۥۘۘۜۙۦۘۖ۬ۧۛۨۜۙ۠ۨ";
                    break;
            }
        }
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        String str = "ۨۤۨۘ۬ۚۨۥ۟ۢۤۖۘ۬۠۠ۤۡۡۡۧۧۖۜ۠ۧ۬۟ۥۤۘۘۧۤۜۘۦۛۢۗۡ۫ۧۦۜ";
        while (true) {
            switch ((((str.hashCode() ^ 973) ^ 290) ^ 865) ^ (-1532455907)) {
                case -1419676088:
                    oi.OooO0o().OooO0O0(this, getPackageName(), ElfinFreeActivity.class, 100);
                    str = "ۘ۫ۙۚ۠ۜۢۛۧۛۙۙۥۧۦۘۜۤۡ۟ۘۖۘۖ۟ۘۧ۬ۧۙۨۘ۫ۧ۠ۚ۬ۙۙۨۡۛۦ۫";
                    break;
                case -1286166930:
                    OooO0o();
                    str = "ۢۙۥۨۖۢۡۥۘ۫ۖ۫ۗ۫۠ۥۤۢۙ۫ۧۚۗ۬۫ۨ۬ۦ۫ۨۘۜۗۜ۠ۚۜۘۚۨ۬ۧۡۜۘۗ۟ۙ۟۠۫ۨۥۘ۫ۧۛ";
                    break;
                case -174404647:
                    super.attachBaseContext(context);
                    str = "ۛۛۥۨۢۧۙۙۦۤۜۦۖۙ۫ۗ۫ۤ۟ۖ۟ۧۙ۬۠ۥۘۚۧۖۘۘۢۘۡ۫ۙۖۗۦۘۥۦۛۢۖۙۗۛۢ";
                    break;
                case 456249000:
                    MultiDex.install(this);
                    str = "ۙۜ۫ۙۚۦۙ۬ۘ۫ۢۜۘ۠ۛۡۤۨۙۢۤۗۘ۟ۨۗۧۜۘۜۦۧ";
                    break;
                case 789760375:
                    return;
                case 1493050121:
                    str = "ۛۘۦۗ۬ۦۦ۫ۙۡۥۦۙ۫ۘ۟ۤۛۗۘۘۡۧۗۦۜۙ۟۬ۨۘۦۧۘۤۜۜۘۤۢۘۛۛۙ";
                    break;
                case 1847492583:
                    str = "ۧۨۖۘۗۦ۫ۨۨۘۘۤۨۥۨ۟ۙۗ۠ۛۙ۠ۛ۟ۥۘ۠۟ۘ۠ۤۘۘۨۦ۬ۡۢۤ۫ۚۜۢۦۖۘۥ۟ۡۘۡۚۛ";
                    break;
                case 2136788116:
                    o00Oo0 = this;
                    str = "۫ۘۜۘۖۧ۟ۗۛۗۢۦۘۚ۠ۛۦۦۘۘۗ۫ۗۢۧۦۘۢ۬ۨۚ۬ۡۢ۠۬ۡۤۗ۫ۡۘۥ۟ۙۧۡۘۙۦۜۘۥ۬ۖۘۘ۠ۖ";
                    break;
            }
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        String str = "ۦۜ۠ۥۛۚ۠ۥۥۚۗ۟۠ۢۗۡۢۨۘۢ۟ۜ۬۫ۘۘ۠ۢۤ۠ۜۨۘۜ۠ۢۜ۫ۨۖۧۦ۟ۥۨۙۦۦۚۡۘۘ";
        while (true) {
            switch ((((str.hashCode() ^ 976) ^ 399) ^ 741) ^ 988338599) {
                case -1906628545:
                    a7.OooO00o().OooO0OO(configuration.orientation);
                    str = "ۨ۟ۦۘۜ۫ۡۙۦۤ۠ۖۘۧۡۙ۫ۖ۠۫ۧۜۜ۬ۡ۫ۦۘۚۨۦۘ۠ۜ۟۟ۜۡۘ";
                    break;
                case -1767059830:
                    z6.OooO0Oo().OooO0OO().OoooOOo();
                    str = "۠ۧۥۘۡۚۘۘۧۘۖ۬۫ۤۛۙۖۤۧۘۘ۬ۢۦۘۚۚۙ۫۟ۥۛۚ۟۠۠ۤ۠ۙۜۘ۠۬ۤۖۖۗۜۜۖۧۤۗۢۛۙۨۛۥۘ";
                    break;
                case -1680309304:
                    return;
                case -1436194876:
                    str = "ۘۛۡۥۙۖۘ۟ۗۡۘۗ۠۫ۨ۟ۥۦۗ۠ۥۨۖ۬ۚۛۗۜۡۘۙۙۨۘ۟ۤۨۘۦۘۖۨۢۗۜۚۚ";
                    break;
                case -1290813611:
                    super.onConfigurationChanged(configuration);
                    str = "ۨۖۨۘۖ۫ۚۖۚۚۦ۫۬ۤۦ۟ۘۡۢ۬ۥۡۘۦۨۡۨۦۧۘۙۧۖ۬۫ۤ۫ۙۡۘۙۡۤۙۗۜۛ۠ۗۡۧۤۛۡۡۜۧۦۘ";
                    break;
                case -1124631357:
                    String str2 = "ۦۛۡۘۤۤۚۜۨۨۚۤۡۖ۠۠۫ۧۘۘ۟ۖۨۘۦ۬ۥۘۦۤۚ۬۠ۚۧۥۘۚۜ۠ۘۡۜ۬ۢ۫ۦ۟ۡ۬ۧۖۗ۬ۨۘۘ۫ۜ";
                    while (true) {
                        switch (str2.hashCode() ^ 653518715) {
                            case -1908626226:
                                str = "۬۬ۘۨ۟ۨۘۘۥۦOۙۙۡ۫۫۬ۜۤۢۧۛۖۖۜ۟ۘۢۛ۟ۜۖۘۤۖۖۘۧۤۦ۬ۛۦۘۜۧۥۘۦۘۧۘۖ۠ۘۛۚۖۘ";
                                continue;
                            case -1799134110:
                                str = "۠ۧۥۘۡۚۘۘۧۘۖ۬۫ۤۛۙۖۤۧۘۘ۬ۢۦۘۚۚۙ۫۟ۥۛۚ۟۠۠ۤ۠ۙۜۘ۠۬ۤۖۖۗۜۜۖۧۤۗۢۛۙۨۛۥۘ";
                                continue;
                            case 1449638758:
                                str2 = "ۘ۬ۤۜ۫ۘ۬ۜ۫ۖ۫ۥۤۖۨۛۘۥۗۙۛ۬ۡۥ۫ۖۘۡۥۜۢۨ۬ۖۙۢ۫۟ۢ۫۠ۗ۟۫ۨۤ۬";
                                break;
                            case 1674333059:
                                String str3 = "ۨۙ۬ۛ۠ۦۗۢۥۦ۫ۦ۬ۤۜۢ۟۬۫ۗ۠۫ۡۥۖۨ۬ۥۨۗۜ۬ۥۢۙ";
                                while (true) {
                                    switch (str3.hashCode() ^ 863995905) {
                                        case -1417189506:
                                            str3 = z6.OooO0Oo().OooO0OO() != null ? "ۙۦۗۨۧ۠ۤۛۗۦۡۡۘ۠۫ۥۛۗۖۤۨۘۘۜۡۡ۟ۜۗۨۥۢۘۘۖۘۜۘۗۖۜۘ۬ۨۢۧۗۘۘۙۢۨۘ" : "۟ۤۘۘۨۥۧ۠۠ۤۨۦ۠ۨ۬ۛۥۤۢ۠۠۫ۧۦۥۤۥۘ۠ۛ۟ۨۘۨۘۛ۟ۡۤۙۥۙ۬ۨۘۦۘ۟ۚۚۤ";
                                            break;
                                        case -129454705:
                                            str3 = "ۨۡۚۜۛۤ۠ۗ۫ۦۖۨۢۥۘۘۨۛۤۨۥۖۘۡۘۧ۫۫ۖۨۨ";
                                            break;
                                        case 1249076997:
                                            str2 = "ۚۦۨۘۚۥۧۘ۠ۡۧۘۨۗۥۘ۟ۢۡۘ۠۬ۚۗۙۘۘ۟ۢۘ۟ۡۖۘۖۖۦۘۨۖ۟ۙۛۙۦ۠ۤۥۛ";
                                            break;
                                        case 1382040106:
                                            str2 = "ۦۡۤۥۤۨۛۨۡ۠ۦۘۘ۫۟ۨ۬۠ۖۖۤۜ۟ۜۡۘ۫۫ۙۤ۠ۜۘۖۥۥۢۢ۫ۗۡۦۙۨۜ";
                                            break;
                                    }
                                }
                                break;
                        }
                    }
                    break;
                case 171906083:
                    str = "ۖۥۖۘۦ۠۟ۗۧۖۘۖۢۧۛۡۘۚۚۤۘۤۗ۫ۧۦۧۖ۟ۗۨۚۘۢۗۧ";
                    break;
            }
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        String str = "ۛۧۘۘۜۗۧ۬۟ۖ۬ۗۢۜ۠ۜۘۚ۬ۨۦ۟ۡۘۥۖۙۜۡ۟ۜۤۡۧۢ۫۫۬ۖ";
        while (true) {
            switch ((((str.hashCode() ^ 230) ^ 431) ^ 324) ^ 156609122) {
                case -1830419867:
                    i7.OooO().OooOO0O(this);
                    str = "ۜ۠۫۠ۧۙۗۢۛۛۚۦۡ۟ۦۘ۠ۧۜ۠ۧۚۤۘۤۛۡۨۘۤۦۦ";
                    break;
                case -1557933383:
                    d7.OooO00o().OooO0O0(this);
                    str = "ۤ۟ۚۙۦۨ۬۫ۜۙۤ۟ۢۥۤۥ۠ۢۚۤۗۡ۫ۢۦۤۧۜۧ۠ۜۨۤ۬ۜۘ۠ۜۖۘۛۦۡ";
                    break;
                case -149045894:
                    oi.OooO0o().OooO0Oo(this);
                    str = "۠ۤۚۚۘۗۖۧۘۘۖۢۖۘۗۥۢۨۡۡۘۨ۠۬ۘ۠۟ۦ۟ۢۜۖۢۦۙۢۘۗ";
                    break;
                case -49368121:
                    String str2 = "ۗۚۜۘۘۢۜ۠ۜ۫ۤۢۧۛۘۘۧۦۛۗۖۧۘ۟ۗۥ۬ۛۜۢۚۘ";
                    while (true) {
                        switch (str2.hashCode() ^ (-1914133291)) {
                            case -1146886909:
                                str = "ۙۖۖۘۤۢ۟ۘۗۧۘ۠ۡۘ۟ۧۚۚۗۙۢۛ۬۬ۤۦۘۥۡۜۚۥ۟۟ۡۜۨۤ۬۠ۦۚ۬۫ۡۘ۬ۜۛۧۤۘۘ";
                                continue;
                            case 1301392343:
                                String str3 = "۠۬ۦۘۗۚۦۘۗۜۥۘۧۜۦۜ۠ۙ۟ۘۤۚۡۡۘۢۧۙۢۖۥۘ۟۫ۧۧ۟ۥۛۥۨۧۘۧۙۜ";
                                while (true) {
                                    switch (str3.hashCode() ^ 589392185) {
                                        case -1985758713:
                                            str2 = "ۧۥ۫ۘۘۛۡ۫ۧۜۢۤ۟ۘۛۦۜۨۘۛ۠ۡۧۜ۠ۘ۠ۜ۠ۖۛۘ۬ۥۘۧۡۢ۬ۘ۬ۙۦۛ";
                                            break;
                                        case -877027151:
                                            str3 = "۫ۥۖۘۨ۟ۖۛ۬ۗۖۤۥۘۘۦۡۘۖ۠۟ۚۢۖۗۘ۠۬۟ۤ۠ۖۜ";
                                            break;
                                        case -835198773:
                                            str2 = "۬ۤۜۤۡۘۢۢۡ۠ۡ۠ۚۤۢ۠ۤۥۛۨۥۦۜۦۘۨۛۡۙۨۥۘۜۙۡۘۚۧۦۜ۬ۦۘ۠۟۟";
                                            break;
                                        case -820354153:
                                            str3 = this.Oooooo ? "۟ۢۖۘۘۜۙۚۨ۟ۢۛۨۘۢۘۧۘۘۙۥۡ۬ۛ۟ۛۙۖۗۜۢۡۘۙۚۤۗۗۙۚۛۘ۫ۡۨۘۨۖۜۘ۠۟ۦۘۜۜۦۘ۠ۚۘ" : "ۦ۟ۙۗۗۗۤ۠۠ۨۘۧۘۗ۟ۙۚۦۖۘۖۢۖۘۧۙۤۛ۟ۦ۫۬ۢۦۦ۫۫ۥۨۨۧۛۤ۫ۦۗۧ۠ۦۨۘ";
                                            break;
                                    }
                                }
                                break;
                            case 1707463160:
                                str = "ۘۧۥ۠ۛۛۦۖۡۘۖۜۡۤۡ۬ۥۗۢۛ۠ۚۜۜۡۧۧۦ۟۟";
                                continue;
                            case 2130372658:
                                str2 = "ۛ۬ۘۙۗ۬ۚ۠ۚۙۡۡۦ۬ۨۘ۬ۗۘۘۙۧۗۘۘۜۘۗ۫ۥۦۦۛۢۡۢۨ۬ۘۘۢۢۜۘۧۛۦۘۘۖ۠۠ۧ۬ۗۥۜۖ۟";
                                break;
                        }
                    }
                    break;
                case 72915342:
                    super.onCreate();
                    str = "ۛۚۙۢ۬ۡ۠ۛۤۦۘۛۙۜۘۤۗۙۖۗ۠ۖۢۦۦ۬ۗ۫ۖۨ";
                    break;
                case 209608447:
                case 510217438:
                    str = "ۤ۟ۚۙۦۨ۬۫ۜۙۤ۟ۢۥۤۥ۠ۢۚۤۗۡ۫ۢۦۤۧۜۧ۠ۜۨۤ۬ۜۘ۠ۜۖۘۛۦۡ";
                    break;
                case 338709601:
                    String str4 = "ۥۥۜۘۜۚۦۘ۟ۛ۟ۚۥۡۥۨ۫ۘۖ۫۠ۛۖۘ۬ۙۖۘۗۤ۫ۖۢۡۘۖۦ۟ۡ۬ۖۖۨۙۦۢۜ";
                    while (true) {
                        switch (str4.hashCode() ^ 1744158903) {
                            case -1753293389:
                                str = "ۗۙۨۧۦۧۡۛۘۘ۠ۨ۬ۦۤۚۙ۠ۙۧۢۥۘۗۖۤۤۗۡۖۡۘۨۖۦۘۧۧۨۘ";
                                continue;
                            case -1038021432:
                                str = "ۧۥۙۥۛۨۙۡۨۜۘ۫ۚۦۧۛۧۢۦۗ۫۟ۤۚۢ۬۠ۨۘۥ۬۟ۗۡۜۘۡۦۡ۬۬ۛۘۡۘۘۛ۟ۙ۬ۖۤۥۨۨ";
                                continue;
                            case -581690447:
                                String str5 = "ۘۙۨۘۢۨ۫۫ۤۖۜ۫ۗۨ۬ۦۗۗۨۘۚۨۡۛۥۦۤ۬ۖۘۢۗ۫";
                                while (true) {
                                    switch (str5.hashCode() ^ (-557063255)) {
                                        case 419299025:
                                            str5 = "۟ۧ۟۬۠ۖۘ۟ۥۖۘ۟ۚۖۘۦۖۦۥۥۨۧۡۙۥۧۧۧۧۗۧۖۦۘۗۚۢۥ۫ۡۘۡ۬ۤۨۙ۠ۧۘۥ۠ۙۨۘ۠ۥۘۙ۟۠";
                                            break;
                                        case 782917017:
                                            str5 = this.Oooooo0 ? "۫ۦۦۥۖۚ۟۟ۦۘۖ۟ۦۘۡۘۘۧۨ۟۠ۘ۠ۙۡۦۦۚۗۙ۠ۤ" : "ۖۤۢۢۡۢ۟ۚ۬ۙۗ۟۬۠ۙۦۦۥۛۗۗ۠ۚۡۘۙۥ۫ۤۨ۠۠۟ۥۘۥ۠۟";
                                            break;
                                        case 1272892041:
                                            str4 = "۠ۢ۬ۤۤۢ۠ۙۧ۠۠۬ۧۘۚۛۤۖۘۚۛ۠ۧۘۨۜ۠ۖۘۧ۫ۘۘ۠۫ۨۘۡ۟ۢ۫۟ۜۘۖ۫۫";
                                            break;
                                        case 1608298561:
                                            str4 = "ۤۥۘۘ۠ۢۚۜۛۜۜۧۙ۬ۘۦۤۤ۬ۡ۠ۨۘۦ۬ۙۙ۫ۗۚۡۙۥۢۥۘ۫";
                                            break;
                                    }
                                }
                                break;
                            case 484305514:
                                str4 = "۠۟ۖۘۚۚۖۨۨۦۘ۫ۥ۬ۜۦۦۘۖۢۨۘۛۨۤۥۙۨۘۙۥۖۗۘ۬ۢ۟۟ۢۧۦۗۧۛۤۤۨۜ۠۬۬ۥۘۙ۟ۙ۬ۦ۠";
                                break;
                        }
                    }
                    break;
                case 651365941:
                    str = "ۤۜۧۘۤ۠ۚۡ۠ۢۥۖ۟ۜۡۨۦۤ۠۫۠ۘ۫ۨۤۤ۟ۦۘۜۖۥۘۥۙۘۘۦۧۡۡۢۗۘ۬ۗۡ۬ۙۗۙۨۘ۠۠ۤۡ";
                    break;
                case 906045152:
                    OooO0OO();
                    str = "۟ۖ۠ۥۘۚۧۧ۬ۚۘۗۖۦۖۘۧۡۢ۠۠ۜۘۘۨۚۤۖۘ۬ۚ";
                    break;
                case 1476496620:
                    return;
                case 1494723819:
                    OooO0Oo();
                    str = "ۨۖۢۤۖ۬ۦ۫۟ۚۜۡۛۗۘۗۡۨۡۘۘۢ۫ۜۙۖۥۨۘۙۤۙۥۡۗۤۗۘۘۧۖۨۦۦۙ۫ۢ۠";
                    break;
                case 1625934071:
                    u5.OooO0O0(this);
                    str = "۫ۤۡ۟ۘۧ۫ۘۨۘۢۡۚۧۛۖۦۚ۠ۤ۬۠ۛۛۚۚۚۘۘ۠ۙۥۘ";
                    break;
                case 2103923807:
                    aj.OooO0oO().OooO(this);
                    str = "ۗۙۙۧۖۨۘ۠ۦۖۨۚۚۘۛۚۦۦۘۘۙۡ۟ۛۙ۬ۤۨۗۖۤۤ";
                    break;
            }
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        String str = "ۚۤۥۡ۠ۘۘ۬ۦۢۙۤۧۙۨۡۘۢۥۘۘۘۤۦۘ۬ۢۖۘۛۖۘۨۚۙۡۡ۟ۨۛۦۘۦۧ۟ۚۨ۬۬ۘ۬ۖۤۧۥۧۚۨۜۥۘ";
        while (true) {
            switch ((((str.hashCode() ^ 0) ^ UiMessage.CommandToUi.Command_Type.SET_EDIT_INPUT_TYPE_VALUE) ^ 653) ^ (-1716191244)) {
                case -1457827123:
                    super.onLowMemory();
                    str = "ۢ۫ۥۘۧۚۡۢۙۧۡۡۜۘۙۦۧ۠ۛۖۘۗ۟ۖۥۥ۟ۤۗۥ";
                    break;
                case 153438323:
                    str = "۟ۛۘۘ۠ۨۡۘۦۘۥۘۨۢۘ۫ۤۜۧۖۖۢۗۛ۫۟ۤۜۜۥ۬ۘۡ۠ۜۛۗۥۨۚۙۚۤۥۖۘ";
                    break;
                case 1019980654:
                    return;
            }
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        String str = "ۖۗۙۦۧۘۘ۠ۨۚ۟۟ۤۘۙۖ۬ۛ۫۫ۘۜۙۦۥۙۦۘۧۢۘۘۦۗۡۢۡۜ";
        while (true) {
            switch ((((str.hashCode() ^ 182) ^ UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE) ^ 467) ^ (-286010976)) {
                case 1420505551:
                    str = "۟۬ۥۧ۟ۢ۫۠۟ۗ۠ۜۙ۫ۨۗ۠ۥۘۢۜۖۘۘۡ۬ۜۘۥۧۦۗۡۤۜۛۗۤۛۖۘۡۧۘ";
                    break;
                case 1549965492:
                    super.onTerminate();
                    str = "ۖۚۜۧۖ۫ۢۜۨۘ۠ۜۦۘۘۥۦۤۖۜۘۛ۠ۥۘۦۥ۟ۘۧۧۤ۫ۧ۬۠ۡۙۨ۟ۙ۟ۗۨۙۜۥۙۧۤۦۖۖ۬ۗۙۜۘ";
                    break;
                case 1963218656:
                    return;
            }
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        StringBuilder sb = null;
        String str = "۟ۚۧۥۘۛ۫ۡۜۘۤۡۘۘۢۙۨۖۘۗۦۗۢۥۥ۟۬ۧۖۘۙۛۤۖۛۛ۠ۘ";
        while (true) {
            switch ((((str.hashCode() ^ 226) ^ 705) ^ 720) ^ 1880761889) {
                case -820854474:
                    sb.append(i);
                    str = "ۛ۫۬ۛۢۚۢۥۜۦ۬ۡ۟۟ۥ۬ۥ۟ۧ۠ۢۥۥۡۘۨ۬ۖۘۥۗۛۗۘۥۨۥۨۘۢ۟۠ۙۦۡۘۤۢۨۘۤۡۘۘ";
                    break;
                case -246253325:
                    return;
                case -109791483:
                    super.onTrimMemory(i);
                    str = "۟ۘۢۦۢۨۘۛۡ۟ۚۗۘۛۡ۟ۥۨۘ۫ۧۖۘ۬۟ۤۧۗۙۜۡۜۡۚۦۘ۟۟ۥۘۥ۟ۘۘۥ۟ۨۘۧۜۙ۠۫ۡ۟ۛۖۘۥ۬ۜ";
                    break;
                case 255851124:
                    str = "ۧ۠ۛۢ۬ۙۦ۬ۘۨۜۖۖۤۡۦۜ۫ۘۦۢۥۧۖۥۜۦۧۘ۟";
                    break;
                case 1752316099:
                    sb.append("onLowMemory:");
                    str = "ۧ۟ۧۖۖۧۘۨ۟ۜۘ۠ۖۥۘۧۛۡۛۤۢۚ۫ۦۘۢۨۦۘۗۜۥۚ۫ۗۢۗ۬۠۬ۛۗۧ۬ۚۡۤۧۙۘۘۗ۟ۜۡ۬ۙۡۧۘ";
                    break;
                case 1756920364:
                    str = "ۙ۠۟ۧۨۨۘۗۗۨۘ۫۟ۘۘۧۡۨۖۙۡۦۥۡۘ۟ۛۘۘۤۖۢۡ۠ۨۜۘۦۘۥۛۦۚۗۚۛ۬ۢ۬ۚۨۚۥۘۘ۬ۖۖۥۧ";
                    break;
                case 1858189447:
                    sb = new StringBuilder();
                    str = "ۜۗۦۘۦۛۥۘۛ۫ۚ۟ۤ۠ۨۜۘۚ۠۟ۨۗۧۢۖۨۧ۠ۖ۬۬ۗ";
                    break;
                case 1892285836:
                    sb.toString();
                    str = "ۜۙۡۘۗۘۢۥۘۖۘ۫ۚۨ۠ۤۤۦۖۖۥۡۜۛۥۦۘۡۜۘۜۥۨۘۤۨۘۘ۫ۛ۬";
                    break;
            }
        }
    }
}
