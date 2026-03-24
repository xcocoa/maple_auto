package z2;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import razerdp.basepopup.BasePopupWindow;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public final class pe0 {
    public OooO0O0 OooO00o;
    private WeakReference<Activity> OooO0O0;
    private int OooO0OO;

    public class OooO00o implements Application.ActivityLifecycleCallbacks {
        public OooO00o() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            pe0.this.OooO0O0 = new WeakReference(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            pe0.OooO0O0(pe0.this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            pe0.OooO0OO(pe0.this);
        }
    }

    public class OooO0O0 implements oe0 {
        private static final String OooO0OO = "razerdp.basepopup.BasePopupSupporterSupport";
        private static final String OooO0Oo = "razerdp.basepopup.BasePopupSupporterLifeCycle";
        private static final String OooO0o0 = "razerdp.basepopup.BasePopupSupporterX";
        private List<oe0> OooO00o = new ArrayList();

        public OooO0O0(Context context) {
            try {
                if (pe0.this.OooO(OooO0OO)) {
                    this.OooO00o.add((oe0) Class.forName(OooO0OO).newInstance());
                }
                if (pe0.this.OooO(OooO0Oo)) {
                    this.OooO00o.add((oe0) Class.forName(OooO0Oo).newInstance());
                }
                if (pe0.this.OooO(OooO0o0)) {
                    this.OooO00o.add((oe0) Class.forName(OooO0o0).newInstance());
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InstantiationException e3) {
                e3.printStackTrace();
            }
            PopupLog.OooO0oo(this.OooO00o);
        }

        @Override // z2.oe0
        public BasePopupWindow OooO00o(BasePopupWindow basePopupWindow, Object obj) {
            if (nf0.OooO0OO(this.OooO00o)) {
                return null;
            }
            for (oe0 oe0Var : this.OooO00o) {
                if (basePopupWindow.o00O0O == null) {
                    return basePopupWindow;
                }
                oe0Var.OooO00o(basePopupWindow, obj);
            }
            return basePopupWindow;
        }

        @Override // z2.oe0
        public BasePopupWindow OooO0O0(BasePopupWindow basePopupWindow, Object obj) {
            if (nf0.OooO0OO(this.OooO00o)) {
                return null;
            }
            for (oe0 oe0Var : this.OooO00o) {
                if (basePopupWindow.o00O0O != null) {
                    return basePopupWindow;
                }
                oe0Var.OooO0O0(basePopupWindow, obj);
            }
            return basePopupWindow;
        }

        @Override // z2.oe0
        public View OooO0OO(BasePopupWindow basePopupWindow, Activity activity) {
            if (nf0.OooO0OO(this.OooO00o)) {
                return null;
            }
            Iterator<oe0> it = this.OooO00o.iterator();
            while (it.hasNext()) {
                View viewOooO0OO = it.next().OooO0OO(basePopupWindow, activity);
                if (viewOooO0OO != null) {
                    return viewOooO0OO;
                }
            }
            return null;
        }
    }

    public static class OooO0OO {
        private static pe0 OooO00o = new pe0(null);

        private OooO0OO() {
        }
    }

    private pe0() {
        this.OooO0OO = 0;
    }

    public /* synthetic */ pe0(OooO00o oooO00o) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean OooO(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static /* synthetic */ int OooO0O0(pe0 pe0Var) {
        int i = pe0Var.OooO0OO;
        pe0Var.OooO0OO = i + 1;
        return i;
    }

    public static /* synthetic */ int OooO0OO(pe0 pe0Var) {
        int i = pe0Var.OooO0OO;
        pe0Var.OooO0OO = i - 1;
        return i;
    }

    public static pe0 OooO0o0() {
        return OooO0OO.OooO00o;
    }

    private void OooOO0(Application application) {
        application.registerActivityLifecycleCallbacks(new OooO00o());
    }

    public Activity OooO0o() {
        WeakReference<Activity> weakReference = this.OooO0O0;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void OooO0oO(Context context) {
        if (this.OooO00o != null) {
            return;
        }
        OooOO0(context instanceof Application ? (Application) context : (Application) context.getApplicationContext());
        this.OooO00o = new OooO0O0(context);
    }

    public boolean OooO0oo() {
        Object[] objArr = new Object[1];
        objArr[0] = Boolean.valueOf(this.OooO0OO <= 0);
        PopupLog.OooO("isAppOnBackground", objArr);
        return this.OooO0OO <= 0;
    }
}
