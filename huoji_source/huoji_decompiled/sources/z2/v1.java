package z2;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import z2.x1;

/* JADX INFO: loaded from: classes.dex */
public class v1 implements x1<Drawable> {
    private final int OooO00o;
    private final boolean OooO0O0;

    public v1(int i, boolean z) {
        this.OooO00o = i;
        this.OooO0O0 = z;
    }

    @Override // z2.x1
    /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(Drawable drawable, x1.OooO00o oooO00o) {
        Drawable currentDrawable = oooO00o.getCurrentDrawable();
        if (currentDrawable == null) {
            currentDrawable = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{currentDrawable, drawable});
        transitionDrawable.setCrossFadeEnabled(this.OooO0O0);
        transitionDrawable.startTransition(this.OooO00o);
        oooO00o.setDrawable(transitionDrawable);
        return true;
    }
}
