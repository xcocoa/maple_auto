package com.didi.virtualapk.utils;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.didi.virtualapk.internal.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Map;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class ZipVerifyUtil {
    public static String checkZipFileForCertificate(String str) throws IOException {
        ZipFile zipFile = new ZipFile(new File(str));
        InputStream inputStream = zipFile.getInputStream(zipFile.getEntry("META-INF/MANIFEST.MF"));
        Manifest manifest = new Manifest(inputStream);
        inputStream.close();
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Attributes> entry : manifest.getEntries().entrySet()) {
            for (Object obj : entry.getValue().keySet()) {
                if ((obj instanceof Attributes.Name) && ((Attributes.Name) obj).toString().indexOf("-Digest") != -1) {
                    hashSet.add(entry.getKey());
                }
            }
        }
        HashSet hashSet2 = new HashSet();
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        String str2 = "";
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (!zipEntryNextElement.isDirectory()) {
                String name = zipEntryNextElement.getName();
                if (!name.startsWith("META-INF/")) {
                    hashSet2.add(name);
                } else if (name.endsWith(".RSA") || name.endsWith(".DSA")) {
                    str2 = name;
                }
            }
        }
        HashSet hashSet3 = new HashSet(hashSet2);
        hashSet3.removeAll(hashSet);
        HashSet hashSet4 = new HashSet(hashSet);
        hashSet4.removeAll(hashSet2);
        zipFile.close();
        if (hashSet3.isEmpty() && hashSet4.isEmpty()) {
            return str2;
        }
        return null;
    }

    private static byte[] decode(String str) throws Exception {
        return Base64.decode(str.getBytes(), 0);
    }

    public static Certificate getCertificate(String str) throws Exception {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        FileInputStream fileInputStream = new FileInputStream(str);
        Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(fileInputStream);
        fileInputStream.close();
        return certificateGenerateCertificate;
    }

    public static Certificate getCertificateFromZip(String str, String str2) throws Exception {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        ZipFile zipFile = new ZipFile(new File(str));
        InputStream inputStream = zipFile.getInputStream(zipFile.getEntry(str2));
        Certificate next = certificateFactory.generateCertificates(inputStream).iterator().next();
        inputStream.close();
        zipFile.close();
        return next;
    }

    public static boolean verifyZip(Context context, String str) {
        return verifyZip(context, str, "test.cer");
    }

    public static boolean verifyZip(Context context, String str, String str2) {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            InputStream inputStreamOpen = context.getAssets().open(str2);
            Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(inputStreamOpen);
            inputStreamOpen.close();
            return verifyZip(str, certificateGenerateCertificate);
        } catch (IOException | CertificateException e) {
            Log.w(Constants.TAG, e);
            return false;
        }
    }

    public static boolean verifyZip(String str, Certificate certificate) {
        try {
            certificate.verify(getCertificateFromZip(str, checkZipFileForCertificate(str)).getPublicKey());
            return true;
        } catch (Exception e) {
            Log.w(Constants.TAG, e);
            return false;
        }
    }
}
