package z2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
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
import java.util.Map;
import z2.i1;

/* JADX INFO: loaded from: classes.dex */
public abstract class i1<T extends i1<T>> implements Cloneable {
    private static final int o0000 = 65536;
    private static final int o00000 = 128;
    private static final int o000000 = 16;
    private static final int o000000O = 32;
    private static final int o000000o = 64;
    private static final int o00000O = 512;
    private static final int o00000O0 = 256;
    private static final int o00000OO = 1024;
    private static final int o00000Oo = 2048;
    private static final int o00000o0 = 4096;
    private static final int o00000oO = 16384;
    private static final int o00000oo = 32768;
    private static final int o0000O0 = 1048576;
    private static final int o0000O00 = 131072;
    private static final int o0000Ooo = 8192;
    private static final int o0000oO = 524288;
    private static final int o0000oo = 262144;
    private static final int o000OOo = 8;
    private static final int o0O0O00 = 4;
    private static final int o0OO00O = -1;
    private static final int oo0o0Oo = 2;
    private int OoooOoO;

    @Nullable
    private Drawable OooooO0;
    private int OooooOO;

    @Nullable
    private Drawable OooooOo;
    private int Oooooo0;

    @Nullable
    private Drawable o00Oo0;
    private int o00Ooo;

    @Nullable
    private Resources.Theme o00oO0O;
    private boolean o00oO0o;
    private boolean o0Oo0oo;
    private boolean o0ooOO0;
    private boolean o0ooOOo;
    private boolean o0ooOoO;
    private boolean ooOO;
    private float OoooOoo = 1.0f;

    @NonNull
    private o0oo0000 Ooooo00 = o0oo0000.OooO0o0;

    @NonNull
    private Priority Ooooo0o = Priority.NORMAL;
    private boolean Oooooo = true;
    private int OoooooO = -1;
    private int Ooooooo = -1;

    @NonNull
    private o0O0O0Oo o0OoOo0 = e2.OooO0OO();
    private boolean o00O0O = true;

    @NonNull
    private o0O0OOO0 o00o0O = new o0O0OOO0();

    @NonNull
    private Map<Class<?>, o0O0o000<?>> o00ooo = new i2();

    @NonNull
    private Class<?> oo000o = Object.class;
    private boolean o0OOO0o = true;

    private boolean OooooOO(int i) {
        return OooooOo(this.OoooOoO, i);
    }

    private static boolean OooooOo(int i, int i2) {
        return (i & i2) != 0;
    }

    @NonNull
    private T o000000() {
        if (this.o00oO0o) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return (T) o000OOo();
    }

    private T o000OOo() {
        return this;
    }

    @NonNull
    private T o0O0O00(@NonNull DownsampleStrategy downsampleStrategy, @NonNull o0O0o000<Bitmap> o0o0o000, boolean z) {
        T t = z ? (T) o0000Ooo(downsampleStrategy, o0o0o000) : (T) o00oO0O(downsampleStrategy, o0o0o000);
        t.o0OOO0o = true;
        return t;
    }

    @NonNull
    private T oo000o(@NonNull DownsampleStrategy downsampleStrategy, @NonNull o0O0o000<Bitmap> o0o0o000) {
        return (T) o0O0O00(downsampleStrategy, o0o0o000, false);
    }

    @NonNull
    private T oo0o0Oo(@NonNull DownsampleStrategy downsampleStrategy, @NonNull o0O0o000<Bitmap> o0o0o000) {
        return (T) o0O0O00(downsampleStrategy, o0o0o000, true);
    }

