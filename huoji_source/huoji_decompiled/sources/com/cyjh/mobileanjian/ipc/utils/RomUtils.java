package com.cyjh.mobileanjian.ipc.utils;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import z2.hf;

/* JADX INFO: loaded from: classes2.dex */
public class RomUtils {
    private static final hf OooO00o = new hf();

    public static String getEmuiVersion() {
        return OooO00o.OooO00o("ro.build.version.emui");
    }

    public static String getFlymeVersion() {
        return Build.DISPLAY;
    }

    public static String getKnownRomVersion() {
        return isMIUI() ? getMUIUDetailVersion() : isFlyme() ? getFlymeVersion() : isEmui() ? getEmuiVersion() : isHaimawanVM() ? "海马玩模拟器" : isTiantianVM() ? "天天模拟器" : isNoxVM() ? "夜神模拟器" : isXiaoyaoVM() ? "逍遥模拟器" : isXXZS() ? "猩猩助手" : "undefined";
    }

    public static String getMUIUDetailVersion() {
        return !isMIUI() ? "" : String.format("MIUI %s %s", OooO00o.OooO00o("ro.miui.ui.version.name"), Build.VERSION.INCREMENTAL);
    }

    public static int getMUIUVersion() {
        if (!isMIUI()) {
            return -1;
        }
        String strOooO0O0 = OooO00o.OooO0O0("ro.miui.ui.version.name", "V0");
        if (strOooO0O0.equals("V8")) {
            return 8;
        }
        if (strOooO0O0.equals("V7")) {
            return 7;
        }
        if (strOooO0O0.equals("V6")) {
            return 6;
        }
        return strOooO0O0.equals("V5") ? 5 : 0;
    }

    public static boolean isARMCpu() {
        byte[] bArr = new byte[20];
        try {
            if (new FileInputStream(new File("/system/lib/libc.so")).read(bArr) != -1) {
                return bArr[18] != 3;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public static boolean isEmui() {
        return OooO00o.OooO0Oo("ro.build.version.emui");
    }

    public static boolean isEmulator() {
        return isHaimawanVM() || isTiantianVM() || isNoxVM() || isXiaoyaoVM() || isXXZS();
    }

    public static boolean isFlyme() {
        return OooO00o.OooO0Oo("ro.flyme.published");
    }

    public static boolean isHaimawanVM() {
        hf hfVar = OooO00o;
        return hfVar.OooO0Oo("droid4x.inited") || hfVar.OooO0Oo("ro.droid4x.host.mac") || hfVar.OooO0Oo("droid4x.battery.status") || hfVar.OooO0Oo("persist.droid4x.op_alpha");
    }

    public static boolean isMIUI() {
        return OooO00o.OooO0Oo("ro.miui.ui.version.name");
    }

    public static boolean isNoxVM() {
        hf hfVar = OooO00o;
        return hfVar.OooO0Oo("nox.inited") || hfVar.OooO0Oo("nox.vbox_dpi") || hfVar.OooO0Oo("ro.nox.host.mac") || hfVar.OooO0Oo("nox.battery.status");
    }

    public static boolean isOppoR9S() {
        hf hfVar = OooO00o;
        String strOooO0O0 = hfVar.OooO0O0("ro.product.name", "");
        String strOooO0O02 = hfVar.OooO0O0("ro.product.model", "");
        return strOooO0O0 != null && strOooO0O0.contains("R9s") && strOooO0O02 != null && strOooO0O02.contains("R9s");
    }

    public static boolean isTiantianVM() {
        hf hfVar = OooO00o;
        return hfVar.OooO0Oo("ttVM.inited") || hfVar.OooO0Oo("ttvmd.battery.status") || hfVar.OooO0Oo("ttVM.vbox_dpi") || hfVar.OooO0Oo("ttvmd.battery.mode");
    }

    public static boolean isXXZS() {
        hf hfVar = OooO00o;
        return hfVar.OooO0Oo("ro.xxzs.DeviceId") || hfVar.OooO0Oo("ro.xxzs.origDeviceId");
    }

    public static boolean isXiaoyaoVM() {
        hf hfVar = OooO00o;
        return hfVar.OooO0Oo("microvirt.inited") || hfVar.OooO0Oo("microvirt.channel") || hfVar.OooO0Oo("ro.microvirt.hmac") || hfVar.OooO0Oo("microvirt.vbox_dpi");
    }
}
