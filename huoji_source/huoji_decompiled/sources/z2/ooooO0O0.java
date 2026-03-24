package z2;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class ooooO0O0 implements oo0OOoo<Bitmap> {
    public static final o0O0OO0<Integer> OooO0O0 = o0O0OO0.OooO0oO("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);
    public static final o0O0OO0<Bitmap.CompressFormat> OooO0OO = o0O0OO0.OooO0o("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
    private static final String OooO0Oo = "BitmapEncoder";

    @Nullable
    private final oO0OOo0o OooO00o;

    @Deprecated
    public ooooO0O0() {
        this.OooO00o = null;
    }

    public ooooO0O0(@NonNull oO0OOo0o oo0ooo0o) {
        this.OooO00o = oo0ooo0o;
    }

    private Bitmap.CompressFormat OooO0Oo(Bitmap bitmap, o0O0OOO0 o0o0ooo0) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) o0o0ooo0.OooO0OO(OooO0OO);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    @Override // z2.oo0OOoo
    @NonNull
    public EncodeStrategy OooO0O0(@NonNull o0O0OOO0 o0o0ooo0) {
        return EncodeStrategy.TRANSFORMED;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:46|3|4|(2:44|5)|(5:50|6|(2:8|9)(1:10)|11|12)|42|13|28|29|(1:31)|32|33) */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070 A[Catch: all -> 0x00c0, TRY_LEAVE, TryCatch #2 {all -> 0x00c0, blocks: (B:3:0x0021, B:13:0x004d, B:29:0x006a, B:31:0x0070, B:35:0x00bc, B:36:0x00bf), top: B:46:0x0021 }] */
    @Override // z2.o0oO0O0o
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean OooO00o(@NonNull oO0Ooooo<Bitmap> oo0ooooo, @NonNull File file, @NonNull o0O0OOO0 o0o0ooo0) {
        FileOutputStream fileOutputStream;
        Bitmap bitmap = oo0ooooo.get();
        Bitmap.CompressFormat compressFormatOooO0Oo = OooO0Oo(bitmap, o0o0ooo0);
        w2.OooO0Oo("encode: [%dx%d] %s", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), compressFormatOooO0Oo);
        try {
            long jOooO0O0 = n2.OooO0O0();
            int iIntValue = ((Integer) o0o0ooo0.OooO0OO(OooO0O0)).intValue();
            boolean z = false;
            OutputStream o0ooo0o0 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                o0ooo0o0 = this.OooO00o != null ? new o0oOo0O0(fileOutputStream, this.OooO00o) : fileOutputStream;
                bitmap.compress(compressFormatOooO0Oo, iIntValue, o0ooo0o0);
                o0ooo0o0.close();
                z = true;
            } catch (IOException e2) {
                e = e2;
                o0ooo0o0 = fileOutputStream;
                if (Log.isLoggable(OooO0Oo, 3)) {
                    Log.d(OooO0Oo, "Failed to encode Bitmap", e);
                }
                if (o0ooo0o0 != null) {
                }
                if (Log.isLoggable(OooO0Oo, 2)) {
                }
                return z;
            } catch (Throwable th2) {
                th = th2;
                o0ooo0o0 = fileOutputStream;
                if (o0ooo0o0 != null) {
                    try {
                        o0ooo0o0.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
            o0ooo0o0.close();
            if (Log.isLoggable(OooO0Oo, 2)) {
                Log.v(OooO0Oo, "Compressed with type: " + compressFormatOooO0Oo + " of size " + t2.OooO0oo(bitmap) + " in " + n2.OooO00o(jOooO0O0) + ", options format: " + o0o0ooo0.OooO0OO(OooO0OO) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z;
        } finally {
            w2.OooO0o0();
        }
    }
}
