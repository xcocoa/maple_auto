package z2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class x3 {
    private static final int OooO00o = 1024;

    public static void OooO00o(byte[] bArr, String str) throws Exception {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = byteArrayInputStream.read(bArr2);
            if (i == -1) {
                fileOutputStream.close();
                byteArrayInputStream.close();
                return;
            } else {
                fileOutputStream.write(bArr2, 0, i);
                fileOutputStream.flush();
            }
        }
    }

    public static byte[] OooO0O0(String str) throws Exception {
        return tv.OooO0o(str.getBytes());
    }

    public static void OooO0OO(String str, String str2) throws Exception {
        OooO00o(OooO0O0(str2), str);
    }

    public static String OooO0Oo(byte[] bArr) throws Exception {
        return new String(tv.OooOOO0(bArr));
    }

    public static byte[] OooO0o(String str) throws Exception {
        byte[] bArr = new byte[0];
        File file = new File(str);
        if (!file.exists()) {
            return bArr;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = fileInputStream.read(bArr2);
            if (i == -1) {
                byteArrayOutputStream.close();
                fileInputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr2, 0, i);
            byteArrayOutputStream.flush();
        }
    }

    public static String OooO0o0(String str) throws Exception {
        return OooO0Oo(OooO0o(str));
    }
}
