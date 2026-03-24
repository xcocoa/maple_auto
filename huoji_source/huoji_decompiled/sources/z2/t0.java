package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class t0 {
    private static final String OooO0Oo = "RequestTracker";
    private final Set<l1> OooO00o = Collections.newSetFromMap(new WeakHashMap());
    private final List<l1> OooO0O0 = new ArrayList();
    private boolean OooO0OO;

    private boolean OooO0O0(@Nullable l1 l1Var, boolean z) {
        boolean z3 = true;
        if (l1Var == null) {
            return true;
        }
        boolean zRemove = this.OooO00o.remove(l1Var);
        if (!this.OooO0O0.remove(l1Var) && !zRemove) {
            z3 = false;
        }
        if (z3) {
            l1Var.clear();
            if (z) {
                l1Var.recycle();
            }
        }
        return z3;
    }

    public void OooO() {
        this.OooO0OO = false;
        for (l1 l1Var : t2.OooOO0O(this.OooO00o)) {
            if (!l1Var.OooOO0O() && !l1Var.isRunning()) {
                l1Var.OooO();
            }
        }
        this.OooO0O0.clear();
    }

    @VisibleForTesting
    public void OooO00o(l1 l1Var) {
        this.OooO00o.add(l1Var);
    }

    public boolean OooO0OO(@Nullable l1 l1Var) {
        return OooO0O0(l1Var, true);
    }

    public void OooO0Oo() {
        Iterator it = t2.OooOO0O(this.OooO00o).iterator();
        while (it.hasNext()) {
            OooO0O0((l1) it.next(), false);
        }
        this.OooO0O0.clear();
    }

    public void OooO0o() {
        this.OooO0OO = true;
        for (l1 l1Var : t2.OooOO0O(this.OooO00o)) {
            if (l1Var.isRunning() || l1Var.OooOO0O()) {
                l1Var.clear();
                this.OooO0O0.add(l1Var);
            }
        }
    }

    public boolean OooO0o0() {
        return this.OooO0OO;
    }

    public void OooO0oO() {
        this.OooO0OO = true;
        for (l1 l1Var : t2.OooOO0O(this.OooO00o)) {
            if (l1Var.isRunning()) {
                l1Var.clear();
                this.OooO0O0.add(l1Var);
            }
        }
    }

    public void OooO0oo() {
        for (l1 l1Var : t2.OooOO0O(this.OooO00o)) {
            if (!l1Var.OooOO0O() && !l1Var.OooO0o()) {
                l1Var.clear();
                if (this.OooO0OO) {
                    this.OooO0O0.add(l1Var);
                } else {
                    l1Var.OooO();
                }
            }
        }
    }

    public void OooOO0(@NonNull l1 l1Var) {
        this.OooO00o.add(l1Var);
        if (!this.OooO0OO) {
            l1Var.OooO();
            return;
        }
        l1Var.clear();
        if (Log.isLoggable(OooO0Oo, 2)) {
            Log.v(OooO0Oo, "Paused, delaying request");
        }
        this.OooO0O0.add(l1Var);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.OooO00o.size() + ", isPaused=" + this.OooO0OO + "}";
    }
}
