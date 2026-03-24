package z2;

import android.content.Context;
import android.os.Environment;
import com.cyjh.elfin.base.AppContext;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class g6 {
    public static int OooO = 2;
    public static final String OooO00o = "APP";
    public static final String OooO0O0 = "android";
    public static final String OooO0OO = "msg_data";
    public static final String OooO0Oo = "Message";
    public static final String OooO0o = "small_red_dot";
    public static final String OooO0o0 = "red_dot_flag";
    public static final int OooO0oO = 1;
    public static final int OooO0oo = 2;
    public static final String OooOO0 = "ad_old_id";
    public static final String OooOO0O = "ad_new_id";
    public static final String OooOO0o = "new_jump_link";
    public static final String OooOOO = "ad_is_first";
    public static final String OooOOO0 = "old_jump_link";
    public static final String OooOOOO = "is_touch_clicker";
    public static final String OooOOOo = "is_touch_clicker";
    public static final String OooOOo = "is_clicker_description";
    public static final String OooOOo0 = "id_description";
    public static final String OooOOoo = "default_entry_games";
    public static final String OooOo = "9l3k3m39363j32383l3h36383l9l303m3k";
    public static final String OooOo0 = "app-release.apk";
    public static final String OooOo00 = "recommend_games_link";
    public static final int OooOo0O = 1;
    public static final String OooOo0o = "AppReboot.dex";
    public static final String OooOoO = "9916101i1k1j981h14101j297j2f1425";
    public static final String OooOoO0 = "6s79750r0t06056s070t0r";
    public static final String OooOoOO = "com.cyjh.gundam";
    public static final String OooOoo = "youxifengwo.apk";
    public static final String OooOoo0 = "http://down.nishuoa.com/fengwocps.apk";
    public static final String OooOooO = "save_network_message";
    public static final String OooOooo = "network_file_is_exist";
    public static final boolean Oooo = true;
    public static final String Oooo0 = "server_time_successful";
    public static final String Oooo000 = "template_apk_req";
    public static final String Oooo00O = "single_apk_req";
    public static final String Oooo00o = "server_time";
    public static final String Oooo0O0 = "last_ad_id";
    public static final String Oooo0OO = "last_ad_link_url";
    public static final String Oooo0o = "last_ad_jump_linkurl";
    public static final String Oooo0o0 = "last_ad_link_type";
    public static final String Oooo0oO = "last_ad_title";
    public static final String Oooo0oo = "5000820";
    public static final String OoooO = "ANDFZLBDAPI816";
    public static final String OoooO0 = "1031278";
    public static final boolean OoooO00 = false;
    public static final String OoooO0O = "andzjjlkp01";
    public static final String OoooOO0 = "RBKOKIXWV";
    public static final String OoooOOO = "redirect";
    public static final String OoooOOo = "download";
    public static final String OoooOo0 = "redownload";
    public static final String OoooOoO = "SDK20191519030326wbwdvdccwn8sye8";
    public static final String OoooOoo = "POSIDe5v7yvk0jx0m";
    public static final String Ooooo00 = ".gif";
    public static final String Ooooo0o = "http";
    public static final String Oooooo = "5e1f6df6cc024c80b7e8b86dc670c100";
    public static final String Oooooo0 = "deviceid";
    public static final String OoooooO = "101477";
    public static final String Ooooooo = "101478";
    public static final String o000oOoO = "com.cyjh.mobileanjian";
    public static final String o00O0O = "94CCB814573108BFBD19D8E2BB45AEE0";
    public static final String o00Oo0 = "9312C6DA2448C84DB3C4FE8F66E2B394";
    public static final int o00Ooo = 10000;
    public static final String o00o0O = "has_load_splash_first_ad";
    public static final String o00oO0O = "b1214d0324681928";
    public static final String o00oO0o = "2xg8d8ga3z";
    public static final String o00ooo = "has_load_splash_second_ad";
    public static final String o0O0O00 = "110";
    public static final String o0OoOo0 = "589ac20e";
    public static final String o0ooOO0 = "9292308";
    public static final String o0ooOOo = "9732310";
    public static final String oo000o = "has_load_bottom_ad";
    public static final int oo0o0Oo = 36;
    public static final String ooOO = "F4F04588C1076DA9017964B229D657DA";
    public static final String OooooO0 = String.valueOf(1);
    public static final String OooooOO = String.valueOf(2);
    public static final String OooooOo = w3.Oooo000(AppContext.OooO00o());
    public static String o0ooOoO = "script";
    public static String o0OOO0o = ".config";
    public static String o0Oo0oo = "assets";
    public static int o0OO00O = 60;

    public static final String OooO00o(Context context) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName();
    }

    public static File OooO0O0(Context context) {
        File file = new File(OooO00o(context), "Info");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "device_id");
    }

    public static File OooO0OO(Context context) {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File file = new File(OooO00o(context), "adimg");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "pic");
    }

    public static File OooO0Oo(Context context) {
        File file = new File(OooO00o(AppContext.OooO00o()), "NetworkMessage");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, "NetworkReqLog.txt");
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file2;
    }

    public static File OooO0o0(Context context) {
        File file = new File(OooO00o(AppContext.OooO00o()), "ErrorMessage");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "xiaomi4.txt");
    }
}
