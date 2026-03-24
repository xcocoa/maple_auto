package z2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;

/* JADX INFO: loaded from: classes.dex */
public class p1 extends i1<p1> {

    @Nullable
    private static p1 o0000O;

    @Nullable
    private static p1 o0000O0O;

    @Nullable
    private static p1 o0000OO;

    @Nullable
    private static p1 o0000OO0;

    @Nullable
    private static p1 o0000OOO;

    @Nullable
    private static p1 o0000OOo;

    @Nullable
    private static p1 o0000Oo0;

    @Nullable
    private static p1 o000OO;

    @NonNull
    @CheckResult
    public static p1 o000(@Nullable Drawable drawable) {
        return new p1().o0Oo0oo(drawable);
    }

    @NonNull
    @CheckResult
    public static p1 o0000O() {
        if (o0000OOO == null) {
            o0000OOO = new p1().OooOOOO().OooOO0o();
        }
        return o0000OOO;
    }

    @NonNull
    @CheckResult
    public static p1 o0000O0(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return new p1().o00000Oo(o0o0o000);
    }

    @NonNull
    @CheckResult
    public static p1 o0000O0O() {
        if (o0000OO == null) {
            o0000OO = new p1().OooOOO0().OooOO0o();
        }
        return o0000OO;
    }

    @NonNull
    @CheckResult
    public static p1 o0000OO(@NonNull o0oo0000 o0oo0000Var) {
        return new p1().OooOOoo(o0oo0000Var);
    }

    @NonNull
    @CheckResult
    public static p1 o0000OO0(@NonNull Class<?> cls) {
        return new p1().OooOOo0(cls);
    }

    @NonNull
    @CheckResult
    public static p1 o0000OOO(@NonNull DownsampleStrategy downsampleStrategy) {
        return new p1().OooOo0O(downsampleStrategy);
    }

    @NonNull
    @CheckResult
    public static p1 o0000OOo(@NonNull Bitmap.CompressFormat compressFormat) {
        return new p1().OooOo0o(compressFormat);
    }

    @NonNull
    @CheckResult
    public static p1 o0000Oo(@DrawableRes int i) {
        return new p1().OooOoO0(i);
    }

    @NonNull
    @CheckResult
    public static p1 o0000Oo0(@IntRange(from = 0, to = 100) int i) {
        return new p1().OooOo(i);
    }

    @NonNull
    @CheckResult
    public static p1 o0000OoO(@Nullable Drawable drawable) {
        return new p1().OooOoO(drawable);
    }

    @NonNull
    @CheckResult
    public static p1 o0000o() {
        if (o0000Oo0 == null) {
            o0000Oo0 = new p1().OooOo00().OooOO0o();
        }
        return o0000Oo0;
    }

    @NonNull
    @CheckResult
    public static p1 o0000o0() {
        if (o0000O == null) {
            o0000O = new p1().OooOoo().OooOO0o();
        }
        return o0000O;
    }

    @NonNull
    @CheckResult
    public static p1 o0000o0O(@NonNull DecodeFormat decodeFormat) {
        return new p1().OooOooO(decodeFormat);
    }

    @NonNull
    @CheckResult
    public static p1 o0000o0o(@IntRange(from = 0) long j) {
        return new p1().OooOooo(j);
    }

    @NonNull
    @CheckResult
    public static p1 o0000oO0() {
        if (o0000OOo == null) {
            o0000OOo = new p1().OooOo0().OooOO0o();
        }
        return o0000OOo;
    }

    @NonNull
    @CheckResult
    public static <T> p1 o0000oOO(@NonNull o0O0OO0<T> o0o0oo0, @NonNull T t) {
        return new p1().o000000O(o0o0oo0, t);
    }

    @NonNull
    @CheckResult
    public static p1 o0000oOo(@IntRange(from = 0) int i) {
        return o0000oo0(i, i);
    }

    @NonNull
    @CheckResult
    public static p1 o0000oo0(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return new p1().o0ooOoO(i, i2);
    }

    @NonNull
    @CheckResult
    public static p1 o0000ooO(@DrawableRes int i) {
        return new p1().o0OOO0o(i);
    }

    @NonNull
    @CheckResult
    public static p1 o000O000(@NonNull Priority priority) {
        return new p1().o0OO00O(priority);
    }

    @NonNull
    @CheckResult
    public static p1 o000O0O(@IntRange(from = 0) int i) {
        return new p1().o00000OO(i);
    }

    @NonNull
    @CheckResult
    public static p1 o000O0o(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        return new p1().o00000(f);
    }

    @NonNull
    @CheckResult
    public static p1 o000OO() {
        if (o0000OO0 == null) {
            o0000OO0 = new p1().OooOOO().OooOO0o();
        }
        return o0000OO0;
    }

    @NonNull
    @CheckResult
    public static p1 o000OoO(@NonNull o0O0O0Oo o0o0o0oo) {
        return new p1().o000000o(o0o0o0oo);
    }

    @NonNull
    @CheckResult
    public static p1 o000Ooo(boolean z) {
        if (z) {
            if (o0000O0O == null) {
                o0000O0O = new p1().o00000O0(true).OooOO0o();
            }
            return o0000O0O;
        }
        if (o000OO == null) {
            o000OO = new p1().o00000O0(false).OooOO0o();
        }
        return o000OO;
    }
}
