package z2;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okio.ByteString;
import z2.jx;

/* JADX INFO: loaded from: classes2.dex */
public final class zx {
    public static final byte[] OooO00o;
    public static final tx OooO0OO;
    public static final rx OooO0Oo;
    private static final Method OooOOo;
    private static final Pattern OooOOoo;
    public static final String[] OooO0O0 = new String[0];
    private static final ByteString OooO0o0 = ByteString.decodeHex("efbbbf");
    private static final ByteString OooO0o = ByteString.decodeHex("feff");
    private static final ByteString OooO0oO = ByteString.decodeHex("fffe");
    private static final ByteString OooO0oo = ByteString.decodeHex("0000ffff");
    private static final ByteString OooO = ByteString.decodeHex("ffff0000");
    public static final Charset OooOO0 = Charset.forName("UTF-8");
    public static final Charset OooOO0O = Charset.forName("ISO-8859-1");
    private static final Charset OooOO0o = Charset.forName("UTF-16BE");
    private static final Charset OooOOO0 = Charset.forName("UTF-16LE");
    private static final Charset OooOOO = Charset.forName("UTF-32BE");
    private static final Charset OooOOOO = Charset.forName("UTF-32LE");
    public static final TimeZone OooOOOo = TimeZone.getTimeZone("GMT");
    public static final Comparator<String> OooOOo0 = new OooO00o();

    public class OooO00o implements Comparator<String> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    public class OooO0O0 implements ThreadFactory {
        public final /* synthetic */ String OoooOoO;
        public final /* synthetic */ boolean OoooOoo;

