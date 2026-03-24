package z2;

import android.content.Context;
import java.io.File;
import z2.oO00Oo0;
import z2.oO00o00;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class oO00o00O extends oO00o00 {

    public class OooO00o implements oO00o00.OooO0OO {
        public final /* synthetic */ Context OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO00o(Context context, String str) {
            this.OooO00o = context;
            this.OooO0O0 = str;
        }

        @Override // z2.oO00o00.OooO0OO
        public File OooO00o() {
            File externalCacheDir = this.OooO00o.getExternalCacheDir();
            if (externalCacheDir == null) {
                return null;
            }
            return this.OooO0O0 != null ? new File(externalCacheDir, this.OooO0O0) : externalCacheDir;
        }
    }

    public oO00o00O(Context context) {
        this(context, oO00Oo0.OooO00o.OooO0O0, oO00Oo0.OooO00o.OooO00o);
    }

    public oO00o00O(Context context, int i) {
        this(context, oO00Oo0.OooO00o.OooO0O0, i);
    }

    public oO00o00O(Context context, String str, int i) {
        super(new OooO00o(context, str), i);
    }
}