    @NonNull
    @CheckResult
    public T OooOO0O(@NonNull i1<?> i1Var) {
        if (this.o0ooOO0) {
            return (T) clone().OooOO0O(i1Var);
        }
        if (OooooOo(i1Var.OoooOoO, 2)) {
            this.OoooOoo = i1Var.OoooOoo;
        }
        if (OooooOo(i1Var.OoooOoO, 262144)) {
            this.o0ooOOo = i1Var.o0ooOOo;
        }
        if (OooooOo(i1Var.OoooOoO, 1048576)) {
            this.o0Oo0oo = i1Var.o0Oo0oo;
        }
        if (OooooOo(i1Var.OoooOoO, 4)) {
            this.Ooooo00 = i1Var.Ooooo00;
        }
        if (OooooOo(i1Var.OoooOoO, 8)) {
            this.Ooooo0o = i1Var.Ooooo0o;
        }
        if (OooooOo(i1Var.OoooOoO, 16)) {
            this.OooooO0 = i1Var.OooooO0;
            this.OooooOO = 0;
            this.OoooOoO &= -33;
        }
        if (OooooOo(i1Var.OoooOoO, 32)) {
            this.OooooOO = i1Var.OooooOO;
            this.OooooO0 = null;
            this.OoooOoO &= -17;
        }
        if (OooooOo(i1Var.OoooOoO, 64)) {
            this.OooooOo = i1Var.OooooOo;
            this.Oooooo0 = 0;
            this.OoooOoO &= -129;
        }
        if (OooooOo(i1Var.OoooOoO, 128)) {
            this.Oooooo0 = i1Var.Oooooo0;
            this.OooooOo = null;
            this.OoooOoO &= -65;
        }
        if (OooooOo(i1Var.OoooOoO, 256)) {
            this.Oooooo = i1Var.Oooooo;
        }
        if (OooooOo(i1Var.OoooOoO, 512)) {
            this.Ooooooo = i1Var.Ooooooo;
            this.OoooooO = i1Var.OoooooO;
        }
        if (OooooOo(i1Var.OoooOoO, 1024)) {
            this.o0OoOo0 = i1Var.o0OoOo0;
        }
        if (OooooOo(i1Var.OoooOoO, 4096)) {
            this.oo000o = i1Var.oo000o;
        }
        if (OooooOo(i1Var.OoooOoO, 8192)) {
            this.o00Oo0 = i1Var.o00Oo0;
            this.o00Ooo = 0;
            this.OoooOoO &= -16385;
        }
        if (OooooOo(i1Var.OoooOoO, 16384)) {
            this.o00Ooo = i1Var.o00Ooo;
            this.o00Oo0 = null;
            this.OoooOoO &= -8193;
        }
        if (OooooOo(i1Var.OoooOoO, 32768)) {
            this.o00oO0O = i1Var.o00oO0O;
        }
        if (OooooOo(i1Var.OoooOoO, 65536)) {
            this.o00O0O = i1Var.o00O0O;
        }
        if (OooooOo(i1Var.OoooOoO, 131072)) {
            this.ooOO = i1Var.ooOO;
        }
        if (OooooOo(i1Var.OoooOoO, 2048)) {
            this.o00ooo.putAll(i1Var.o00ooo);
            this.o0OOO0o = i1Var.o0OOO0o;
        }
        if (OooooOo(i1Var.OoooOoO, 524288)) {
            this.o0ooOoO = i1Var.o0ooOoO;
        }
        if (!this.o00O0O) {
            this.o00ooo.clear();
            int i = this.OoooOoO & (-2049);
            this.OoooOoO = i;
            this.ooOO = false;
            this.OoooOoO = i & (-131073);
            this.o0OOO0o = true;
        }
        this.OoooOoO |= i1Var.OoooOoO;
        this.o00o0O.OooO0Oo(i1Var.o00o0O);
        return (T) o000000();
    }

    @NonNull
    public T OooOO0o() {
        if (this.o00oO0o && !this.o0ooOO0) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.o0ooOO0 = true;
        return (T) ooOO();
    }

    @NonNull
    @CheckResult
    public T OooOOO() {
        return (T) oo0o0Oo(DownsampleStrategy.OooO0o0, new oOOO0O0o());
    }

    @NonNull
    @CheckResult
    public T OooOOO0() {
        return (T) o0000Ooo(DownsampleStrategy.OooO0O0, new oOOO00o0());
    }

    @NonNull
    @CheckResult
    public T OooOOOO() {
        return (T) o0000Ooo(DownsampleStrategy.OooO0o0, new oOOO0OO0());
    }

