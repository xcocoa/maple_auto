package z2;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class gf0 {
    private static final float OooO = 0.15f;
    private static final float OooO0oo = 10.0f;
    private static final long OooOO0 = 500;
    private static final boolean OooOO0O = true;
    private WeakReference<View> OooO00o;
    private float OooO0O0 = OooO0oo;
    private float OooO0OO = OooO;
    private long OooO0Oo = 500;
    private long OooO0o0 = 500;
    private boolean OooO0o = true;
    private boolean OooO0oO = true;

    public gf0 OooO(boolean z) {
        this.OooO0o = z;
        return this;
    }

    public long OooO00o() {
        long j = this.OooO0Oo;
        if (j < 0) {
            return 500L;
        }
        return j;
    }

    public long OooO0O0() {
        long j = this.OooO0o0;
        if (j < 0) {
            return 500L;
        }
        return j;
    }

    public float OooO0OO() {
        return this.OooO0OO;
    }

    public float OooO0Oo() {
        return this.OooO0O0;
    }

    public boolean OooO0o() {
        return OooO0o0() != null;
    }

    public View OooO0o0() {
        WeakReference<View> weakReference = this.OooO00o;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public boolean OooO0oO() {
        return this.OooO0o;
    }

    public boolean OooO0oo() {
        return this.OooO0oO;
    }

    public gf0 OooOO0(long j) {
        this.OooO0Oo = j;
        return this;
    }

    public gf0 OooOO0O(long j) {
        this.OooO0o0 = j;
        return this;
    }

    public gf0 OooOO0o(float f) {
        this.OooO0OO = f;
        return this;
    }

    public gf0 OooOOO(View view) {
        this.OooO00o = new WeakReference<>(view);
        boolean zEquals = false;
        if (view != null) {
            ViewParent parent = view.getParent();
            boolean zEquals2 = parent != null ? TextUtils.equals(parent.getClass().getName(), "com.android.internal.policy.DecorView") : false;
            if (zEquals2) {
                zEquals = zEquals2;
            } else if (view.getId() == 16908290) {
                zEquals = true;
            }
            if (!zEquals) {
                zEquals = TextUtils.equals(view.getClass().getName(), "com.android.internal.policy.DecorView");
            }
        }
        OooOOOO(zEquals);
        return this;
    }

    public gf0 OooOOO0(float f) {
        this.OooO0O0 = Math.min(Math.max(0.0f, f), 25.0f);
        return this;
    }

    public gf0 OooOOOO(boolean z) {
        this.OooO0oO = z;
        return this;
    }
}
