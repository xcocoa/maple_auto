package z2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class vk {
    private final ArrayList<OooO0O0> OooO00o = new ArrayList<>();
    private OooO0O0 OooO0O0 = null;
    public ValueAnimator OooO0OO = null;
    private final Animator.AnimatorListener OooO0Oo = new OooO00o();

    public class OooO00o extends AnimatorListenerAdapter {
        public OooO00o() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            vk vkVar = vk.this;
            if (vkVar.OooO0OO == animator) {
                vkVar.OooO0OO = null;
            }
        }
    }

    public static class OooO0O0 {
        public final int[] OooO00o;
        public final ValueAnimator OooO0O0;

        public OooO0O0(int[] iArr, ValueAnimator valueAnimator) {
            this.OooO00o = iArr;
            this.OooO0O0 = valueAnimator;
        }
    }

    private void OooO0O0() {
        ValueAnimator valueAnimator = this.OooO0OO;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.OooO0OO = null;
        }
    }

    private void OooO0o0(OooO0O0 oooO0O0) {
        ValueAnimator valueAnimator = oooO0O0.OooO0O0;
        this.OooO0OO = valueAnimator;
        valueAnimator.start();
    }

    public void OooO00o(int[] iArr, ValueAnimator valueAnimator) {
        OooO0O0 oooO0O0 = new OooO0O0(iArr, valueAnimator);
        valueAnimator.addListener(this.OooO0Oo);
        this.OooO00o.add(oooO0O0);
    }

    public void OooO0OO() {
        ValueAnimator valueAnimator = this.OooO0OO;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.OooO0OO = null;
        }
    }

    public void OooO0Oo(int[] iArr) {
        OooO0O0 oooO0O0;
        int size = this.OooO00o.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                oooO0O0 = null;
                break;
            }
            oooO0O0 = this.OooO00o.get(i);
            if (StateSet.stateSetMatches(oooO0O0.OooO00o, iArr)) {
                break;
            } else {
                i++;
            }
        }
        OooO0O0 oooO0O02 = this.OooO0O0;
        if (oooO0O0 == oooO0O02) {
            return;
        }
        if (oooO0O02 != null) {
            OooO0O0();
        }
        this.OooO0O0 = oooO0O0;
        if (oooO0O0 != null) {
            OooO0o0(oooO0O0);
        }
    }
}
