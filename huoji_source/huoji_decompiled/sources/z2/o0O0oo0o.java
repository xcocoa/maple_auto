package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o0O0oo0o {
    private static final int OooO00o = 5242880;

    private o0O0oo0o() {
    }

    public static int OooO00o(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull oO0OOo0o oo0ooo0o) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, oo0ooo0o);
        }
        inputStream.mark(OooO00o);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                int iOooO0Oo = list.get(i).OooO0Oo(inputStream, oo0ooo0o);
                if (iOooO0Oo != -1) {
                    return iOooO0Oo;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }

    @NonNull
    public static ImageHeaderParser.ImageType OooO0O0(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull oO0OOo0o oo0ooo0o) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, oo0ooo0o);
        }
        inputStream.mark(OooO00o);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType imageTypeOooO0OO = list.get(i).OooO0OO(inputStream);
                if (imageTypeOooO0OO != ImageHeaderParser.ImageType.UNKNOWN) {
                    return imageTypeOooO0OO;
                }
            } finally {
                inputStream.reset();
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @NonNull
    public static ImageHeaderParser.ImageType OooO0OO(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType imageTypeOooO00o = list.get(i).OooO00o(byteBuffer);
            if (imageTypeOooO00o != ImageHeaderParser.ImageType.UNKNOWN) {
                return imageTypeOooO00o;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
