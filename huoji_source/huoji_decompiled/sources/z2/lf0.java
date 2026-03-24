package z2;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes2.dex */
public class lf0 {

    public static class OooO00o implements Runnable {
        public final /* synthetic */ View OoooOoO;

        public OooO00o(View view) {
            this.OoooOoO = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            lf0.OooO0o0(this.OoooOoO);
        }
    }

    public static class OooO0O0 implements ViewTreeObserver.OnGlobalLayoutListener {
        public int OoooOoO = -1;
        public Rect OoooOoo = new Rect();
        public boolean Ooooo00 = false;
        public final /* synthetic */ View Ooooo0o;
        public final /* synthetic */ OooO0OO OooooO0;

        public OooO0O0(View view, OooO0OO oooO0OO) {
            this.Ooooo0o = view;
            this.OooooO0 = oooO0OO;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.OoooOoo.setEmpty();
            this.Ooooo0o.getWindowVisibleDisplayFrame(this.OoooOoo);
            int iHeight = this.OoooOoo.height();
            int height = this.Ooooo0o.getHeight();
            int i = height - iHeight;
            if (this.OoooOoO != i) {
                boolean z = ((((float) iHeight) * 1.0f) / ((float) height)) * 1.0f < 0.75f;
                if (z != this.Ooooo00) {
                    this.OooooO0.OooO00o(i, z);
                    this.Ooooo00 = z;
                }
            }
            this.OoooOoO = i;
        }
    }

    public interface OooO0OO {
        void OooO00o(int i, boolean z);
    }

    public static void OooO00o(Activity activity) {
        if (activity == null) {
            return;
        }
        View rootView = activity.getWindow().getDecorView().getRootView();
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) rootView.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(rootView.getWindowToken(), 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void OooO0O0(View view) {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void OooO0OO(View view, OooO0OO oooO0OO) {
        if (view == null || oooO0OO == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new OooO0O0(view, oooO0OO));
    }

    public static void OooO0Oo(Context context) {
        ((InputMethodManager) context.getSystemService("input_method")).toggleSoftInput(0, 2);
    }

    public static void OooO0o(View view, long j) {
        if (view == null) {
            return;
        }
        view.postDelayed(new OooO00o(view), j);
    }

    public static void OooO0o0(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(view, 1);
        }
    }
}
