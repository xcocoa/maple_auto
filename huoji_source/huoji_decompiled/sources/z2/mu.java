package z2;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class mu {
    private static final String OooO00o = "mu";

    public static String OooO00o(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.substring(str.indexOf("{"), str.lastIndexOf("}"));
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static byte[] OooO0O0(InputStream inputStream) throws Exception {
        ju.OooO0OO(OooO00o, "readInputStream --> ");
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                inputStream.close();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            ju.OooO0OO(OooO00o, "readInputStream --> 1");
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static byte[] OooO0OO(InputStream inputStream, int i) throws Exception {
        ju.OooO0OO(OooO00o, "readInputStream --> ");
        byte[] bArr = new byte[i];
        int i2 = inputStream.read(bArr);
        int i3 = i2;
        while (i2 < i && i3 >= 0) {
            i3 = inputStream.read(bArr, i3, i - i3);
            if (i3 > 0) {
                i2 += i3;
            }
        }
        if (i2 < 0) {
            return new byte[0];
        }
        if (i2 >= i) {
            return bArr;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }
}
