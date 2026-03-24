package z2;

import android.app.Application;
import android.content.Intent;
import android.os.Build;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public class wi {
    private static long OooO00o(String str) throws Exception {
        CRC32 crc32 = new CRC32();
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    fileInputStream.close();
                    return crc32.getValue();
                }
                crc32.update(bArr, 0, i);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void OooO0O0(String str) {
        try {
            if (Arrays.asList(2087764047L, 2882791799L, 3542813600L).contains(Long.valueOf(OooO00o(str)))) {
                return;
            }
            Application application = ii.OooO00o;
            Intent intent = new Intent(d3.OooO0oo);
            intent.putExtra(d3.OooO, 12);
            if (Build.VERSION.SDK_INT >= 26) {
                application.startForegroundService(intent);
            } else {
                application.startService(intent);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String OooO0OO(byte[] bArr, int i) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        int i2 = i & 255;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            bArr2[i3] = (byte) (((bArr[i3] & 255) - i2) & 255);
        }
        return new String(bArr2, StandardCharsets.UTF_8);
    }
}
