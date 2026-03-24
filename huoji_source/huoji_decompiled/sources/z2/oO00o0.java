package z2;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.File;
import z2.oO00Oo0;
import z2.oO00o00;

/* JADX INFO: loaded from: classes.dex */
public final class oO00o0 extends oO00o00 {

    public class OooO00o implements oO00o00.OooO0OO {
        public final /* synthetic */ Context OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO00o(Context context, String str) {
            this.OooO00o = context;
            this.OooO0O0 = str;
        }

        @Nullable
        private File OooO0O0() {
            File cacheDir = this.OooO00o.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.OooO0O0 != null ? new File(cacheDir, this.OooO0O0) : cacheDir;
        }

        @Override // z2.oO00o00.OooO0OO
        public File OooO00o() {
            File externalCacheDir;
            File fileOooO0O0 = OooO0O0();
            return ((fileOooO0O0 == null || !fileOooO0O0.exists()) && (externalCacheDir = this.OooO00o.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? this.OooO0O0 != null ? new File(externalCacheDir, this.OooO0O0) : externalCacheDir : fileOooO0O0;
        }
    }

    public oO00o0(Context context) {
        this(context, oO00Oo0.OooO00o.OooO0O0, 262144000L);
    }

    public oO00o0(Context context, long j) {
        this(context, oO00Oo0.OooO00o.OooO0O0, j);
    }

    public oO00o0(Context context, String str, long j) {
        super(new OooO00o(context, str), j);
    }
}
