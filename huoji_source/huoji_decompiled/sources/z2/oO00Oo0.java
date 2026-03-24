package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public interface oO00Oo0 {

    public interface OooO00o {
        public static final int OooO00o = 262144000;
        public static final String OooO0O0 = "image_manager_disk_cache";

        @Nullable
        oO00Oo0 build();
    }

    public interface OooO0O0 {
        boolean OooO00o(@NonNull File file);
    }

    void OooO00o(o0O0O0Oo o0o0o0oo, OooO0O0 oooO0O0);

    @Nullable
    File OooO0O0(o0O0O0Oo o0o0o0oo);

    void OooO0OO(o0O0O0Oo o0o0o0oo);

    void clear();
}
