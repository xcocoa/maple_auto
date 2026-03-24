package z2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public abstract class s1<R> implements y1<R> {
    private final y1<Drawable> OooO00o;

    public final class OooO00o implements x1<R> {
        private final x1<Drawable> OooO00o;

        public OooO00o(x1<Drawable> x1Var) {
            this.OooO00o = x1Var;
        }

        @Override // z2.x1
        public boolean OooO00o(R r, x1.OooO00o oooO00o) {
            return this.OooO00o.OooO00o(new BitmapDrawable(oooO00o.getView().getResources(), s1.this.OooO0O0(r)), oooO00o);
        }
    }

    public s1(y1<Drawable> y1Var) {
        this.OooO00o = y1Var;
    }

    @Override // z2.y1
    public x1<R> OooO00o(DataSource dataSource, boolean z) {
        return new OooO00o(this.OooO00o.OooO00o(dataSource, z));
    }

    public abstract Bitmap OooO0O0(R r);
}
