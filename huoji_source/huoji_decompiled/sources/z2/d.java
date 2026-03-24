package z2;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import z2.o0O0OO0;

/* JADX INFO: loaded from: classes.dex */
public class d<T> implements o0O0OOOo<T, Bitmap> {
    private static final String OooO0Oo = "VideoDecoder";

    @VisibleForTesting
    public static final int OooO0o = 2;
    public static final long OooO0o0 = -1;
    private final OooO<T> OooO00o;
    private final oO000o00 OooO0O0;
    private final OooO0o OooO0OO;
    public static final o0O0OO0<Long> OooO0oO = o0O0OO0.OooO0O0("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new OooO00o());
    public static final o0O0OO0<Integer> OooO0oo = o0O0OO0.OooO0O0("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new OooO0O0());
    private static final OooO0o OooO = new OooO0o();

    @VisibleForTesting
    public interface OooO<T> {
        void OooO00o(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    public class OooO00o implements o0O0OO0.OooO0O0<Long> {
        private final ByteBuffer OooO00o = ByteBuffer.allocate(8);

        @Override // z2.o0O0OO0.OooO0O0
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.OooO00o) {
                this.OooO00o.position(0);
                messageDigest.update(this.OooO00o.putLong(l.longValue()).array());
            }
        }
    }

    public class OooO0O0 implements o0O0OO0.OooO0O0<Integer> {
        private final ByteBuffer OooO00o = ByteBuffer.allocate(4);

        @Override // z2.o0O0OO0.OooO0O0
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.OooO00o) {
                this.OooO00o.position(0);
                messageDigest.update(this.OooO00o.putInt(num.intValue()).array());
            }
        }
    }

    public static final class OooO0OO implements OooO<AssetFileDescriptor> {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(OooO00o oooO00o) {
            this();
        }

        @Override // z2.d.OooO
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    @VisibleForTesting
    public static class OooO0o {
        public MediaMetadataRetriever OooO00o() {
            return new MediaMetadataRetriever();
        }
    }

    public static final class OooOO0 implements OooO<ParcelFileDescriptor> {
        @Override // z2.d.OooO
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public void OooO00o(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public d(oO000o00 oo000o00, OooO<T> oooO) {
        this(oo000o00, oooO, OooO);
    }

    @VisibleForTesting
    public d(oO000o00 oo000o00, OooO<T> oooO, OooO0o oooO0o) {
        this.OooO0O0 = oo000o00;
        this.OooO00o = oooO;
        this.OooO0OO = oooO0o;
    }

    public static o0O0OOOo<AssetFileDescriptor, Bitmap> OooO0OO(oO000o00 oo000o00) {
        return new d(oo000o00, new OooO0OO(null));
    }

    @Nullable
    private static Bitmap OooO0Oo(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        Bitmap bitmapOooO0o = (Build.VERSION.SDK_INT < 27 || i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.OooO0o) ? null : OooO0o(mediaMetadataRetriever, j, i, i2, i3, downsampleStrategy);
        return bitmapOooO0o == null ? OooO0o0(mediaMetadataRetriever, j, i) : bitmapOooO0o;
    }

    @TargetApi(27)
    private static Bitmap OooO0o(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        try {
            int i4 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int i5 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int i6 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i6 == 90 || i6 == 270) {
                i5 = i4;
                i4 = i5;
            }
            float fOooO0O0 = downsampleStrategy.OooO0O0(i4, i5, i2, i3);
            return mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(i4 * fOooO0O0), Math.round(fOooO0O0 * i5));
        } catch (Throwable th) {
            if (!Log.isLoggable(OooO0Oo, 3)) {
                return null;
            }
            Log.d(OooO0Oo, "Exception trying to decode frame on oreo+", th);
            return null;
        }
    }

    private static Bitmap OooO0o0(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    public static o0O0OOOo<ParcelFileDescriptor, Bitmap> OooO0oO(oO000o00 oo000o00) {
        return new d(oo000o00, new OooOO0());
    }

    @Override // z2.o0O0OOOo
    public boolean OooO00o(@NonNull T t, @NonNull o0O0OOO0 o0o0ooo0) {
        return true;
    }

    @Override // z2.o0O0OOOo
    public oO0Ooooo<Bitmap> OooO0O0(@NonNull T t, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        long jLongValue = ((Long) o0o0ooo0.OooO0OO(OooO0oO)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + jLongValue);
        }
        Integer num = (Integer) o0o0ooo0.OooO0OO(OooO0oo);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) o0o0ooo0.OooO0OO(DownsampleStrategy.OooO0oo);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.OooO0oO;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        MediaMetadataRetriever mediaMetadataRetrieverOooO00o = this.OooO0OO.OooO00o();
        try {
            try {
                this.OooO00o.OooO00o(mediaMetadataRetrieverOooO00o, t);
                Bitmap bitmapOooO0Oo = OooO0Oo(mediaMetadataRetrieverOooO00o, jLongValue, num.intValue(), i, i2, downsampleStrategy2);
                mediaMetadataRetrieverOooO00o.release();
                return oOO.OooO0Oo(bitmapOooO0Oo, this.OooO0O0);
            } catch (RuntimeException e) {
                throw new IOException(e);
            }
        } catch (Throwable th) {
            mediaMetadataRetrieverOooO00o.release();
            throw th;
        }
    }
}
