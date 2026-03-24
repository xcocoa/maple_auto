package z2;

import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;

/* JADX INFO: loaded from: classes.dex */
public class x5 {
    public static void OooO00o(View view) {
        view.setFocusable(false);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setFocusable(false);
            if (childAt instanceof ViewGroup) {
                OooO00o(childAt);
            }
        }
    }

    public static boolean OooO0O0() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(i >= 24 ? u5.OooO00o().getResources().getConfiguration().getLocales().get(0) : u5.OooO00o().getResources().getConfiguration().locale) == 1;
        }
        return false;
    }

    public static View OooO0OO(@LayoutRes int i) {
        return ((LayoutInflater) u5.OooO00o().getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    public static void OooO0Oo(Runnable runnable) {
        w5.Oooo0OO(runnable);
    }

    public static void OooO0o(View view, boolean z) {
        OooO0oO(view, z, null);
    }

    public static void OooO0o0(Runnable runnable, long j) {
        w5.Oooo0o0(runnable, j);
    }

    public static void OooO0oO(View view, boolean z, View... viewArr) {
        if (view == null) {
            return;
        }
        if (viewArr != null) {
            for (View view2 : viewArr) {
                if (view == view2) {
                    return;
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                OooO0oO(viewGroup.getChildAt(i), z, viewArr);
            }
        }
        view.setEnabled(z);
    }
}
