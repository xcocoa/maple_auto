package z2;

import android.R;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import z2.u5;

/* JADX INFO: loaded from: classes.dex */
public final class t5 {
    private static final String OooOO0o = "TAG_TOAST";
    private static final String OooOOO = "toast null";
    private static final int OooOOO0 = -16777217;
    private static final String OooOOOO = "toast nothing";
    private static final t5 OooOOOo = OooOOOo();
    private static WeakReference<OooO> OooOOo0;
    private String OooO00o;
    private int OooO0O0 = -1;
    private int OooO0OO = -1;
    private int OooO0Oo = -1;
    private int OooO0o0 = OooOOO0;
    private int OooO0o = -1;
    private int OooO0oO = OooOOO0;
    private int OooO0oo = -1;
    private boolean OooO = false;
    private Drawable[] OooOO0 = new Drawable[4];
    private boolean OooOO0O = false;

    public interface OooO {
        void OooO00o(int i);

        void OooO0O0(CharSequence charSequence);

        void OooO0OO(View view);

        void cancel();
    }

    public class OooO00o implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (t5.OooOOo0 != null) {
                OooO oooO = (OooO) t5.OooOOo0.get();
                if (oooO != null) {
                    oooO.cancel();
                }
                WeakReference unused = t5.OooOOo0 = null;
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final /* synthetic */ View OoooOoo;
        public final /* synthetic */ CharSequence Ooooo00;
        public final /* synthetic */ int Ooooo0o;

        public OooO0O0(View view, CharSequence charSequence, int i) {
            this.OoooOoo = view;
            this.Ooooo00 = charSequence;
            this.Ooooo0o = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            t5.OooOO0o();
            OooO oooOOooOOo0 = t5.OooOOo0(t5.this);
            WeakReference unused = t5.OooOOo0 = new WeakReference(oooOOooOOo0);
            View view = this.OoooOoo;
            if (view != null) {
                oooOOooOOo0.OooO0OO(view);
            } else {
                oooOOooOOo0.OooO0O0(this.Ooooo00);
            }
            oooOOooOOo0.OooO00o(this.Ooooo0o);
        }
    }

    public static abstract class OooO0OO implements OooO {
        public Toast OooO00o = new Toast(u5.OooO00o());
        public t5 OooO0O0;
        public View OooO0OO;

        public OooO0OO(t5 t5Var) {
            this.OooO0O0 = t5Var;
            if (t5Var.OooO0O0 == -1 && this.OooO0O0.OooO0OO == -1 && this.OooO0O0.OooO0Oo == -1) {
                return;
            }
            this.OooO00o.setGravity(this.OooO0O0.OooO0O0, this.OooO0O0.OooO0OO, this.OooO0O0.OooO0Oo);
        }

        private void OooO0o(TextView textView) {
            Drawable drawableMutate;
            PorterDuffColorFilter porterDuffColorFilter;
            if (this.OooO0O0.OooO0o != -1) {
                this.OooO0OO.setBackgroundResource(this.OooO0O0.OooO0o);
            } else {
                if (this.OooO0O0.OooO0o0 == t5.OooOOO0) {
                    return;
                }
                Drawable background = this.OooO0OO.getBackground();
                Drawable background2 = textView.getBackground();
                if (background == null || background2 == null) {
                    if (background != null) {
                        drawableMutate = background.mutate();
                        porterDuffColorFilter = new PorterDuffColorFilter(this.OooO0O0.OooO0o0, PorterDuff.Mode.SRC_IN);
                    } else if (background2 == null) {
                        this.OooO0OO.setBackgroundColor(this.OooO0O0.OooO0o0);
                        return;
                    } else {
                        drawableMutate = background2.mutate();
                        porterDuffColorFilter = new PorterDuffColorFilter(this.OooO0O0.OooO0o0, PorterDuff.Mode.SRC_IN);
                    }
                    drawableMutate.setColorFilter(porterDuffColorFilter);
                    return;
                }
                background.mutate().setColorFilter(new PorterDuffColorFilter(this.OooO0O0.OooO0o0, PorterDuff.Mode.SRC_IN));
            }
            textView.setBackgroundColor(0);
        }

        private void OooO0o0() {
            if (w5.OooOoo0()) {
                OooO0OO(OooO0Oo(-1));
            }
        }

