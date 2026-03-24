package z2;

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes.dex */
public class g5 {
    private static final String OooO00o = "g5";
    private static final int OooO0O0 = 512;

    private static String OooO00o(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb.toString().trim();
            }
            sb.append(line);
            sb.append("\n");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        r4 = OooO00o(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        if (r2 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO0O0(Context context, String str, String str2) {
        ZipInputStream zipInputStream;
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                zipInputStream = new ZipInputStream(inputStreamOpen);
            } finally {
            }
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        zipInputStream.close();
                        if (inputStreamOpen == null) {
                            return null;
                        }
                        inputStreamOpen.close();
                        return null;
                    }
                    if (nextEntry.getName().equals(str2) && !nextEntry.isDirectory()) {
                        break;
                    }
                    zipInputStream.closeEntry();
                } finally {
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean OooO0OO(File file, File file2) {
        File fileOooO0oO;
        String str = "unzipFile --> zipFile= " + file + ",destDir=" + file2;
        boolean z = false;
        if (file == null || file2 == null) {
            return false;
        }
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(file));
            byte[] bArr = new byte[512];
            boolean z3 = false;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        return z3;
                    }
                    try {
                        if (nextEntry.isDirectory()) {
                            File file3 = new File(file2.getAbsolutePath() + File.separator + nextEntry.getName());
                            if (!file3.exists()) {
                                file3.mkdirs();
                                String str2 = "unzipFile --> mkdirs: " + file3.getCanonicalPath();
                            }
                        }
                        String str3 = "unzipFile --> success: fileName=" + fileOooO0oO.getName();
                    } catch (Exception e) {
                        e = e;
                        z = true;
                        String str4 = "unzipFile --> exception: " + e.getMessage();
                        e.printStackTrace();
                        return z;
                    }
                    fileOooO0oO = j4.OooO0oO(new File(file2.getAbsolutePath(), nextEntry.getName()));
                    FileOutputStream fileOutputStream = new FileOutputStream(fileOooO0oO);
                    while (true) {
                        int i = zipInputStream.read(bArr, 0, 512);
                        if (i == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                    fileOutputStream.close();
                    z3 = true;
                } catch (Exception e2) {
                    e = e2;
                    z = z3;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static boolean OooO0Oo(Context context, String str, File file) {
        ZipInputStream zipInputStream;
        byte[] bArr;
        boolean z;
        try {
            zipInputStream = new ZipInputStream(context.getAssets().open(str));
            try {
                bArr = new byte[1024];
                z = false;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                zipInputStream.close();
                return z;
            }
            File file2 = new File(file, nextEntry.getName());
            if (nextEntry.isDirectory()) {
                file2.mkdirs();
            } else {
                File parentFile = file2.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int i = zipInputStream.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                fileOutputStream.close();
            }
            zipInputStream.closeEntry();
            z = true;
            e.printStackTrace();
            return false;
        }
    }
}
