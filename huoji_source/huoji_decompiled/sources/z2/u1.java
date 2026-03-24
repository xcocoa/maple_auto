package z2;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;

/* JADX INFO: loaded from: classes.dex */
public class u1 implements y1<Drawable> {
    private final int OooO00o;
    private final boolean OooO0O0;
    private v1 OooO0OO;

    public static class OooO00o {
        private static final int OooO0OO = 300;
        private final int OooO00o;
        private boolean OooO0O0;

        public OooO00o() {
            this(OooO0OO);
        }

        public OooO00o(int i) {
            this.OooO00o = i;
        }

        public u1 OooO00o() {
            return new u1(this.OooO00o, this.OooO0O0);
        }

        public OooO00o OooO0O0(boolean z) {
            this.OooO0O0 = z;
            return this;
        }
    }

    public u1(int i, boolean z) {
        this.OooO00o = i;
        this.OooO0O0 = z;
    }

    private x1<Drawable> OooO0O0() {
        if (this.OooO0OO == null) {
            this.OooO0OO = new v1(this.OooO00o, this.OooO0O0);
        }
        return this.OooO0OO;
    }

    @Override // z2.y1
    public x1<Drawable> OooO00o(DataSource dataSource, boolean z) {
        return dataSource == DataSource.MEMORY_CACHE ? w1.OooO0O0() : OooO0O0();
    }
}
