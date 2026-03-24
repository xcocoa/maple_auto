package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class oO0O0O00 implements o0oO0O0o<ByteBuffer> {
    private static final String OooO00o = "ByteBufferEncoder";

    @Override // z2.o0oO0O0o
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull o0O0OOO0 o0o0ooo0) throws Throwable {
        try {
            h2.OooO0o0(byteBuffer, file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable(OooO00o, 3)) {
                Log.d(OooO00o, "Failed to write data", e);
            }
            return false;
        }
    }
}
