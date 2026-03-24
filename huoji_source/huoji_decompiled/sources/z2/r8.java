package z2;

import android.content.Context;
import android.content.pm.Signature;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class r8 {
    private final String OooO00o(String str) {
        if (str == null) {
            return null;
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            byte[] bytes = str.getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i = 0;
            for (byte b : bArrDigest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i2 + 1;
                cArr2[i2] = cArr[b & com.umeng.commonsdk.proguard.bg.m];
            }
            return new String(cArr2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static r8 OooO0OO() {
        return new r8();
    }

    public void OooO0O0(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            String strOooO00o = OooO00o(signatureArr[0].toCharsString());
            int length = signatureArr.length;
            "daeeaed0d3850865bb902b6e07afd541".equals(strOooO00o);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
