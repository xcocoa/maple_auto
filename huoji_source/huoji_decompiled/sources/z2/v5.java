package z2;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.lifecycle.Lifecycle;
import com.squareup.picasso.Utils;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import z2.u5;

/* JADX INFO: loaded from: classes.dex */
public final class v5 implements Application.ActivityLifecycleCallbacks {
    public static final v5 OooO0oO = new v5();
    private static final Activity OooO0oo = new Activity();
    private final LinkedList<Activity> OooO00o = new LinkedList<>();
    private final List<u5.OooO0o> OooO0O0 = new CopyOnWriteArrayList();
    private final Map<Activity, List<u5.OooO00o>> OooO0OO = new ConcurrentHashMap();
    private int OooO0Oo = 0;
    private int OooO0o0 = 0;
    private boolean OooO0o = false;

    public class OooO00o implements Runnable {
        public final /* synthetic */ Activity OoooOoO;
        public final /* synthetic */ u5.OooO00o OoooOoo;

        public OooO00o(Activity activity, u5.OooO00o oooO00o) {
            this.OoooOoO = activity;
            this.OoooOoo = oooO00o;
        }

        @Override // java.lang.Runnable
        public void run() {
            v5.this.OooO0o(this.OoooOoO, this.OoooOoo);
        }
    }

    public class OooO0O0 implements Runnable {
        public final /* synthetic */ Activity OoooOoO;

        public OooO0O0(Activity activity) {
            this.OoooOoO = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            v5.this.OooO0OO.remove(this.OoooOoO);
        }
    }

    public class OooO0OO implements Runnable {
        public final /* synthetic */ Activity OoooOoO;
        public final /* synthetic */ u5.OooO00o OoooOoo;

        public OooO0OO(Activity activity, u5.OooO00o oooO00o) {
            this.OoooOoO = activity;
            this.OoooOoo = oooO00o;
        }

        @Override // java.lang.Runnable
        public void run() {
            v5.this.OooOo(this.OoooOoO, this.OoooOoo);
        }
    }

    public class OooO0o implements Runnable {
        public final /* synthetic */ Activity OoooOoO;
        public final /* synthetic */ Object OoooOoo;

