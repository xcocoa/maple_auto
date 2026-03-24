package z2;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import androidx.annotation.AnimatorRes;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class lj {
    private static final String OooO0O0 = "MotionSpec";
    private final SimpleArrayMap<String, mj> OooO00o = new SimpleArrayMap<>();

    private static void OooO00o(lj ljVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            ljVar.OooO0oo(objectAnimator.getPropertyName(), mj.OooO0O0(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    @Nullable
    public static lj OooO0O0(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return OooO0OO(context, resourceId);
    }

    @Nullable
    public static lj OooO0OO(Context context, @AnimatorRes int i) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return OooO0Oo(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return OooO0Oo(arrayList);
        } catch (Exception e) {
            Log.w(OooO0O0, "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    private static lj OooO0Oo(List<Animator> list) {
        lj ljVar = new lj();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            OooO00o(ljVar, list.get(i));
        }
        return ljVar;
    }

    public long OooO0o() {
        int size = this.OooO00o.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            mj mjVarValueAt = this.OooO00o.valueAt(i);
            jMax = Math.max(jMax, mjVarValueAt.OooO0OO() + mjVarValueAt.OooO0Oo());
        }
        return jMax;
    }

    public mj OooO0o0(String str) {
        if (OooO0oO(str)) {
            return this.OooO00o.get(str);
        }
        throw new IllegalArgumentException();
    }

    public boolean OooO0oO(String str) {
        return this.OooO00o.get(str) != null;
    }

    public void OooO0oo(String str, @Nullable mj mjVar) {
        this.OooO00o.put(str, mjVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.OooO00o.equals(((lj) obj).OooO00o);
    }

    public int hashCode() {
        return this.OooO00o.hashCode();
    }

    public String toString() {
        return '\n' + getClass().getName() + MessageFormatter.DELIM_START + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.OooO00o + "}\n";
    }
}
