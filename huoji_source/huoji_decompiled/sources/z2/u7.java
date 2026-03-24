package z2;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class u7 {
    public static int[] OooO(Context context) {
        int[] iArr = new int[2];
        if (iArr[0] != 0) {
            return iArr;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        iArr[0] = displayMetrics.widthPixels;
        iArr[1] = displayMetrics.heightPixels;
        return iArr;
    }

    public static int OooO00o(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int OooO0O0(Context context) {
        DisplayMetrics displayMetricsOooO0o = OooO0o(context);
        return OooOO0(context) ? displayMetricsOooO0o.widthPixels : displayMetricsOooO0o.heightPixels;
    }

    public static int OooO0OO(Context context) {
        return OooO0o(context).heightPixels;
    }

    public static int OooO0Oo(Context context) {
        DisplayMetrics displayMetricsOooO0o = OooO0o(context);
        return OooOO0(context) ? displayMetricsOooO0o.heightPixels : displayMetricsOooO0o.widthPixels;
    }

    public static DisplayMetrics OooO0o(Context context) {
        return context.getResources().getDisplayMetrics();
    }

    public static int OooO0o0(Context context) {
        return OooO0o(context).widthPixels;
    }

    public static float OooO0oO(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static String OooO0oo(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
    }

    public static boolean OooOO0(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static int OooOO0O(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
