package z2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class d6<TranscodeType> extends o0O0o<TranscodeType> implements Cloneable {
    public d6(@NonNull Class<TranscodeType> cls, @NonNull o0O0o<?> o0o0o) {
        super(cls, o0o0o);
    }

    public d6(@NonNull o00Oo00 o00oo00, @NonNull o0 o0Var, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(o00oo00, o0Var, cls, context);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0ooOOo(int i) {
        return (d6) super.o0ooOOo(i);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OO0o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOO0O(@NonNull i1<?> i1Var) {
        return (d6) super.OooOO0O(i1Var);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OOO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOO0() {
        return (d6) super.OooOOO0();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OOo0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOO() {
        return (d6) super.OooOOO();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OOoO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOOO() {
        return (d6) super.OooOOOO();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOoo(@NonNull o0oo0000 o0oo0000Var) {
        return (d6) super.OooOOoo(o0oo0000Var);
    }

    @Override // z2.o0O0o
    @CheckResult
    /* JADX INFO: renamed from: o000Oo00, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOOo() {
        return (d6) super.OooOOOo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oo0O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOo0(@NonNull Class<?> cls) {
        return (d6) super.OooOOo0(cls);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oo0o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOOo() {
        return (d6) super.OooOOo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OoOO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOo00() {
        return (d6) super.OooOo00();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OoOo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOo0() {
        return (d6) super.OooOo0();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Ooo0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOo0O(@NonNull DownsampleStrategy downsampleStrategy) {
        return (d6) super.OooOo0O(downsampleStrategy);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000OooO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOo0o(@NonNull Bitmap.CompressFormat compressFormat) {
        return (d6) super.OooOo0o(compressFormat);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000Oooo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOo(@IntRange(from = 0, to = 100) int i) {
        return (d6) super.OooOo(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o00, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOoO(@Nullable Drawable drawable) {
        return (d6) super.OooOoO(drawable);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o000, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOoO0(@DrawableRes int i) {
        return (d6) super.OooOoO0(i);
    }

    @Override // z2.o0O0o
    @NonNull
    /* JADX INFO: renamed from: o000o00O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000Oo0(@Nullable o0O0o<TranscodeType> o0o0o) {
        return (d6) super.o0000Oo0(o0o0o);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o00o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOoOO(@DrawableRes int i) {
        return (d6) super.OooOoOO(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOooO(@NonNull DecodeFormat decodeFormat) {
        return (d6) super.OooOooO(decodeFormat);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0O0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOoo() {
        return (d6) super.OooOoo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0OO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOooo(@IntRange(from = 0) long j) {
        return (d6) super.OooOooo(j);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0Oo, reason: merged with bridge method [inline-methods] */
    public d6<File> o0000Oo() {
        return new d6(File.class, this).OooOO0O(o0O0o.o0000oO0);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0o(@Nullable Bitmap bitmap) {
        return (d6) super.OooO0o(bitmap);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0o0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000oo0(@Nullable o1<TranscodeType> o1Var) {
        return (d6) super.o0000oo0(o1Var);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0oO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0o0(@Nullable Drawable drawable) {
        return (d6) super.OooO0o0(drawable);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000o0oo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0O0(@Nullable Uri uri) {
        return (d6) super.OooO0O0(uri);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oOoo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0Oo(@Nullable File file) {
        return (d6) super.OooO0Oo(file);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0OO(@Nullable byte[] bArr) {
        return (d6) super.OooO0OO(bArr);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0oO(@Nullable Object obj) {
        return (d6) super.OooO0oO(obj);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo00, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO0oo(@Nullable @DrawableRes @RawRes Integer num) {
        return (d6) super.OooO0oo(num);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oo0O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO(@Nullable String str) {
        return (d6) super.OooO(str);
    }

    @Override // z2.o0O0o
    @CheckResult
    @Deprecated
    /* JADX INFO: renamed from: o000oo0o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooO00o(@Nullable URL url) {
        return (d6) super.OooO00o(url);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00Oo0() {
        return (d6) super.o00Oo0();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooO0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00O0O(boolean z) {
        return (d6) super.o00O0O(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooOO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00Ooo() {
        return (d6) super.o00Ooo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00ooo() {
        return (d6) super.o00ooo();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000ooo0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00o0O() {
        return (d6) super.o00o0O();
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oooO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00oO0o(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return (d6) super.o00oO0o(o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oooo, reason: merged with bridge method [inline-methods] */
    public <Y> d6<TranscodeType> o0ooOO0(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000) {
        return (d6) super.o0ooOO0(cls, o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0, reason: merged with bridge method [inline-methods] */
    public <Y> d6<TranscodeType> o00000oO(@NonNull Class<Y> cls, @NonNull o0O0o000<Y> o0o0o000) {
        return (d6) super.o00000oO(cls, o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o000000o(@NonNull o0O0O0Oo o0o0o0oo) {
        return (d6) super.o000000o(o0o0o0oo);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O000, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0OO00O(@NonNull Priority priority) {
        return (d6) super.o0OO00O(priority);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0000, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0ooOoO(int i, int i2) {
        return (d6) super.o0ooOoO(i, i2);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O000o, reason: merged with bridge method [inline-methods] */
    public <Y> d6<TranscodeType> o000000O(@NonNull o0O0OO0<Y> o0o0oo0, @NonNull Y y) {
        return (d6) super.o000000O(o0o0oo0, y);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00000(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        return (d6) super.o00000(f);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00OO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00000O(@Nullable Resources.Theme theme) {
        return (d6) super.o00000O(theme);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00Oo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o000O0oO(float f) {
        return (d6) super.o000O0oO(f);
    }

    @Override // z2.o0O0o
    @NonNull
    @SafeVarargs
    @CheckResult
    /* JADX INFO: renamed from: o00O00o, reason: merged with bridge method [inline-methods] */
    public final d6<TranscodeType> o000O(@Nullable o0O0o<TranscodeType>... o0o0oArr) {
        return (d6) super.o000O(o0o0oArr);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00o0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o000O0oo(@Nullable o0O0o<TranscodeType> o0o0o) {
        return (d6) super.o000O0oo(o0o0o);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O00oO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00000OO(@IntRange(from = 0) int i) {
        return (d6) super.o00000OO(i);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    @Deprecated
    /* JADX INFO: renamed from: o00O0O0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000O00(@NonNull o0O0o000<Bitmap>... o0o0o000Arr) {
        return (d6) super.o0000O00(o0o0o000Arr);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0O00, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000(@NonNull o0O0o000<Bitmap>... o0o0o000Arr) {
        return (d6) super.o0000(o0o0o000Arr);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0O0O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o000OO00(@NonNull o0O00000<?, ? super TranscodeType> o0o00000) {
        return (d6) super.o000OO00(o0o00000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0O0o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000oo(boolean z) {
        return (d6) super.o0000oo(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00O0OO0, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000oO(boolean z) {
        return (d6) super.o0000oO(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o00oOoo, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0Oo0oo(@Nullable Drawable drawable) {
        return (d6) super.o0Oo0oo(drawable);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o0O0ooO, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0OOO0o(@DrawableRes int i) {
        return (d6) super.o0OOO0o(i);
    }

    @Override // z2.o0O0o
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o0OoO0o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o0000O0(@Nullable o1<TranscodeType> o1Var) {
        return (d6) super.o0000O0(o1Var);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: oOO00O, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00000O0(boolean z) {
        return (d6) super.o00000O0(z);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: oo00o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> o00000Oo(@NonNull o0O0o000<Bitmap> o0o0o000) {
        return (d6) super.o00000Oo(o0o0o000);
    }

    @Override // z2.i1
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: oooo00o, reason: merged with bridge method [inline-methods] */
    public d6<TranscodeType> OooOoo0(@Nullable Drawable drawable) {
        return (d6) super.OooOoo0(drawable);
    }
}
