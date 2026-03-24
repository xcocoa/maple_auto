package razerdp.basepopup;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import razerdp.util.log.PopupLog;
import z2.af0;
import z2.gf0;
import z2.if0;
import z2.lf0;
import z2.me0;
import z2.mf0;
import z2.nf0;
import z2.of0;
import z2.pe0;
import z2.xe0;
import z2.ze0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BasePopupWindow implements me0, PopupWindow.OnDismissListener, xe0, ze0 {
    private static final String o00Oo0 = "BasePopupWindow";
    public static int o00Ooo = Color.parseColor("#8f000000");
    public static boolean o00o0O = false;
    public static final /* synthetic */ boolean o00oO0O = false;
    public static final int o00oO0o = -2;
    private static final int o00ooo = 3;
    public static final int oo000o = -1;
    private BasePopupHelper OoooOoO;
    private WeakReference<Context> OoooOoo;
    private if0 Ooooo00;
    private af0 Ooooo0o;
    private View OooooO0;
    private View OooooOO;
    private volatile boolean OooooOo;
    private EditText Oooooo;
    private int Oooooo0;
    private OooOO0 OoooooO;
    private OooOO0O Ooooooo;
    public Object o00O0O;
    private WeakReference<View> o0OoOo0;
    private OooO ooOO;

    public enum GravityMode {
        RELATIVE_TO_ANCHOR,
        ALIGN_TO_ANCHOR_SIDE
    }

    public class OooO {
        public int OooO00o;
        public int OooO0O0;

        private OooO() {
        }

        public /* synthetic */ OooO(BasePopupWindow basePopupWindow, OooO00o oooO00o) {
            this();
        }
    }

    public class OooO00o implements View.OnTouchListener {
        public RectF OoooOoO = new RectF();
        public final /* synthetic */ List OoooOoo;

        public OooO00o(List list) {
            this.OoooOoo = list;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                return BasePopupWindow.this.OoooooO();
            }
            boolean z = true;
            if (action == 1) {
                this.OoooOoO.setEmpty();
                if (BasePopupWindow.this.OoooooO()) {
                    view.performClick();
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    Iterator it = this.OoooOoo.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        WeakReference weakReference = (WeakReference) it.next();
                        if (weakReference != null && weakReference.get() != null && ((View) weakReference.get()).isShown()) {
                            View view2 = (View) weakReference.get();
                            this.OoooOoO.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                            if (this.OoooOoO.contains(x, y)) {
                                break;
                            }
                        }
                    }
                    if (!z) {
                        BasePopupWindow.this.OooOoOO();
                    }
                }
            }
            return false;
        }
    }

    public class OooO0O0 implements OooOo00 {
        public OooO0O0() {
        }

        @Override // razerdp.basepopup.BasePopupWindow.OooOo00
        public void OooO00o(int i, int i2, boolean z, boolean z3) {
            BasePopupWindow.this.OoooOoO.OooO00o(i, i2, z, z3);
        }
    }

    public class OooO0OO implements Runnable {
        public final /* synthetic */ View OoooOoO;
        public final /* synthetic */ boolean OoooOoo;
        public final /* synthetic */ boolean Ooooo00;

        public OooO0OO(View view, boolean z, boolean z3) {
            this.OoooOoO = view;
            this.OoooOoo = z;
            this.Ooooo00 = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            BasePopupWindow.OooOO0o(BasePopupWindow.this);
            BasePopupWindow.this.o000O0o0(this.OoooOoO, this.OoooOoo, this.Ooooo00);
            PopupLog.OooO0OO(BasePopupWindow.o00Oo0, "retry to show >> " + BasePopupWindow.this.Oooooo0);
        }
    }

    public class OooO0o implements Runnable {
        public OooO0o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BasePopupWindow.this.OooooOo = false;
            BasePopupWindow.this.Ooooo0o.OooO0O0();
        }
    }

    public static class OooOO0 implements ViewTreeObserver.OnGlobalLayoutListener {
        private WeakReference<View> OoooOoO;
        private OooOo00 OoooOoo;
        public int Ooooo00 = -1;
        public Rect Ooooo0o = new Rect();
        public boolean OooooO0 = false;
        private volatile boolean OooooOO = false;
        private boolean OooooOo;

        public OooOO0(View view, boolean z, OooOo00 oooOo00) {
            this.OoooOoO = new WeakReference<>(view);
            this.OooooOo = z;
            this.OoooOoo = oooOo00;
        }

        public void OooO00o() {
            if (OooO0O0() == null || this.OooooOO) {
                return;
            }
            OooO0O0().getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.OooooOO = true;
        }

        public View OooO0O0() {
            WeakReference<View> weakReference = this.OoooOoO;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        public boolean OooO0OO() {
            return this.OooooOO;
        }

        public void OooO0Oo() {
            if (OooO0O0() == null || !this.OooooOO) {
                return;
            }
            OooO0O0().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.OooooOO = false;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            View viewOooO0O0 = OooO0O0();
            if (viewOooO0O0 == null) {
                return;
            }
            this.Ooooo0o.setEmpty();
            viewOooO0O0.getWindowVisibleDisplayFrame(this.Ooooo0o);
            if (!this.OooooOo) {
                this.Ooooo0o.offset(0, -mf0.OooOO0(viewOooO0O0.getContext()));
            }
            int iHeight = this.Ooooo0o.height();
            int height = viewOooO0O0.getHeight();
            int i = height - iHeight;
            boolean z = ((float) i) > ((float) height) * 0.25f;
            int i2 = z ? this.Ooooo0o.bottom : -1;
            if (z == this.OooooO0 && this.Ooooo00 == i) {
                return;
            }
            OooOo00 oooOo00 = this.OoooOoo;
            if (oooOo00 != null) {
                oooOo00.OooO00o(i2, i, z, this.OooooOo);
            }
            this.OooooO0 = z;
            this.Ooooo00 = i;
        }
    }

    public class OooOO0O implements ViewTreeObserver.OnPreDrawListener {
        private boolean OoooOoO;
        private float OoooOoo;
        private float Ooooo00;
        private int Ooooo0o;
        private int OooooO0;
        private int OooooOO;
        private boolean OooooOo;
        public Rect Oooooo;
        private boolean Oooooo0;
        public Rect OoooooO;

        private OooOO0O() {
            this.Oooooo = new Rect();
            this.OoooooO = new Rect();
        }

        public /* synthetic */ OooOO0O(BasePopupWindow basePopupWindow, OooO00o oooO00o) {
            this();
        }

        private boolean OooO0OO(View view, boolean z, boolean z3) {
            if (!z || z3) {
                if (!z && z3 && !BasePopupWindow.this.o00Oo0()) {
                    BasePopupWindow.this.o000O0o0(view, false, true);
                    return true;
                }
            } else if (BasePopupWindow.this.o00Oo0()) {
                BasePopupWindow.this.OooOoo0(false);
                return true;
            }
            return false;
        }

        public void OooO0O0() {
            if (BasePopupWindow.this.o0OoOo0 == null || BasePopupWindow.this.o0OoOo0.get() == null || this.OoooOoO) {
                return;
            }
            View view = (View) BasePopupWindow.this.o0OoOo0.get();
            view.getGlobalVisibleRect(this.Oooooo);
            OooO0Oo();
            view.getViewTreeObserver().addOnPreDrawListener(this);
            this.OoooOoO = true;
        }

        public void OooO0Oo() {
            if (BasePopupWindow.this.o0OoOo0 == null || BasePopupWindow.this.o0OoOo0.get() == null) {
                return;
            }
            View view = (View) BasePopupWindow.this.o0OoOo0.get();
            float x = view.getX();
            float y = view.getY();
            int width = view.getWidth();
            int height = view.getHeight();
            int visibility = view.getVisibility();
            boolean zIsShown = view.isShown();
            boolean z = !(x == this.OoooOoo && y == this.Ooooo00 && width == this.Ooooo0o && height == this.OooooO0 && visibility == this.OooooOO) && this.OoooOoO;
            this.Oooooo0 = z;
            if (!z) {
                view.getGlobalVisibleRect(this.OoooooO);
                if (!this.OoooooO.equals(this.Oooooo)) {
                    this.Oooooo.set(this.OoooooO);
                    if (!OooO0OO(view, this.OooooOo, zIsShown)) {
                        this.Oooooo0 = true;
                    }
                }
            }
            this.OoooOoo = x;
            this.Ooooo00 = y;
            this.Ooooo0o = width;
            this.OooooO0 = height;
            this.OooooOO = visibility;
            this.OooooOo = zIsShown;
        }

        public void OooO0o0() {
            if (BasePopupWindow.this.o0OoOo0 == null || BasePopupWindow.this.o0OoOo0.get() == null || !this.OoooOoO) {
                return;
            }
            ((View) BasePopupWindow.this.o0OoOo0.get()).getViewTreeObserver().removeOnPreDrawListener(this);
            this.OoooOoO = false;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (BasePopupWindow.this.o0OoOo0 != null && BasePopupWindow.this.o0OoOo0.get() != null) {
                OooO0Oo();
                if (this.Oooooo0) {
                    BasePopupWindow basePopupWindow = BasePopupWindow.this;
                    basePopupWindow.o000OO0o((View) basePopupWindow.o0OoOo0.get());
                }
            }
            return true;
        }
    }

    public interface OooOOO {
        void OooO00o(gf0 gf0Var);
    }

    public interface OooOOO0 {
        boolean OooO00o(View view, View view2, boolean z);
    }

    public static abstract class OooOOOO implements PopupWindow.OnDismissListener {
        public boolean OooO00o() {
            return true;
        }

        public void OooO0O0() {
        }
    }

    public interface OooOo00 {
        void OooO00o(int i, int i2, boolean z, boolean z3);
    }

    public BasePopupWindow(Context context) {
        this(context, false);
    }

    public BasePopupWindow(Context context, int i, int i2) {
        this(context, i, i2, false);
    }

    public BasePopupWindow(Context context, int i, int i2, boolean z) {
        this.OooooOo = false;
        this.OoooOoo = new WeakReference<>(context);
        if (!z) {
            Oooooo(i, i2);
            return;
        }
        OooO oooO = new OooO(this, null);
        this.ooOO = oooO;
        oooO.OooO00o = i;
        oooO.OooO0O0 = i2;
    }

    public BasePopupWindow(Context context, boolean z) {
        this(context, -2, -2, z);
    }

    public static /* synthetic */ int OooOO0o(BasePopupWindow basePopupWindow) {
        int i = basePopupWindow.Oooooo0;
        basePopupWindow.Oooooo0 = i + 1;
        return i;
    }

    private void OooOOo() {
        OooOO0O oooOO0O = this.Ooooooo;
        if (oooOO0O == null || !oooOO0O.OoooOoO) {
            OooOO0O oooOO0O2 = new OooOO0O(this, null);
            this.Ooooooo = oooOO0O2;
            oooOO0O2.OooO0O0();
        }
    }

    private void OooOOo0() {
        Activity activityOooo00o;
        OooOO0 oooOO0 = this.OoooooO;
        if ((oooOO0 == null || !oooOO0.OooO0OO()) && (activityOooo00o = Oooo00o()) != null) {
            OooOO0 oooOO02 = new OooOO0(((ViewGroup) activityOooo00o.getWindow().getDecorView()).getChildAt(0), (activityOooo00o.getWindow().getAttributes().flags & 1024) != 0, new OooO0O0());
            this.OoooooO = oooOO02;
            oooOO02.OooO00o();
        }
    }

    private void OooOOoo() {
        OooOOo0();
        OooOOo();
    }

    private void OooOo0() {
        if (OoooOO0() != null) {
            OoooOO0().OooO0O0();
        }
    }

    private boolean OooOo0O() {
        return (this.OoooOoO.Oooo() != null ? this.OoooOoO.Oooo().OooO00o() : true) && !this.OooooOo;
    }

    private boolean OooOo0o(View view) {
        boolean z = true;
        if (this.OoooOoO.Oooo0oo() == null) {
            return true;
        }
        OooOOO0 oooOOO0Oooo0oo = this.OoooOoO.Oooo0oo();
        View view2 = this.OooooO0;
        if (this.OoooOoO.OoooOOo() == null && this.OoooOoO.OoooOoO() == null) {
            z = false;
        }
        return oooOOO0Oooo0oo.OooO00o(view2, view, z);
    }

    private View OooOooO(Activity activity) {
        View viewO0ooOoO = o0ooOoO(activity);
        if (viewO0ooOoO == null) {
            viewO0ooOoO = pe0.OooO0o0().OooO00o.OooO0OO(this, activity);
        }
        return viewO0ooOoO == null ? activity.findViewById(R.id.content) : viewO0ooOoO;
    }

    private void Oooooo(int i, int i2) {
        OooOo00(Oooo00o());
        BasePopupHelper basePopupHelper = new BasePopupHelper(this);
        this.OoooOoO = basePopupHelper;
        o0Oo0oo(basePopupHelper);
        View viewOooO00o = OooO00o();
        this.OooooO0 = viewOooO00o;
        this.OoooOoO.o00000O0(viewOooO00o);
        if (this.OoooOoO.OoooO00() == null) {
            Log.e(o00Oo0, "为了更准确的适配您的布局，BasePopupWindow建议您使用createPopupById()进行inflate");
        }
        View viewOo000o = oo000o();
        this.OooooOO = viewOo000o;
        if (viewOo000o == null) {
            this.OooooOO = this.OooooO0;
        }
        o000O00O(i);
        o0000OOo(i2);
        if (this.OoooOoO.OoooO00() != null) {
            i = this.OoooOoO.OoooO00().width;
            i2 = this.OoooOoO.OoooO00().height;
        }
        af0 af0Var = new af0(this.OooooO0, i, i2, this.OoooOoO);
        this.Ooooo0o = af0Var;
        af0Var.setOnDismissListener(this);
        this.Ooooo0o.OooO00o(this.OoooOoO);
        o0000oOo(true);
        o0000ooO(0);
        this.OoooOoO.o0000OO(i);
        this.OoooOoO.o0000OO0(i2);
        Oooooo0(i, i2);
        o0OOO0o(i, i2);
        this.OoooOoO.o0000Oo0(o0ooOO0()).o0000Oo(o0ooOOo()).o00000O(o00oO0o()).o00000OO(o00oO0O());
    }

    private void Oooooo0(int i, int i2) {
        View view;
        if (i == -1 && i2 == -1 && (view = this.OooooO0) != null && !(view instanceof AdapterView) && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            ArrayList arrayList = new ArrayList(childCount);
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = viewGroup.getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    arrayList.add(new WeakReference(childAt));
                }
            }
            this.OooooO0.setOnTouchListener(new OooO00o(arrayList));
        }
    }

    private void o000000(View view, boolean z, boolean z3) {
        if (this.Oooooo0 > 3) {
            return;
        }
        boolean z4 = false;
        PopupLog.OooO0OO("catch an exception on showing popupwindow ...now retrying to show ... retry count  >>  " + this.Oooooo0, new Object[0]);
        if (this.Ooooo0o.OooO0OO()) {
            this.Ooooo0o.OooO0O0();
        }
        Activity activityOooo00o = Oooo00o();
        if (activityOooo00o == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 17) {
            z4 = !activityOooo00o.isFinishing();
        } else if (!activityOooo00o.isFinishing() && !activityOooo00o.isDestroyed()) {
            z4 = true;
        }
        if (z4) {
            activityOooo00o.getWindow().getDecorView().postDelayed(new OooO0OO(view, z, z3), 350L);
        }
    }

    public static void o0000O(boolean z) {
        o00o0O = z;
        PopupLog.OooOOO0(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o000O0o0(View view, boolean z, boolean z3) {
        EditText editText;
        OooOOoo();
        this.OoooOoO.Oooooo0();
        this.OoooOoO.o0Oo0oo(view, z);
        if0 if0Var = this.Ooooo00;
        if (if0Var == null || !if0Var.OooO00o(this, this.Ooooo0o, view, this.OoooOoO.OoooO0O(), this.OoooOoO.Oooo0o(), this.OoooOoO.Oooo0oO())) {
            try {
                if (o00Oo0()) {
                    return;
                }
                if (view == null) {
                    Oooo00o();
                    Activity activityOooo00o = Oooo00o();
                    if (activityOooo00o == null) {
                        Log.e(o00Oo0, "can not get token from context,make sure that context is instance of activity");
                    } else {
                        this.Ooooo0o.OooOOo(OooOooO(activityOooo00o), 0, 0, 0);
                    }
                } else if (this.OoooOoO.o0ooOOo()) {
                    this.Ooooo0o.OooOOo0(view, 0, 0, OoooOOO());
                } else {
                    this.Ooooo0o.OooOOo(view, OoooOOO(), 0, 0);
                }
                BasePopupHelper basePopupHelper = this.OoooOoO;
                basePopupHelper.OooO0O0((basePopupHelper.OoooOOo() == null && this.OoooOoO.OoooOoO() == null) ? false : true);
                if (this.OooooOO != null && !z3) {
                    if (this.OoooOoO.OoooOOo() != null) {
                        this.OoooOoO.OoooOOo().cancel();
                        this.OooooOO.startAnimation(this.OoooOoO.OoooOOo());
                    } else if (this.OoooOoO.OoooOoO() != null) {
                        this.OoooOoO.OoooOoO().start();
                    }
                }
                if (this.OoooOoO.ooOO() && (editText = this.Oooooo) != null) {
                    editText.requestFocus();
                    lf0.OooO0o(this.Oooooo, 350L);
                }
                this.Oooooo0 = 0;
            } catch (Exception e) {
                o000000(view, z, z3);
                PopupLog.OooO0OO(o00Oo0, e);
                e.printStackTrace();
            }
        }
    }

    private void o000O0oO(View view, boolean z) {
        if (!o00Oo0() || Oooo00O() == null) {
            return;
        }
        this.OoooOoO.o0Oo0oo(view, z);
        this.Ooooo0o.update();
    }

    private void o0O0O00() {
        OooOO0O oooOO0O = this.Ooooooo;
        if (oooOO0O != null) {
            oooOO0O.OooO0o0();
        }
    }

    private void o0OO00O() {
        OooOO0 oooOO0 = this.OoooooO;
        if (oooOO0 != null) {
            oooOO0.OooO0Oo();
        }
        this.OoooOoO.OooooOo();
    }

    private void o0OOO0o(int i, int i2) {
        View view = this.OooooO0;
        if (view != null) {
            if0 if0Var = this.Ooooo00;
            if (!(if0Var != null && if0Var.OooO0Oo(this, view, i, i2))) {
                this.OooooO0.measure(View.MeasureSpec.makeMeasureSpec(i, i == -2 ? 0 : 1073741824), View.MeasureSpec.makeMeasureSpec(i2, i2 != -2 ? 1073741824 : 0));
            }
            this.OoooOoO.o0000OOo(this.OooooO0.getMeasuredWidth()).o0000OOO(this.OooooO0.getMeasuredHeight());
            this.OooooO0.setFocusableInTouchMode(true);
        }
    }

    private void o0Oo0oo(BasePopupHelper basePopupHelper) {
        basePopupHelper.o0O0O00(this);
    }

    @Override // z2.xe0
    public boolean OooO() {
        if (!this.OoooOoO.o00oO0o()) {
            return !this.OoooOoO.o00oO0O();
        }
        OooOoOO();
        return true;
    }

    @Override // z2.xe0
    public boolean OooO0OO() {
        return OooOo0O();
    }

    @Override // z2.ze0
    public void OooO0o() {
    }

    @Override // z2.ze0
    public void OooO0o0() {
    }

    @Override // z2.xe0
    public boolean OooO0oO() {
        long duration;
        if (this.OoooOoO.OooOoo() == null || this.OooooOO == null) {
            if (this.OoooOoO.OooOooo() != null && !this.OooooOo) {
                duration = this.OoooOoO.OooOooo().getDuration();
                this.OoooOoO.OooOooo().start();
                OooOo0();
                this.OooooOo = true;
            }
            duration = -1;
        } else {
            if (!this.OooooOo) {
                duration = this.OoooOoO.OooOoo().getDuration();
                this.OoooOoO.OooOoo().cancel();
                this.OooooOO.startAnimation(this.OoooOoO.OooOoo());
                OooOo0();
                this.OooooOo = true;
            }
            duration = -1;
        }
        this.OooooO0.postDelayed(new OooO0o(), Math.max(this.OoooOoO.OooOooO(), duration));
        this.OoooOoO.OooOO0o(duration > -1);
        return duration <= 0;
    }

    @Override // z2.xe0
    public boolean OooO0oo(KeyEvent keyEvent) {
        return false;
    }

    @Override // z2.xe0
    public boolean OooOO0(MotionEvent motionEvent) {
        return false;
    }

    @Override // z2.xe0
    public boolean OooOO0O() {
        if (!this.OoooOoO.o00O0O()) {
            return false;
        }
        OooOoOO();
        return true;
    }

    public View OooOo(int i) {
        return this.OoooOoO.Oooooo(Oooo00o(), i);
    }

    public BasePopupWindow OooOo00(Object obj) {
        return pe0.OooO0o0().OooO00o.OooO0O0(this, obj);
    }

    public float OooOoO(float f) {
        return Oooo00o() == null ? f : (f * Oooo00o().getResources().getDisplayMetrics().density) + 0.5f;
    }

    public void OooOoO0() {
        OooO oooO = this.ooOO;
        if (oooO == null) {
            return;
        }
        Oooooo(oooO.OooO00o, oooO.OooO0O0);
        this.ooOO = null;
    }

    public void OooOoOO() {
        OooOoo0(true);
    }

    public void OooOoo() {
        if (OooOo0O()) {
            if (this.OoooOoO.OooOoo() != null && this.OooooOO != null) {
                this.OoooOoO.OooOoo().cancel();
            }
            if (this.OoooOoO.OooOooo() != null) {
                this.OoooOoO.OooOooo().cancel();
            }
            if (this.Oooooo != null && this.OoooOoO.ooOO()) {
                lf0.OooO0O0(this.Oooooo);
            }
            this.Ooooo0o.OooO0O0();
            this.OoooOoO.OooOO0o(false);
            o000OOo();
        }
    }

    public void OooOoo0(boolean z) {
        if (z) {
            try {
                try {
                    if (this.Oooooo != null && this.OoooOoO.ooOO()) {
                        lf0.OooO0O0(this.Oooooo);
                    }
                } catch (Exception e) {
                    PopupLog.OooO0OO(o00Oo0, e);
                    e.printStackTrace();
                }
            } finally {
                this.Ooooo0o.dismiss();
            }
        } else {
            OooOoo();
        }
        o000OOo();
    }

    public <T extends View> T OooOooo(int i) {
        View view = this.OooooO0;
        if (view == null || i == 0) {
            return null;
        }
        return (T) view.findViewById(i);
    }

    public View Oooo() {
        return this.OooooOO;
    }

    public Animation Oooo0() {
        return Oooo0O0(true);
    }

    public void Oooo000() {
        if (this.OoooOoO.OooOoo() != null && this.OooooOO != null) {
            this.OoooOoO.OooOoo().cancel();
        }
        if (this.OoooOoO.OooOooo() != null) {
            this.OoooOoO.OooOooo().cancel();
        }
        if (this.Oooooo != null && this.OoooOoO.ooOO()) {
            lf0.OooO0O0(this.Oooooo);
        }
        this.Ooooo0o.OooO0O0();
        this.OoooOoO.OooOO0o(false);
        o000OOo();
    }

    public View Oooo00O() {
        return this.OooooO0;
    }

    public Activity Oooo00o() {
        WeakReference<Context> weakReference = this.OoooOoo;
        if (weakReference == null) {
            return null;
        }
        return nf0.OooO0oo(weakReference.get(), 15);
    }

    public Animation Oooo0O0(boolean z) {
        return of0.OooO00o(z);
    }

    public Animation Oooo0OO() {
        return Oooo0o0(true);
    }

    public AnimatorSet Oooo0o() {
        return of0.OooO0OO(this.OooooOO);
    }

    public Animation Oooo0o0(boolean z) {
        return of0.OooO0O0(z);
    }

    public Animation Oooo0oO() {
        return this.OoooOoO.OooOoo();
    }

    public Animator Oooo0oo() {
        return this.OoooOoO.OooOooo();
    }

    public OooOOO0 OoooO() {
        return this.OoooOoO.Oooo0oo();
    }

    public int OoooO0() {
        return this.OoooOoO.Oooo0o();
    }

    public int OoooO00() {
        View view = this.OooooO0;
        if (view != null && view.getHeight() > 0) {
            return this.OooooO0.getHeight();
        }
        return this.OoooOoO.o000oOoO();
    }

    public int OoooO0O() {
        return this.OoooOoO.Oooo0oO();
    }

    public OooOOOO OoooOO0() {
        return this.OoooOoO.Oooo();
    }

    public int OoooOOO() {
        return this.OoooOoO.OoooO0O();
    }

    public PopupWindow OoooOOo() {
        return this.Ooooo0o;
    }

    public Animation OoooOo0(float f, float f2, float f3, float f4, int i, float f5, int i2, float f6) {
        return of0.OooO0Oo(f, f2, f3, f4, i, f5, i2, f6);
    }

    public int OoooOoO() {
        return mf0.OooO0oO(Oooo00o());
    }

    public int OoooOoo() {
        return mf0.OooO(Oooo00o());
    }

    public Animation Ooooo00() {
        return this.OoooOoO.OoooOOo();
    }

    public Animator Ooooo0o() {
        return this.OoooOoO.OoooOoO();
    }

    public Animation OooooO0(float f, float f2, int i) {
        return of0.OooO0o0(f, f2, i);
    }

    public Animation OooooOO(int i, int i2, int i3) {
        return of0.OooO0o(i, i2, i3);
    }

    public int OooooOo() {
        View view = this.OooooO0;
        if (view != null && view.getWidth() > 0) {
            return this.OooooO0.getWidth();
        }
        return this.OoooOoO.OoooOOO();
    }

    public boolean OoooooO() {
        return this.OoooOoO.o00oO0o();
    }

    @Deprecated
    public boolean Ooooooo() {
        return !this.OoooOoO.o00oO0O();
    }

    public BasePopupWindow o000(boolean z) {
        this.OoooOoO.o000OO(this.Ooooo0o, z);
        return this;
    }

    public BasePopupWindow o0000(int i) {
        this.OoooOoO.o0000O0O(new ColorDrawable(i));
        return this;
    }

    public BasePopupWindow o00000(boolean z) {
        this.OoooOoO.o000OOo(z);
        return this;
    }

    public BasePopupWindow o000000O(boolean z) {
        o000000o(z, 16);
        return this;
    }

    public BasePopupWindow o000000o(boolean z, int i) {
        af0 af0Var;
        if (z) {
            af0Var = this.Ooooo0o;
        } else {
            af0Var = this.Ooooo0o;
            i = 48;
        }
        af0Var.setSoftInputMode(i);
        o000Oo0(i);
        return this;
    }

    @Deprecated
    public BasePopupWindow o00000O(boolean z) {
        o0000oOo(z);
        return this;
    }

    public BasePopupWindow o00000O0(int i) {
        this.OoooOoO.o000000(i);
        return this;
    }

    @Deprecated
    public BasePopupWindow o00000OO(boolean z) {
        o0000oo0(!z);
        return this;
    }

    public BasePopupWindow o00000Oo(boolean z) {
        this.OoooOoO.OooOOO(z);
        return this;
    }

    public BasePopupWindow o00000o0(EditText editText, boolean z) {
        this.OoooOoO.OooOOOO(this.Ooooo0o, z);
        this.Oooooo = editText;
        return this;
    }

    public BasePopupWindow o00000oO(int i) {
        return o00000oo(i == 0 ? null : Build.VERSION.SDK_INT >= 21 ? Oooo00o().getDrawable(i) : Oooo00o().getResources().getDrawable(i));
    }

    public BasePopupWindow o00000oo(Drawable drawable) {
        this.OoooOoO.o0000O0O(drawable);
        return this;
    }

    public BasePopupWindow o0000O0(gf0 gf0Var) {
        this.OoooOoO.OooOOO0(gf0Var);
        return this;
    }

    public BasePopupWindow o0000O00(View view) {
        this.OoooOoO.o000000O(view);
        return this;
    }

    public BasePopupWindow o0000O0O(boolean z) {
        this.OoooOoO.o000000o(z);
        return this;
    }

    public BasePopupWindow o0000OO(Animator animator) {
        this.OoooOoO.o00000OO(animator);
        return this;
    }

    public BasePopupWindow o0000OO0(Animation animation) {
        this.OoooOoO.o00000O(animation);
        return this;
    }

    public <P extends BasePopupWindow> BasePopupWindow o0000OOO(if0<P> if0Var) {
        this.Ooooo00 = if0Var;
        this.OoooOoO.o00000Oo(if0Var);
        return this;
    }

    public BasePopupWindow o0000OOo(int i) {
        this.OoooOoO.o0000OO0(i);
        return this;
    }

    public BasePopupWindow o0000Oo(int i) {
        this.OoooOoO.o0000Ooo(i);
        return this;
    }

    public BasePopupWindow o0000Oo0(boolean z) {
        this.OoooOoO.o0ooOoO(z);
        return this;
    }

    public BasePopupWindow o0000OoO(int i) {
        this.OoooOoO.o00000oO(i);
        return this;
    }

    public BasePopupWindow o0000Ooo(boolean z) {
        this.OoooOoO.OooOOOo(this.Ooooo0o, z);
        return this;
    }

    public BasePopupWindow o0000o(int i) {
        this.OoooOoO.o0000oo(i);
        return this;
    }

    public BasePopupWindow o0000o0(int i) {
        this.OoooOoO.o00000oo(i);
        return this;
    }

    public BasePopupWindow o0000o0O(int i) {
        this.OoooOoO.o0000(i);
        return this;
    }

    public BasePopupWindow o0000o0o(int i) {
        this.OoooOoO.o0000O00(i);
        return this;
    }

    public BasePopupWindow o0000oO(boolean z, OooOOO oooOOO) {
        Activity activityOooo00o = Oooo00o();
        if (activityOooo00o == null) {
            PopupLog.OooO0OO(o00Oo0, "无法配置默认模糊脚本，因为context不是activity");
            return this;
        }
        gf0 gf0Var = null;
        if (z) {
            gf0Var = new gf0();
            gf0Var.OooOOOO(true).OooOO0(-1L).OooOO0O(-1L);
            if (oooOOO != null) {
                oooOOO.OooO00o(gf0Var);
            }
            View viewOooOooO = OooOooO(activityOooo00o);
            if ((viewOooOooO instanceof ViewGroup) && viewOooOooO.getId() == 16908290) {
                gf0Var.OooOOO(((ViewGroup) activityOooo00o.getWindow().getDecorView()).getChildAt(0));
                gf0Var.OooOOOO(true);
            } else {
                gf0Var.OooOOO(viewOooOooO);
            }
        }
        return o0000O0(gf0Var);
    }

    public BasePopupWindow o0000oO0(OooOOO0 oooOOO0) {
        this.OoooOoO.o0000oO(oooOOO0);
        return this;
    }

    public BasePopupWindow o0000oOO(OooOOOO oooOOOO) {
        this.OoooOoO.o0000O0(oooOOOO);
        return this;
    }

    public BasePopupWindow o0000oOo(boolean z) {
        this.OoooOoO.OooOOo(this.Ooooo0o, z);
        return this;
    }

    public BasePopupWindow o0000oo(boolean z) {
        return o0000oO(z, null);
    }

    public BasePopupWindow o0000oo0(boolean z) {
        this.OoooOoO.o0OOO0o(this.Ooooo0o, z);
        return this;
    }

    public BasePopupWindow o0000ooO(int i) {
        this.Ooooo0o.setAnimationStyle(i);
        return this;
    }

    public void o000O(float f, float f2) {
        if (!o00Oo0() || Oooo00O() == null) {
            return;
        }
        o000O00O((int) f).o0000OOo((int) f2).o000O0oo();
    }

    public void o000O0() {
        if (OooOo0o(null)) {
            this.OoooOoO.o0000OoO(false);
            o000O0o0(null, false, false);
        }
    }

    public void o000O00(View.OnClickListener onClickListener, View... viewArr) {
        for (View view : viewArr) {
            if (view != null && onClickListener != null) {
                view.setOnClickListener(onClickListener);
            }
        }
    }

    public BasePopupWindow o000O000(int i) {
        return o000OoO(GravityMode.RELATIVE_TO_ANCHOR, i);
    }

    public BasePopupWindow o000O00O(int i) {
        this.OoooOoO.o0000OO(i);
        return this;
    }

    public BasePopupWindow o000O0O(Animator animator) {
        this.OoooOoO.o0000Oo(animator);
        return this;
    }

    public void o000O0O0(View view) {
        if (OooOo0o(view)) {
            if (view != null) {
                this.OoooOoO.o0000OoO(true);
            }
            o000O0o0(view, false, false);
        }
    }

    public void o000O0Oo(int i) {
        Activity activityOooo00o = Oooo00o();
        if (activityOooo00o instanceof Activity) {
            o000O0O0(activityOooo00o.findViewById(i));
        } else {
            Log.e(o00Oo0, "can not get token from context,make sure that context is instance of activity");
        }
    }

    public BasePopupWindow o000O0o(boolean z) {
        this.OoooOoO.OooOOoo(z);
        return this;
    }

    public void o000O0oo() {
        o000O0oO(null, false);
    }

    public BasePopupWindow o000OO(boolean z) {
        this.OoooOoO.o00000(z);
        return this;
    }

    public void o000OO00(int i, int i2) {
        if (!o00Oo0() || Oooo00O() == null) {
            return;
        }
        this.OoooOoO.o0000o0(i, i2);
        this.OoooOoO.o0000OoO(true);
        o000O0oO(null, true);
    }

    public void o000OO0O(int i, int i2) {
        if (OooOo0o(null)) {
            this.OoooOoO.o0000o0(i, i2);
            this.OoooOoO.o0000OoO(true);
            o000O0o0(null, true, false);
        }
    }

    public void o000OO0o(View view) {
        if (!o00Oo0() || Oooo00O() == null) {
            return;
        }
        o000O0oO(view, false);
    }

    public void o000OOo() {
        o0OO00O();
        o0O0O00();
    }

    public BasePopupWindow o000Oo0(int i) {
        this.OoooOoO.o0000o0o(i);
        return this;
    }

    public BasePopupWindow o000OoO(GravityMode gravityMode, int i) {
        this.OoooOoO.o0000O(gravityMode, i);
        return this;
    }

    public BasePopupWindow o000Ooo(Animation animation) {
        this.OoooOoO.o0000Oo0(animation);
        return this;
    }

    public Drawable o000oOoO() {
        return this.OoooOoO.OoooO0();
    }

    public boolean o00O0O() {
        return this.OoooOoO.o0ooOO0();
    }

    public boolean o00Oo0() {
        return this.Ooooo0o.isShowing();
    }

    public BasePopupWindow o00Ooo(View view) {
        if (view == null) {
            OooOO0O oooOO0O = this.Ooooooo;
            if (oooOO0O != null) {
                oooOO0O.OooO0o0();
                this.Ooooooo = null;
            }
            WeakReference<View> weakReference = this.o0OoOo0;
            if (weakReference != null) {
                weakReference.clear();
                this.o0OoOo0 = null;
                return this;
            }
        }
        this.o0OoOo0 = new WeakReference<>(view);
        return this;
    }

    @Deprecated
    public void o00o0O(View view, View view2) {
    }

    public Animator o00oO0O() {
        return null;
    }

    public Animation o00oO0o() {
        return null;
    }

    @Deprecated
    public void o00ooo(View view, View view2) {
    }

    public void o0OoO0o(int i, int i2, float f, float f2) {
        if (!o00Oo0() || Oooo00O() == null) {
            return;
        }
        this.OoooOoO.o0000o0(i, i2);
        this.OoooOoO.o0000OoO(true);
        o000O00O((int) f).o0000OOo((int) f2).o000O0oO(null, true);
    }

    public boolean o0OoOo0() {
        return this.OoooOoO.o0OoOo0();
    }

    public Animation o0ooOO0() {
        return null;
    }

    public Animator o0ooOOo() {
        return null;
    }

    public View o0ooOoO(Activity activity) {
        return null;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        if (this.OoooOoO.Oooo() != null) {
            this.OoooOoO.Oooo().onDismiss();
        }
        this.OooooOo = false;
    }

    @Override // z2.xe0
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public View oo000o() {
        return null;
    }

    public BasePopupWindow oo0o0Oo(Object obj) {
        return pe0.OooO0o0().OooO00o.OooO00o(this, obj);
    }

    public boolean ooOO() {
        return this.OoooOoO.o00oO0O();
    }
}
