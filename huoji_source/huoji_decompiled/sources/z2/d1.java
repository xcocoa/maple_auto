package z2;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d1 {
    private final List<ImageHeaderParser> OooO00o = new ArrayList();

    public synchronized void OooO00o(@NonNull ImageHeaderParser imageHeaderParser) {
        this.OooO00o.add(imageHeaderParser);
    }

    @NonNull
    public synchronized List<ImageHeaderParser> OooO0O0() {
        return this.OooO00o;
    }
}