        public OooO0o(Activity activity, Object obj) {
            this.OoooOoO = activity;
            this.OoooOoo = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Window window = this.OoooOoO.getWindow();
                if (window != null) {
                    window.setSoftInputMode(((Integer) this.OoooOoo).intValue());
                }
            } catch (Exception unused) {
            }
        }
    }

    private void OooO(Activity activity, Lifecycle.Event event, List<u5.OooO00o> list) {
        if (list == null) {
            return;
        }
        for (u5.OooO00o oooO00o : list) {
            oooO00o.OooO0oO(activity, event);
            if (event.equals(Lifecycle.Event.ON_CREATE)) {
                oooO00o.OooO00o(activity);
            } else if (event.equals(Lifecycle.Event.ON_START)) {
                oooO00o.OooO0o0(activity);
            } else if (event.equals(Lifecycle.Event.ON_RESUME)) {
                oooO00o.OooO0Oo(activity);
            } else if (event.equals(Lifecycle.Event.ON_PAUSE)) {
                oooO00o.OooO0OO(activity);
            } else if (event.equals(Lifecycle.Event.ON_STOP)) {
                oooO00o.OooO0o(activity);
            } else if (event.equals(Lifecycle.Event.ON_DESTROY)) {
                oooO00o.OooO0O0(activity);
            }
        }
        if (event.equals(Lifecycle.Event.ON_DESTROY)) {
            this.OooO0OO.remove(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0o(Activity activity, u5.OooO00o oooO00o) {
        List<u5.OooO00o> copyOnWriteArrayList = this.OooO0OO.get(activity);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.OooO0OO.put(activity, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(oooO00o)) {
            return;
        }
        copyOnWriteArrayList.add(oooO00o);
    }

    private void OooO0oo(Activity activity, Lifecycle.Event event) {
        OooO(activity, event, this.OooO0OO.get(activity));
        OooO(activity, event, this.OooO0OO.get(OooO0oo));
    }

    private List<Activity> OooOO0() {
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            Object objOooOO0o = OooOO0o();
            if (objOooOO0o == null) {
                return linkedList;
            }
            Field declaredField = objOooOO0o.getClass().getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objOooOO0o);
            if (!(obj instanceof Map)) {
                return linkedList;
            }
            for (Object obj2 : ((Map) obj).values()) {
                Class<?> cls = obj2.getClass();
                Field declaredField2 = cls.getDeclaredField(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                declaredField2.setAccessible(true);
                Activity activity2 = (Activity) declaredField2.get(obj2);
                if (activity == null) {
                    Field declaredField3 = cls.getDeclaredField(Utils.VERB_PAUSED);
                    declaredField3.setAccessible(true);
                    if (!declaredField3.getBoolean(obj2)) {
                        activity = activity2;
                    }
                }
                linkedList.addFirst(activity2);
            }
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivitiesByReflect: " + e.getMessage());
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    private Object OooOO0o() {
        Object objOooOOO0 = OooOOO0();
        return objOooOOO0 != null ? objOooOOO0 : OooOOO();
    }

    private Object OooOOO() {
        try {
            return Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticMethod: " + e.getMessage());
            return null;
        }
    }

    private Object OooOOO0() {
        try {
            Field declaredField = Class.forName("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticField: " + e.getMessage());
            return null;
        }
    }

    private void OooOOoo(Activity activity, boolean z) {
        if (this.OooO0O0.isEmpty()) {
            return;
        }
        for (u5.OooO0o oooO0o : this.OooO0O0) {
            if (z) {
                oooO0o.OooO00o(activity);
            } else {
                oooO0o.OooO0O0(activity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOo(Activity activity, u5.OooO00o oooO00o) {
        List<u5.OooO00o> list = this.OooO0OO.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(oooO00o);
    }

    private void OooOo00(Activity activity, boolean z) {
        try {
            if (z) {
                Window window = activity.getWindow();
                window.getDecorView().setTag(-123, Integer.valueOf(window.getAttributes().softInputMode));
                window.setSoftInputMode(3);
            } else {
                Object tag = activity.getWindow().getDecorView().getTag(-123);
                if (!(tag instanceof Integer)) {
                } else {
                    w5.Oooo0o0(new OooO0o(activity, tag), 100L);
                }
            }
        } catch (Exception unused) {
        }
    }

    private static void OooOoO() {
        if (Build.VERSION.SDK_INT < 26 || !ValueAnimator.areAnimatorsEnabled()) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                if (((Float) declaredField.get(null)).floatValue() == 0.0f) {
                    declaredField.set(null, Float.valueOf(1.0f));
                    Log.i("UtilsActivityLifecycle", "setAnimatorsEnabled: Animators are enabled now!");
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
    }

    private void OooOoOO(Activity activity) {
        if (this.OooO00o.contains(activity)) {
            if (this.OooO00o.getFirst().equals(activity)) {
                return;
            } else {
                this.OooO00o.remove(activity);
            }
        }
        this.OooO00o.addFirst(activity);
    }

    public void OooO0Oo(Activity activity, u5.OooO00o oooO00o) {
        if (activity == null || oooO00o == null) {
            return;
        }
        w5.Oooo0OO(new OooO00o(activity, oooO00o));
    }

    public void OooO0o0(u5.OooO00o oooO00o) {
        OooO0Oo(OooO0oo, oooO00o);
    }

    public void OooO0oO(u5.OooO0o oooO0o) {
        this.OooO0O0.add(oooO0o);
    }

    public List<Activity> OooOO0O() {
        if (!this.OooO00o.isEmpty()) {
            return new LinkedList(this.OooO00o);
        }
        this.OooO00o.addAll(OooOO0());
        return new LinkedList(this.OooO00o);
    }

    public Application OooOOOO() {
        Object objInvoke;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objOooOO0o = OooOO0o();
            if (objOooOO0o == null || (objInvoke = cls.getMethod("getApplication", new Class[0]).invoke(objOooOO0o, new Object[0])) == null) {
                return null;
            }
            return (Application) objInvoke;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Activity OooOOOo() {
        for (Activity activity : OooOO0O()) {
            if (w5.OooOo(activity)) {
                return activity;
            }
        }
        return null;
    }

    public boolean OooOOo() {
        return !this.OooO0o;
    }

    public void OooOOo0(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    public void OooOo0(Activity activity) {
        if (activity == null) {
            return;
        }
        w5.Oooo0OO(new OooO0O0(activity));
    }

    public void OooOo0O(Activity activity, u5.OooO00o oooO00o) {
        if (activity == null || oooO00o == null) {
            return;
        }
        w5.Oooo0OO(new OooO0OO(activity, oooO00o));
    }

    public void OooOo0o(u5.OooO00o oooO00o) {
        OooOo0O(OooO0oo, oooO00o);
    }

    public void OooOoO0(u5.OooO0o oooO0o) {
        this.OooO0O0.remove(oooO0o);
    }

    public void OooOoo0(Application application) {
        this.OooO00o.clear();
        application.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, Bundle bundle) {
        if (this.OooO00o.size() == 0) {
            OooOOoo(activity, true);
        }
        m5.OooO00o(activity);
        OooOoO();
        OooOoOO(activity);
        OooO0oo(activity, Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        this.OooO00o.remove(activity);
        w5.OooO0oO(activity);
        OooO0oo(activity, Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
        OooO0oo(activity, Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        OooOoOO(activity);
        if (this.OooO0o) {
            this.OooO0o = false;
            OooOOoo(activity, true);
        }
        OooOo00(activity, false);
        OooO0oo(activity, Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        if (!this.OooO0o) {
            OooOoOO(activity);
        }
        int i = this.OooO0o0;
        if (i < 0) {
            this.OooO0o0 = i + 1;
        } else {
            this.OooO0Oo++;
        }
        OooO0oo(activity, Lifecycle.Event.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity.isChangingConfigurations()) {
            this.OooO0o0--;
        } else {
            int i = this.OooO0Oo - 1;
            this.OooO0Oo = i;
            if (i <= 0) {
                this.OooO0o = true;
                OooOOoo(activity, false);
            }
        }
        OooOo00(activity, true);
        OooO0oo(activity, Lifecycle.Event.ON_STOP);
    }
}
