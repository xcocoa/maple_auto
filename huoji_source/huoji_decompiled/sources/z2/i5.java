package z2;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i5 {
    private static List<Field> OooO00o;

    public class OooO00o implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            i5.OooOO0o();
        }
    }

    private i5() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    private static DisplayMetrics OooO(Resources resources, Field field) {
        try {
            return (DisplayMetrics) field.get(resources);
        } catch (Exception unused) {
            return null;
        }
    }

    @NonNull
    public static Resources OooO0O0(@NonNull Resources resources, int i) {
        return OooO0OO(resources, i, false);
    }

    @NonNull
    public static Resources OooO0OO(@NonNull Resources resources, int i, boolean z) {
        OooO0o0(resources, ((resources.getDisplayMetrics().heightPixels + (z ? OooOO0(resources) : 0)) * 72.0f) / i);
        return resources;
    }

    @NonNull
    public static Resources OooO0Oo(@NonNull Resources resources, int i) {
        OooO0o0(resources, (resources.getDisplayMetrics().widthPixels * 72.0f) / i);
        return resources;
    }

    private static void OooO0o(Resources resources, float f) {
        Iterator<Field> it = OooO00o.iterator();
        while (it.hasNext()) {
            try {
                DisplayMetrics displayMetrics = (DisplayMetrics) it.next().get(resources);
                if (displayMetrics != null) {
                    displayMetrics.xdpi = f;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static void OooO0o0(@NonNull Resources resources, float f) {
        resources.getDisplayMetrics().xdpi = f;
        u5.OooO00o().getResources().getDisplayMetrics().xdpi = f;
        OooO0oO(resources, f);
    }

    private static void OooO0oO(Resources resources, float f) {
        if (OooO00o != null) {
            OooO0o(resources, f);
            return;
        }
        OooO00o = new ArrayList();
        Class<?> superclass = resources.getClass();
        do {
            Field[] declaredFields = superclass.getDeclaredFields();
            if (declaredFields == null || declaredFields.length <= 0) {
                return;
            }
            for (Field field : declaredFields) {
                if (field.getType().isAssignableFrom(DisplayMetrics.class)) {
                    field.setAccessible(true);
                    DisplayMetrics displayMetricsOooO = OooO(resources, field);
                    if (displayMetricsOooO != null) {
                        OooO00o.add(field);
                        displayMetricsOooO.xdpi = f;
                    }
                }
            }
            superclass = superclass.getSuperclass();
        } while (superclass != null);
    }

    @NonNull
    public static Resources OooO0oo(@NonNull Resources resources) {
        OooO0o0(resources, Resources.getSystem().getDisplayMetrics().density * 72.0f);
        return resources;
    }

    private static int OooOO0(@NonNull Resources resources) {
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", g6.OooO0O0);
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static Runnable OooOO0O() {
        return new OooO00o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void OooOO0o() {
        OooO0o0(Resources.getSystem(), Resources.getSystem().getDisplayMetrics().xdpi);
    }

    public static int OooOOO(float f) {
        return (int) (((double) ((f * 72.0f) / u5.OooO00o().getResources().getDisplayMetrics().xdpi)) + 0.5d);
    }

    public static int OooOOO0(float f) {
        return (int) (((double) ((f * u5.OooO00o().getResources().getDisplayMetrics().xdpi) / 72.0f)) + 0.5d);
    }
}
