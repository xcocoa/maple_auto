package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Marker;
import z2.l00;
import z2.s00;
import z2.uz;
import z2.w00;
import z2.zx;

/* JADX INFO: loaded from: classes2.dex */
public final class PublicSuffixDatabase {
    private static final byte OooO = 33;
    public static final String OooO0o0 = "publicsuffixes.gz";
    private final AtomicBoolean OooO00o = new AtomicBoolean(false);
    private final CountDownLatch OooO0O0 = new CountDownLatch(1);
    private byte[] OooO0OO;
    private byte[] OooO0Oo;
    private static final byte[] OooO0o = {42};
    private static final String[] OooO0oO = new String[0];
    private static final String[] OooO0oo = {Marker.ANY_MARKER};
    private static final PublicSuffixDatabase OooOO0 = new PublicSuffixDatabase();

    private static String OooO00o(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 > -1 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z3 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z3) {
                    i3 = 46;
                    z = false;
                } else {
                    z = z3;
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 == 0) {
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (bArr2[i10].length != i11) {
                        z3 = z;
                    } else {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        z3 = true;
                        i11 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            return new String(bArr, i7, i9, zx.OooOO0);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i7 - 1;
        }
        return null;
    }

    private String[] OooO0O0(String[] strArr) {
        String str;
        String strOooO00o;
        String strOooO00o2;
        int i = 0;
        if (this.OooO00o.get() || !this.OooO00o.compareAndSet(false, true)) {
            try {
                this.OooO0O0.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            OooO0o();
        }
        synchronized (this) {
            if (this.OooO0OO == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = strArr[i2].getBytes(zx.OooOO0);
        }
        int i3 = 0;
        while (true) {
            str = null;
            if (i3 >= length) {
                strOooO00o = null;
                break;
            }
            strOooO00o = OooO00o(this.OooO0OO, bArr, i3);
            if (strOooO00o != null) {
                break;
            }
            i3++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i4 = 0; i4 < bArr2.length - 1; i4++) {
                bArr2[i4] = OooO0o;
                strOooO00o2 = OooO00o(this.OooO0OO, bArr2, i4);
                if (strOooO00o2 != null) {
                    break;
                }
            }
            strOooO00o2 = null;
        } else {
            strOooO00o2 = null;
        }
        if (strOooO00o2 != null) {
            while (true) {
                if (i >= length - 1) {
                    break;
                }
                String strOooO00o3 = OooO00o(this.OooO0Oo, bArr, i);
                if (strOooO00o3 != null) {
                    str = strOooO00o3;
                    break;
                }
                i++;
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        }
        if (strOooO00o == null && strOooO00o2 == null) {
            return OooO0oo;
        }
        String[] strArrSplit = strOooO00o != null ? strOooO00o.split("\\.") : OooO0oO;
        String[] strArrSplit2 = strOooO00o2 != null ? strOooO00o2.split("\\.") : OooO0oO;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    public static PublicSuffixDatabase OooO0OO() {
        return OooOO0;
    }

    private void OooO0o() {
        boolean z = false;
        while (true) {
            try {
                try {
                    OooO0o0();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    uz.OooOO0O().OooOOo(5, "Failed to read public suffix list", e);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private void OooO0o0() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(OooO0o0);
        if (resourceAsStream == null) {
            return;
        }
        l00 l00VarOooO0Oo = w00.OooO0Oo(new s00(w00.OooOO0o(resourceAsStream)));
        try {
            byte[] bArr = new byte[l00VarOooO0Oo.readInt()];
            l00VarOooO0Oo.readFully(bArr);
            byte[] bArr2 = new byte[l00VarOooO0Oo.readInt()];
            l00VarOooO0Oo.readFully(bArr2);
            synchronized (this) {
                this.OooO0OO = bArr;
                this.OooO0Oo = bArr2;
            }
            this.OooO0O0.countDown();
        } finally {
            zx.OooO0oO(l00VarOooO0Oo);
        }
    }

    public String OooO0Oo(String str) {
        Objects.requireNonNull(str, "domain == null");
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrOooO0O0 = OooO0O0(strArrSplit);
        if (strArrSplit.length == strArrOooO0O0.length && strArrOooO0O0[0].charAt(0) != '!') {
            return null;
        }
        char cCharAt = strArrOooO0O0[0].charAt(0);
        int length = strArrSplit.length;
        int length2 = strArrOooO0O0.length;
        if (cCharAt != '!') {
            length2++;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i = length - length2; i < strArrSplit2.length; i++) {
            sb.append(strArrSplit2[i]);
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public void OooO0oO(byte[] bArr, byte[] bArr2) {
        this.OooO0OO = bArr;
        this.OooO0Oo = bArr2;
        this.OooO00o.set(true);
        this.OooO0O0.countDown();
    }
}