        @Override // z2.t5.OooO
        public void OooO0O0(CharSequence charSequence) {
            View viewOoooOOo = this.OooO0O0.OoooOOo(charSequence);
            if (viewOoooOOo != null) {
                OooO0OO(viewOoooOOo);
            } else {
                View view = this.OooO00o.getView();
                this.OooO0OO = view;
                if (view == null || view.findViewById(R.id.message) == null) {
                    OooO0OO(w5.OooOooO(com.cyjh.common.R.layout.utils_toast_view));
                }
                TextView textView = (TextView) this.OooO0OO.findViewById(R.id.message);
                textView.setText(charSequence);
                if (this.OooO0O0.OooO0oO != t5.OooOOO0) {
                    textView.setTextColor(this.OooO0O0.OooO0oO);
                }
                if (this.OooO0O0.OooO0oo != -1) {
                    textView.setTextSize(this.OooO0O0.OooO0oo);
                }
                OooO0o(textView);
            }
            OooO0o0();
        }

        @Override // z2.t5.OooO
        public void OooO0OO(View view) {
            this.OooO0OO = view;
            this.OooO00o.setView(view);
        }

        public View OooO0Oo(int i) {
            Bitmap bitmapOooo0oO = w5.Oooo0oO(this.OooO0OO);
            ImageView imageView = new ImageView(u5.OooO00o());
            imageView.setTag(t5.OooOO0o + i);
            imageView.setImageBitmap(bitmapOooo0oO);
            return imageView;
        }

        @Override // z2.t5.OooO
        @CallSuper
        public void cancel() {
            Toast toast = this.OooO00o;
            if (toast != null) {
                toast.cancel();
            }
            this.OooO00o = null;
            this.OooO0OO = null;
        }
    }

    public static final class OooO0o extends OooO0OO {
        private static int OooO0o;
        private u5.OooO00o OooO0Oo;
        private OooO OooO0o0;

        public class OooO00o implements Runnable {
            public OooO00o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0o.this.cancel();
            }
        }

        public class OooO0O0 extends u5.OooO00o {
            public final /* synthetic */ int OooO00o;

            public OooO0O0(int i) {
                this.OooO00o = i;
            }

            @Override // z2.u5.OooO00o
            public void OooO00o(@NonNull Activity activity) {
                if (OooO0o.this.OooO()) {
                    OooO0o.this.OooOO0o(activity, this.OooO00o, false);
                }
            }
        }

