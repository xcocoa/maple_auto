package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import z2.oO0OOo0o;

/* JADX INFO: loaded from: classes.dex */
public interface ImageHeaderParser {
    public static final int OooO00o = -1;

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);

        private final boolean hasAlpha;

        ImageType(boolean z) {
            this.hasAlpha = z;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    @NonNull
    ImageType OooO00o(@NonNull ByteBuffer byteBuffer) throws IOException;

    int OooO0O0(@NonNull ByteBuffer byteBuffer, @NonNull oO0OOo0o oo0ooo0o) throws IOException;

    @NonNull
    ImageType OooO0OO(@NonNull InputStream inputStream) throws IOException;

    int OooO0Oo(@NonNull InputStream inputStream, @NonNull oO0OOo0o oo0ooo0o) throws IOException;
}
