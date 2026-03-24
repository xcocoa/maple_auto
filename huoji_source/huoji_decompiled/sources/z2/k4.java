package z2;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class k4 {
    private static final Pattern OooO00o = Pattern.compile("[\\w%+,./=_-]+");

    public static class OooO00o implements FilenameFilter {
        private String OoooOoO;

        public OooO00o(String str) {
            this.OoooOoO = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(this.OoooOoO);
        }
    }

    public static class OooO0O0 extends AsyncTask<File[], ArrayList<HashMap<String, Integer>>, ArrayList<HashMap<String, Boolean>>> {
        private OooO00o OooO00o;

        public interface OooO00o {
            void OooO00o(ArrayList<HashMap<String, Boolean>> arrayList);
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public ArrayList<HashMap<String, Boolean>> doInBackground(File[]... fileArr) {
            new ArrayList(fileArr[0].length);
            for (int i = 0; i < fileArr[0].length; i++) {
                k4.OooO00o(fileArr[0][i], fileArr[1][i]);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(ArrayList<HashMap<String, Boolean>> arrayList) {
            super.onPostExecute(arrayList);
            this.OooO00o.OooO00o(arrayList);
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
        public void onProgressUpdate(ArrayList<HashMap<String, Integer>>... arrayListArr) {
            super.onProgressUpdate(arrayListArr);
        }

        public void OooO0Oo(OooO00o oooO00o) {
            this.OooO00o = oooO00o;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
        }
    }

    public static String OooO(String str, String str2) {
        String str3 = File.separator;
        if (str.endsWith(str3)) {
            return str + str2;
        }
        return str + str3 + str2;
    }

    public static boolean OooO00o(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                boolean zOooO0O0 = OooO0O0(fileInputStream, file2);
                fileInputStream.close();
                return zOooO0O0;
            } catch (Throwable th) {
                fileInputStream.close();
                throw th;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean OooO0O0(InputStream inputStream, File file) {
        try {
            if (file.exists()) {
                file.delete();
            }
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i < 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
                fileOutputStream.flush();
                try {
                    fileOutputStream.getFD().sync();
                } catch (IOException unused) {
                }
                fileOutputStream.close();
                return true;
            } catch (Throwable th) {
                fileOutputStream.flush();
                try {
                    fileOutputStream.getFD().sync();
                } catch (IOException unused2) {
                }
                fileOutputStream.close();
                throw th;
            }
        } catch (IOException unused3) {
            return false;
        }
    }

    public static String OooO0OO(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        File file = new File(str);
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    break;
                }
                stringBuffer.append(new String(bArr, 0, i, str2));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return stringBuffer.toString();
    }

    public static String OooO0Oo(long j) {
        StringBuilder sb;
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j < 1024) {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j));
            str = "B";
        } else if (j < 1048576) {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j / 1024.0d));
            str = "KB";
        } else if (j < FileUtils.ONE_GB) {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j / 1048576.0d));
            str = "MB";
        } else {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j / 1.073741824E9d));
            str = "G";
        }
        sb.append(str);
        return sb.toString();
    }

    public static File OooO0o(Context context) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static String OooO0o0(Context context, String str) {
        return OooOO0O(new File(OooO0o(context), str).getAbsolutePath());
    }

    public static boolean OooO0oO(String str, String str2) {
        String str3;
        if (str2 == null) {
            str2 = "";
        }
        if (str == null) {
            str = "";
        }
        if (str.lastIndexOf("/") == str.length() - 1) {
            str3 = str + str2;
        } else {
            str3 = str + "/" + str2;
        }
        return new File(str3).exists();
    }

    public static boolean OooO0oo(File file) {
        return OooO00o.matcher(file.getPath()).matches();
    }

    public static String OooOO0(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
            try {
                if (!file.isDirectory()) {
                    file.createNewFile();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file.getAbsolutePath();
    }

    private static String OooOO0O(String str) {
        return OooO0OO(str, "utf-8");
    }

    public static String OooOO0o(File file) {
        int i;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            do {
                i = bufferedReader.read();
                if (i != -1) {
                    stringBuffer.append((char) i);
                }
            } while (i != -1);
            bufferedReader.close();
            String string = stringBuffer.toString();
            return string.indexOf(IOUtils.LINE_SEPARATOR_WINDOWS) != -1 ? string.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\n") : string.indexOf("\r") != -1 ? string.replaceAll("\r", "\n") : string;
        } catch (IOException | OutOfMemoryError unused) {
            return null;
        }
    }

    public static void OooOOO(String str, String str2) throws IOException {
        FileWriter fileWriter = new FileWriter(str);
        try {
            fileWriter.write(str2);
        } finally {
            fileWriter.close();
        }
    }

    public static String OooOOO0(File file, int i, String str) throws IOException {
        StringBuilder sb;
        int i2;
        boolean z;
        int i3;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            long length = file.length();
            String str2 = "";
            if (i > 0 || (length > 0 && i == 0)) {
                if (length > 0 && (i == 0 || length < i)) {
                    i = (int) length;
                }
                byte[] bArr = new byte[i + 1];
                int i4 = bufferedInputStream.read(bArr);
                if (i4 > 0) {
                    if (i4 <= i) {
                        str2 = new String(bArr, 0, i4);
                    } else if (str == null) {
                        str2 = new String(bArr, 0, i);
                    } else {
                        sb = new StringBuilder();
                        sb.append(new String(bArr, 0, i));
                        sb.append(str);
                        str2 = sb.toString();
                    }
                }
            } else if (i < 0) {
                byte[] bArr2 = null;
                byte[] bArr3 = null;
                boolean z3 = false;
                while (true) {
                    z = true;
                    if (bArr2 != null) {
                        z3 = true;
                    }
                    if (bArr2 == null) {
                        bArr2 = new byte[-i];
                    }
                    i3 = bufferedInputStream.read(bArr2);
                    if (i3 != bArr2.length) {
                        break;
                    }
                    byte[] bArr4 = bArr3;
                    bArr3 = bArr2;
                    bArr2 = bArr4;
                }
                if (bArr3 != null || i3 > 0) {
                    if (bArr3 == null) {
                        str2 = new String(bArr2, 0, i3);
                    } else {
                        if (i3 > 0) {
                            System.arraycopy(bArr3, i3, bArr3, 0, bArr3.length - i3);
                            System.arraycopy(bArr2, 0, bArr3, bArr3.length - i3, i3);
                        } else {
                            z = z3;
                        }
                        if (str != null && z) {
                            sb = new StringBuilder();
                            sb.append(str);
                            sb.append(new String(bArr3));
                            str2 = sb.toString();
                        }
                        str2 = new String(bArr3);
                    }
                }
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr5 = new byte[1024];
                do {
                    i2 = bufferedInputStream.read(bArr5);
                    if (i2 > 0) {
                        byteArrayOutputStream.write(bArr5, 0, i2);
                    }
                } while (i2 == 1024);
                str2 = byteArrayOutputStream.toString();
            }
            return str2;
        } finally {
            bufferedInputStream.close();
            fileInputStream.close();
        }
    }

    public static void OooOOOO(Context context, String str, String str2) {
        try {
            File file = new File(OooO0o(context), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            OooOOO(file.getAbsolutePath(), str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
