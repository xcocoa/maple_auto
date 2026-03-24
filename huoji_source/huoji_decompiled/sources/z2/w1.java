package z2;

import com.bumptech.glide.load.DataSource;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public class w1<R> implements x1<R> {
    public static final w1<?> OooO00o = new w1<>();
    private static final y1<?> OooO0O0 = new OooO00o();

    public static class OooO00o<R> implements y1<R> {
        @Override // z2.y1
        public x1<R> OooO00o(DataSource dataSource, boolean z) {
            return w1.OooO00o;
        }
    }

    public static <R> x1<R> OooO0O0() {
        return OooO00o;
    }

    public static <R> y1<R> OooO0OO() {
        return (y1<R>) OooO0O0;
    }

    @Override // z2.x1
    public boolean OooO00o(Object obj, x1.OooO00o oooO00o) {
        return false;
    }
}
