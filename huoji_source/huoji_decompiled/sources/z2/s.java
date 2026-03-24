package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class s implements oo0OOoo<r> {
    private static final String OooO00o = "GifEncoder";

    @Override // z2.oo0OOoo
    @NonNull
    public EncodeStrategy OooO0O0(@NonNull o0O0OOO0 o0o0ooo0) {
        return EncodeStrategy.SOURCE;
    }

    @Override // z2.o0oO0O0o
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull oO0Ooooo<r> oo0ooooo, @NonNull File file, @NonNull o0O0OOO0 o0o0ooo0) throws Throwable {
        try {
            h2.OooO0o0(oo0ooooo.get().OooO0OO(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable(OooO00o, 5)) {
                Log.w(OooO00o, "Failed to encode GIF drawable data", e);
            }
            return false;
        }
    }
}
