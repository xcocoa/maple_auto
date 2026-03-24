package z2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class oo000000 {
    private static final int OooO0OO = 128;
    private static final File OooO0Oo = new File("/proc/self/fd");
    private static final int OooO0o = 700;
    private static final int OooO0o0 = 50;
    private static volatile oo000000 OooO0oO;
    private volatile int OooO00o;
    private volatile boolean OooO0O0 = true;

    private oo000000() {
    }

    public static oo000000 OooO00o() {
        if (OooO0oO == null) {
            synchronized (oo000000.class) {
                if (OooO0oO == null) {
                    OooO0oO = new oo000000();
                }
            }
        }
        return OooO0oO;
    }

    private synchronized boolean OooO0O0() {
        boolean z = true;
        int i = this.OooO00o + 1;
        this.OooO00o = i;
        if (i >= 50) {
            this.OooO00o = 0;
            int length = OooO0Oo.list().length;
            if (length >= OooO0o) {
                z = false;
            }
            this.OooO0O0 = z;
            if (!this.OooO0O0 && Log.isLoggable(oOOOoo00.OooO0o, 5)) {
                Log.w(oOOOoo00.OooO0o, "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + OooO0o);
            }
        }
        return this.OooO0O0;
    }

    @TargetApi(26)
    public boolean OooO0OO(int i, int i2, BitmapFactory.Options options, DecodeFormat decodeFormat, boolean z, boolean z3) {
        if (!z || Build.VERSION.SDK_INT < 26 || z3) {
            return false;
        }
        boolean z4 = i >= 128 && i2 >= 128 && OooO0O0();
        if (z4) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return z4;
    }
}
