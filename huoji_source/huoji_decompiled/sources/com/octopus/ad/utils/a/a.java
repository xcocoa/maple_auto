package com.octopus.ad.utils.a;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.media.MediaDrm;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.octopus.ad.utils.a.b.l;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.UUID;
import z2.k3;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements c {
    private Application a;
    private String b;
    private String c;
    private String d;

    /* JADX INFO: renamed from: com.octopus.ad.utils.a.a$a, reason: collision with other inner class name */
    public static class C0203a {
        public static final a a = new a();
    }

    private a() {
    }

    public static String a() {
        String str = C0203a.a.b;
        return str == null ? "" : str;
    }

    public static String a(Context context) {
        String str;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            str = "IMEI/MEID not allowed on Android 10+";
        } else {
            if (context == null) {
                return "";
            }
            if (i < 23 || context.checkSelfPermission(com.anythink.china.common.d.a) == 0) {
                return d(context);
            }
            str = "android.permission.READ_PHONE_STATE not granted";
        }
        f.a(str);
        return "";
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance(str2).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (Exception e) {
            f.a(e);
            return "";
        }
    }

    public static void a(Application application) {
        if (application == null) {
            return;
        }
        a aVar = C0203a.a;
        aVar.a = application;
        a(application, aVar);
        b(application, new c() { // from class: com.octopus.ad.utils.a.a.1
            @Override // com.octopus.ad.utils.a.c
            public void a(Exception exc) {
                f.a("onGAIDGetError: " + exc.getMessage());
                a aVar2 = a.this;
                aVar2.d = a.c(aVar2.a);
            }

            @Override // com.octopus.ad.utils.a.c
            public void a(String str) {
                if (TextUtils.isEmpty(str)) {
                    a(new e("GAID is empty"));
                } else {
                    a.this.d = str;
                }
            }
        });
    }

    public static void a(Context context, c cVar) {
        l.a(context).a(cVar);
    }

    private static void a(Context context, String str) {
        if (context == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context)) {
            try {
                Settings.System.putString(context.getContentResolver(), "GUID_uuid", str);
                f.a("Save uuid to system settings: " + str);
                return;
            } catch (Exception e) {
                e = e;
            }
        } else {
            e = "android.permission.WRITE_SETTINGS not granted";
        }
        f.a(e);
    }

    public static String b() {
        return a(a(), "MD5");
    }

    @SuppressLint({"HardwareIds"})
    public static String b(Context context) {
        String string;
        return (context == null || (string = Settings.Secure.getString(context.getContentResolver(), "android_id")) == null) ? "" : string;
    }

    public static void b(Context context, c cVar) {
        l.b(context).a(cVar);
    }

    private static void b(Context context, String str) {
        if (context == null) {
            return;
        }
        File fileG = g(context);
        if (fileG == null) {
            f.a("UUID file in external storage is null");
            return;
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileG));
            try {
                if (!fileG.exists()) {
                    fileG.createNewFile();
                }
                bufferedWriter.write(str);
                bufferedWriter.flush();
                f.a("Save uuid to external storage: " + str);
                bufferedWriter.close();
            } finally {
            }
        } catch (Exception e) {
            f.a(e);
        }
    }

    public static String c() {
        String str = C0203a.a.c;
        return str == null ? "" : str;
    }

    public static String c(Context context) {
        String strE = e(context);
        if (TextUtils.isEmpty(strE)) {
            strE = f(context);
        }
        if (TextUtils.isEmpty(strE)) {
            strE = h(context);
        }
        if (!TextUtils.isEmpty(strE)) {
            return strE;
        }
        String string = UUID.randomUUID().toString();
        f.a("Generate uuid by random: " + string);
        c(context, string);
        a(context, string);
        b(context, string);
        return string;
    }

    private static void c(Context context, String str) {
        if (context == null) {
            return;
        }
        context.getSharedPreferences("GUID", 0).edit().putString(k3.oo0o0Oo, str).apply();
        f.a("Save uuid to shared preferences: " + str);
    }

    public static String d() {
        String str = C0203a.a.d;
        return str == null ? "" : str;
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    private static String d(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String imei = telephonyManager.getImei();
            return TextUtils.isEmpty(imei) ? telephonyManager.getMeid() : imei;
        } catch (Error | Exception e) {
            f.a(e);
            return "";
        }
    }

    public static String e() {
        try {
            byte[] propertyByteArray = new MediaDrm(new UUID(-1301668207276963122L, -6645017420763422227L)).getPropertyByteArray("deviceUniqueId");
            if (propertyByteArray == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (byte b : propertyByteArray) {
                sb.append(String.format("%02x", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (Error | Exception e) {
            f.a(e);
            return "";
        }
    }

    private static String e(Context context) {
        if (context == null) {
            return "";
        }
        String string = Settings.System.getString(context.getContentResolver(), "GUID_uuid");
        f.a("Get uuid from system settings: " + string);
        return string;
    }

    public static String f() {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.BOARD.length() % 10);
        sb.append((Build.VERSION.SDK_INT >= 21 ? Arrays.deepToString(Build.SUPPORTED_ABIS) : Build.CPU_ABI).length() % 10);
        sb.append(Build.DEVICE.length() % 10);
        sb.append(Build.DISPLAY.length() % 10);
        sb.append(Build.HOST.length() % 10);
        sb.append(Build.ID.length() % 10);
        sb.append(Build.MANUFACTURER.length() % 10);
        sb.append(Build.BRAND.length() % 10);
        sb.append(Build.MODEL.length() % 10);
        sb.append(Build.PRODUCT.length() % 10);
        sb.append(Build.BOOTLOADER.length() % 10);
        sb.append(Build.HARDWARE.length() % 10);
        sb.append(Build.TAGS.length() % 10);
        sb.append(Build.TYPE.length() % 10);
        sb.append(Build.USER.length() % 10);
        return sb.toString();
    }

    private static String f(Context context) {
        String line = "";
        if (context == null) {
            return "";
        }
        File fileG = g(context);
        if (fileG != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(fileG));
                try {
                    line = bufferedReader.readLine();
                    bufferedReader.close();
                } finally {
                }
            } catch (Exception e) {
                f.a(e);
            }
        }
        f.a("Get uuid from external storage: " + line);
        return line;
    }

    private static File g(Context context) {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i >= 23 && (i >= 30 || context == null || context.checkSelfPermission(com.anythink.china.common.d.b) != 0)) {
            z = false;
        }
        if (z && "mounted".equals(Environment.getExternalStorageState())) {
            return new File(Environment.getExternalStorageDirectory(), "Android/.GUID_uuid");
        }
        return null;
    }

    private static String h(Context context) {
        if (context == null) {
            return "";
        }
        String string = context.getSharedPreferences("GUID", 0).getString(k3.oo0o0Oo, "");
        f.a("Get uuid from shared preferences: " + string);
        return string;
    }

    @Override // com.octopus.ad.utils.a.c
    public void a(Exception exc) {
        StringBuilder sb;
        String str;
        f.a("onOAIDGetError: " + exc.getMessage());
        String strB = b(this.a);
        if (TextUtils.isEmpty(strB)) {
            String strA = a((Context) this.a);
            if (TextUtils.isEmpty(strA)) {
                String strE = e();
                if (TextUtils.isEmpty(strE)) {
                    String strF = f();
                    if (TextUtils.isEmpty(strF)) {
                        this.b = c(this.a);
                        this.c = b();
                        sb = new StringBuilder();
                        str = "Client id is GUID: ";
                    } else {
                        this.b = strF;
                        this.c = b();
                        sb = new StringBuilder();
                        str = "Client id is PseudoID: ";
                    }
                } else {
                    this.b = strE;
                    this.c = b();
                    sb = new StringBuilder();
                    str = "Client id is WidevineID: ";
                }
            } else {
                this.b = strA;
                this.c = b();
                sb = new StringBuilder();
                str = "Client id is IMEI/MEID: ";
            }
        } else {
            this.b = strB;
            this.c = b();
            sb = new StringBuilder();
            str = "Client id is AndroidID: ";
        }
        sb.append(str);
        sb.append(this.b);
        f.a(sb.toString());
    }

    @Override // com.octopus.ad.utils.a.c
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a(new e("OAID is empty"));
            return;
        }
        this.b = str;
        this.c = str;
        f.a("Client id is OAID: " + this.b);
    }
}
