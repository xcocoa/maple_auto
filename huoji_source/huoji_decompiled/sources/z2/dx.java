package z2;

import java.nio.charset.Charset;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class dx {
    private dx() {
    }

    public static String OooO00o(String str, String str2) {
        return OooO0O0(str, str2, zx.OooOO0O);
    }

    public static String OooO0O0(String str, String str2, Charset charset) {
        return "Basic " + ByteString.encodeString(str + ":" + str2, charset).base64();
    }
}
