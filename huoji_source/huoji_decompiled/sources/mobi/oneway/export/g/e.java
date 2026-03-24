package mobi.oneway.export.g;

import android.text.TextUtils;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static Long a(String str) {
        long value;
        if (TextUtils.isEmpty(str)) {
            value = 0;
        } else {
            CRC32 crc32 = new CRC32();
            crc32.update(str.getBytes());
            value = crc32.getValue();
        }
        return Long.valueOf(value);
    }
}
