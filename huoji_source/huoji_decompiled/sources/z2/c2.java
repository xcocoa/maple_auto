package z2;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public class c2<R> implements x1<R> {
    private final OooO00o OooO00o;

    public interface OooO00o {
        Animation OooO00o(Context context);
    }

    public c2(OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // z2.x1
    public boolean OooO00o(R r, x1.OooO00o oooO00o) {
        View view = oooO00o.getView();
        if (view == null) {
            return false;
        }
        view.clearAnimation();
        view.startAnimation(this.OooO00o.OooO00o(view.getContext()));
        return false;
    }
}
