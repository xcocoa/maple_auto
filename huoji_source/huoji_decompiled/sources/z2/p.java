package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
import z2.o0O00OO;

/* JADX INFO: loaded from: classes.dex */
public class p implements o0O0OOOo<ByteBuffer, r> {
    private static final String OooO0o = "BufferGifDecoder";
    private static final OooO00o OooO0oO = new OooO00o();
    private static final OooO0O0 OooO0oo = new OooO0O0();
    private final Context OooO00o;
    private final List<ImageHeaderParser> OooO0O0;
    private final OooO0O0 OooO0OO;
    private final OooO00o OooO0Oo;
    private final q OooO0o0;

    @VisibleForTesting
    public static class OooO00o {
        public o0O00OO OooO00o(o0O00OO.OooO00o oooO00o, o0oO0Ooo o0oo0ooo, ByteBuffer byteBuffer, int i) {
            return new o0O0O0O(oooO00o, o0oo0ooo, byteBuffer, i);
        }
    }

    @VisibleForTesting
    public static class OooO0O0 {
        private final Queue<o0O00o00> OooO00o = t2.OooO0o(0);

        public synchronized o0O00o00 OooO00o(ByteBuffer byteBuffer) {
            o0O00o00 o0o00o00Poll;
            o0o00o00Poll = this.OooO00o.poll();
            if (o0o00o00Poll == null) {
                o0o00o00Poll = new o0O00o00();
            }
            return o0o00o00Poll.OooOOo0(byteBuffer);
        }

        public synchronized void OooO0O0(o0O00o00 o0o00o00) {
            o0o00o00.OooO00o();
            this.OooO00o.offer(o0o00o00);
        }
    }

    public p(Context context) {
        this(context, o00Oo00.OooO0Oo(context).OooOOO0().OooO0oO(), o00Oo00.OooO0Oo(context).OooO0oO(), o00Oo00.OooO0Oo(context).OooO0o());
    }

    public p(Context context, List<ImageHeaderParser> list, oO000o00 oo000o00, oO0OOo0o oo0ooo0o) {
        this(context, list, oo000o00, oo0ooo0o, OooO0oo, OooO0oO);
    }

    @VisibleForTesting
    public p(Context context, List<ImageHeaderParser> list, oO000o00 oo000o00, oO0OOo0o oo0ooo0o, OooO0O0 oooO0O0, OooO00o oooO00o) {
        this.OooO00o = context.getApplicationContext();
        this.OooO0O0 = list;
        this.OooO0Oo = oooO00o;
        this.OooO0o0 = new q(oo000o00, oo0ooo0o);
        this.OooO0OO = oooO0O0;
    }

    @Nullable
    private t OooO0OO(ByteBuffer byteBuffer, int i, int i2, o0O00o00 o0o00o00, o0O0OOO0 o0o0ooo0) {
        long jOooO0O0 = n2.OooO0O0();
        try {
            o0oO0Ooo o0oo0oooOooO0Oo = o0o00o00.OooO0Oo();
            if (o0oo0oooOooO0Oo.OooO0O0() > 0 && o0oo0oooOooO0Oo.OooO0OO() == 0) {
                Bitmap.Config config = o0o0ooo0.OooO0OO(x.OooO00o) == DecodeFormat.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                o0O00OO o0o00ooOooO00o = this.OooO0Oo.OooO00o(this.OooO0o0, o0oo0oooOooO0Oo, byteBuffer, OooO0o0(o0oo0oooOooO0Oo, i, i2));
                o0o00ooOooO00o.OooO0o(config);
                o0o00ooOooO00o.OooO0O0();
                Bitmap bitmapOooO00o = o0o00ooOooO00o.OooO00o();
                if (bitmapOooO00o == null) {
                    return null;
                }
                t tVar = new t(new r(this.OooO00o, o0o00ooOooO00o, oOO0OO0O.OooO0OO(), i, i2, bitmapOooO00o));
                if (Log.isLoggable(OooO0o, 2)) {
                    Log.v(OooO0o, "Decoded GIF from stream in " + n2.OooO00o(jOooO0O0));
                }
                return tVar;
            }
            if (Log.isLoggable(OooO0o, 2)) {
                Log.v(OooO0o, "Decoded GIF from stream in " + n2.OooO00o(jOooO0O0));
            }
            return null;
        } finally {
            if (Log.isLoggable(OooO0o, 2)) {
                Log.v(OooO0o, "Decoded GIF from stream in " + n2.OooO00o(jOooO0O0));
            }
        }
    }

    private static int OooO0o0(o0oO0Ooo o0oo0ooo, int i, int i2) {
        int iMin = Math.min(o0oo0ooo.OooO00o() / i2, o0oo0ooo.OooO0Oo() / i);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable(OooO0o, 2) && iMax > 1) {
            Log.v(OooO0o, "Downsampling GIF, sampleSize: " + iMax + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + o0oo0ooo.OooO0Oo() + "x" + o0oo0ooo.OooO00o() + "]");
        }
        return iMax;
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public t OooO0O0(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        o0O00o00 o0o00o00OooO00o = this.OooO0OO.OooO00o(byteBuffer);
        try {
            return OooO0OO(byteBuffer, i, i2, o0o00o00OooO00o, o0o0ooo0);
        } finally {
            this.OooO0OO.OooO0O0(o0o00o00OooO00o);
        }
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull ByteBuffer byteBuffer, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        return !((Boolean) o0o0ooo0.OooO0OO(x.OooO0O0)).booleanValue() && o0O0oo0o.OooO0OO(this.OooO0O0, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }
}
