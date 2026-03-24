package z2;

import android.text.TextUtils;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class vc0 {
    private static final char[] OooO00o = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static String OooO0O0 = "LitePalKey";

    public static String OooO00o(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return uc0.OooO0O0(OooO0O0, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0O0(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return uc0.OooO0Oo(OooO0O0, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0OO(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes(Charset.defaultCharset()));
            return new String(OooO0Oo(messageDigest.digest()));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    private static char[] OooO0Oo(byte[] bArr) {
        char[] cArr = OooO00o;
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & com.umeng.commonsdk.proguard.bg.m];
        }
        return cArr2;
    }
}
