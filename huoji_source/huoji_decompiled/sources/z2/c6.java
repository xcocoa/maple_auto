package z2;

import android.content.res.Resources;
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
public final class c6 extends p1 implements Cloneable {
    private static c6 o0000Oo;
    private static c6 o0000OoO;
    private static c6 o0000o;
    private static c6 o0000o0;
    private static c6 o0000o0O;
    private static c6 o0000o0o;

    @NonNull
    @CheckResult
    public static c6 o00(@DrawableRes int i) {
        return new c6().o0OOO0o(i);
    }

    @NonNull
    @CheckResult
    public static c6 o000O00O(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return new c6().o00000Oo(o0o0o000);
    }

    @NonNull
    @CheckResult
    public static c6 o000O0O0() {
        if (o0000OoO == null) {
            o0000OoO = new c6().OooOOO().OooOO0o();
        }
        return o0000OoO;
    }

    @NonNull
    @CheckResult
    public static c6 o000O0Oo() {
        if (o0000o0 == null) {
            o0000o0 = new c6().OooOOO0().OooOO0o();
        }
        return o0000o0;
    }

    @NonNull
    @CheckResult
    public static c6 o000O0oO() {
        if (o0000o0O == null) {
            o0000o0O = new c6().OooOOOO().OooOO0o();
        }
        return o0000o0O;
    }

    @NonNull
    @CheckResult
    public static c6 o000OO00(@NonNull Class<?> cls) {
        return new c6().OooOOo0(cls);
    }

    @NonNull
    @CheckResult
    public static c6 o000OOO(@NonNull o0oo0000 o0oo0000Var) {
        return new c6().OooOOoo(o0oo0000Var);
    }

    @NonNull
    @CheckResult
    public static c6 o000Oo(@NonNull Bitmap.CompressFormat compressFormat) {
        return new c6().OooOo0o(compressFormat);
    }

    @NonNull
    @CheckResult
    public static c6 o000Oo0O(@NonNull DownsampleStrategy downsampleStrategy) {
        return new c6().OooOo0O(downsampleStrategy);
    }

    @NonNull
    @CheckResult
    public static c6 o000OoOo(@IntRange(from = 0, to = 100) int i) {
        return new c6().OooOo(i);
    }

    @NonNull
    @CheckResult
    public static c6 o000Oooo(@DrawableRes int i) {
        return new c6().OooOoO0(i);
    }

    @NonNull
    @CheckResult
    public static c6 o000o000(@Nullable Drawable drawable) {
        return new c6().OooOoO(drawable);
    }

    @NonNull
    @CheckResult
    public static c6 o000o0O(@NonNull DecodeFormat decodeFormat) {
        return new c6().OooOooO(decodeFormat);
    }

    @NonNull
    @CheckResult
    public static c6 o000o0Oo(@IntRange(from = 0) long j) {
        return new c6().OooOooo(j);
    }

    @NonNull
    @CheckResult
    public static c6 o000o0o() {
        if (o0000o == null) {
            o0000o = new c6().OooOo00().OooOO0o();
        }
        return o0000o;
    }

    @NonNull
    @CheckResult
    public static c6 o000o0oO() {
        if (o0000o0o == null) {
            o0000o0o = new c6().OooOo0().OooOO0o();
        }
        return o0000o0o;
    }

    @NonNull
    @CheckResult
    public static <T> c6 o000oOoo(@NonNull o0O0OO0<T> o0o0oo0, @NonNull T t) {
        return new c6().o000000O(o0o0oo0, t);
    }

    @NonNull
    @CheckResult
    public static c6 o000ooo(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return new c6().o0ooOoO(i, i2);
    }

    @NonNull
    @CheckResult
    public static c6 o000ooo0(@IntRange(from = 0) int i) {
        return new c6().o0ooOOo(i);
    }

    @NonNull
    @CheckResult
    public static c6 o00O00(@NonNull o0O0O0Oo o0o0o0oo) {
        return new c6().o000000o(o0o0o0oo);
    }

    @NonNull
    @CheckResult
    public static c6 o00O0000(@Nullable Drawable drawable) {
        return new c6().o0Oo0oo(drawable);
    }

    @NonNull
    @CheckResult
    public static c6 o00O00Oo(boolean z) {
        return new c6().o00000O0(z);
    }

