package com.iflytek.voiceads.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.proguard.bg;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import z2.ua0;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d {
    public static synchronized String a(String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "";
        } else {
            try {
                byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
                StringBuilder sb = new StringBuilder();
                for (byte b : bArrDigest) {
                    String hexString = Integer.toHexString(b & 255);
                    if (hexString.length() == 1) {
                        hexString = "0" + hexString;
                    }
                    sb.append(hexString);
                }
                string = sb.toString();
            } catch (NoSuchAlgorithmException e) {
                g.b("IFLY_AD_SDK", "md5 error:" + e.getMessage());
                string = "";
            }
        }
        return string;
    }

    public static String b(String str) {
        try {
            byte[] bytes = "5120aba7dd8880ba".getBytes("utf-8");
            byte[] bArr = new byte[16];
            byte[] bArr2 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, bg.k, bg.l, bg.m};
            for (int i = 0; i < 16; i++) {
                if (bytes.length > i) {
                    bArr[i] = bytes[i];
                } else {
                    bArr[i] = bArr2[0];
                }
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, ua0.AES);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return Base64.encodeToString(cipher.doFinal(str.getBytes("utf-8")), 8);
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "getEncPrice:" + e.getMessage());
            return "";
        }
    }
}
