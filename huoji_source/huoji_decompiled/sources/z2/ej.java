package z2;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ej {
    public static final TimeInterpolator OooO00o = new LinearInterpolator();
    public static final TimeInterpolator OooO0O0 = new FastOutSlowInInterpolator();
    public static final TimeInterpolator OooO0OO = new FastOutLinearInInterpolator();
    public static final TimeInterpolator OooO0Oo = new LinearOutSlowInInterpolator();
    public static final TimeInterpolator OooO0o0 = new DecelerateInterpolator();

    public static float OooO00o(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static int OooO0O0(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