    @NonNull
    @CheckResult
    public static c6 o00O00oO(@IntRange(from = 0) int i) {
        return new c6().o00000OO(i);
    }

    @NonNull
    @CheckResult
    public static c6 o00oOoo(@NonNull Priority priority) {
        return new c6().o0OO00O(priority);
    }

    @NonNull
    @CheckResult
    public static c6 oOO00O(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        return new c6().o00000(f);
    }

    @NonNull
    @CheckResult
    public static c6 oooo00o() {
        if (o0000Oo == null) {
            o0000Oo = new c6().OooOoo().OooOO0o();
        }
        return o0000Oo;
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000O, reason: merged with bridge method [inline-methods] */
    public c6 OooOOo0(@NonNull Class<?> cls) {
        return (c6) super.OooOOo0(cls);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000O0, reason: merged with bridge method [inline-methods] */
    public c6 OooOOO0() {
        return (c6) super.OooOOO0();
    }

    @Override // z2.i1
    @NonNull
    /* JADX INFO: renamed from: o000O00, reason: merged with bridge method [inline-methods] */
    public c6 OooOO0o() {
        return (c6) super.OooOO0o();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000O0o0, reason: merged with bridge method [inline-methods] */
    public c6 OooOOOO() {
        return (c6) super.OooOOOO();
    }

    @Override // z2.i1
    @CheckResult
    /* JADX INFO: renamed from: o000O0oo, reason: merged with bridge method [inline-methods] */
    public c6 clone() {
        return (c6) super.clone();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OO0O, reason: merged with bridge method [inline-methods] */
    public c6 OooOOO() {
        return (c6) super.OooOOO();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OO0o, reason: merged with bridge method [inline-methods] */
    public c6 OooOOoo(@NonNull o0oo0000 o0oo0000Var) {
        return (c6) super.OooOOoo(o0oo0000Var);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OOo0, reason: merged with bridge method [inline-methods] */
    public c6 OooOo00() {
        return (c6) super.OooOo00();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OOoO, reason: merged with bridge method [inline-methods] */
    public c6 OooOo0() {
        return (c6) super.OooOo0();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oo0, reason: merged with bridge method [inline-methods] */
    public c6 OooOO0O(@NonNull i1<?> i1Var) {
        return (c6) super.OooOO0O(i1Var);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oo00, reason: merged with bridge method [inline-methods] */
    public c6 OooOo0O(@NonNull DownsampleStrategy downsampleStrategy) {
        return (c6) super.OooOo0O(downsampleStrategy);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oo0o, reason: merged with bridge method [inline-methods] */
    public c6 OooOo0o(@NonNull Bitmap.CompressFormat compressFormat) {
        return (c6) super.OooOo0o(compressFormat);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OoOO, reason: merged with bridge method [inline-methods] */
    public c6 OooOo(@IntRange(from = 0, to = 100) int i) {
        return (c6) super.OooOo(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Ooo0, reason: merged with bridge method [inline-methods] */
    public c6 OooOoO0(@DrawableRes int i) {
        return (c6) super.OooOoO0(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OooO, reason: merged with bridge method [inline-methods] */
    public c6 OooOoO(@Nullable Drawable drawable) {
        return (c6) super.OooOoO(drawable);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o00, reason: merged with bridge method [inline-methods] */
    public c6 OooOoOO(@DrawableRes int i) {
        return (c6) super.OooOoOO(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o00O, reason: merged with bridge method [inline-methods] */
    public c6 OooOoo0(@Nullable Drawable drawable) {
        return (c6) super.OooOoo0(drawable);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o00o, reason: merged with bridge method [inline-methods] */
    public c6 OooOoo() {
        return (c6) super.OooOoo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0O0, reason: merged with bridge method [inline-methods] */
    public c6 OooOooO(@NonNull DecodeFormat decodeFormat) {
        return (c6) super.OooOooO(decodeFormat);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0OO, reason: merged with bridge method [inline-methods] */
    public c6 OooOooo(@IntRange(from = 0) long j) {
        return (c6) super.OooOooo(j);
    }

    @Override // z2.i1
    @NonNull
    /* JADX INFO: renamed from: o000o0o0, reason: merged with bridge method [inline-methods] */
    public c6 ooOO() {
        return (c6) super.ooOO();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0oo, reason: merged with bridge method [inline-methods] */
    public c6 o00O0O(boolean z) {
        return (c6) super.o00O0O(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo, reason: merged with bridge method [inline-methods] */
    public c6 o00oO0o(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return (c6) super.o00oO0o(o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo0, reason: merged with bridge method [inline-methods] */
    public c6 o00Ooo() {
        return (c6) super.o00Ooo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo00, reason: merged with bridge method [inline-methods] */
    public c6 o00Oo0() {
        return (c6) super.o00Oo0();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo0O, reason: merged with bridge method [inline-methods] */
    public c6 o00o0O() {
        return (c6) super.o00o0O();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo0o, reason: merged with bridge method [inline-methods] */
    public c6 o00ooo() {
        return (c6) super.o00ooo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooO, reason: merged with bridge method [inline-methods] */
    public c6 o0ooOOo(int i) {
        return (c6) super.o0ooOOo(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooO0, reason: merged with bridge method [inline-methods] */
    public <Y> c6 o0ooOO0(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000) {
        return (c6) super.o0ooOO0(cls, o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooOO, reason: merged with bridge method [inline-methods] */
    public c6 o0ooOoO(int i, int i2) {
        return (c6) super.o0ooOoO(i, i2);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oooO, reason: merged with bridge method [inline-methods] */
    public c6 o0OOO0o(@DrawableRes int i) {
        return (c6) super.o0OOO0o(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oooo, reason: merged with bridge method [inline-methods] */
    public c6 o0Oo0oo(@Nullable Drawable drawable) {
        return (c6) super.o0Oo0oo(drawable);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0, reason: merged with bridge method [inline-methods] */
    public <Y> c6 o00000oO(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000) {
        return (c6) super.o00000oO(cls, o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O000, reason: merged with bridge method [inline-methods] */
    public <Y> c6 o000000O(@NonNull o0O0OO0<Y> o0o0oo0, @NonNull Y y) {
        return (c6) super.o000000O(o0o0oo0, y);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O000o, reason: merged with bridge method [inline-methods] */
    public c6 o000000o(@NonNull o0O0O0Oo o0o0o0oo) {
        return (c6) super.o000000o(o0o0o0oo);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00O, reason: merged with bridge method [inline-methods] */
    public c6 o00000(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        return (c6) super.o00000(f);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00OO, reason: merged with bridge method [inline-methods] */
    public c6 o00000O0(boolean z) {
        return (c6) super.o00000O0(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00o, reason: merged with bridge method [inline-methods] */
    public c6 o00000OO(@IntRange(from = 0) int i) {
        return (c6) super.o00000OO(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00o0, reason: merged with bridge method [inline-methods] */
    public c6 o00000O(@Nullable Resources.Theme theme) {
        return (c6) super.o00000O(theme);
    }

    @Override // z2.i1
    @NonNull
    @Deprecated
    @SafeVarargs
    @CheckResult
    /* JADX INFO: renamed from: o00O0O0, reason: merged with bridge method [inline-methods] */
    public final c6 o0000O00(@NonNull o0O0o000<Bitmap>... o0o0o000Arr) {
        return (c6) super.o0000O00(o0o0o000Arr);
    }

    @Override // z2.i1
    @NonNull
    @SafeVarargs
    @CheckResult
    /* JADX INFO: renamed from: o00O0O00, reason: merged with bridge method [inline-methods] */
    public final c6 o0000(@NonNull o0O0o000<Bitmap>... o0o0o000Arr) {
        return (c6) super.o0000(o0o0o000Arr);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0O0O, reason: merged with bridge method [inline-methods] */
    public c6 o0000oo(boolean z) {
        return (c6) super.o0000oo(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0O0o, reason: merged with bridge method [inline-methods] */
    public c6 o0000oO(boolean z) {
        return (c6) super.o0000oO(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o0O0ooO, reason: merged with bridge method [inline-methods] */
    public c6 o0OO00O(@NonNull Priority priority) {
        return (c6) super.o0OO00O(priority);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o0OoO0o, reason: merged with bridge method [inline-methods] */
    public c6 OooOOo() {
        return (c6) super.OooOOo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: oo00o, reason: merged with bridge method [inline-methods] */
    public c6 o00000Oo(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return (c6) super.o00000Oo(o0o0o000);
    }
}
