package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class y implements o0O0OOOo<InputStream, r> {
    private static final String OooO0Oo = "StreamGifDecoder";
    private final List<ImageHeaderParser> OooO00o;
    private final o0O0OOOo<ByteBuffer, r> OooO0O0;
    private final oO0OOo0o OooO0OO;

    public y(List<ImageHeaderParser> list, o0O0OOOo<ByteBuffer, r> o0o0oooo, oO0OOo0o oo0ooo0o) {
        this.OooO00o = list;
        this.OooO0O0 = o0o0oooo;
        this.OooO0OO = oo0ooo0o;
    }

    private static byte[] OooO0o0(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e) {
            if (!Log.isLoggable(OooO0Oo, 5)) {
                return null;
            }
            Log.w(OooO0Oo, "Error reading data from stream", e);
            return null;
        }
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0Ooooo<r> OooO0O0(@NonNull InputStream inputStream, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        byte[] bArrOooO0o0 = OooO0o0(inputStream);
        if (bArrOooO0o0 == null) {
            return null;
        }
        return this.OooO0O0.OooO0O0(ByteBuffer.wrap(bArrOooO0o0), i, i2, o0o0ooo0);
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull InputStream inputStream, @NonNull o0O0OOO0 o0o0ooo0) throws IOException {
        return !((Boolean) o0o0ooo0.OooO0OO(x.OooO0O0)).booleanValue() && o0O0oo0o.OooO0O0(this.OooO00o, inputStream, this.OooO0OO) == ImageHeaderParser.ImageType.GIF;
    }
}
