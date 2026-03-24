package z2;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class ku {
    private static final String OooO00o = "ku";

    public static boolean OooO(File file, String str, String str2, boolean z) {
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = "UTF-8";
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, z), str2));
            bufferedWriter.write(str);
            bufferedWriter.flush();
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean OooO00o() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean OooO0O0(File file) {
        String str;
        String str2;
        if (!file.exists() || !file.isFile()) {
            str = OooO00o;
            str2 = "deleteSingleFile --> 文件不存在！ ";
        } else {
            if (file.delete()) {
                ju.OooO0OO(OooO00o, "deleteSingleFile --> 删除单个文件成功！");
                return true;
            }
            str = OooO00o;
            str2 = "deleteSingleFile --> 删除单个文件失败！";
        }
        ju.OooO0OO(str, str2);
        return false;
    }

    public static File OooO0OO(Context context) {
        return OooO00o() ? new File(Environment.getExternalStorageDirectory(), ".elfinSocketError") : new File(context.getFilesDir(), ".elfinSocketError");
    }

    public static boolean OooO0Oo(File file) {
        return file != null && file.length() > ((long) 1048576);
    }

    public static boolean OooO0o(File file, String str, String str2, boolean z) {
        return OooO(file, OooO0o0(System.currentTimeMillis(), new String[0]) + "\n" + str + "\n\n", str2, z);
    }

    public static String OooO0o0(long j, String... strArr) {
        return (strArr.length < 1 ? new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss E", Locale.getDefault()) : new SimpleDateFormat(strArr[0], Locale.getDefault())).format(Long.valueOf(j));
    }

    public static void OooO0oO(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static boolean OooO0oo(File file, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = "UTF-8";
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), str2));
            bufferedWriter.write(str);
            bufferedWriter.flush();
            bufferedWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