        public OooO0O0(String str, boolean z) {
            this.OoooOoO = str;
            this.OoooOoo = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.OoooOoO);
            thread.setDaemon(this.OoooOoo);
            return thread;
        }
    }

    static {
        byte[] bArr = new byte[0];
        OooO00o = bArr;
        Method declaredMethod = null;
        OooO0OO = tx.create((mx) null, bArr);
        OooO0Oo = rx.create((mx) null, bArr);
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        OooOOo = declaredMethod;
        OooOOoo = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    private zx() {
    }

    public static void OooO(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!OooOoo0(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void OooO00o(Throwable th, Throwable th2) {
        Method method = OooOOo;
        if (method != null) {
            try {
                method.invoke(th, th2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static AssertionError OooO0O0(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static Charset OooO0OO(l00 l00Var, Charset charset) throws IOException {
        if (l00Var.OooOoO(0L, OooO0o0)) {
            l00Var.skip(r0.size());
            return OooOO0;
        }
        if (l00Var.OooOoO(0L, OooO0o)) {
            l00Var.skip(r0.size());
            return OooOO0o;
        }
        if (l00Var.OooOoO(0L, OooO0oO)) {
            l00Var.skip(r0.size());
            return OooOOO0;
        }
        if (l00Var.OooOoO(0L, OooO0oo)) {
            l00Var.skip(r0.size());
            return OooOOO;
        }
        if (!l00Var.OooOoO(0L, OooO)) {
            return charset;
        }
        l00Var.skip(r0.size());
        return OooOOOO;
    }

    public static String OooO0Oo(String str) {
        if (!str.contains(":")) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (OooOO0O(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressOooOOO = (str.startsWith("[") && str.endsWith("]")) ? OooOOO(str, 1, str.length() - 1) : OooOOO(str, 0, str.length());
        if (inetAddressOooOOO == null) {
            return null;
        }
        byte[] address = inetAddressOooOOO.getAddress();
        if (address.length == 16) {
            return OooOoO(address);
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + "'");
    }

    public static void OooO0o(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static int OooO0o0(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        Objects.requireNonNull(timeUnit, "unit == null");
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str + " too small.");
    }

    public static void OooO0oO(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static void OooO0oo(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static String[] OooOO0(String[] strArr, String str) {
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    private static boolean OooOO0O(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static int OooOO0o(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x007a, code lost:
    
        if (r4 == 16) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        if (r5 != (-1)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007f, code lost:
    
        r11 = r4 - r5;
        java.lang.System.arraycopy(r1, r5, r1, 16 - r11, r11);
        java.util.Arrays.fill(r1, r5, (16 - r4) + r5, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008f, code lost:
    
        return java.net.InetAddress.getByAddress(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static InetAddress OooOOO(String str, int i, int i2) {
        int i3;
        byte[] bArr = new byte[16];
        int i4 = 0;
        int i5 = -1;
        int i6 = -1;
        while (true) {
            if (i < i2) {
                if (i4 != 16) {
                    int i7 = i + 2;
                    if (i7 <= i2 && str.regionMatches(i, "::", 0, 2)) {
                        if (i5 == -1) {
                            i4 += 2;
                            i5 = i4;
                            if (i7 != i2) {
                                i6 = i7;
                                i = i6;
                                int i8 = 0;
                                while (i < i2) {
                                }
                                i3 = i - i6;
                                if (i3 == 0) {
                                    break;
                                }
                                break;
                                break;
                            }
                            break;
                        }
                        return null;
                    }
                    if (i4 != 0) {
                        if (str.regionMatches(i, ":", 0, 1)) {
                            i++;
                        } else {
                            if (!str.regionMatches(i, ".", 0, 1) || !OooOOO0(str, i6, i2, bArr, i4 - 2)) {
                                return null;
                            }
                            i4 += 2;
                        }
                    }
                    i6 = i;
                    i = i6;
                    int i82 = 0;
                    while (i < i2) {
                        int iOooOO0o = OooOO0o(str.charAt(i));
                        if (iOooOO0o == -1) {
                            break;
                        }
                        i82 = (i82 << 4) + iOooOO0o;
                        i++;
                    }
                    i3 = i - i6;
                    if (i3 == 0 || i3 > 4) {
                        break;
                    }
                    int i9 = i4 + 1;
                    bArr[i4] = (byte) ((i82 >>> 8) & 255);
                    i4 = i9 + 1;
                    bArr[i9] = (byte) (i82 & 255);
                } else {
                    return null;
                }
            } else {
                break;
            }
        }
        return null;
    }

    private static boolean OooOOO0(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        while (i < i2) {
            if (i4 == bArr.length) {
                return false;
            }
            if (i4 != i3) {
                if (str.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char cCharAt = str.charAt(i5);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i == 0) {
                return false;
            }
            bArr[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        return i4 == i3 + 4;
    }

    public static int OooOOOO(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int OooOOOo(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static boolean OooOOo(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean OooOOo0(e10 e10Var, int i, TimeUnit timeUnit) {
        try {
            return OooOooo(e10Var, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static String OooOOoo(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static int OooOo(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static <T> List<T> OooOo0(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static String OooOo00(kx kxVar, boolean z) {
        String strOooOOOo;
        if (kxVar.OooOOOo().contains(":")) {
            strOooOOOo = "[" + kxVar.OooOOOo() + "]";
        } else {
            strOooOOOo = kxVar.OooOOOo();
        }
        if (!z && kxVar.OooOooo() == kx.OooO0o0(kxVar.Oooo())) {
            return strOooOOOo;
        }
        return strOooOOOo + ":" + kxVar.OooOooo();
    }

    public static <T> List<T> OooOo0O(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static <K, V> Map<K, V> OooOo0o(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    private static String OooOoO(byte[] bArr) {
        int i = 0;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            int i5 = i3;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i2 = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        j00 j00Var = new j00();
        while (i < bArr.length) {
            if (i == i2) {
                j00Var.OooOOOO(58);
                i += i4;
                if (i == 16) {
                    j00Var.OooOOOO(58);
                }
            } else {
                if (i > 0) {
                    j00Var.OooOOOO(58);
                }
                j00Var.Oooo00O(((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
                i += 2;
            }
        }
        return j00Var.Oooo0oo();
    }

    public static int OooOoO0(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i;
            }
        }
        return -1;
    }

    public static String[] OooOoOO(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean OooOoo(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean OooOoo0(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static X509TrustManager OooOooO() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) {
                return (X509TrustManager) trustManagers[0];
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e) {
            throw OooO0O0("No System TLS", e);
        }
    }

    public static boolean OooOooo(e10 e10Var, int i, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jOooO0Oo = e10Var.timeout().OooO0o() ? e10Var.timeout().OooO0Oo() - jNanoTime : Long.MAX_VALUE;
        e10Var.timeout().OooO0o0(Math.min(jOooO0Oo, timeUnit.toNanos(i)) + jNanoTime);
        try {
            j00 j00Var = new j00();
            while (e10Var.read(j00Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                j00Var.OooooOo();
            }
            f10 f10VarTimeout = e10Var.timeout();
            if (jOooO0Oo == Long.MAX_VALUE) {
                f10VarTimeout.OooO00o();
            } else {
                f10VarTimeout.OooO0o0(jNanoTime + jOooO0Oo);
            }
            return true;
        } catch (InterruptedIOException unused) {
            f10 f10VarTimeout2 = e10Var.timeout();
            if (jOooO0Oo == Long.MAX_VALUE) {
                f10VarTimeout2.OooO00o();
            } else {
                f10VarTimeout2.OooO0o0(jNanoTime + jOooO0Oo);
            }
            return false;
        } catch (Throwable th) {
            f10 f10VarTimeout3 = e10Var.timeout();
            if (jOooO0Oo == Long.MAX_VALUE) {
                f10VarTimeout3.OooO00o();
            } else {
                f10VarTimeout3.OooO0o0(jNanoTime + jOooO0Oo);
            }
            throw th;
        }
    }

    public static jx Oooo0(List<dz> list) {
        jx.OooO00o oooO00o = new jx.OooO00o();
        for (dz dzVar : list) {
            xx.OooO00o.OooO0O0(oooO00o, dzVar.OooO00o.utf8(), dzVar.OooO0O0.utf8());
        }
        return oooO00o.OooO0oo();
    }

    public static int Oooo000(String str, int i, int i2) {
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int Oooo00O(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            char cCharAt = str.charAt(i3);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i3 + 1;
            }
        }
        return i;
    }

    public static ThreadFactory Oooo00o(String str, boolean z) {
        return new OooO0O0(str, z);
    }

    public static String Oooo0O0(String str, int i, int i2) {
        int iOooo000 = Oooo000(str, i, i2);
        return str.substring(iOooo000, Oooo00O(str, iOooo000, i2));
    }

    public static boolean Oooo0OO(String str) {
        return OooOOoo.matcher(str).matches();
    }
}
