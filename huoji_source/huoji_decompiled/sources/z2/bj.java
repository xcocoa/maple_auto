package z2;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class bj {
    private static final String OooO00o = "Logcat";
    private static final String OooO0O0 = "logcat_tag_filter.txt";
    private static final Charset OooO0OO;

    static {
        OooO0OO = Build.VERSION.SDK_INT >= 19 ? StandardCharsets.UTF_8 : Charset.forName("UTF-8");
    }

    public static void OooO(Activity activity, CharSequence charSequence) {
    }

    public static String OooO00o(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes(OooO0OO));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Boolean OooO0O0(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || !bundle.containsKey(str)) {
                return null;
            }
            return Boolean.valueOf(Boolean.parseBoolean(String.valueOf(bundle.get(str))));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0OO(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || !bundle.containsKey(str)) {
                return null;
            }
            return String.valueOf(bundle.get(str));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int OooO0Oo(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", g6.OooO0O0));
    }

    public static List<String> OooO0o(Context context) throws IOException {
        ArrayList arrayList = new ArrayList();
        File file = new File(context.getExternalFilesDir(OooO00o), OooO0O0);
        if (file.exists() && file.isFile()) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), OooO0OO));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                } else if (!"".equals(line) && !arrayList.contains(line)) {
                    arrayList.add(line);
                }
            }
            bufferedReader.close();
        }
        return arrayList;
    }

    public static boolean OooO0o0(Context context) {
        return context.getResources().getConfiguration().orientation == 1;
    }

    public static File OooO0oO(Context context, List<String> list) throws IOException {
        File externalFilesDir = context.getExternalFilesDir(OooO00o);
        if (!externalFilesDir.isDirectory()) {
            externalFilesDir.delete();
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        File file = new File(externalFilesDir, new SimpleDateFormat("yyyyMMdd_kkmmss", Locale.getDefault()).format(new Date()) + ".txt");
        if (!file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false), OooO0OO));
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            bufferedWriter.write(it.next().replace("\n", IOUtils.LINE_SEPARATOR_WINDOWS) + "\r\n\r\n");
        }
        bufferedWriter.flush();
        try {
            bufferedWriter.close();
        } catch (IOException unused) {
        }
        return file;
    }

    public static void OooO0oo(Activity activity, int i) {
        OooO(activity, activity.getResources().getString(i));
    }

    public static void OooOO0(String str, String str2, List<String> list, boolean z) {
        File file = new File(str);
        try {
            if (!file.isDirectory()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, str2);
            if (!file2.isFile()) {
                file2.delete();
            }
            if (!file2.exists()) {
                file2.createNewFile();
            }
            FileWriter fileWriter = new FileWriter(file2, z);
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String str3 = it.next().replace("\n", IOUtils.LINE_SEPARATOR_WINDOWS) + "\r\n\r\n";
                if (str3 != null && !"".equals(str3)) {
                    fileWriter.write(str3);
                    fileWriter.flush();
                }
            }
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static File OooOO0O(Context context, List<String> list) throws IOException {
        File file = new File(context.getExternalFilesDir(OooO00o), OooO0O0);
        if (list != null && !list.isEmpty()) {
            if (!file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false), OooO0OO));
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                bufferedWriter.write(it.next() + IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            bufferedWriter.flush();
            try {
                bufferedWriter.close();
            } catch (IOException unused) {
            }
        }
        return file;
    }
}
