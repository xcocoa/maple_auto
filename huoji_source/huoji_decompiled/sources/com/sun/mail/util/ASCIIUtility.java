package com.sun.mail.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ASCIIUtility {
    private ASCIIUtility() {
    }

    public static byte[] getBytes(InputStream inputStream) throws IOException {
        if (inputStream instanceof ByteArrayInputStream) {
            int iAvailable = inputStream.available();
            byte[] bArr = new byte[iAvailable];
            inputStream.read(bArr, 0, iAvailable);
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr2, 0, 1024);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
    }

    public static byte[] getBytes(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
    }

    public static int parseInt(byte[] bArr, int i, int i2) throws NumberFormatException {
        return parseInt(bArr, i, i2, 10);
    }

    public static int parseInt(byte[] bArr, int i, int i2, int i3) throws NumberFormatException {
        int i4;
        int i5;
        boolean z;
        if (bArr == null) {
            throw new NumberFormatException("null");
        }
        if (i2 <= i) {
            throw new NumberFormatException("illegal number");
        }
        int i6 = 0;
        if (bArr[i] == 45) {
            i4 = Integer.MIN_VALUE;
            i5 = i + 1;
            z = true;
        } else {
            i4 = -2147483647;
            i5 = i;
            z = false;
        }
        int i7 = i4 / i3;
        if (i5 < i2) {
            int i8 = i5 + 1;
            int iDigit = Character.digit((char) bArr[i5], i3);
            if (iDigit < 0) {
                throw new NumberFormatException("illegal number: " + toString(bArr, i, i2));
            }
            i6 = -iDigit;
            i5 = i8;
        }
        while (i5 < i2) {
            int i9 = i5 + 1;
            int iDigit2 = Character.digit((char) bArr[i5], i3);
            if (iDigit2 < 0) {
                throw new NumberFormatException("illegal number");
            }
            if (i6 < i7) {
                throw new NumberFormatException("illegal number");
            }
            int i10 = i6 * i3;
            if (i10 < i4 + iDigit2) {
                throw new NumberFormatException("illegal number");
            }
            i6 = i10 - iDigit2;
            i5 = i9;
        }
        if (!z) {
            return -i6;
        }
        if (i5 > i + 1) {
            return i6;
        }
        throw new NumberFormatException("illegal number");
    }

    public static long parseLong(byte[] bArr, int i, int i2) throws NumberFormatException {
        return parseLong(bArr, i, i2, 10);
    }

    public static long parseLong(byte[] bArr, int i, int i2, int i3) throws NumberFormatException {
        int i4;
        long j;
        boolean z;
        int i5 = i2;
        int i6 = i3;
        if (bArr == null) {
            throw new NumberFormatException("null");
        }
        long j2 = 0;
        if (i5 <= i) {
            throw new NumberFormatException("illegal number");
        }
        if (bArr[i] == 45) {
            i4 = i + 1;
            j = Long.MIN_VALUE;
            z = true;
        } else {
            i4 = i;
            j = -9223372036854775807L;
            z = false;
        }
        long j3 = i6;
        long j4 = j / j3;
        if (i4 < i5) {
            int i7 = i4 + 1;
            int iDigit = Character.digit((char) bArr[i4], i6);
            if (iDigit < 0) {
                throw new NumberFormatException("illegal number: " + toString(bArr, i, i2));
            }
            i4 = i7;
            j2 = -iDigit;
        }
        while (i4 < i5) {
            int i8 = i4 + 1;
            int iDigit2 = Character.digit((char) bArr[i4], i6);
            if (iDigit2 < 0) {
                throw new NumberFormatException("illegal number");
            }
            if (j2 < j4) {
                throw new NumberFormatException("illegal number");
            }
            long j5 = j2 * j3;
            long j6 = iDigit2;
            if (j5 < j + j6) {
                throw new NumberFormatException("illegal number");
            }
            j2 = j5 - j6;
            i5 = i2;
            i6 = i3;
            i4 = i8;
        }
        if (!z) {
            return -j2;
        }
        if (i4 > i + 1) {
            return j2;
        }
        throw new NumberFormatException("illegal number");
    }

    public static String toString(ByteArrayInputStream byteArrayInputStream) {
        int iAvailable = byteArrayInputStream.available();
        char[] cArr = new char[iAvailable];
        byte[] bArr = new byte[iAvailable];
        byteArrayInputStream.read(bArr, 0, iAvailable);
        for (int i = 0; i < iAvailable; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    public static String toString(byte[] bArr) {
        return toString(bArr, 0, bArr.length);
    }

    public static String toString(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        char[] cArr = new char[i3];
        int i4 = 0;
        while (i4 < i3) {
            cArr[i4] = (char) (bArr[i] & 255);
            i4++;
            i++;
        }
        return new String(cArr);
    }
}
