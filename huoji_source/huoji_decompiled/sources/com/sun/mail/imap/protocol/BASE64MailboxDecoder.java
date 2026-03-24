package com.sun.mail.imap.protocol;

import java.text.CharacterIterator;
import java.text.StringCharacterIterator;

/* JADX INFO: loaded from: classes2.dex */
public class BASE64MailboxDecoder {
    public static final char[] pem_array = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', ','};
    private static final byte[] pem_convert_array = new byte[256];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 255; i2++) {
            pem_convert_array[i2] = -1;
        }
        while (true) {
            char[] cArr = pem_array;
            if (i >= cArr.length) {
                return;
            }
            pem_convert_array[cArr[i]] = (byte) i;
            i++;
        }
    }

    public static int base64decode(char[] cArr, int i, CharacterIterator characterIterator) {
        byte b;
        boolean z = true;
        while (true) {
            int i2 = -1;
            while (true) {
                byte next = (byte) characterIterator.next();
                if (next == -1) {
                    return i;
                }
                if (next == 45) {
                    if (!z) {
                        return i;
                    }
                    int i3 = i + 1;
                    cArr[i] = '&';
                    return i3;
                }
                z = false;
                byte next2 = (byte) characterIterator.next();
                if (next2 == -1 || next2 == 45) {
                    return i;
                }
                byte[] bArr = pem_convert_array;
                byte b2 = bArr[next & 255];
                byte b3 = bArr[next2 & 255];
                byte b4 = (byte) (((b2 << 2) & 252) | ((b3 >>> 4) & 3));
                if (i2 != -1) {
                    cArr[i] = (char) ((i2 << 8) | (b4 & 255));
                    i++;
                    i2 = -1;
                } else {
                    i2 = b4 & 255;
                }
                byte next3 = (byte) characterIterator.next();
                if (next3 != 61) {
                    if (next3 == -1 || next3 == 45) {
                        return i;
                    }
                    byte b5 = bArr[next3 & 255];
                    byte b6 = (byte) (((b3 << 4) & 240) | ((b5 >>> 2) & 15));
                    if (i2 != -1) {
                        cArr[i] = (char) ((i2 << 8) | (b6 & 255));
                        i++;
                        i2 = -1;
                    } else {
                        i2 = b6 & 255;
                    }
                    byte next4 = (byte) characterIterator.next();
                    if (next4 == 61) {
                        continue;
                    } else {
                        if (next4 == -1 || next4 == 45) {
                            return i;
                        }
                        b = (byte) (((b5 << 6) & 192) | (bArr[next4 & 255] & 63));
                        if (i2 != -1) {
                            break;
                        }
                        i2 = b & 255;
                    }
                }
            }
            cArr[i] = (char) ((i2 << 8) | (b & 255));
            i++;
        }
    }

    public static String decode(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        char[] cArr = new char[str.length()];
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator(str);
        boolean z = false;
        int iBase64decode = 0;
        for (char cFirst = stringCharacterIterator.first(); cFirst != 65535; cFirst = stringCharacterIterator.next()) {
            if (cFirst == '&') {
                z = true;
                iBase64decode = base64decode(cArr, iBase64decode, stringCharacterIterator);
            } else {
                cArr[iBase64decode] = cFirst;
                iBase64decode++;
            }
        }
        return z ? new String(cArr, 0, iBase64decode) : str;
    }
}
