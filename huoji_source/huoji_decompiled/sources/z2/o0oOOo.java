package z2;

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
public interface o0oOOo<T> {
    @NonNull
    @CheckResult
    T OooO(@Nullable String str);

    @CheckResult
    @Deprecated
    T OooO00o(@Nullable URL url);

    @NonNull
    @CheckResult
    T OooO0O0(@Nullable Uri uri);

    @NonNull
    @CheckResult
    T OooO0OO(@Nullable byte[] bArr);

    @NonNull
    @CheckResult
    T OooO0Oo(@Nullable File file);

    @NonNull
    @CheckResult
    T OooO0o(@Nullable Bitmap bitmap);

    @NonNull
    @CheckResult
    T OooO0o0(@Nullable Drawable drawable);

    @NonNull
    @CheckResult
    T OooO0oO(@Nullable Object obj);

    @NonNull
    @CheckResult
    T OooO0oo(@Nullable @DrawableRes @RawRes Integer num);
}
