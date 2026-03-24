package z2;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class o0OO0o {
    private static final int OooO00o = 512;
    private static final int OooO0O0 = 384;

    private o0OO0o() {
    }

    public static boolean OooO00o(Uri uri) {
        return OooO0O0(uri) && !OooO0o0(uri);
    }

    public static boolean OooO0O0(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean OooO0OO(Uri uri) {
        return OooO0O0(uri) && OooO0o0(uri);
    }

    public static boolean OooO0Oo(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= OooO0O0;
    }

    private static boolean OooO0o0(Uri uri) {
        return uri.getPathSegments().contains(com.anythink.expressad.exoplayer.k.o.a);
    }
}
