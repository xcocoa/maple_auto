package z2;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class oO0O000o implements Runnable {

    @VisibleForTesting
    public static final String Oooooo = "PreFillRunner";
    public static final long Ooooooo = 32;
    public static final long o0OoOo0 = 40;
    public static final int ooOO = 4;
    private final oO000o00 OoooOoO;
    private final oO0OO00o OoooOoo;
    private final oO0O00O Ooooo00;
    private final OooO00o Ooooo0o;
    private final Set<oO0O00o0> OooooO0;
    private final Handler OooooOO;
    private long OooooOo;
    private boolean Oooooo0;
    private static final OooO00o OoooooO = new OooO00o();
    public static final long o00O0O = TimeUnit.SECONDS.toMillis(1);

    @VisibleForTesting
    public static class OooO00o {
        public long OooO00o() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    public static final class OooO0O0 implements o0O0O0Oo {
        @Override // z2.o0O0O0Oo
        public void OooO00o(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public oO0O000o(oO000o00 oo000o00, oO0OO00o oo0oo00o, oO0O00O oo0o00o) {
        this(oo000o00, oo0oo00o, oo0o00o, OoooooO, new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    public oO0O000o(oO000o00 oo000o00, oO0OO00o oo0oo00o, oO0O00O oo0o00o, OooO00o oooO00o, Handler handler) {
        this.OooooO0 = new HashSet();
        this.OooooOo = 40L;
        this.OoooOoO = oo000o00;
        this.OoooOoo = oo0oo00o;
        this.Ooooo00 = oo0o00o;
        this.Ooooo0o = oooO00o;
        this.OooooOO = handler;
    }

    private long OooO0OO() {
        return this.OoooOoo.OooO0o0() - this.OoooOoo.OooO0Oo();
    }

    private long OooO0Oo() {
        long j = this.OooooOo;
        this.OooooOo = Math.min(4 * j, o00O0O);
        return j;
    }

    private boolean OooO0o0(long j) {
        return this.Ooooo0o.OooO00o() - j >= 32;
    }

    @VisibleForTesting
    public boolean OooO00o() {
        Bitmap bitmapCreateBitmap;
        long jOooO00o = this.Ooooo0o.OooO00o();
        while (!this.Ooooo00.OooO0O0() && !OooO0o0(jOooO00o)) {
            oO0O00o0 oo0o00o0OooO0OO = this.Ooooo00.OooO0OO();
            if (this.OooooO0.contains(oo0o00o0OooO0OO)) {
                bitmapCreateBitmap = Bitmap.createBitmap(oo0o00o0OooO0OO.OooO0Oo(), oo0o00o0OooO0OO.OooO0O0(), oo0o00o0OooO0OO.OooO00o());
            } else {
                this.OooooO0.add(oo0o00o0OooO0OO);
                bitmapCreateBitmap = this.OoooOoO.OooO0oO(oo0o00o0OooO0OO.OooO0Oo(), oo0o00o0OooO0OO.OooO0O0(), oo0o00o0OooO0OO.OooO00o());
            }
            int iOooO0oo = t2.OooO0oo(bitmapCreateBitmap);
            if (OooO0OO() >= iOooO0oo) {
                this.OoooOoo.OooO0o(new OooO0O0(), oOO.OooO0Oo(bitmapCreateBitmap, this.OoooOoO));
            } else {
                this.OoooOoO.OooO0Oo(bitmapCreateBitmap);
            }
            if (Log.isLoggable(Oooooo, 3)) {
                Log.d(Oooooo, "allocated [" + oo0o00o0OooO0OO.OooO0Oo() + "x" + oo0o00o0OooO0OO.OooO0O0() + "] " + oo0o00o0OooO0OO.OooO00o() + " size: " + iOooO0oo);
            }
        }
        return (this.Oooooo0 || this.Ooooo00.OooO0O0()) ? false : true;
    }

    public void OooO0O0() {
        this.Oooooo0 = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (OooO00o()) {
            this.OooooOO.postDelayed(this, OooO0Oo());
        }
    }
}
