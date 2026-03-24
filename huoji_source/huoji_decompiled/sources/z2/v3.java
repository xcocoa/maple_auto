package z2;

import android.app.Activity;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class v3 {
    private static Stack<Activity> OooO00o;
    private static v3 OooO0O0;

    private v3() {
    }

    public static v3 OooO() {
        if (OooO0O0 == null) {
            OooO0O0 = new v3();
        }
        return OooO0O0;
    }

    public void OooO00o(Activity activity) {
        if (OooO00o == null) {
            OooO00o = new Stack<>();
        }
        OooO00o.add(activity);
    }

    public Activity OooO0O0() {
        Stack<Activity> stack = OooO00o;
        if (stack == null || stack.isEmpty()) {
            return null;
        }
        return OooO00o.lastElement();
    }

    public Activity OooO0OO(Class<?> cls) {
        for (Activity activity : OooO00o) {
            if (activity.getClass().equals(cls)) {
                return activity;
            }
        }
        return null;
    }

    public void OooO0Oo() {
        OooO0o0(OooO00o.lastElement());
    }

    public void OooO0o(Class<?> cls) {
        for (Activity activity : OooO00o) {
            if (activity.getClass().equals(cls)) {
                OooO0o0(activity);
            }
        }
    }

    public void OooO0o0(Activity activity) {
        if (activity != null) {
            OooO00o.remove(activity);
            if (activity.isFinishing()) {
                return;
            }
            activity.finish();
        }
    }

    public void OooO0oO() {
        int size = OooO00o.size();
        for (int i = 0; i < size; i++) {
            if (OooO00o.get(i) != null && !OooO00o.get(i).isFinishing()) {
                OooO00o.get(i).finish();
            }
        }
        OooO00o.clear();
    }

    public void OooO0oo(Class<?> cls) {
        for (Activity activity : OooO00o) {
            if (!activity.getClass().equals(cls)) {
                OooO0o0(activity);
            }
        }
    }
}
