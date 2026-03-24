package z2;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public class oO000Oo0 implements oO00OOO {
    private final OooO0O0 OooO00o = new OooO0O0();
    private final oO00O0o<OooO00o, Bitmap> OooO0O0 = new oO00O0o<>();

    @VisibleForTesting
    public static class OooO00o implements oO00OOOo {
        private final OooO0O0 OooO00o;
        private int OooO0O0;
        private int OooO0OO;
        private Bitmap.Config OooO0Oo;

        public OooO00o(OooO0O0 oooO0O0) {
            this.OooO00o = oooO0O0;
        }

        @Override // z2.oO00OOOo
        public void OooO00o() {
            this.OooO00o.OooO0OO(this);
        }

        public void OooO0O0(int i, int i2, Bitmap.Config config) {
            this.OooO0O0 = i;
            this.OooO0OO = i2;
            this.OooO0Oo = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OooO00o)) {
                return false;
            }
            OooO00o oooO00o = (OooO00o) obj;
            return this.OooO0O0 == oooO00o.OooO0O0 && this.OooO0OO == oooO00o.OooO0OO && this.OooO0Oo == oooO00o.OooO0Oo;
        }

        public int hashCode() {
            int i = ((this.OooO0O0 * 31) + this.OooO0OO) * 31;
            Bitmap.Config config = this.OooO0Oo;
            return i + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return oO000Oo0.OooO0o0(this.OooO0O0, this.OooO0OO, this.OooO0Oo);
        }
    }

    @VisibleForTesting
    public static class OooO0O0 extends oO000Oo<OooO00o> {
        @Override // z2.oO000Oo
        /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
        public OooO00o OooO00o() {
            return new OooO00o(this);
        }

        public OooO00o OooO0o0(int i, int i2, Bitmap.Config config) {
            OooO00o oooO00oOooO0O0 = OooO0O0();
            oooO00oOooO0O0.OooO0O0(i, i2, config);
            return oooO00oOooO0O0;
        }
    }

    public static String OooO0o0(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    private static String OooO0oO(Bitmap bitmap) {
        return OooO0o0(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // z2.oO00OOO
    public String OooO00o(int i, int i2, Bitmap.Config config) {
        return OooO0o0(i, i2, config);
    }

    @Override // z2.oO00OOO
    public int OooO0O0(Bitmap bitmap) {
        return t2.OooO0oo(bitmap);
    }

    @Override // z2.oO00OOO
    public String OooO0OO(Bitmap bitmap) {
        return OooO0oO(bitmap);
    }

    @Override // z2.oO00OOO
    public void OooO0Oo(Bitmap bitmap) {
        this.OooO0O0.OooO0Oo(this.OooO00o.OooO0o0(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // z2.oO00OOO
    public Bitmap OooO0o(int i, int i2, Bitmap.Config config) {
        return this.OooO0O0.OooO00o(this.OooO00o.OooO0o0(i, i2, config));
    }

    @Override // z2.oO00OOO
    public Bitmap removeLast() {
        return this.OooO0O0.OooO0o();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.OooO0O0;
    }
}
