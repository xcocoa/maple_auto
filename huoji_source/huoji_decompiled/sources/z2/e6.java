package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class e6 extends o0 {
    public e6(@NonNull o00Oo00 o00oo00, @NonNull n0 n0Var, @NonNull s0 s0Var, @NonNull Context context) {
        super(o00oo00, n0Var, s0Var, context);
    }

    @Override // z2.o0
    public void Oooo0oO(@NonNull p1 p1Var) {
        if (!(p1Var instanceof c6)) {
            p1Var = new c6().OooOO0O(p1Var);
        }
        super.Oooo0oO(p1Var);
    }

    @Override // z2.o0
    @NonNull
    /* JADX INFO: renamed from: OoooO, reason: merged with bridge method [inline-methods] */
    public synchronized e6 OooOO0O(@NonNull p1 p1Var) {
        return (e6) super.OooOO0O(p1Var);
    }

    @Override // z2.o0
    @NonNull
    /* JADX INFO: renamed from: OoooO0O, reason: merged with bridge method [inline-methods] */
    public e6 OooOO0(o1<Object> o1Var) {
        return (e6) super.OooOO0(o1Var);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OoooOO0, reason: merged with bridge method [inline-methods] */
    public <ResourceType> d6<ResourceType> OooOO0o(@NonNull Class<ResourceType> cls) {
        return new d6<>(this.OoooOoO, this, cls, this.OoooOoo);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OoooOOO, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooOOO() {
        return (d6) super.OooOOO();
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OoooOOo, reason: merged with bridge method [inline-methods] */
    public d6<File> OooOOOO() {
        return (d6) super.OooOOOO();
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OoooOo0, reason: merged with bridge method [inline-methods] */
    public d6<r> OooOOOo() {
        return (d6) super.OooOOOo();
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OoooOoO, reason: merged with bridge method [inline-methods] */
    public d6<File> OooOOoo(@Nullable Object obj) {
        return (d6) super.OooOOoo(obj);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OoooOoo, reason: merged with bridge method [inline-methods] */
    public d6<File> OooOo00() {
        return (d6) super.OooOo00();
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: Ooooo00, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0o(@Nullable Bitmap bitmap) {
        return (d6) super.OooO0o(bitmap);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: Ooooo0o, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0o0(@Nullable Drawable drawable) {
        return (d6) super.OooO0o0(drawable);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooooO0, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0O0(@Nullable Uri uri) {
        return (d6) super.OooO0O0(uri);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooooOO, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0Oo(@Nullable File file) {
        return (d6) super.OooO0Oo(file);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: OooooOo, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0oo(@Nullable @DrawableRes @RawRes Integer num) {
        return (d6) super.OooO0oo(num);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: Oooooo, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO(@Nullable String str) {
        return (d6) super.OooO(str);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: Oooooo0, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0oO(@Nullable Object obj) {
        return (d6) super.OooO0oO(obj);
    }

    @Override // z2.o0
    @CheckResult
    @Deprecated
    /* JADX INFO: renamed from: OoooooO, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO00o(@Nullable URL url) {
        return (d6) super.OooO00o(url);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: Ooooooo, reason: merged with bridge method [inline-methods] */
    public d6<Drawable> OooO0OO(@Nullable byte[] bArr) {
        return (d6) super.OooO0OO(bArr);
    }

    @Override // z2.o0
    @NonNull
    @CheckResult
    /* JADX INFO: renamed from: o000oOoO, reason: merged with bridge method [inline-methods] */
    public d6<Bitmap> OooOOO0() {
        return (d6) super.OooOOO0();
    }

    @Override // z2.o0
    @NonNull
    /* JADX INFO: renamed from: o0OoOo0, reason: merged with bridge method [inline-methods] */
    public synchronized e6 Oooo0o(@NonNull p1 p1Var) {
        return (e6) super.Oooo0o(p1Var);
    }
}
