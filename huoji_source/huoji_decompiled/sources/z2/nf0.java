package z2;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class nf0 {
    public static View OooO00o(View view) {
        if (view == null) {
            return view;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
        return view;
    }

    public static boolean OooO0O0(Drawable drawable) {
        return drawable == null || ((drawable instanceof ColorDrawable) && ((ColorDrawable) drawable).getColor() == 0);
    }

    public static boolean OooO0OO(List<?> list) {
        return list == null || list.size() <= 0;
    }

    public static double OooO0Oo(double d, double d2, double d3) {
        return Math.max(d2, Math.min(d, d3));
    }

    public static int OooO0o(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    public static float OooO0o0(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    public static long OooO0oO(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    public static Activity OooO0oo(Context context, int i) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        int i2 = 0;
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if (i2 > i) {
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
            i2++;
        }
        return pe0.OooO0o0().OooO0o();
    }
}
