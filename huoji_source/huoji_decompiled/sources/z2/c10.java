package z2;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class c10 {
    public static final long OooO00o = 65536;

    @Nullable
    public static b10 OooO0O0;
    public static long OooO0OO;

    private c10() {
    }

    public static void OooO00o(b10 b10Var) {
        if (b10Var.OooO0o != null || b10Var.OooO0oO != null) {
            throw new IllegalArgumentException();
        }
        if (b10Var.OooO0Oo) {
            return;
        }
        synchronized (c10.class) {
            long j = OooO0OO;
            if (j + PlaybackStateCompat.ACTION_PLAY_FROM_URI > 65536) {
                return;
            }
            OooO0OO = j + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            b10Var.OooO0o = OooO0O0;
            b10Var.OooO0OO = 0;
            b10Var.OooO0O0 = 0;
            OooO0O0 = b10Var;
        }
    }

    public static b10 OooO0O0() {
        synchronized (c10.class) {
            b10 b10Var = OooO0O0;
            if (b10Var == null) {
                return new b10();
            }
            OooO0O0 = b10Var.OooO0o;
            b10Var.OooO0o = null;
            OooO0OO -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return b10Var;
        }
    }
}
