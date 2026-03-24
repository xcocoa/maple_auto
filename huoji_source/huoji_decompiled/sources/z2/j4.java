package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class j4 {
    private static final String OooO00o = "j4";

    public static boolean OooO(File file) {
        return file.exists() && file.isFile() && file.delete();
    }

    public static String OooO00o(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static boolean OooO0O0(File file, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String OooO0OO(String str, String str2, String str3) {
        if (str == null || str.length() == 0) {
            String str4 = "convertEncodingFormat --> str=" + str + ",formatFrom=" + str2 + ",formatTo=" + str3;
            return str;
        }
        try {
            return new String(str.getBytes(str2), str3);
        } catch (UnsupportedEncodingException e) {
            String str5 = "convertEncodingFormat --> str=" + str + ",ex=" + e.getMessage();
            e.printStackTrace();
            return str;
        }
    }

    public static void OooO0Oo(String str, String str2) {
        try {
            String str3 = "copyFile --> targetFileAbsolutePath=" + str + ",toPath=" + str2;
            File file = new File(str);
            File file2 = new File(str2);
            if (!file2.isFile()) {
                file2.mkdirs();
            }
            OooOOo0(new FileInputStream(file), new FileOutputStream(file2));
        } catch (Exception e) {
            e.printStackTrace();
            String str4 = "copyFile --> ex=" + e.getMessage();
        }
    }

    public static File OooO0o(String str) {
        File file;
        File file2 = null;
        try {
            file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + str);
        } catch (Exception e) {
            e = e;
        }
        try {
            if (file.exists()) {
                return file;
            }
            file.mkdirs();
            return file;
        } catch (Exception e2) {
            e = e2;
            file2 = file;
            e.printStackTrace();
            return file2;
        }
    }

    public static File OooO0o0(Context context, String str) {
        File file;
        File file2 = null;
        try {
            file = new File(context.getFilesDir() + File.separator + str);
        } catch (Exception e) {
            e = e;
        }
        try {
            if (file.exists()) {
                return file;
            }
            file.mkdirs();
            return file;
        } catch (Exception e2) {
            e = e2;
            file2 = file;
            e.printStackTrace();
            return file2;
        }
    }

    public static File OooO0oO(File file) {
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    public static boolean OooO0oo(String str) {
        try {
            String str2 = File.separator;
            if (str.endsWith(str2)) {
                str = str + str2;
            }
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                for (File file2 : fileArrListFiles) {
                    OooOO0(file2.getAbsolutePath());
                }
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean OooOO0(String str) {
        StringBuilder sb;
        String str2;
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            sb = new StringBuilder();
            sb.append("deleteSingleFile --> 删除单个文件失败: ");
            sb.append(str);
            str2 = "不存在！";
        } else {
            if (file.delete()) {
                String str3 = "deleteSingleFile --> 删除单个文件 " + str + "成功！";
                return true;
            }
            sb = new StringBuilder();
            sb.append("deleteSingleFile --> 删除单个文件 ");
            sb.append(str);
            str2 = "失败！";
        }
        sb.append(str2);
        sb.toString();
        return false;
    }

    public static File OooOO0O(String str, String str2) {
        File file;
        File file2 = null;
        try {
            File file3 = new File(str);
            if (!file3.exists()) {
                file3.mkdirs();
            }
            file = new File(file3, str2);
        } catch (IOException e) {
            e = e;
        }
        try {
            if (file.exists()) {
                return file;
            }
            file.createNewFile();
            return file;
        } catch (IOException e2) {
            file2 = file;
            e = e2;
            e.printStackTrace();
            return file2;
        }
    }

    public static File OooOO0o(String str, String str2) {
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

    public static String OooOOO(String str) {
        String str2 = System.currentTimeMillis() + "";
        try {
            return str.substring(str.lastIndexOf("/"));
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static String OooOOO0(File file) {
        if (!file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr, 0, 1024);
                if (i == -1) {
                    fileInputStream.close();
                    return OooO00o(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, i);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap OooOOOO(String str) {
        try {
            return BitmapFactory.decodeStream(new FileInputStream(str));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean OooOOOo(String str) {
        try {
            return new File(str).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String OooOOo(File file) {
        return OooOOoo(file, null);
    }

    public static void OooOOo0(FileInputStream fileInputStream, FileOutputStream fileOutputStream) {
        try {
            byte[] bArr = new byte[102400];
            while (true) {
                int i = fileInputStream.read(bArr, 0, 102400);
                if (i != -1) {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String OooOOoo(File file, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "utf-8";
        }
        StringBuilder sb = new StringBuilder();
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), str);
            while (true) {
                int i = inputStreamReader.read();
                if (i == -1) {
                    break;
                }
                sb.append((char) i);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        String string = sb.toString();
        return string.indexOf(IOUtils.LINE_SEPARATOR_WINDOWS) != -1 ? string.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\n") : string.indexOf("\r") != -1 ? string.replaceAll("\r", "\n") : string;
    }

    public static boolean OooOo(File file, String str, String str2) {
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

    public static String OooOo0(String str) {
        try {
            return new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooOo00(Bitmap bitmap, String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file.getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void OooOo0O(String str, String str2, boolean z) {
        String str3 = (str2 + ". time: " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()))) + "\n";
        try {
            File file = new File(str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
                file = new File(str);
            }
            FileWriter fileWriter = new FileWriter(file, z);
            if (str3 != null && !"".equals(str3)) {
                fileWriter.write(str3);
                fileWriter.flush();
            }
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void OooOo0o(File file, String str) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static boolean OooOoO0(File file, String str, String str2, boolean z) {
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
}
