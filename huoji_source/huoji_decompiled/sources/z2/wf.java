package z2;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public final class wf {
    public static final int OooOo = 4;
    public static final int OooOo0O = 0;
    public static final int OooOo0o = 2;
    private int OooO;
    private Toast OooO00o;
    private Context OooO0O0;
    private final int OooO0o;
    private final int OooO0oO;
    private final int OooO0oo;
    private int OooOO0;
    private Object OooOO0O;
    private Method OooOO0o;
    private WindowManager OooOOO;
    private Method OooOOO0;
    private WindowManager.LayoutParams OooOOOO;
    private View OooOOo0;
    private boolean OooO0OO = false;
    private int OooO0Oo = -1;
    private int OooO0o0 = 2;
    private WindowManager.LayoutParams OooOOOo = null;
    private Handler OooOOo = new Handler();
    private Timer OooOOoo = new Timer("hideTimer");
    private OooO0O0 OooOo00 = new OooO0O0(this, 0);
    private Runnable OooOo0 = new OooO00o();

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            wf.this.OooO0OO();
        }
    }

    public class OooO0O0 extends TimerTask {
        private OooO0O0() {
        }

        public /* synthetic */ OooO0O0(wf wfVar, byte b) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            wf.this.OooO0OO();
        }
    }

    private wf(Context context) {
        this.OooO0O0 = context;
        Toast toast = new Toast(context);
        this.OooO0o = toast.getGravity();
        int xOffset = toast.getXOffset();
        this.OooO0oO = xOffset;
        int yOffset = toast.getYOffset();
        this.OooO0oo = yOffset;
        this.OooO = xOffset;
        this.OooOO0 = yOffset;
    }

    private void OooO(CharSequence charSequence, int i, int i2) {
        byte b = 0;
        Toast.makeText(this.OooO0O0, charSequence, 0).show();
        boolean z = (i < 0 && this.OooO < 0) || (i2 < 0 && this.OooOO0 < 0) || (i == this.OooO && i2 == this.OooOO0);
        boolean z3 = i < 0 || i2 < 0;
        this.OooO = i;
        this.OooOO0 = i2;
        if (z) {
            OooO0oo(charSequence);
        } else {
            OooO0OO();
            Toast toastMakeText = Toast.makeText(this.OooO0O0, charSequence, 0);
            this.OooO00o = toastMakeText;
            if (z3) {
                toastMakeText.setGravity(this.OooO0o, this.OooO0oO, this.OooO0oo);
            } else {
                toastMakeText.setGravity(51, i, i2);
            }
        }
        try {
            if (this.OooO0OO) {
                this.OooOo00.cancel();
                OooO0O0 oooO0O0 = new OooO0O0(this, b);
                this.OooOo00 = oooO0O0;
                this.OooOOoo.schedule(oooO0O0, this.OooO0o0 * 1000);
                return;
            }
            OooOOOo();
            this.OooOO0o.invoke(this.OooOO0O, new Object[0]);
            this.OooO0OO = true;
            if (this.OooO0o0 > 0) {
                this.OooOo00.cancel();
                OooO0O0 oooO0O02 = new OooO0O0(this, b);
                this.OooOo00 = oooO0O02;
                this.OooOOoo.schedule(oooO0O02, this.OooO0o0 * 1000);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            OooO0OO();
            this.OooOOoo.cancel();
            this.OooOOoo = new Timer();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    private static wf OooO00o(Context context, int i, int i2) {
        Toast toastMakeText = Toast.makeText(context, i, i2);
        wf wfVar = new wf(context);
        wfVar.OooO00o = toastMakeText;
        wfVar.OooO0o0 = i2;
        return wfVar;
    }

    private static wf OooO0O0(Context context, CharSequence charSequence, int i) {
        Toast toastMakeText = Toast.makeText(context, charSequence, i);
        wf wfVar = new wf(context);
        wfVar.OooO00o = toastMakeText;
        wfVar.OooO0o0 = i;
        return wfVar;
    }

    private void OooO0Oo(int i) {
        this.OooO0o0 = i;
    }

    private void OooO0o(View view) {
        this.OooO00o.setView(view);
    }

    private void OooO0o0(int i, int i2, int i3) {
        this.OooO00o.setGravity(i, i2, i3);
    }

    private void OooO0oO(WindowManager.LayoutParams layoutParams) {
        try {
            Field declaredField = this.OooO00o.getClass().getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this.OooO00o);
            this.OooOO0O = obj;
            Field declaredField2 = obj.getClass().getDeclaredField("mParams");
            declaredField2.setAccessible(true);
            declaredField2.set(this.OooOO0O, layoutParams);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void OooO0oo(CharSequence charSequence) {
        this.OooO00o.setText(charSequence);
    }

    private void OooOO0() {
        try {
            byte b = 0;
            if (this.OooO0OO) {
                this.OooOo00.cancel();
                OooO0O0 oooO0O0 = new OooO0O0(this, b);
                this.OooOo00 = oooO0O0;
                this.OooOOoo.schedule(oooO0O0, this.OooO0o0 * 1000);
                return;
            }
            OooOOOo();
            this.OooOO0o.invoke(this.OooOO0O, new Object[0]);
            this.OooO0OO = true;
            if (this.OooO0o0 > 0) {
                this.OooOo00.cancel();
                OooO0O0 oooO0O02 = new OooO0O0(this, b);
                this.OooOo00 = oooO0O02;
                this.OooOOoo.schedule(oooO0O02, this.OooO0o0 * 1000);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            OooO0OO();
            this.OooOOoo.cancel();
            this.OooOOoo = new Timer();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    private void OooOO0O(int i) {
        OooO0oo(this.OooO0O0.getText(i));
    }

    private void OooOO0o(WindowManager.LayoutParams layoutParams) {
        this.OooOOOo = layoutParams;
    }

    private void OooOOO(int i) {
        this.OooO0Oo = i;
    }

    private View OooOOO0() {
        return this.OooO00o.getView();
    }

    private int OooOOOO() {
        return this.OooO0Oo;
    }

    private void OooOOOo() {
        try {
            Field declaredField = this.OooO00o.getClass().getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this.OooO00o);
            this.OooOO0O = obj;
            this.OooOO0o = obj.getClass().getMethod("show", new Class[0]);
            this.OooOOO0 = this.OooOO0O.getClass().getMethod("hide", new Class[0]);
            Field declaredField2 = this.OooOO0O.getClass().getDeclaredField("mParams");
            declaredField2.setAccessible(true);
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) declaredField2.get(this.OooOO0O);
            this.OooOOOO = layoutParams;
            WindowManager.LayoutParams layoutParams2 = this.OooOOOo;
            if (layoutParams2 != null) {
                layoutParams.flags = layoutParams2.flags;
                layoutParams.width = layoutParams2.width;
                layoutParams.height = layoutParams2.height;
                layoutParams.gravity = layoutParams2.gravity;
                layoutParams.windowAnimations = layoutParams2.windowAnimations;
            }
            int i = this.OooO0Oo;
            if (i != -1) {
                layoutParams.windowAnimations = i;
            }
            Field declaredField3 = this.OooOO0O.getClass().getDeclaredField("mNextView");
            declaredField3.setAccessible(true);
            declaredField3.set(this.OooOO0O, this.OooO00o.getView());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void OooO0OO() {
        if (this.OooO0OO) {
            try {
                this.OooOOO0.invoke(this.OooOO0O, new Object[0]);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
            }
            this.OooO0OO = false;
        }
    }
}
