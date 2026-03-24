package z2;

import android.view.View;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public class b2<R> implements x1<R> {
    private final OooO00o OooO00o;

    public interface OooO00o {
        void OooO00o(View view);
    }

    public b2(OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // z2.x1
    public boolean OooO00o(R r, x1.OooO00o oooO00o) {
        if (oooO00o.getView() == null) {
            return false;
        }
        this.OooO00o.OooO00o(oooO00o.getView());
        return false;
    }
}
