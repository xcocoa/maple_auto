package z2;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public final class we0 {

    public static class OooO0O0 {
        private static final int OooO0O0 = 8192;
        private static final int OooO0OO = 16384;
        private static final int OooO0Oo = 4096;
        private static final int OooO0o0 = Integer.MIN_VALUE;
        private transient ClassLoader OooO00o;

        private OooO0O0() {
        }
    }

    public static class OooO0OO {
        private static we0 OooO00o = new we0();

        private OooO0OO() {
        }
    }

    private we0() {
        try {
            long jOooOO0o = pf0.OooOO0o(new OooO0O0().getClass().getDeclaredField("classLoader"));
            pf0.OooOOO0(getClass(), jOooOO0o, null);
            PopupLog.OooO0oo("绕开android p success,inject offset >>> " + jOooOO0o);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static we0 OooO00o() {
        return OooO0OO.OooO00o;
    }

    public WindowManager OooO0O0(PopupWindow popupWindow) throws Exception {
        if (popupWindow == null) {
            return null;
        }
        Field declaredField = PopupWindow.class.getDeclaredField("mWindowManager");
        declaredField.setAccessible(true);
        return (WindowManager) declaredField.get(popupWindow);
    }

    @SuppressLint({"PrivateApi"})
    public View.OnSystemUiVisibilityChangeListener OooO0OO(View view) throws Exception {
        Field declaredField = View.class.getDeclaredField("mListenerInfo");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(view);
        if (obj == null) {
            return null;
        }
        Field declaredField2 = obj.getClass().getDeclaredField("mOnSystemUiVisibilityChangeListener");
        declaredField2.setAccessible(true);
        return (View.OnSystemUiVisibilityChangeListener) declaredField2.get(obj);
    }

    public void OooO0Oo(PopupWindow popupWindow, WindowManager windowManager) throws Exception {
        if (popupWindow == null || windowManager == null) {
            return;
        }
        Field declaredField = PopupWindow.class.getDeclaredField("mWindowManager");
        declaredField.setAccessible(true);
        declaredField.set(popupWindow, windowManager);
        Field declaredField2 = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
        declaredField2.setAccessible(true);
        declaredField2.set(popupWindow, null);
    }
}
