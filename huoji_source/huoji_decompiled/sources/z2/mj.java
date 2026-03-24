package z2;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class mj {
    private long OooO00o;
    private long OooO0O0;

    @Nullable
    private TimeInterpolator OooO0OO;
    private int OooO0Oo;
    private int OooO0o0;

    public mj(long j, long j2) {
        this.OooO00o = 0L;
        this.OooO0O0 = 300L;
        this.OooO0OO = null;
        this.OooO0Oo = 0;
        this.OooO0o0 = 1;
        this.OooO00o = j;
        this.OooO0O0 = j2;
    }

    public mj(long j, long j2, @NonNull TimeInterpolator timeInterpolator) {
        this.OooO00o = 0L;
        this.OooO0O0 = 300L;
        this.OooO0OO = null;
        this.OooO0Oo = 0;
        this.OooO0o0 = 1;
        this.OooO00o = j;
        this.OooO0O0 = j2;
        this.OooO0OO = timeInterpolator;
    }

    public static mj OooO0O0(ValueAnimator valueAnimator) {
        mj mjVar = new mj(valueAnimator.getStartDelay(), valueAnimator.getDuration(), OooO0o(valueAnimator));
        mjVar.OooO0Oo = valueAnimator.getRepeatCount();
        mjVar.OooO0o0 = valueAnimator.getRepeatMode();
        return mjVar;
    }

    private static TimeInterpolator OooO0o(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? ej.OooO0O0 : interpolator instanceof AccelerateInterpolator ? ej.OooO0OO : interpolator instanceof DecelerateInterpolator ? ej.OooO0Oo : interpolator;
    }

    public void OooO00o(Animator animator) {
        animator.setStartDelay(OooO0OO());
        animator.setDuration(OooO0Oo());
        animator.setInterpolator(OooO0o0());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(OooO0oO());
            valueAnimator.setRepeatMode(OooO0oo());
        }
    }

    public long OooO0OO() {
        return this.OooO00o;
    }

    public long OooO0Oo() {
        return this.OooO0O0;
    }

    public TimeInterpolator OooO0o0() {
        TimeInterpolator timeInterpolator = this.OooO0OO;
        return timeInterpolator != null ? timeInterpolator : ej.OooO0O0;
    }

    public int OooO0oO() {
        return this.OooO0Oo;
    }

    public int OooO0oo() {
        return this.OooO0o0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        mj mjVar = (mj) obj;
        if (OooO0OO() == mjVar.OooO0OO() && OooO0Oo() == mjVar.OooO0Oo() && OooO0oO() == mjVar.OooO0oO() && OooO0oo() == mjVar.OooO0oo()) {
            return OooO0o0().getClass().equals(mjVar.OooO0o0().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (OooO0OO() ^ (OooO0OO() >>> 32))) * 31) + ((int) (OooO0Oo() ^ (OooO0Oo() >>> 32)))) * 31) + OooO0o0().getClass().hashCode()) * 31) + OooO0oO()) * 31) + OooO0oo();
    }

    public String toString() {
        return '\n' + getClass().getName() + MessageFormatter.DELIM_START + Integer.toHexString(System.identityHashCode(this)) + " delay: " + OooO0OO() + " duration: " + OooO0Oo() + " interpolator: " + OooO0o0().getClass() + " repeatCount: " + OooO0oO() + " repeatMode: " + OooO0oo() + "}\n";
    }
}