        public OooO0o(t5 t5Var) {
            super(t5Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean OooO() {
            return this.OooO0Oo != null;
        }

        private void OooOO0() {
            OooO0O0 oooO0O0 = new OooO0O0(OooO0o);
            this.OooO0Oo = oooO0O0;
            w5.OooO0O0(oooO0O0);
        }

        private OooO OooOO0O(int i) {
            OooOO0O oooOO0O = new OooOO0O(this.OooO0O0);
            oooOO0O.OooO00o = this.OooO00o;
            oooOO0O.OooO00o(i);
            return oooOO0O;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OooOO0o(Activity activity, int i, boolean z) {
            Window window = activity.getWindow();
            if (window != null) {
                ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.OooO00o.getGravity();
                layoutParams.bottomMargin = this.OooO00o.getYOffset() + w5.OooOOo0();
                layoutParams.topMargin = this.OooO00o.getYOffset() + w5.OooOOoo();
                layoutParams.leftMargin = this.OooO00o.getXOffset();
                View viewOooO0Oo = OooO0Oo(i);
                if (z) {
                    viewOooO0Oo.setAlpha(0.0f);
                    viewOooO0Oo.animate().alpha(1.0f).setDuration(200L).start();
                }
                viewGroup.addView(viewOooO0Oo, layoutParams);
            }
        }

        private void OooOOO() {
            w5.Oooo0(this.OooO0Oo);
            this.OooO0Oo = null;
        }

        private OooO OooOOO0(Activity activity, int i) {
            OooOOO0 oooOOO0 = new OooOOO0(this.OooO0O0, activity.getWindowManager(), 99);
            oooOOO0.OooO0OO = OooO0Oo(-1);
            oooOOO0.OooO00o = this.OooO00o;
            oooOOO0.OooO00o(i);
            return oooOOO0;
        }

        @Override // z2.t5.OooO
        public void OooO00o(int i) {
            if (this.OooO00o == null) {
                return;
            }
            if (!w5.OooOoO0()) {
                this.OooO0o0 = OooOO0O(i);
                return;
            }
            boolean z = false;
            for (Activity activity : w5.OooO()) {
                if (w5.OooOo(activity)) {
                    if (z) {
                        OooOO0o(activity, OooO0o, true);
                    } else {
                        this.OooO0o0 = OooOOO0(activity, i);
                        z = true;
                    }
                }
            }
            if (!z) {
                this.OooO0o0 = OooOO0O(i);
                return;
            }
            OooOO0();
            w5.Oooo0o0(new OooO00o(), i == 0 ? com.anythink.expressad.exoplayer.i.a.f : 3500L);
            OooO0o++;
        }

        @Override // z2.t5.OooO0OO, z2.t5.OooO
        public void cancel() {
            Window window;
            if (OooO()) {
                OooOOO();
                for (Activity activity : w5.OooO()) {
                    if (w5.OooOo(activity) && (window = activity.getWindow()) != null) {
                        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                        StringBuilder sb = new StringBuilder();
                        sb.append(t5.OooOO0o);
                        sb.append(OooO0o - 1);
                        View viewFindViewWithTag = viewGroup.findViewWithTag(sb.toString());
                        if (viewFindViewWithTag != null) {
                            try {
                                viewGroup.removeView(viewFindViewWithTag);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            OooO oooO = this.OooO0o0;
            if (oooO != null) {
                oooO.cancel();
                this.OooO0o0 = null;
            }
            super.cancel();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OooOO0 {
        public static final String OooO0Oo = "light";
        public static final String OooO0o0 = "dark";
    }

    public static final class OooOO0O extends OooO0OO {

        public static class OooO00o extends Handler {
            private Handler OooO00o;

            public OooO00o(Handler handler) {
                this.OooO00o = handler;
            }

            @Override // android.os.Handler
            public void dispatchMessage(@NonNull Message message) {
                try {
                    this.OooO00o.dispatchMessage(message);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // android.os.Handler
            public void handleMessage(@NonNull Message message) {
                this.OooO00o.handleMessage(message);
            }
        }

        public OooOO0O(t5 t5Var) {
            super(t5Var);
            if (Build.VERSION.SDK_INT == 25) {
                try {
                    Field declaredField = Toast.class.getDeclaredField("mTN");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(this.OooO00o);
                    Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(obj, new OooO00o((Handler) declaredField2.get(obj)));
                } catch (Exception unused) {
                }
            }
        }

        @Override // z2.t5.OooO
        public void OooO00o(int i) {
            Toast toast = this.OooO00o;
            if (toast == null) {
                return;
            }
            toast.setDuration(i);
            this.OooO00o.show();
        }
    }

    public static final class OooOOO0 extends OooO0OO {
        private WindowManager OooO0Oo;
        private WindowManager.LayoutParams OooO0o0;

        public class OooO00o implements Runnable {
            public OooO00o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOOO0.this.cancel();
            }
        }

        public OooOOO0(t5 t5Var, int i) {
            super(t5Var);
            this.OooO0o0 = new WindowManager.LayoutParams();
            this.OooO0Oo = (WindowManager) u5.OooO00o().getSystemService("window");
            this.OooO0o0.type = i;
        }

        public OooOOO0(t5 t5Var, WindowManager windowManager, int i) {
            super(t5Var);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.OooO0o0 = layoutParams;
            this.OooO0Oo = windowManager;
            layoutParams.type = i;
        }

        @Override // z2.t5.OooO
        public void OooO00o(int i) {
            if (this.OooO00o == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = this.OooO0o0;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.OooO0o0;
            layoutParams2.flags = 152;
            layoutParams2.packageName = u5.OooO00o().getPackageName();
            this.OooO0o0.gravity = this.OooO00o.getGravity();
            WindowManager.LayoutParams layoutParams3 = this.OooO0o0;
            int i2 = layoutParams3.gravity;
            if ((i2 & 7) == 7) {
                layoutParams3.horizontalWeight = 1.0f;
            }
            if ((i2 & 112) == 112) {
                layoutParams3.verticalWeight = 1.0f;
            }
            layoutParams3.x = this.OooO00o.getXOffset();
            this.OooO0o0.y = this.OooO00o.getYOffset();
            this.OooO0o0.horizontalMargin = this.OooO00o.getHorizontalMargin();
            this.OooO0o0.verticalMargin = this.OooO00o.getVerticalMargin();
            try {
                WindowManager windowManager = this.OooO0Oo;
                if (windowManager != null) {
                    windowManager.addView(this.OooO0OO, this.OooO0o0);
                }
            } catch (Exception unused) {
            }
            w5.Oooo0o0(new OooO00o(), i == 0 ? com.anythink.expressad.exoplayer.i.a.f : 3500L);
        }

        @Override // z2.t5.OooO0OO, z2.t5.OooO
        public void cancel() {
            try {
                WindowManager windowManager = this.OooO0Oo;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.OooO0OO);
                    this.OooO0Oo = null;
                }
            } catch (Exception unused) {
            }
            super.cancel();
        }
    }

    public static void OooOO0o() {
        w5.Oooo0OO(new OooO00o());
    }

    private int OooOOO() {
        return this.OooO ? 1 : 0;
    }

    @NonNull
    public static t5 OooOOO0() {
        return OooOOOo;
    }

    private static CharSequence OooOOOO(CharSequence charSequence) {
        return charSequence == null ? OooOOO : charSequence.length() == 0 ? OooOOOO : charSequence;
    }

    @NonNull
    public static t5 OooOOOo() {
        return new t5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OooO OooOOo0(t5 t5Var) {
        int i = Build.VERSION.SDK_INT;
        if (t5Var.OooOO0O || !NotificationManagerCompat.from(u5.OooO00o()).areNotificationsEnabled() || (i >= 23 && w5.OooOoO())) {
            return i < 25 ? new OooOOO0(t5Var, 2005) : w5.OooOoO() ? i >= 26 ? new OooOOO0(t5Var, 2038) : new OooOOO0(t5Var, 2002) : new OooO0o(t5Var);
        }
        return new OooOO0O(t5Var);
    }

    public static void Oooo(@StringRes int i) {
        Oooo0oO(w5.OooOo00(i), 1, OooOOOo);
    }

    private static void Oooo0OO(@NonNull View view, int i, t5 t5Var) {
        Oooo0o0(view, null, i, t5Var);
    }

    private static void Oooo0o0(@Nullable View view, @Nullable CharSequence charSequence, int i, @NonNull t5 t5Var) {
        w5.Oooo0OO(t5Var.new OooO0O0(view, charSequence, i));
    }

    private static void Oooo0oO(@Nullable CharSequence charSequence, int i, t5 t5Var) {
        Oooo0o0(null, OooOOOO(charSequence), i, t5Var);
    }

    public static void OoooO(@StringRes int i) {
        Oooo0oO(w5.OooOo00(i), 0, OooOOOo);
    }

    public static void OoooO0(@Nullable CharSequence charSequence) {
        Oooo0oO(charSequence, 1, OooOOOo);
    }

    public static void OoooO00(@StringRes int i, Object... objArr) {
        Oooo0oO(w5.OooOo0(i, objArr), 1, OooOOOo);
    }

    public static void OoooO0O(@Nullable String str, Object... objArr) {
        Oooo0oO(w5.OooO0oo(str, objArr), 1, OooOOOo);
    }

    public static void OoooOO0(@StringRes int i, Object... objArr) {
        Oooo0oO(w5.OooOo0(i, objArr), 0, OooOOOo);
    }

    public static void OoooOOO(@Nullable String str, Object... objArr) {
        Oooo0oO(w5.OooO0oo(str, objArr), 0, OooOOOo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View OoooOOo(CharSequence charSequence) {
        if (!OooOO0.OooO0o0.equals(this.OooO00o) && !OooOO0.OooO0Oo.equals(this.OooO00o)) {
            Drawable[] drawableArr = this.OooOO0;
            if (drawableArr[0] == null && drawableArr[1] == null && drawableArr[2] == null && drawableArr[3] == null) {
                return null;
            }
        }
        View viewOooOooO = w5.OooOooO(com.cyjh.common.R.layout.utils_toast_view);
        TextView textView = (TextView) viewOooOooO.findViewById(R.id.message);
        if (OooOO0.OooO0o0.equals(this.OooO00o)) {
            ((GradientDrawable) viewOooOooO.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (this.OooOO0[0] != null) {
            View viewFindViewById = viewOooOooO.findViewById(com.cyjh.common.R.id.utvLeftIconView);
            ViewCompat.setBackground(viewFindViewById, this.OooOO0[0]);
            viewFindViewById.setVisibility(0);
        }
        if (this.OooOO0[1] != null) {
            View viewFindViewById2 = viewOooOooO.findViewById(com.cyjh.common.R.id.utvTopIconView);
            ViewCompat.setBackground(viewFindViewById2, this.OooOO0[1]);
            viewFindViewById2.setVisibility(0);
        }
        if (this.OooOO0[2] != null) {
            View viewFindViewById3 = viewOooOooO.findViewById(com.cyjh.common.R.id.utvRightIconView);
            ViewCompat.setBackground(viewFindViewById3, this.OooOO0[2]);
            viewFindViewById3.setVisibility(0);
        }
        if (this.OooOO0[3] != null) {
            View viewFindViewById4 = viewOooOooO.findViewById(com.cyjh.common.R.id.utvBottomIconView);
            ViewCompat.setBackground(viewFindViewById4, this.OooOO0[3]);
            viewFindViewById4.setVisibility(0);
        }
        return viewOooOooO;
    }

    public static void o000oOoO(@Nullable CharSequence charSequence) {
        Oooo0oO(charSequence, 0, OooOOOo);
    }

    @NonNull
    public final t5 OooOOo(@ColorInt int i) {
        this.OooO0o0 = i;
        return this;
    }

    @NonNull
    public final t5 OooOOoo(@DrawableRes int i) {
        this.OooO0o = i;
        return this;
    }

    @NonNull
    public final t5 OooOo(@DrawableRes int i) {
        return OooOoO0(ContextCompat.getDrawable(u5.OooO00o(), i));
    }

    @NonNull
    public final t5 OooOo0(@Nullable Drawable drawable) {
        this.OooOO0[3] = drawable;
        return this;
    }

    @NonNull
    public final t5 OooOo00(int i) {
        return OooOo0(ContextCompat.getDrawable(u5.OooO00o(), i));
    }

    @NonNull
    public final t5 OooOo0O(boolean z) {
        this.OooO = z;
        return this;
    }

    @NonNull
    public final t5 OooOo0o(int i, int i2, int i3) {
        this.OooO0O0 = i;
        this.OooO0OO = i2;
        this.OooO0Oo = i3;
        return this;
    }

    @NonNull
    public final t5 OooOoO(String str) {
        this.OooO00o = str;
        return this;
    }

    @NonNull
    public final t5 OooOoO0(@Nullable Drawable drawable) {
        this.OooOO0[0] = drawable;
        return this;
    }

    @NonNull
    public final t5 OooOoOO() {
        this.OooOO0O = true;
        return this;
    }

    @NonNull
    public final t5 OooOoo(@Nullable Drawable drawable) {
        this.OooOO0[2] = drawable;
        return this;
    }

    @NonNull
    public final t5 OooOoo0(@DrawableRes int i) {
        return OooOoo(ContextCompat.getDrawable(u5.OooO00o(), i));
    }

    @NonNull
    public final t5 OooOooO(@ColorInt int i) {
        this.OooO0oO = i;
        return this;
    }

    @NonNull
    public final t5 OooOooo(int i) {
        this.OooO0oo = i;
        return this;
    }

    public final void Oooo0(@StringRes int i, Object... objArr) {
        Oooo0oO(w5.OooOo0(i, objArr), OooOOO(), this);
    }

    @NonNull
    public final t5 Oooo000(@DrawableRes int i) {
        return Oooo00O(ContextCompat.getDrawable(u5.OooO00o(), i));
    }

    @NonNull
    public final t5 Oooo00O(@Nullable Drawable drawable) {
        this.OooOO0[1] = drawable;
        return this;
    }

    public final void Oooo00o(@StringRes int i) {
        Oooo0oO(w5.OooOo00(i), OooOOO(), this);
    }

    public final void Oooo0O0(@NonNull View view) {
        Oooo0OO(view, OooOOO(), this);
    }

    public final void Oooo0o(@Nullable CharSequence charSequence) {
        Oooo0oO(charSequence, OooOOO(), this);
    }

    public final void Oooo0oo(@Nullable String str, Object... objArr) {
        Oooo0oO(w5.OooO0oo(str, objArr), OooOOO(), this);
    }
}
