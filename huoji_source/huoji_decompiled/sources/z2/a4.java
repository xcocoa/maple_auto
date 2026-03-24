package z2;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.RequiresApi;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class a4 {
    private static final String OooO00o = "a4";
    private static int OooO0O0 = 1000;

    public static String OooO(Context context) {
        try {
            File fileOooOO0 = OooOO0(context);
            strOooOOo0 = fileOooOO0.exists() ? OooOOo0(fileOooOO0) : null;
            if (strOooOOo0 != null) {
                return strOooOOo0;
            }
            strOooOOo0 = OooOoO0();
            Oooo0o0(fileOooOO0, strOooOOo0, true);
            return strOooOOo0;
        } catch (Exception e) {
            e.printStackTrace();
            return strOooOOo0;
        }
    }

    public static boolean OooO00o() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean OooO0O0(Context context, String str, String str2) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            InputStream inputStreamOpen = context.getAssets().open(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i <= 0) {
                    fileOutputStream.flush();
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e) {
            String str3 = "copyAssetsFile --> e =" + e.getMessage();
            e.printStackTrace();
            return false;
        }
    }

    public static boolean OooO0OO(Context context, String str, String str2) {
        File[] fileArrListFiles;
        String str3 = "copyFolderAndSubFiles --> sourcePath = " + str + ", targetPath = " + str2;
        File file = new File(str);
        File file2 = new File(str2);
        if (!file.exists() || !file.isDirectory()) {
            return false;
        }
        if ((!file2.exists() && !file2.mkdirs()) || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file3 : fileArrListFiles) {
            if (file3.isDirectory()) {
                if (!OooO0OO(context, file3.getAbsolutePath(), file2.getAbsolutePath() + File.separator + file3.getName())) {
                    return false;
                }
            } else {
                String path = file3.getParentFile().getPath();
                StringBuilder sb = new StringBuilder();
                sb.append(context.getFilesDir());
                String str4 = File.separator;
                sb.append(str4);
                sb.append(k3.o000000);
                if (!path.equals(sb.toString())) {
                    k4.OooO00o(file3, new File(file2.getAbsolutePath() + str4 + file3.getName()));
                }
            }
        }
        return true;
    }

    public static String OooO0Oo(String str) {
        return str == null ? "" : str;
    }

    public static String OooO0o(String str) {
        return OooO0oO(str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO0o0() {
        String str;
        String strOooO0o0 = j3.OooO0o0();
        String strOooO0O0 = b5.OooO0OO().OooO0O0();
        if (!TextUtils.isEmpty(strOooO0O0)) {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            str = Long.valueOf(Long.parseLong(strOooO0O0)).longValue() >= Long.valueOf(Long.parseLong(strOooO0o0)).longValue() ? strOooO0O0 : strOooO0o0;
        }
        String str2 = "ownVersion:" + strOooO0o0 + " saveVersion:" + strOooO0O0 + "  get appVersion:" + str;
        return str;
    }

    public static String OooO0oO(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "UTF-8";
        }
        try {
            return Base64.encodeToString(str.getBytes(str2), 2);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static File OooO0oo(Context context) {
        return OooO00o() ? new File(Environment.getExternalStorageDirectory(), "elfinParams.txt") : new File(context.getFilesDir(), "elfinParams.txt");
    }

    public static File OooOO0(Context context) {
        return OooO00o() ? new File(Environment.getExternalStorageDirectory(), ".deviceInfo") : new File(context.getFilesDir(), ".deviceInfo");
    }

    public static String OooOO0O(Context context) {
        return z5.OooO0O0;
    }

    public static File OooOO0o(Context context) {
        return OooO00o() ? new File(Environment.getExternalStorageDirectory(), ".elfinDevice") : new File(context.getFilesDir(), ".elfinDevice");
    }

    public static String OooOOO(String str) {
        try {
            if (str.equals(new String(str.getBytes(no.OooO0OO), no.OooO0OO))) {
                return no.OooO0OO;
            }
        } catch (Exception unused) {
        }
        try {
            if (str.equals(new String(str.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
                return "ISO-8859-1";
            }
        } catch (Exception unused2) {
        }
        try {
            if (str.equals(new String(str.getBytes("UTF-8"), "UTF-8"))) {
                return "UTF-8";
            }
        } catch (Exception unused3) {
        }
        try {
            return str.equals(new String(str.getBytes("GBK"), "GBK")) ? "GBK" : "";
        } catch (Exception unused4) {
            return "";
        }
    }

    public static String OooOOO0() {
        return j4.OooOOo(OooOOOo(k3.o0OO00O, k3.o00000O));
    }

    public static File OooOOOO(Context context) {
        return OooO00o() ? new File(Environment.getExternalStorageDirectory(), ".elfinError") : new File(context.getFilesDir(), ".elfinError");
    }

    public static File OooOOOo(String str, String str2) {
        File file = null;
        try {
            File file2 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(file2, str2);
            try {
                if (file3.exists()) {
                    return file3;
                }
                file3.createNewFile();
                return file3;
            } catch (IOException e) {
                file = file3;
                e = e;
                e.printStackTrace();
                return file;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public static String OooOOo(int i) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/" + i + "/cmdline"));
            try {
                String line = bufferedReader.readLine();
                if (!TextUtils.isEmpty(line)) {
                    line = line.trim();
                }
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return line;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    return null;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    private static String OooOOo0(File file) {
        try {
            ArrayList arrayList = new ArrayList();
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                arrayList.add(line);
            }
            fileInputStream.close();
            if (arrayList.size() > 0) {
                return (String) arrayList.get(0);
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Point OooOOoo(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static String OooOo() {
        return Build.VERSION.RELEASE;
    }

    public static int OooOo0(Context context) {
        return (int) context.getResources().getDisplayMetrics().density;
    }

    @RequiresApi(api = 21)
    public static MediaProjectionManager OooOo00(Context context) {
        MediaProjectionManager mediaProjectionManager = (MediaProjectionManager) context.getSystemService("media_projection");
        ((Activity) context).startActivityForResult(mediaProjectionManager.createScreenCaptureIntent(), OooO0O0);
        return mediaProjectionManager;
    }

    public static int OooOo0O(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int OooOo0o(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static File OooOoO(Context context) {
        return OooO00o() ? new File(Environment.getExternalStorageDirectory(), ".userMark") : new File(context.getFilesDir(), ".userMark");
    }

    public static String OooOoO0() {
        return UUID.randomUUID().toString();
    }

    public static boolean OooOoOO(Context context) {
        try {
            File file = new File(context.getFilesDir(), ".stopScriptTips");
            if (file.exists()) {
                return false;
            }
            file.createNewFile();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public static void OooOoo(Context context, boolean z) {
        boolean z3;
        String packageName = context.getPackageName();
        String strOooOOO0 = OooOOO0();
        Log.i("jason", "operateElfinPackageNames --> isAdd=" + z + ",elfinFreePackageNames=" + strOooOOO0);
        boolean z4 = true;
        if (z) {
            if (!TextUtils.isEmpty(strOooOOO0)) {
                if (strOooOOO0.contains(packageName)) {
                    return;
                }
                packageName = "," + packageName;
            }
            Oooo0(packageName, true);
            return;
        }
        String str = "," + packageName;
        String str2 = packageName + ",";
        if (TextUtils.isEmpty(strOooOOO0)) {
            return;
        }
        if (strOooOOO0.contains(str)) {
            strOooOOO0 = strOooOOO0.replace(str, "");
            z3 = true;
        } else {
            z3 = false;
        }
        if (strOooOOO0.contains(str2)) {
            strOooOOO0 = strOooOOO0.replace(str2, "");
            z3 = true;
        }
        if (strOooOOO0.contains(packageName)) {
            strOooOOO0 = strOooOOO0.replace(packageName, "");
        } else {
            z4 = z3;
        }
        if (z4) {
            Log.i("jason", "operateElfinPackageNames --> hasReplace=true, result=" + strOooOOO0);
            Oooo0(strOooOOO0, false);
        }
    }

    public static boolean OooOoo0(Context context) {
        try {
            File fileOooOoO = OooOoO(context);
            if (fileOooOoO.exists()) {
                return false;
            }
            fileOooOoO.createNewFile();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String OooOooO(String str) {
        return OooOooo(str, null);
    }

    public static String OooOooo(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "UTF-8";
        }
        try {
            return new String(Base64.decode(str, 2), str2);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void Oooo0(String str, boolean z) {
        File fileOooOOOo = OooOOOo(k3.o0OO00O, k3.o00000O);
        if (z) {
            j4.OooOoO0(fileOooOOOo, str, "UTF-8", true);
        } else {
            j4.OooOo(fileOooOOOo, str, "UTF-8");
        }
    }

    public static List<String> Oooo000(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    arrayList.add((String) jSONArray.get(i));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public static boolean Oooo00O(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean Oooo00o(Context context, String str) {
        return false;
    }

    public static void Oooo0O0(Activity activity, LinearLayout linearLayout, ImageView imageView, int i) {
        BitmapFactory.decodeResource(activity.getResources(), i);
        activity.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
    }

    public static String Oooo0OO(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i != charArray.length - 1) {
                stringBuffer.append((int) charArray[i]);
                stringBuffer.append(",");
            } else {
                stringBuffer.append((int) charArray[i]);
            }
        }
        return stringBuffer.toString();
    }

    private static void Oooo0o(File file, String str, boolean z) {
        try {
            FileWriter fileWriter = new FileWriter(file, z);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void Oooo0o0(File file, String str, boolean z) {
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            Oooo0o(file, str, z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
