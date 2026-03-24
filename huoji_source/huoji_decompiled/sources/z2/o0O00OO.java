package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface o0O00OO {
    public static final int OooO00o = 0;
    public static final int OooO0O0 = 1;
    public static final int OooO0OO = 2;
    public static final int OooO0Oo = 3;
    public static final int OooO0o0 = 0;

    public interface OooO00o {
        @NonNull
        Bitmap OooO00o(int i, int i2, @NonNull Bitmap.Config config);

        @NonNull
        int[] OooO0O0(int i);

        void OooO0OO(@NonNull Bitmap bitmap);

        void OooO0Oo(@NonNull byte[] bArr);

        void OooO0o(@NonNull int[] iArr);

        @NonNull
        byte[] OooO0o0(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OooO0O0 {
    }

    void OooO(@NonNull o0oO0Ooo o0oo0ooo, @NonNull ByteBuffer byteBuffer);

    @Nullable
    Bitmap OooO00o();

    void OooO0O0();

    void OooO0OO(@NonNull o0oO0Ooo o0oo0ooo, @NonNull byte[] bArr);

    int OooO0Oo();

    void OooO0o(@NonNull Bitmap.Config config);

    int OooO0o0();

    int OooO0oO(int i);

    void OooO0oo();

    int OooOO0();

    void OooOO0O(@NonNull o0oO0Ooo o0oo0ooo, @NonNull ByteBuffer byteBuffer, int i);

    int OooOO0o();

    int OooOOO(@Nullable InputStream inputStream, int i);

    int OooOOO0();

    int OooOOOO();

    int OooOOOo();

    @Deprecated
    int OooOOo0();

    void clear();

    @NonNull
    ByteBuffer getData();

    int getHeight();

    int getWidth();

    int read(@Nullable byte[] bArr);
}
