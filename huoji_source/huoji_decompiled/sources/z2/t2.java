package z2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public final class t2 {
    private static final int OooO00o = 31;
    private static final int OooO0O0 = 17;
    private static final char[] OooO0OO = "0123456789abcdef".toCharArray();
    private static final char[] OooO0Oo = new char[64];

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            OooO00o = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private t2() {
    }

    private static int OooO(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = OooO00o.OooO00o[config.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2 || i == 3) {
            return 2;
        }
        return i != 4 ? 4 : 8;
    }

    public static void OooO00o() {
        if (!OooOOoo()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void OooO0O0() {
        if (!OooOo00()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean OooO0OO(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj instanceof oO0OO0O ? ((oO0OO0O) obj).OooO00o(obj2) : obj.equals(obj2);
    }

    public static boolean OooO0Oo(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @NonNull
    public static <T> Queue<T> OooO0o(int i) {
        return new ArrayDeque(i);
    }

    @NonNull
    private static String OooO0o0(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = OooO0OO;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    public static int OooO0oO(int i, int i2, @Nullable Bitmap.Config config) {
        return i * i2 * OooO(config);
    }

    @TargetApi(19)
    public static int OooO0oo(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    return bitmap.getAllocationByteCount();
                } catch (NullPointerException unused) {
                }
            }
            return bitmap.getHeight() * bitmap.getRowBytes();
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    @Deprecated
    public static int OooOO0(@NonNull Bitmap bitmap) {
        return OooO0oo(bitmap);
    }

    @NonNull
    public static <T> List<T> OooOO0O(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static int OooOO0o(float f) {
        return OooOOO0(f, 17);
    }

    public static int OooOOO(int i) {
        return OooOOOO(i, 17);
    }

    public static int OooOOO0(float f, int i) {
        return OooOOOO(Float.floatToIntBits(f), i);
    }

    public static int OooOOOO(int i, int i2) {
        return (i2 * 31) + i;
    }

    public static int OooOOOo(@Nullable Object obj, int i) {
        return OooOOOO(obj == null ? 0 : obj.hashCode(), i);
    }

    public static int OooOOo(boolean z, int i) {
        return OooOOOO(z ? 1 : 0, i);
    }

    public static int OooOOo0(boolean z) {
        return OooOOo(z, 17);
    }

    public static boolean OooOOoo() {
        return !OooOo00();
    }

    private static boolean OooOo0(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    public static boolean OooOo00() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean OooOo0O(int i, int i2) {
        return OooOo0(i) && OooOo0(i2);
    }

    @NonNull
    public static String OooOo0o(@NonNull byte[] bArr) {
        String strOooO0o0;
        char[] cArr = OooO0Oo;
        synchronized (cArr) {
            strOooO0o0 = OooO0o0(bArr, cArr);
        }
        return strOooO0o0;
    }
}
