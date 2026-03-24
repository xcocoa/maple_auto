package z2;

import android.content.Context;
import java.io.File;
import z2.oO00Oo0;
import z2.oO00o00;

/* JADX INFO: loaded from: classes.dex */
public final class oOo00o0o extends oO00o00 {

    public class OooO00o implements oO00o00.OooO0OO {
        public final /* synthetic */ Context OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO00o(Context context, String str) {
            this.OooO00o = context;
            this.OooO0O0 = str;
        }

        @Override // z2.oO00o00.OooO0OO
        public File OooO00o() {
            File cacheDir = this.OooO00o.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.OooO0O0 != null ? new File(cacheDir, this.OooO0O0) : cacheDir;
        }
    }

    public oOo00o0o(Context context) {
        this(context, oO00Oo0.OooO00o.OooO0O0, 262144000L);
    }

    public oOo00o0o(Context context, long j) {
        this(context, oO00Oo0.OooO00o.OooO0O0, j);
    }

    public oOo00o0o(Context context, String str, long j) {
        super(new OooO00o(context, str), j);
    }
}
