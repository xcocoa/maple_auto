package z2;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class r5 {

    public class OooO00o implements Runnable {
        public final /* synthetic */ OooO0O0 OoooOoO;
        public final /* synthetic */ View OoooOoo;

        public OooO00o(OooO0O0 oooO0O0, View view) {
            this.OoooOoO = oooO0O0;
            this.OoooOoo = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            OooO0O0 oooO0O0 = this.OoooOoO;
            if (oooO0O0 != null) {
                oooO0O0.OooO00o(this.OoooOoo);
            }
        }
    }

    public interface OooO0O0 {
        void OooO00o(View view);
    }

    private r5() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static int OooO(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static float OooO00o(float f, int i) {
        float f2;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        if (i == 0) {
            return f;
        }
        if (i == 1) {
            f2 = displayMetrics.density;
        } else if (i == 2) {
            f2 = displayMetrics.scaledDensity;
        } else if (i == 3) {
            f *= displayMetrics.xdpi;
            f2 = 0.013888889f;
        } else if (i == 4) {
            f2 = displayMetrics.xdpi;
        } else {
            if (i != 5) {
                return 0.0f;
            }
            f *= displayMetrics.xdpi;
            f2 = 0.03937008f;
        }
        return f * f2;
    }

    public static int OooO0O0(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static void OooO0OO(View view, OooO0O0 oooO0O0) {
        view.post(new OooO00o(oooO0O0, view));
    }

    public static int OooO0Oo(View view) {
        return OooO0o(view)[1];
    }

    public static int[] OooO0o(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i = layoutParams.height;
        view.measure(childMeasureSpec, i > 0 ? View.MeasureSpec.makeMeasureSpec(i, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
        return new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()};
    }

    public static int OooO0o0(View view) {
        return OooO0o(view)[0];
    }

    public static int OooO0oO(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int OooO0oo(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
