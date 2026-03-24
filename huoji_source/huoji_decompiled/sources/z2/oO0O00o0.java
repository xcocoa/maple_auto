package z2;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class oO0O00o0 {

    @VisibleForTesting
    public static final Bitmap.Config OooO0o0 = Bitmap.Config.RGB_565;
    private final int OooO00o;
    private final int OooO0O0;
    private final Bitmap.Config OooO0OO;
    private final int OooO0Oo;

    public static class OooO00o {
        private final int OooO00o;
        private final int OooO0O0;
        private Bitmap.Config OooO0OO;
        private int OooO0Oo;

        public OooO00o(int i) {
            this(i, i);
        }

        public OooO00o(int i, int i2) {
            this.OooO0Oo = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            }
            this.OooO00o = i;
            this.OooO0O0 = i2;
        }

        public oO0O00o0 OooO00o() {
            return new oO0O00o0(this.OooO00o, this.OooO0O0, this.OooO0OO, this.OooO0Oo);
        }

        public Bitmap.Config OooO0O0() {
            return this.OooO0OO;
        }

        public OooO00o OooO0OO(@Nullable Bitmap.Config config) {
            this.OooO0OO = config;
            return this;
        }

        public OooO00o OooO0Oo(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.OooO0Oo = i;
            return this;
        }
    }

    public oO0O00o0(int i, int i2, Bitmap.Config config, int i3) {
        this.OooO0OO = (Bitmap.Config) r2.OooO0o0(config, "Config must not be null");
        this.OooO00o = i;
        this.OooO0O0 = i2;
        this.OooO0Oo = i3;
    }

    public Bitmap.Config OooO00o() {
        return this.OooO0OO;
    }

    public int OooO0O0() {
        return this.OooO0O0;
    }

    public int OooO0OO() {
        return this.OooO0Oo;
    }

    public int OooO0Oo() {
        return this.OooO00o;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof oO0O00o0)) {
            return false;
        }
        oO0O00o0 oo0o00o0 = (oO0O00o0) obj;
        return this.OooO0O0 == oo0o00o0.OooO0O0 && this.OooO00o == oo0o00o0.OooO00o && this.OooO0Oo == oo0o00o0.OooO0Oo && this.OooO0OO == oo0o00o0.OooO0OO;
    }

    public int hashCode() {
        return (((((this.OooO00o * 31) + this.OooO0O0) * 31) + this.OooO0OO.hashCode()) * 31) + this.OooO0Oo;
    }

    public String toString() {
        return "PreFillSize{width=" + this.OooO00o + ", height=" + this.OooO0O0 + ", config=" + this.OooO0OO + ", weight=" + this.OooO0Oo + MessageFormatter.DELIM_STOP;
    }
}
