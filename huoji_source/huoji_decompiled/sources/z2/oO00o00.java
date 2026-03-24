package z2;

import java.io.File;
import z2.oO00Oo0;

/* JADX INFO: loaded from: classes.dex */
public class oO00o00 implements oO00Oo0.OooO00o {
    private final long OooO0OO;
    private final OooO0OO OooO0Oo;

    public class OooO00o implements OooO0OO {
        public final /* synthetic */ String OooO00o;

        public OooO00o(String str) {
            this.OooO00o = str;
        }

        @Override // z2.oO00o00.OooO0OO
        public File OooO00o() {
            return new File(this.OooO00o);
        }
    }

    public class OooO0O0 implements OooO0OO {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO0O0(String str, String str2) {
            this.OooO00o = str;
            this.OooO0O0 = str2;
        }

        @Override // z2.oO00o00.OooO0OO
        public File OooO00o() {
            return new File(this.OooO00o, this.OooO0O0);
        }
    }

    public interface OooO0OO {
        File OooO00o();
    }

    public oO00o00(String str, long j) {
        this(new OooO00o(str), j);
    }

    public oO00o00(String str, String str2, long j) {
        this(new OooO0O0(str, str2), j);
    }

    public oO00o00(OooO0OO oooO0OO, long j) {
        this.OooO0OO = j;
        this.OooO0Oo = oooO0OO;
    }

    @Override // z2.oO00Oo0.OooO00o
    public oO00Oo0 build() {
        File fileOooO00o = this.OooO0Oo.OooO00o();
        if (fileOooO00o == null) {
            return null;
        }
        if (fileOooO00o.mkdirs() || (fileOooO00o.exists() && fileOooO00o.isDirectory())) {
            return oO0OOO00.OooO0Oo(fileOooO00o, this.OooO0OO);
        }
        return null;
    }
}
