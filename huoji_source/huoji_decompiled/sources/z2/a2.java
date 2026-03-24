package z2;

import com.bumptech.glide.load.DataSource;
import z2.b2;

/* JADX INFO: loaded from: classes.dex */
public class a2<R> implements y1<R> {
    private final b2.OooO00o OooO00o;
    private b2<R> OooO0O0;

    public a2(b2.OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // z2.y1
    public x1<R> OooO00o(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return w1.OooO0O0();
        }
        if (this.OooO0O0 == null) {
            this.OooO0O0 = new b2<>(this.OooO00o);
        }
        return this.OooO0O0;
    }
}
