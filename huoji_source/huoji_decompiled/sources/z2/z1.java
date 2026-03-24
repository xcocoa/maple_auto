package z2;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.DataSource;
import z2.c2;

/* JADX INFO: loaded from: classes.dex */
public class z1<R> implements y1<R> {
    private final c2.OooO00o OooO00o;
    private x1<R> OooO0O0;

    public static class OooO00o implements c2.OooO00o {
        private final Animation OooO00o;

        public OooO00o(Animation animation) {
            this.OooO00o = animation;
        }

        @Override // z2.c2.OooO00o
        public Animation OooO00o(Context context) {
            return this.OooO00o;
        }
    }

    public static class OooO0O0 implements c2.OooO00o {
        private final int OooO00o;

        public OooO0O0(int i) {
            this.OooO00o = i;
        }

        @Override // z2.c2.OooO00o
        public Animation OooO00o(Context context) {
            return AnimationUtils.loadAnimation(context, this.OooO00o);
        }
    }

    public z1(int i) {
        this(new OooO0O0(i));
    }

    public z1(Animation animation) {
        this(new OooO00o(animation));
    }

    public z1(c2.OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // z2.y1
    public x1<R> OooO00o(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return w1.OooO0O0();
        }
        if (this.OooO0O0 == null) {
            this.OooO0O0 = new c2(this.OooO00o);
        }
        return this.OooO0O0;
    }
}
