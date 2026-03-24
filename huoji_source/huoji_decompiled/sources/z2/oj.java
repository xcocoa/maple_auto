package z2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class oj<V extends View> extends qj<V> {
    private static final int OooOO0O = -1;
    private int OooO;
    private Runnable OooO0Oo;
    private boolean OooO0o;
    public OverScroller OooO0o0;
    private int OooO0oO;
    private int OooO0oo;
    private VelocityTracker OooOO0;

    /* JADX WARN: Field signature parse error: OoooOoo
    jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: TV at position 1 ('V'), unexpected: T
    	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
    	at jadx.core.dex.visitors.SignatureProcessor.parseFieldSignature(SignatureProcessor.java:161)
    	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:37)
     */
    public class OooO00o implements Runnable {
        private final CoordinatorLayout OoooOoO;
        private final View OoooOoo;

        public OooO00o(CoordinatorLayout coordinatorLayout, V v) {
            this.OoooOoO = coordinatorLayout;
            this.OoooOoo = v;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.OoooOoo == null || (overScroller = oj.this.OooO0o0) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                oj.this.OooOO0o(this.OoooOoO, this.OoooOoo);
                return;
            }
            oj ojVar = oj.this;
            ojVar.OooOOO(this.OoooOoO, this.OoooOoo, ojVar.OooO0o0.getCurrY());
            ViewCompat.postOnAnimation(this.OoooOoo, this);
        }
    }

    public oj() {
        this.OooO0oO = -1;
        this.OooO = -1;
    }

    public oj(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO0oO = -1;
        this.OooO = -1;
    }

    private void OooO0oO() {
        if (this.OooOO0 == null) {
            this.OooOO0 = VelocityTracker.obtain();
        }
    }

    public int OooO(V v) {
        return -v.getHeight();
    }

    public boolean OooO0o(V v) {
        return false;
    }

    public final boolean OooO0oo(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        Runnable runnable = this.OooO0Oo;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.OooO0Oo = null;
        }
        if (this.OooO0o0 == null) {
            this.OooO0o0 = new OverScroller(v.getContext());
        }
        this.OooO0o0.fling(0, OooO0O0(), 0, Math.round(f), 0, 0, i, i2);
        if (!this.OooO0o0.computeScrollOffset()) {
            OooOO0o(coordinatorLayout, v);
            return false;
        }
        OooO00o oooO00o = new OooO00o(coordinatorLayout, v);
        this.OooO0Oo = oooO00o;
        ViewCompat.postOnAnimation(v, oooO00o);
        return true;
    }

    public int OooOO0(V v) {
        return v.getHeight();
    }

    public int OooOO0O() {
        return OooO0O0();
    }

    public void OooOO0o(CoordinatorLayout coordinatorLayout, V v) {
    }

    public int OooOOO(CoordinatorLayout coordinatorLayout, V v, int i) {
        return OooOOOO(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public final int OooOOO0(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return OooOOOO(coordinatorLayout, v, OooOO0O() - i, i2, i3);
    }

    public int OooOOOO(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int iClamp;
        int iOooO0O0 = OooO0O0();
        if (i2 == 0 || iOooO0O0 < i2 || iOooO0O0 > i3 || iOooO0O0 == (iClamp = MathUtils.clamp(i, i2, i3))) {
            return 0;
        }
        OooO0o0(iClamp);
        return iOooO0O0 - iClamp;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.OooO < 0) {
            this.OooO = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.OooO0o) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.OooO0o = false;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (OooO0o(v) && coordinatorLayout.isPointInChildBounds(v, x, y)) {
                this.OooO0oo = y;
                this.OooO0oO = motionEvent.getPointerId(0);
                OooO0oO();
            }
        } else if (actionMasked == 1) {
            this.OooO0o = false;
            this.OooO0oO = -1;
            VelocityTracker velocityTracker = this.OooOO0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.OooOO0 = null;
            }
        } else if (actionMasked == 2) {
            int i = this.OooO0oO;
            if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.OooO0oo) > this.OooO) {
                    this.OooO0o = true;
                    this.OooO0oo = y2;
                }
            }
        } else if (actionMasked == 3) {
        }
        VelocityTracker velocityTracker2 = this.OooOO0;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return this.OooO0o;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.OooO < 0) {
            this.OooO = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.OooOO0;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.OooOO0.computeCurrentVelocity(1000);
                    OooO0oo(coordinatorLayout, v, -OooOO0(v), 0, this.OooOO0.getYVelocity(this.OooO0oO));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.OooO0oO);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y = (int) motionEvent.getY(iFindPointerIndex);
                int i = this.OooO0oo - y;
                if (!this.OooO0o) {
                    int iAbs = Math.abs(i);
                    int i2 = this.OooO;
                    if (iAbs > i2) {
                        this.OooO0o = true;
                        i = i > 0 ? i - i2 : i + i2;
                    }
                }
                int i3 = i;
                if (this.OooO0o) {
                    this.OooO0oo = y;
                    OooOOO0(coordinatorLayout, v, i3, OooO(v), 0);
                }
            } else if (actionMasked == 3) {
            }
            this.OooO0o = false;
            this.OooO0oO = -1;
            VelocityTracker velocityTracker2 = this.OooOO0;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.OooOO0 = null;
            }
        } else {
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (!coordinatorLayout.isPointInChildBounds(v, x, y2) || !OooO0o(v)) {
                return false;
            }
            this.OooO0oo = y2;
            this.OooO0oO = motionEvent.getPointerId(0);
            OooO0oO();
        }
        VelocityTracker velocityTracker3 = this.OooOO0;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }
}
