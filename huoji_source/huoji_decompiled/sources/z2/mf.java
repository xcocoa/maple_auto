package z2;

import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class mf {
    private static String OooO00o(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i & 255);
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        int i2 = i >>> 8;
        stringBuffer.append(i2 & 255);
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        int i3 = i2 >>> 8;
        stringBuffer.append(i3 & 255);
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append((i3 >>> 8) & 255);
        return stringBuffer.toString();
    }
}
