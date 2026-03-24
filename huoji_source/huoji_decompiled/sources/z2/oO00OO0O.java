package z2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class oO00OO0O implements oO000o00 {
    private static final String OooOO0O = "LruBitmapPool";
    private static final Bitmap.Config OooOO0o = Bitmap.Config.ARGB_8888;
    private int OooO;
    private final oO00OOO OooO00o;
    private final Set<Bitmap.Config> OooO0O0;
    private final long OooO0OO;
    private final OooO00o OooO0Oo;
    private long OooO0o;
    private long OooO0o0;
    private int OooO0oO;
    private int OooO0oo;
    private int OooOO0;

    public interface OooO00o {
        void OooO00o(Bitmap bitmap);

        void OooO0O0(Bitmap bitmap);
    }

    public static final class OooO0O0 implements OooO00o {
        @Override // z2.oO00OO0O.OooO00o
        public void OooO00o(Bitmap bitmap) {
        }

        @Override // z2.oO00OO0O.OooO00o
        public void OooO0O0(Bitmap bitmap) {
        }
    }

    public static class OooO0OO implements OooO00o {
        private final Set<Bitmap> OooO00o = Collections.synchronizedSet(new HashSet());

        private OooO0OO() {
        }

        @Override // z2.oO00OO0O.OooO00o
        public void OooO00o(Bitmap bitmap) {
            if (!this.OooO00o.contains(bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.OooO00o.remove(bitmap);
        }

        @Override // z2.oO00OO0O.OooO00o
        public void OooO0O0(Bitmap bitmap) {
            if (!this.OooO00o.contains(bitmap)) {
                this.OooO00o.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
        }
    }

    public oO00OO0O(long j) {
        this(j, OooOOO(), OooOOO0());
    }

    public oO00OO0O(long j, Set<Bitmap.Config> set) {
        this(j, OooOOO(), set);
    }

    public oO00OO0O(long j, oO00OOO oo00ooo, Set<Bitmap.Config> set) {
        this.OooO0OO = j;
        this.OooO0o0 = j;
        this.OooO00o = oo00ooo;
        this.OooO0O0 = set;
        this.OooO0Oo = new OooO0O0();
    }

    @NonNull
    private static Bitmap OooO(int i, int i2, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = OooOO0o;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @TargetApi(26)
    private static void OooO0oo(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    private void OooOO0() {
        if (Log.isLoggable(OooOO0O, 2)) {
            OooOO0O();
        }
    }

    private void OooOO0O() {
        Log.v(OooOO0O, "Hits=" + this.OooO0oO + ", misses=" + this.OooO0oo + ", puts=" + this.OooO + ", evictions=" + this.OooOO0 + ", currentSize=" + this.OooO0o + ", maxSize=" + this.OooO0o0 + "\nStrategy=" + this.OooO00o);
    }

    private void OooOO0o() {
        OooOOo(this.OooO0o0);
    }

    private static oO00OOO OooOOO() {
        return Build.VERSION.SDK_INT >= 19 ? new oO00OOo0() : new oO000Oo0();
    }

    @TargetApi(26)
    private static Set<Bitmap.Config> OooOOO0() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            hashSet.add(null);
        }
        if (i >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Nullable
    private synchronized Bitmap OooOOOO(int i, int i2, @Nullable Bitmap.Config config) {
        Bitmap bitmapOooO0o;
        OooO0oo(config);
        bitmapOooO0o = this.OooO00o.OooO0o(i, i2, config != null ? config : OooOO0o);
        if (bitmapOooO0o == null) {
            if (Log.isLoggable(OooOO0O, 3)) {
                Log.d(OooOO0O, "Missing bitmap=" + this.OooO00o.OooO00o(i, i2, config));
            }
            this.OooO0oo++;
        } else {
            this.OooO0oO++;
            this.OooO0o -= (long) this.OooO00o.OooO0O0(bitmapOooO0o);
            this.OooO0Oo.OooO00o(bitmapOooO0o);
            OooOOo0(bitmapOooO0o);
        }
        if (Log.isLoggable(OooOO0O, 2)) {
            Log.v(OooOO0O, "Get bitmap=" + this.OooO00o.OooO00o(i, i2, config));
        }
        OooOO0();
        return bitmapOooO0o;
    }

    @TargetApi(19)
    private static void OooOOOo(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    private synchronized void OooOOo(long j) {
        while (this.OooO0o > j) {
            Bitmap bitmapRemoveLast = this.OooO00o.removeLast();
            if (bitmapRemoveLast == null) {
                if (Log.isLoggable(OooOO0O, 5)) {
                    Log.w(OooOO0O, "Size mismatch, resetting");
                    OooOO0O();
                }
                this.OooO0o = 0L;
                return;
            }
            this.OooO0Oo.OooO00o(bitmapRemoveLast);
            this.OooO0o -= (long) this.OooO00o.OooO0O0(bitmapRemoveLast);
            this.OooOO0++;
            if (Log.isLoggable(OooOO0O, 3)) {
                Log.d(OooOO0O, "Evicting bitmap=" + this.OooO00o.OooO0OO(bitmapRemoveLast));
            }
            OooOO0();
            bitmapRemoveLast.recycle();
        }
    }

    private static void OooOOo0(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        OooOOOo(bitmap);
    }

    @Override // z2.oO000o00
    @SuppressLint({"InlinedApi"})
    public void OooO00o(int i) {
        if (Log.isLoggable(OooOO0O, 3)) {
            Log.d(OooOO0O, "trimMemory, level=" + i);
        }
        if (i >= 40) {
            OooO0O0();
        } else if (i >= 20 || i == 15) {
            OooOOo(OooO0o0() / 2);
        }
    }

    @Override // z2.oO000o00
    public void OooO0O0() {
        if (Log.isLoggable(OooOO0O, 3)) {
            Log.d(OooOO0O, "clearMemory");
        }
        OooOOo(0L);
    }

    @Override // z2.oO000o00
    public synchronized void OooO0OO(float f) {
        this.OooO0o0 = Math.round(this.OooO0OO * f);
        OooOO0o();
    }

    @Override // z2.oO000o00
    public synchronized void OooO0Oo(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.OooO00o.OooO0O0(bitmap) <= this.OooO0o0 && this.OooO0O0.contains(bitmap.getConfig())) {
                int iOooO0O0 = this.OooO00o.OooO0O0(bitmap);
                this.OooO00o.OooO0Oo(bitmap);
                this.OooO0Oo.OooO0O0(bitmap);
                this.OooO++;
                this.OooO0o += (long) iOooO0O0;
                if (Log.isLoggable(OooOO0O, 2)) {
                    Log.v(OooOO0O, "Put bitmap in pool=" + this.OooO00o.OooO0OO(bitmap));
                }
                OooOO0();
                OooOO0o();
                return;
            }
            if (Log.isLoggable(OooOO0O, 2)) {
                Log.v(OooOO0O, "Reject bitmap from pool, bitmap: " + this.OooO00o.OooO0OO(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.OooO0O0.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // z2.oO000o00
    @NonNull
    public Bitmap OooO0o(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapOooOOOO = OooOOOO(i, i2, config);
        if (bitmapOooOOOO == null) {
            return OooO(i, i2, config);
        }
        bitmapOooOOOO.eraseColor(0);
        return bitmapOooOOOO;
    }

    @Override // z2.oO000o00
    public long OooO0o0() {
        return this.OooO0o0;
    }

    @Override // z2.oO000o00
    @NonNull
    public Bitmap OooO0oO(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapOooOOOO = OooOOOO(i, i2, config);
        return bitmapOooOOOO == null ? OooO(i, i2, config) : bitmapOooOOOO;
    }
}
