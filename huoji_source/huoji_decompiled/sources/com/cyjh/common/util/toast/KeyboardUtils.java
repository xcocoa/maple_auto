package com.cyjh.common.util.toast;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
import z2.u5;
import z2.w5;

/* JADX INFO: loaded from: classes.dex */
public final class KeyboardUtils {
    private static final int OooO00o = -8;
    private static long OooO0O0;
    private static int OooO0OO;

    public class OooO00o implements ViewTreeObserver.OnGlobalLayoutListener {
        public final /* synthetic */ Window OoooOoO;
        public final /* synthetic */ int[] OoooOoo;
        public final /* synthetic */ OooO0OO Ooooo00;

        public OooO00o(Window window, int[] iArr, OooO0OO oooO0OO) {
            this.OoooOoO = window;
            this.OoooOoo = iArr;
            this.Ooooo00 = oooO0OO;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int iOooO = KeyboardUtils.OooO(this.OoooOoO);
            if (this.OoooOoo[0] != iOooO) {
                this.Ooooo00.OooO00o(iOooO);
                this.OoooOoo[0] = iOooO;
            }
        }
    }

    public class OooO0O0 implements ViewTreeObserver.OnGlobalLayoutListener {
        public final /* synthetic */ Window OoooOoO;
        public final /* synthetic */ int[] OoooOoo;
        public final /* synthetic */ View Ooooo00;
        public final /* synthetic */ int Ooooo0o;

        public OooO0O0(Window window, int[] iArr, View view, int i) {
            this.OoooOoO = window;
            this.OoooOoo = iArr;
            this.Ooooo00 = view;
            this.Ooooo0o = i;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int iOooO0oo = KeyboardUtils.OooO0oo(this.OoooOoO);
            if (this.OoooOoo[0] != iOooO0oo) {
                View view = this.Ooooo00;
                view.setPadding(view.getPaddingLeft(), this.Ooooo00.getPaddingTop(), this.Ooooo00.getPaddingRight(), this.Ooooo0o + KeyboardUtils.OooO(this.OoooOoO));
                this.OoooOoo[0] = iOooO0oo;
            }
        }
    }

    public interface OooO0OO {
        void OooO00o(int i);
    }

    private KeyboardUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int OooO(@NonNull Window window) {
        View decorView = window.getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getDecorViewInvisibleHeight: " + (decorView.getBottom() - rect.bottom));
        int iAbs = Math.abs(decorView.getBottom() - rect.bottom);
        if (iAbs > w5.OooOOo0() + w5.OooOOoo()) {
            return iAbs - OooO0OO;
        }
        OooO0OO = iAbs;
        return 0;
    }

    public static void OooO0OO() {
        Log.i("KeyboardUtils", "Please refer to the following code.");
    }

    public static void OooO0Oo(@NonNull Activity activity) {
        OooO0o0(activity.getWindow());
    }

    public static void OooO0o(@NonNull Activity activity) {
        OooO0oO(activity.getWindow());
    }

    public static void OooO0o0(@NonNull Window window) {
        window.setSoftInputMode(window.getAttributes().softInputMode & (-17));
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        View childAt = frameLayout.getChildAt(0);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new OooO0O0(window, new int[]{OooO0oo(window)}, childAt, childAt.getPaddingBottom()));
    }

    public static void OooO0oO(@NonNull Window window) {
        InputMethodManager inputMethodManager = (InputMethodManager) u5.OooO00o().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
        for (int i = 0; i < 4; i++) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int OooO0oo(Window window) {
        View viewFindViewById = window.findViewById(R.id.content);
        if (viewFindViewById == null) {
            return 0;
        }
        Rect rect = new Rect();
        viewFindViewById.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getContentViewInvisibleHeight: " + (viewFindViewById.getBottom() - rect.bottom));
        int iAbs = Math.abs(viewFindViewById.getBottom() - rect.bottom);
        if (iAbs <= w5.OooOOoo() + w5.OooOOo0()) {
            return 0;
        }
        return iAbs;
    }

    public static void OooOO0(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        OooOO0o(activity.getWindow());
    }

    public static void OooOO0O(@NonNull View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) u5.OooO00o().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void OooOO0o(@Nullable Window window) {
        if (window == null) {
            return;
        }
        View currentFocus = window.getCurrentFocus();
        if (currentFocus == null) {
            View decorView = window.getDecorView();
            View viewFindViewWithTag = decorView.findViewWithTag("keyboardTagView");
            if (viewFindViewWithTag == null) {
                viewFindViewWithTag = new EditText(window.getContext());
                viewFindViewWithTag.setTag("keyboardTagView");
                ((ViewGroup) decorView).addView(viewFindViewWithTag, 0, 0);
            }
            currentFocus = viewFindViewWithTag;
            currentFocus.requestFocus();
        }
        OooOO0O(currentFocus);
    }

    public static boolean OooOOO(@NonNull Activity activity) {
        return OooO(activity.getWindow()) > 0;
    }

    public static void OooOOO0(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (Math.abs(jElapsedRealtime - OooO0O0) > 500 && OooOOO(activity)) {
            OooOo0();
        }
        OooO0O0 = jElapsedRealtime;
    }

    public static void OooOOOO(@NonNull Activity activity, @NonNull OooO0OO oooO0OO) {
        OooOOOo(activity.getWindow(), oooO0OO);
    }

    public static void OooOOOo(@NonNull Window window, @NonNull OooO0OO oooO0OO) {
        if ((window.getAttributes().flags & 512) != 0) {
            window.clearFlags(512);
        }
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        OooO00o oooO00o = new OooO00o(window, new int[]{OooO(window)}, oooO0OO);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(oooO00o);
        frameLayout.setTag(-8, oooO00o);
    }

    public static void OooOOo(@Nullable Activity activity) {
        if (activity == null || OooOOO(activity)) {
            return;
        }
        OooOo0();
    }

    public static void OooOOo0() {
        InputMethodManager inputMethodManager = (InputMethodManager) u5.OooO00o().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public static void OooOOoo(@NonNull View view) {
        OooOo00(view, 0);
    }

    public static void OooOo0() {
        InputMethodManager inputMethodManager = (InputMethodManager) u5.OooO00o().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(0, 0);
    }

    public static void OooOo00(@NonNull View view, int i) {
        InputMethodManager inputMethodManager = (InputMethodManager) u5.OooO00o().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        inputMethodManager.showSoftInput(view, i, new ResultReceiver(new Handler()) { // from class: com.cyjh.common.util.toast.KeyboardUtils.1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i2, Bundle bundle) {
                if (i2 == 1 || i2 == 3) {
                    KeyboardUtils.OooOo0();
                }
            }
        });
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public static void OooOo0O(@NonNull Window window) {
        View viewFindViewById = window.findViewById(R.id.content);
        if (viewFindViewById == null) {
            return;
        }
        Object tag = viewFindViewById.getTag(-8);
        if (!(tag instanceof ViewTreeObserver.OnGlobalLayoutListener) || Build.VERSION.SDK_INT < 16) {
            return;
        }
        viewFindViewById.getViewTreeObserver().removeOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener) tag);
    }
}