    @Override // 
    @CheckResult
    /* JADX INFO: renamed from: OooOOOo */
    public T clone() {
        try {
            T t = (T) super.clone();
            o0O0OOO0 o0o0ooo0 = new o0O0OOO0();
            t.o00o0O = o0o0ooo0;
            o0o0ooo0.OooO0Oo(this.o00o0O);
            i2 i2Var = new i2();
            t.o00ooo = i2Var;
            i2Var.putAll(this.o00ooo);
            t.o00oO0o = false;
            t.o0ooOO0 = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    @CheckResult
    public T OooOOo() {
        return (T) o000000O(oOOOoo00.OooOO0, Boolean.FALSE);
    }

    @NonNull
    @CheckResult
    public T OooOOo0(@NonNull Class<?> cls) {
        if (this.o0ooOO0) {
            return (T) clone().OooOOo0(cls);
        }
        this.oo000o = (Class) r2.OooO0Oo(cls);
        this.OoooOoO |= 4096;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOOoo(@NonNull o0oo0000 o0oo0000Var) {
        if (this.o0ooOO0) {
            return (T) clone().OooOOoo(o0oo0000Var);
        }
        this.Ooooo00 = (o0oo0000) r2.OooO0Oo(o0oo0000Var);
        this.OoooOoO |= 4;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOo(@IntRange(from = 0, to = 100) int i) {
        return (T) o000000O(ooooO0O0.OooO0O0, Integer.valueOf(i));
    }

    @NonNull
    @CheckResult
    public T OooOo0() {
        if (this.o0ooOO0) {
            return (T) clone().OooOo0();
        }
        this.o00ooo.clear();
        int i = this.OoooOoO & (-2049);
        this.OoooOoO = i;
        this.ooOO = false;
        int i2 = i & (-131073);
        this.OoooOoO = i2;
        this.o00O0O = false;
        this.OoooOoO = i2 | 65536;
        this.o0OOO0o = true;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOo00() {
        return (T) o000000O(x.OooO0O0, Boolean.TRUE);
    }

    @NonNull
    @CheckResult
    public T OooOo0O(@NonNull DownsampleStrategy downsampleStrategy) {
        return (T) o000000O(DownsampleStrategy.OooO0oo, r2.OooO0Oo(downsampleStrategy));
    }

    @NonNull
    @CheckResult
    public T OooOo0o(@NonNull Bitmap.CompressFormat compressFormat) {
        return (T) o000000O(ooooO0O0.OooO0OO, r2.OooO0Oo(compressFormat));
    }

    @NonNull
    @CheckResult
    public T OooOoO(@Nullable Drawable drawable) {
        if (this.o0ooOO0) {
            return (T) clone().OooOoO(drawable);
        }
        this.OooooO0 = drawable;
        int i = this.OoooOoO | 16;
        this.OoooOoO = i;
        this.OooooOO = 0;
        this.OoooOoO = i & (-33);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOoO0(@DrawableRes int i) {
        if (this.o0ooOO0) {
            return (T) clone().OooOoO0(i);
        }
        this.OooooOO = i;
        int i2 = this.OoooOoO | 32;
        this.OoooOoO = i2;
        this.OooooO0 = null;
        this.OoooOoO = i2 & (-17);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOoOO(@DrawableRes int i) {
        if (this.o0ooOO0) {
            return (T) clone().OooOoOO(i);
        }
        this.o00Ooo = i;
        int i2 = this.OoooOoO | 16384;
        this.OoooOoO = i2;
        this.o00Oo0 = null;
        this.OoooOoO = i2 & (-8193);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOoo() {
        return (T) oo0o0Oo(DownsampleStrategy.OooO00o, new oOo0o00());
    }

    @NonNull
    @CheckResult
    public T OooOoo0(@Nullable Drawable drawable) {
        if (this.o0ooOO0) {
            return (T) clone().OooOoo0(drawable);
        }
        this.o00Oo0 = drawable;
        int i = this.OoooOoO | 8192;
        this.OoooOoO = i;
        this.o00Ooo = 0;
        this.OoooOoO = i & (-16385);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T OooOooO(@NonNull DecodeFormat decodeFormat) {
        r2.OooO0Oo(decodeFormat);
        return (T) o000000O(oOOOoo00.OooO0oO, decodeFormat).o000000O(x.OooO00o, decodeFormat);
    }

    @NonNull
    @CheckResult
    public T OooOooo(@IntRange(from = 0) long j) {
        return (T) o000000O(d.OooO0oO, Long.valueOf(j));
    }

    public final int Oooo() {
        return this.Oooooo0;
    }

    @Nullable
    public final Drawable Oooo0() {
        return this.o00Oo0;
    }

    @NonNull
    public final o0oo0000 Oooo000() {
        return this.Ooooo00;
    }

    public final int Oooo00O() {
        return this.OooooOO;
    }

    @Nullable
    public final Drawable Oooo00o() {
        return this.OooooO0;
    }

    public final int Oooo0O0() {
        return this.o00Ooo;
    }

    public final boolean Oooo0OO() {
        return this.o0ooOoO;
    }

    public final int Oooo0o() {
        return this.OoooooO;
    }

    @NonNull
    public final o0O0OOO0 Oooo0o0() {
        return this.o00o0O;
    }

    public final int Oooo0oO() {
        return this.Ooooooo;
    }

    @Nullable
    public final Drawable Oooo0oo() {
        return this.OooooOo;
    }

    public final float OoooO() {
        return this.OoooOoo;
    }

    @NonNull
    public final Class<?> OoooO0() {
        return this.oo000o;
    }

    @NonNull
    public final Priority OoooO00() {
        return this.Ooooo0o;
    }

    @NonNull
    public final o0O0O0Oo OoooO0O() {
        return this.o0OoOo0;
    }

    @Nullable
    public final Resources.Theme OoooOO0() {
        return this.o00oO0O;
    }

    public final boolean OoooOOO() {
        return this.o0Oo0oo;
    }

    public final boolean OoooOOo() {
        return this.o0ooOOo;
    }

    public boolean OoooOo0() {
        return this.o0ooOO0;
    }

    public final boolean OoooOoO() {
        return OooooOO(4);
    }

    public final boolean OoooOoo() {
        return this.o00oO0o;
    }

    public final boolean Ooooo00() {
        return this.Oooooo;
    }

    public final boolean Ooooo0o() {
        return OooooOO(8);
    }

    public boolean OooooO0() {
        return this.o0OOO0o;
    }

    public final boolean Oooooo() {
        return this.o00O0O;
    }

    public final boolean Oooooo0() {
        return OooooOO(256);
    }

    public final boolean OoooooO() {
        return this.ooOO;
    }

    public final boolean Ooooooo() {
        return OooooOO(2048);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i1)) {
            return false;
        }
        i1 i1Var = (i1) obj;
        return Float.compare(i1Var.OoooOoo, this.OoooOoo) == 0 && this.OooooOO == i1Var.OooooOO && t2.OooO0Oo(this.OooooO0, i1Var.OooooO0) && this.Oooooo0 == i1Var.Oooooo0 && t2.OooO0Oo(this.OooooOo, i1Var.OooooOo) && this.o00Ooo == i1Var.o00Ooo && t2.OooO0Oo(this.o00Oo0, i1Var.o00Oo0) && this.Oooooo == i1Var.Oooooo && this.OoooooO == i1Var.OoooooO && this.Ooooooo == i1Var.Ooooooo && this.ooOO == i1Var.ooOO && this.o00O0O == i1Var.o00O0O && this.o0ooOOo == i1Var.o0ooOOo && this.o0ooOoO == i1Var.o0ooOoO && this.Ooooo00.equals(i1Var.Ooooo00) && this.Ooooo0o == i1Var.Ooooo0o && this.o00o0O.equals(i1Var.o00o0O) && this.o00ooo.equals(i1Var.o00ooo) && this.oo000o.equals(i1Var.oo000o) && t2.OooO0Oo(this.o0OoOo0, i1Var.o0OoOo0) && t2.OooO0Oo(this.o00oO0O, i1Var.o00oO0O);
    }

    public int hashCode() {
        return t2.OooOOOo(this.o00oO0O, t2.OooOOOo(this.o0OoOo0, t2.OooOOOo(this.oo000o, t2.OooOOOo(this.o00ooo, t2.OooOOOo(this.o00o0O, t2.OooOOOo(this.Ooooo0o, t2.OooOOOo(this.Ooooo00, t2.OooOOo(this.o0ooOoO, t2.OooOOo(this.o0ooOOo, t2.OooOOo(this.o00O0O, t2.OooOOo(this.ooOO, t2.OooOOOO(this.Ooooooo, t2.OooOOOO(this.OoooooO, t2.OooOOo(this.Oooooo, t2.OooOOOo(this.o00Oo0, t2.OooOOOO(this.o00Ooo, t2.OooOOOo(this.OooooOo, t2.OooOOOO(this.Oooooo0, t2.OooOOOo(this.OooooO0, t2.OooOOOO(this.OooooOO, t2.OooOO0o(this.OoooOoo)))))))))))))))))))));
    }

    @NonNull
    @CheckResult
    public T o0000(@NonNull o0O0o000<Bitmap>... o0o0o000Arr) {
        return o0o0o000Arr.length > 1 ? (T) o00000o0(new o0O0O0o0(o0o0o000Arr), true) : o0o0o000Arr.length == 1 ? (T) o00000Oo(o0o0o000Arr[0]) : (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o00000(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.o0ooOO0) {
            return (T) clone().o00000(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.OoooOoo = f;
        this.OoooOoO |= 2;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public <Y> T o000000O(@NonNull o0O0OO0<Y> o0o0oo0, @NonNull Y y) {
        if (this.o0ooOO0) {
            return (T) clone().o000000O(o0o0oo0, y);
        }
        r2.OooO0Oo(o0o0oo0);
        r2.OooO0Oo(y);
        this.o00o0O.OooO0o0(o0o0oo0, y);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o000000o(@NonNull o0O0O0Oo o0o0o0oo) {
        if (this.o0ooOO0) {
            return (T) clone().o000000o(o0o0o0oo);
        }
        this.o0OoOo0 = (o0O0O0Oo) r2.OooO0Oo(o0o0o0oo);
        this.OoooOoO |= 1024;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o00000O(@Nullable Resources.Theme theme) {
        if (this.o0ooOO0) {
            return (T) clone().o00000O(theme);
        }
        this.o00oO0O = theme;
        this.OoooOoO |= 32768;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o00000O0(boolean z) {
        if (this.o0ooOO0) {
            return (T) clone().o00000O0(true);
        }
        this.Oooooo = !z;
        this.OoooOoO |= 256;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o00000OO(@IntRange(from = 0) int i) {
        return (T) o000000O(oOO0.OooO0O0, Integer.valueOf(i));
    }

    @NonNull
    @CheckResult
    public T o00000Oo(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return (T) o00000o0(o0o0o000, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public T o00000o0(@NonNull o0O0o000<Bitmap> o0o0o000, boolean z) {
        if (this.o0ooOO0) {
            return (T) clone().o00000o0(o0o0o000, z);
        }
        oOOo0000 oooo0000 = new oOOo0000(o0o0o000, z);
        o00000oo(Bitmap.class, o0o0o000, z);
        o00000oo(Drawable.class, oooo0000, z);
        o00000oo(BitmapDrawable.class, oooo0000.OooO0OO(), z);
        o00000oo(r.class, new u(o0o0o000), z);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public <Y> T o00000oO(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000) {
        return (T) o00000oo(cls, o0o0o000, true);
    }

    @NonNull
    public <Y> T o00000oo(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000, boolean z) {
        if (this.o0ooOO0) {
            return (T) clone().o00000oo(cls, o0o0o000, z);
        }
        r2.OooO0Oo(cls);
        r2.OooO0Oo(o0o0o000);
        this.o00ooo.put(cls, o0o0o000);
        int i = this.OoooOoO | 2048;
        this.OoooOoO = i;
        this.o00O0O = true;
        int i2 = i | 65536;
        this.OoooOoO = i2;
        this.o0OOO0o = false;
        if (z) {
            this.OoooOoO = i2 | 131072;
            this.ooOO = true;
        }
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    @Deprecated
    public T o0000O00(@NonNull o0O0o000<Bitmap>... o0o0o000Arr) {
        return (T) o00000o0(new o0O0O0o0(o0o0o000Arr), true);
    }

    @NonNull
    @CheckResult
    public final T o0000Ooo(@NonNull DownsampleStrategy downsampleStrategy, @NonNull o0O0o000<Bitmap> o0o0o000) {
        if (this.o0ooOO0) {
            return (T) clone().o0000Ooo(downsampleStrategy, o0o0o000);
        }
        OooOo0O(downsampleStrategy);
        return (T) o00000Oo(o0o0o000);
    }

    @NonNull
    @CheckResult
    public T o0000oO(boolean z) {
        if (this.o0ooOO0) {
            return (T) clone().o0000oO(z);
        }
        this.o0ooOOo = z;
        this.OoooOoO |= 262144;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o0000oo(boolean z) {
        if (this.o0ooOO0) {
            return (T) clone().o0000oo(z);
        }
        this.o0Oo0oo = z;
        this.OoooOoO |= 1048576;
        return (T) o000000();
    }

    @NonNull
    public final Map<Class<?>, o0O0o000<?>> o000oOoO() {
        return this.o00ooo;
    }

    @NonNull
    @CheckResult
    public T o00O0O(boolean z) {
        if (this.o0ooOO0) {
            return (T) clone().o00O0O(z);
        }
        this.o0ooOoO = z;
        this.OoooOoO |= 524288;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o00Oo0() {
        return (T) o00oO0O(DownsampleStrategy.OooO0O0, new oOOO00o0());
    }

    @NonNull
    @CheckResult
    public T o00Ooo() {
        return (T) oo000o(DownsampleStrategy.OooO0o0, new oOOO0O0o());
    }

    @NonNull
    @CheckResult
    public T o00o0O() {
        return (T) o00oO0O(DownsampleStrategy.OooO0O0, new oOOO0OO0());
    }

    @NonNull
    public final T o00oO0O(@NonNull DownsampleStrategy downsampleStrategy, @NonNull o0O0o000<Bitmap> o0o0o000) {
        if (this.o0ooOO0) {
            return (T) clone().o00oO0O(downsampleStrategy, o0o0o000);
        }
        OooOo0O(downsampleStrategy);
        return (T) o00000o0(o0o0o000, false);
    }

    @NonNull
    @CheckResult
    public T o00oO0o(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return (T) o00000o0(o0o0o000, false);
    }

    @NonNull
    @CheckResult
    public T o00ooo() {
        return (T) oo000o(DownsampleStrategy.OooO00o, new oOo0o00());
    }

    @NonNull
    @CheckResult
    public T o0OO00O(@NonNull Priority priority) {
        if (this.o0ooOO0) {
            return (T) clone().o0OO00O(priority);
        }
        this.Ooooo0o = (Priority) r2.OooO0Oo(priority);
        this.OoooOoO |= 8;
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o0OOO0o(@DrawableRes int i) {
        if (this.o0ooOO0) {
            return (T) clone().o0OOO0o(i);
        }
        this.Oooooo0 = i;
        int i2 = this.OoooOoO | 128;
        this.OoooOoO = i2;
        this.OooooOo = null;
        this.OoooOoO = i2 & (-65);
        return (T) o000000();
    }

    @NonNull
    @CheckResult
    public T o0Oo0oo(@Nullable Drawable drawable) {
        if (this.o0ooOO0) {
            return (T) clone().o0Oo0oo(drawable);
        }
        this.OooooOo = drawable;
        int i = this.OoooOoO | 64;
        this.OoooOoO = i;
        this.Oooooo0 = 0;
        this.OoooOoO = i & (-129);
        return (T) o000000();
    }

    public final boolean o0OoOo0() {
        return t2.OooOo0O(this.Ooooooo, this.OoooooO);
    }

    @NonNull
    @CheckResult
    public <Y> T o0ooOO0(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000) {
        return (T) o00000oo(cls, o0o0o000, false);
    }

    @NonNull
    @CheckResult
    public T o0ooOOo(int i) {
        return (T) o0ooOoO(i, i);
    }

    @NonNull
    @CheckResult
    public T o0ooOoO(int i, int i2) {
        if (this.o0ooOO0) {
            return (T) clone().o0ooOoO(i, i2);
        }
        this.Ooooooo = i;
        this.OoooooO = i2;
        this.OoooOoO |= 512;
        return (T) o000000();
    }

    @NonNull
    public T ooOO() {
        this.o00oO0o = true;
        return (T) o000OOo();
    }
}
