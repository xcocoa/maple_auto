package cn.haorui.sdk.core.loader;

import android.util.Base64;
import com.umeng.commonsdk.proguard.bg;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;
import z2.ua0;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static byte[] a = {83, 23, -12, 55, 114, 69, -65, -72, -17, -36, 66, -60, 93, 113, -67, 67};
    public static byte[] b = {48, 92, 48, bg.k, 6, 9, 42, -122, 72, -122, -9, bg.k, 1, 1, 1, 5, 0, 3, 75, 0, 48, 72, 2, 65, 0, 30, -112, 28, 24, -108, -53, 98, -21, -93, 78, -26, -62, 72, -107, -108, 122, -111, -22, 124, -32, 8, -90, -63, -21, -73, 113, -5, 84, -2, 107, -42, -63, 110, 62, -48, 99, -39, -113, -100, 70, -7, -127, -106, -95, -5, 113, 51, 9, 104, 122, -32, 47, -53, -40, 85, 23, -66, 113, -92, 118, -42, 35, 63, -94, 2, 3, 1, 0, 1};

    public static String a(byte[] bArr, byte[] bArr2) {
        try {
            int length = a.length;
            byte[] bArr3 = new byte[length];
            new SecureRandom().nextBytes(bArr3);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, new SecretKeySpec(bArr2, ua0.AES), new IvParameterSpec(bArr3));
            byte[] bArrDoFinal = cipher.doFinal(bArr);
            byte[] bArrCopyOf = Arrays.copyOf(bArrDoFinal, bArrDoFinal.length + length);
            System.arraycopy(bArr3, 0, bArrCopyOf, bArrDoFinal.length, length);
            return Base64.encodeToString(bArrCopyOf, 2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Map<String, String> a(Map<String, String> map) {
        String string;
        String strB;
        try {
            String hexString = Long.toHexString(((System.currentTimeMillis() / 3) * 3) + 2);
            JSONObject jSONObject = new JSONObject();
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
                arrayList.add(entry.getKey() + "=" + entry.getValue());
            }
            String[] strArr = {"device_imei", "device_oaid", "device_adid"};
            int i = 0;
            while (true) {
                if (i >= 3) {
                    break;
                }
                String str = map.get(strArr[i]);
                if (str != null && str.length() > 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
            String str2 = map.get("sdk_version");
            if (str2 == null || str2.length() == 0) {
                string = "7OZlTzUPeW3CrmdSGGXGKA";
            } else {
                byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str2.getBytes());
                StringBuilder sb = new StringBuilder();
                for (byte b2 : bArrDigest) {
                    String hexString2 = Integer.toHexString(b2 & 255);
                    if (1 == hexString2.length()) {
                        sb.append("0");
                    }
                    sb.append(hexString2);
                }
                string = sb.toString();
            }
            arrayList.add(string);
            arrayList.add(hexString);
            Collections.sort(arrayList);
            StringBuilder sb2 = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
            }
            byte[] bArrDigest2 = MessageDigest.getInstance("MD5").digest(sb2.toString().getBytes());
            String strA = a(jSONObject.toString().getBytes(), bArrDigest2);
            if (strA == null || (strB = b(bArrDigest2, b)) == null) {
                return null;
            }
            HashMap map2 = new HashMap();
            map2.put("nonce", hexString);
            map2.put("message", strA);
            map2.put("signature", strB);
            return map2;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(byte[] bArr, byte[] bArr2) {
        try {
            byte[] bArr3 = new byte[bArr2.length];
            int i = 94 == bArr2.length ? 25 : 33;
            System.arraycopy(b, 0, bArr3, 0, i);
            System.arraycopy(bArr2, b.length - 5, bArr3, bArr2.length - 5, 5);
            int length = b.length - 5;
            while (i < length) {
                if (i % 2 == 0) {
                    bArr3[i] = b[i];
                } else {
                    bArr3[i] = bArr2[i];
                }
                byte b2 = bArr3[i];
                byte[] bArr4 = a;
                bArr3[i] = (byte) (b2 ^ bArr4[i % bArr4.length]);
                i++;
            }
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr3)));
            return Base64.encodeToString(cipher.doFinal(bArr), 2);
        } catch (Exception unused) {
            return null;
        }
    }
}
