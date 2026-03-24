package z2;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.util.Pair;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import z2.u5;

/* JADX INFO: loaded from: classes.dex */
public final class h5 {
    private h5() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void OooO() {
        OooOO0O(false);
    }

    public static void OooO00o(@Nullable Activity activity, @Nullable u5.OooO00o oooO00o) {
        w5.OooO00o(activity, oooO00o);
    }

    public static void OooO0O0(@Nullable u5.OooO00o oooO00o) {
        w5.OooO0O0(oooO00o);
    }

    public static void OooO0OO(@NonNull Activity activity) {
        OooO0o0(activity, false);
    }

    public static void OooO0Oo(@NonNull Activity activity, @AnimRes int i, @AnimRes int i2) {
        activity.finish();
        activity.overridePendingTransition(i, i2);
    }

    public static void OooO0o(@NonNull Class<? extends Activity> cls) {
        OooO0oo(cls, false);
    }

    public static void OooO0o0(@NonNull Activity activity, boolean z) {
        activity.finish();
        if (z) {
            return;
        }
        activity.overridePendingTransition(0, 0);
    }

    public static void OooO0oO(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : w5.OooO()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                activity.overridePendingTransition(i, i2);
            }
        }
    }

    public static void OooO0oo(@NonNull Class<? extends Activity> cls, boolean z) {
        for (Activity activity : w5.OooO()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                if (!z) {
                    activity.overridePendingTransition(0, 0);
                }
            }
        }
    }

    public static void OooOO0(@AnimRes int i, @AnimRes int i2) {
        for (Activity activity : w5.OooO()) {
            activity.finish();
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void OooOO0O(boolean z) {
        for (Activity activity : w5.OooO()) {
            activity.finish();
            if (!z) {
                activity.overridePendingTransition(0, 0);
            }
        }
    }

    public static void OooOO0o() {
        OooOOO(false);
    }

    public static void OooOOO(boolean z) {
        List<Activity> listOooO = w5.OooO();
        for (int i = 1; i < listOooO.size(); i++) {
            OooO0o0(listOooO.get(i), z);
        }
    }

    public static void OooOOO0(@AnimRes int i, @AnimRes int i2) {
        List<Activity> listOooO = w5.OooO();
        for (int i3 = 1; i3 < listOooO.size(); i3++) {
            OooO0Oo(listOooO.get(i3), i, i2);
        }
    }

    public static void OooOOOO(@NonNull Class<? extends Activity> cls) {
        OooOOo0(cls, false);
    }

    public static void OooOOOo(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : w5.OooO()) {
            if (!activity.getClass().equals(cls)) {
                OooO0Oo(activity, i, i2);
            }
        }
    }

    public static boolean OooOOo(@NonNull Activity activity, boolean z) {
        return OooOo00(activity, z, false);
    }

    public static void OooOOo0(@NonNull Class<? extends Activity> cls, boolean z) {
        for (Activity activity : w5.OooO()) {
            if (!activity.getClass().equals(cls)) {
                OooO0o0(activity, z);
            }
        }
    }

    public static boolean OooOOoo(@NonNull Activity activity, boolean z, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity2 : w5.OooO()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                OooO0Oo(activity2, i, i2);
                return true;
            }
            OooO0Oo(activity2, i, i2);
        }
        return false;
    }

    @Nullable
    public static Activity OooOo(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        Activity activityOooOoO0 = OooOoO0(context);
        if (OoooO0(activityOooOoO0)) {
            return activityOooOoO0;
        }
        return null;
    }

    public static boolean OooOo0(@NonNull Class<? extends Activity> cls, boolean z) {
        return OooOo0o(cls, z, false);
    }

    public static boolean OooOo00(@NonNull Activity activity, boolean z, boolean z3) {
        for (Activity activity2 : w5.OooO()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                OooO0o0(activity2, z3);
                return true;
            }
            OooO0o0(activity2, z3);
        }
        return false;
    }

    public static boolean OooOo0O(@NonNull Class<? extends Activity> cls, boolean z, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : w5.OooO()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                OooO0Oo(activity, i, i2);
                return true;
            }
            OooO0Oo(activity, i, i2);
        }
        return false;
    }

    public static boolean OooOo0o(@NonNull Class<? extends Activity> cls, boolean z, boolean z3) {
        for (Activity activity : w5.OooO()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                OooO0o0(activity, z3);
                return true;
            }
            OooO0o0(activity, z3);
        }
        return false;
    }

    @Nullable
    private static Activity OooOoO(@Nullable Context context) {
        if (context != null && context.getClass().getName().equals("com.android.internal.policy.DecorContext")) {
            try {
                Field declaredField = context.getClass().getDeclaredField("mActivityContext");
                declaredField.setAccessible(true);
                return (Activity) ((WeakReference) declaredField.get(context)).get();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Nullable
    private static Activity OooOoO0(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (context instanceof ContextWrapper) {
            if (!(context instanceof Activity)) {
                Activity activityOooOoO = OooOoO(context);
                if (activityOooOoO == null) {
                    arrayList.add(context);
                    context = ((ContextWrapper) context).getBaseContext();
                    if (context == null || arrayList.contains(context)) {
                        break;
                    }
                } else {
                    return activityOooOoO;
                }
            } else {
                return (Activity) context;
            }
        }
        return null;
    }

    @Nullable
    public static Drawable OooOoOO(@NonNull Activity activity) {
        return OooOoo0(activity.getComponentName());
    }

    @Nullable
    public static Drawable OooOoo(@NonNull Class<? extends Activity> cls) {
        return OooOoo0(new ComponentName(u5.OooO00o(), cls));
    }

    @Nullable
    public static Drawable OooOoo0(@NonNull ComponentName componentName) {
        try {
            return u5.OooO00o().getPackageManager().getActivityIcon(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Activity> OooOooO() {
        return w5.OooO();
    }

    @Nullable
    public static Drawable OooOooo(@NonNull Activity activity) {
        return Oooo000(activity.getComponentName());
    }

    public static Activity Oooo() {
        return w5.OooOo0O();
    }

    public static String Oooo0(@NonNull String str) {
        if (w5.OooOoo(str)) {
            return "";
        }
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = u5.OooO00o().getPackageManager().queryIntentActivities(intent, 0);
        return (listQueryIntentActivities == null || listQueryIntentActivities.size() == 0) ? "" : listQueryIntentActivities.get(0).activityInfo.name;
    }

    @Nullable
    public static Drawable Oooo000(@NonNull ComponentName componentName) {
        try {
            return u5.OooO00o().getPackageManager().getActivityLogo(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public static Drawable Oooo00O(@NonNull Class<? extends Activity> cls) {
        return Oooo000(new ComponentName(u5.OooO00o(), cls));
    }

    public static String Oooo00o() {
        return Oooo0(u5.OooO00o().getPackageName());
    }

    public static List<String> Oooo0O0() {
        return Oooo0OO(u5.OooO00o().getPackageName());
    }

    public static List<String> Oooo0OO(@NonNull String str) {
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = u5.OooO00o().getPackageManager().queryIntentActivities(intent, 0);
        int size = listQueryIntentActivities.size();
        if (size == 0) {
            return arrayList;
        }
        for (int i = 0; i < size; i++) {
            ResolveInfo resolveInfo = listQueryIntentActivities.get(i);
            if (resolveInfo.activityInfo.processName.equals(str)) {
                arrayList.add(resolveInfo.activityInfo.name);
            }
        }
        return arrayList;
    }

    private static Bundle Oooo0o(Context context, int i, int i2) {
        return ActivityOptionsCompat.makeCustomAnimation(context, i, i2).toBundle();
    }

    private static Bundle Oooo0o0(Activity activity, View[] viewArr) {
        int length;
        if (Build.VERSION.SDK_INT < 21 || viewArr == null || (length = viewArr.length) <= 0) {
            return null;
        }
        Pair[] pairArr = new Pair[length];
        for (int i = 0; i < length; i++) {
            pairArr[i] = Pair.create(viewArr[i], viewArr[i].getTransitionName());
        }
        return ActivityOptionsCompat.makeSceneTransitionAnimation(activity, pairArr).toBundle();
    }

    private static Bundle Oooo0oO(Fragment fragment, int i, int i2) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return ActivityOptionsCompat.makeCustomAnimation(activity, i, i2).toBundle();
    }

    private static Bundle Oooo0oo(Fragment fragment, View[] viewArr) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return Oooo0o0(activity, viewArr);
    }

    public static boolean OoooO(@NonNull String str, @NonNull String str2) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        PackageManager packageManager = u5.OooO00o().getPackageManager();
        return (packageManager.resolveActivity(intent, 0) == null || intent.resolveActivity(packageManager) == null || packageManager.queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    public static boolean OoooO0(Activity activity) {
        return (activity == null || activity.isFinishing() || (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed())) ? false : true;
    }

    private static Context OoooO00() {
        Activity activityOooo;
        return (!w5.OooOoO0() || (activityOooo = Oooo()) == null) ? u5.OooO00o() : activityOooo;
    }

    public static boolean OoooO0O(Context context) {
        return OoooO0(OooOo(context));
    }

    public static boolean OoooOO0(@NonNull Activity activity) {
        Iterator<Activity> it = w5.OooO().iterator();
        while (it.hasNext()) {
            if (it.next().equals(activity)) {
                return true;
            }
        }
        return false;
    }

    private static boolean OoooOOO(Intent intent) {
        return u5.OooO00o().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static void OoooOOo(@Nullable Activity activity) {
        w5.Oooo00O(activity);
    }

    public static void OoooOo0(@Nullable Activity activity, @Nullable u5.OooO00o oooO00o) {
        w5.Oooo00o(activity, oooO00o);
    }

    public static void OoooOoO(@Nullable u5.OooO00o oooO00o) {
        w5.Oooo0(oooO00o);
    }

    public static void OoooOoo(@NonNull Activity activity, @NonNull Intent[] intentArr) {
        OooooOo(intentArr, activity, null);
    }

    public static void Ooooo00(@NonNull Activity activity, @NonNull Intent[] intentArr, @AnimRes int i, @AnimRes int i2) {
        OooooOo(intentArr, activity, Oooo0o(activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void Ooooo0o(@NonNull Activity activity, @NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        OooooOo(intentArr, activity, bundle);
    }

    public static void OooooO0(@NonNull Intent[] intentArr) {
        OooooOo(intentArr, OoooO00(), null);
    }

    public static void OooooOO(@NonNull Intent[] intentArr, @AnimRes int i, @AnimRes int i2) {
        Context contextOoooO00 = OoooO00();
        OooooOo(intentArr, contextOoooO00, Oooo0o(contextOoooO00, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(contextOoooO00 instanceof Activity)) {
            return;
        }
        ((Activity) contextOoooO00).overridePendingTransition(i, i2);
    }

    private static void OooooOo(Intent[] intentArr, Context context, @Nullable Bundle bundle) {
        if (!(context instanceof Activity)) {
            for (Intent intent : intentArr) {
                intent.addFlags(268435456);
            }
        }
        if (bundle == null || Build.VERSION.SDK_INT < 16) {
            context.startActivities(intentArr);
        } else {
            context.startActivities(intentArr, bundle);
        }
    }

    public static void Oooooo(@NonNull Activity activity, @NonNull Intent intent) {
        o0000O00(intent, activity, null);
    }

    public static void Oooooo0(@NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        OooooOo(intentArr, OoooO00(), bundle);
    }

    public static void OoooooO(@NonNull Activity activity, @NonNull Intent intent, @AnimRes int i, @AnimRes int i2) {
        o0000O00(intent, activity, Oooo0o(activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void Ooooooo(@NonNull Activity activity, @NonNull Intent intent, @Nullable Bundle bundle) {
        o0000O00(intent, activity, bundle);
    }

    public static void o000(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, @AnimRes int i2, @AnimRes int i3) {
        o000O0oO(fragment, bundle, str, str2, i, Oooo0oO(fragment, i2, i3));
    }

    public static boolean o0000(@NonNull Intent intent, @AnimRes int i, @AnimRes int i2) {
        Context contextOoooO00 = OoooO00();
        boolean zO0000O00 = o0000O00(intent, contextOoooO00, Oooo0o(contextOoooO00, i, i2));
        if (zO0000O00 && Build.VERSION.SDK_INT < 16 && (contextOoooO00 instanceof Activity)) {
            ((Activity) contextOoooO00).overridePendingTransition(i, i2);
        }
        return zO0000O00;
    }

    public static void o00000(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, bundle, str, str2, Oooo0o(contextOoooO00, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(contextOoooO00 instanceof Activity)) {
            return;
        }
        ((Activity) contextOoooO00).overridePendingTransition(i, i2);
    }

    public static void o000000(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, bundle, contextOoooO00.getPackageName(), cls.getName(), Oooo0o(contextOoooO00, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(contextOoooO00 instanceof Activity)) {
            return;
        }
        ((Activity) contextOoooO00).overridePendingTransition(i, i2);
    }

    public static void o000000O(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle2) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, bundle, contextOoooO00.getPackageName(), cls.getName(), bundle2);
    }

    public static void o000000o(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2) {
        o00oO0O(OoooO00(), bundle, str, str2, null);
    }

    public static void o00000O(@NonNull Class<? extends Activity> cls) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, null, contextOoooO00.getPackageName(), cls.getName(), null);
    }

    public static void o00000O0(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle2) {
        o00oO0O(OoooO00(), bundle, str, str2, bundle2);
    }

    public static void o00000OO(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, null, contextOoooO00.getPackageName(), cls.getName(), Oooo0o(contextOoooO00, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(contextOoooO00 instanceof Activity)) {
            return;
        }
        ((Activity) contextOoooO00).overridePendingTransition(i, i2);
    }

    public static void o00000Oo(@NonNull Class<? extends Activity> cls, @Nullable Bundle bundle) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, null, contextOoooO00.getPackageName(), cls.getName(), bundle);
    }

    public static void o00000o0(@NonNull String str, @NonNull String str2) {
        o00oO0O(OoooO00(), null, str, str2, null);
    }

    public static void o00000oO(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        o00oO0O(OoooO00(), null, str, str2, bundle);
    }

    public static boolean o00000oo(@NonNull Intent intent) {
        return o0000O00(intent, OoooO00(), null);
    }

    public static void o0000O(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i) {
        o000OO0O(activity, null, activity.getPackageName(), cls.getName(), i, null);
    }

    public static void o0000O0(@NonNull Activity activity, @NonNull Intent intent, int i, @AnimRes int i2, @AnimRes int i3) {
        o000O0O0(intent, activity, i, Oooo0o(activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    private static boolean o0000O00(Intent intent, Context context, Bundle bundle) {
        if (!OoooOOO(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (bundle == null || Build.VERSION.SDK_INT < 16) {
            context.startActivity(intent);
            return true;
        }
        context.startActivity(intent, bundle);
        return true;
    }

    public static void o0000O0O(@NonNull Activity activity, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        o000O0O0(intent, activity, i, bundle);
    }

    public static void o0000OO(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle) {
        o000OO0O(activity, null, activity.getPackageName(), cls.getName(), i, bundle);
    }

    public static void o0000OO0(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        o000OO0O(activity, null, activity.getPackageName(), cls.getName(), i, Oooo0o(activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    public static void o0000OOO(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        o000OO0O(activity, null, activity.getPackageName(), cls.getName(), i, Oooo0o0(activity, viewArr));
    }

    public static void o0000OOo(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i) {
        o000OO0O(activity, bundle, activity.getPackageName(), cls.getName(), i, null);
    }

    public static void o0000Oo(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle2) {
        o000OO0O(activity, bundle, activity.getPackageName(), cls.getName(), i, bundle2);
    }

    public static void o0000Oo0(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        o000OO0O(activity, bundle, activity.getPackageName(), cls.getName(), i, Oooo0o(activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    public static void o0000OoO(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        o000OO0O(activity, bundle, activity.getPackageName(), cls.getName(), i, Oooo0o0(activity, viewArr));
    }

    public static void o0000Ooo(@NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, null, str, str2, Oooo0o(contextOoooO00, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(contextOoooO00 instanceof Activity)) {
            return;
        }
        ((Activity) contextOoooO00).overridePendingTransition(i, i2);
    }

    public static void o0000o(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, View... viewArr) {
        o000OO0O(activity, bundle, str, str2, i, Oooo0o0(activity, viewArr));
    }

    public static void o0000o0(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i) {
        o000OO0O(activity, bundle, str, str2, i, null);
    }

    public static void o0000o0O(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, @AnimRes int i2, @AnimRes int i3) {
        o000OO0O(activity, bundle, str, str2, i, Oooo0o(activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    public static void o0000o0o(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, @Nullable Bundle bundle2) {
        o000OO0O(activity, bundle, str, str2, i, bundle2);
    }

    public static void o0000oO(@NonNull Activity activity, @NonNull Intent intent, int i) {
        o000O0O0(intent, activity, i, null);
    }

    public static void o0000oO0(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i) {
        o000O0oO(fragment, bundle, u5.OooO00o().getPackageName(), cls.getName(), i, null);
    }

    public static void o0000oOO(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        o000O0oO(fragment, bundle, u5.OooO00o().getPackageName(), cls.getName(), i, Oooo0oO(fragment, i2, i3));
    }

    public static void o0000oOo(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle2) {
        o000O0oO(fragment, bundle, u5.OooO00o().getPackageName(), cls.getName(), i, bundle2);
    }

    public static boolean o0000oo(@NonNull Intent intent, @Nullable Bundle bundle) {
        return o0000O00(intent, OoooO00(), bundle);
    }

    public static void o0000oo0(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        o000O0oO(fragment, bundle, u5.OooO00o().getPackageName(), cls.getName(), i, Oooo0oo(fragment, viewArr));
    }

    public static void o0000ooO(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i) {
        o000O0oO(fragment, bundle, str, str2, i, null);
    }

    public static void o000O() {
        o000OO00(u5.OooO00o().getPackageName());
    }

    public static void o000O0(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle) {
        o000O0oO(fragment, null, u5.OooO00o().getPackageName(), cls.getName(), i, bundle);
    }

    public static void o000O00(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i) {
        o000O0oO(fragment, null, u5.OooO00o().getPackageName(), cls.getName(), i, null);
    }

    public static void o000O000(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, @Nullable Bundle bundle2) {
        o000O0oO(fragment, bundle, str, str2, i, bundle2);
    }

    public static void o000O00O(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        o000O0oO(fragment, null, u5.OooO00o().getPackageName(), cls.getName(), i, Oooo0oO(fragment, i2, i3));
    }

    public static void o000O0O(@NonNull Fragment fragment, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        o000O0o0(intent, fragment, i, bundle);
    }

    private static boolean o000O0O0(Intent intent, Activity activity, int i, @Nullable Bundle bundle) {
        if (!OoooOOO(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (bundle == null || Build.VERSION.SDK_INT < 16) {
            activity.startActivityForResult(intent, i);
            return true;
        }
        activity.startActivityForResult(intent, i, bundle);
        return true;
    }

    public static void o000O0Oo(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        o000O0oO(fragment, null, u5.OooO00o().getPackageName(), cls.getName(), i, Oooo0oo(fragment, viewArr));
    }

    public static void o000O0o(@NonNull Fragment fragment, @NonNull Intent intent, int i) {
        o000O0o0(intent, fragment, i, null);
    }

    private static boolean o000O0o0(Intent intent, Fragment fragment, int i, @Nullable Bundle bundle) {
        String str;
        if (!OoooOOO(intent)) {
            str = "intent is unavailable";
        } else {
            if (fragment.getActivity() != null) {
                if (bundle == null || Build.VERSION.SDK_INT < 16) {
                    fragment.startActivityForResult(intent, i);
                    return true;
                }
                fragment.startActivityForResult(intent, i, bundle);
                return true;
            }
            str = "Fragment " + fragment + " not attached to Activity";
        }
        Log.e("ActivityUtils", str);
        return false;
    }

    private static boolean o000O0oO(Fragment fragment, Bundle bundle, String str, String str2, int i, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return o000O0o0(intent, fragment, i, bundle2);
    }

    public static void o000O0oo() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        o00000oo(intent);
    }

    public static void o000OO(@NonNull Activity activity, @NonNull Intent intent, int i, View... viewArr) {
        o000O0O0(intent, activity, i, Oooo0o0(activity, viewArr));
    }

    public static void o000OO00(@NonNull String str) {
        String strOooo0 = Oooo0(str);
        if (TextUtils.isEmpty(strOooo0)) {
            return;
        }
        o00000o0(str, strOooo0);
    }

    private static boolean o000OO0O(Activity activity, Bundle bundle, String str, String str2, int i, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return o000O0O0(intent, activity, i, bundle2);
    }

    public static void o000OOo(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls) {
        Context contextOoooO00 = OoooO00();
        o00oO0O(contextOoooO00, bundle, contextOoooO00.getPackageName(), cls.getName(), null);
    }

    public static void o000Oo0(@NonNull Fragment fragment, @NonNull Intent intent, int i, View... viewArr) {
        o000O0o0(intent, fragment, i, Oooo0oo(fragment, viewArr));
    }

    public static void o000OoO(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, View... viewArr) {
        o000O0oO(fragment, bundle, str, str2, i, Oooo0oo(fragment, viewArr));
    }

    public static void o000Ooo(@NonNull Fragment fragment, @NonNull Intent intent, int i, @AnimRes int i2, @AnimRes int i3) {
        o000O0o0(intent, fragment, i, Oooo0oO(fragment, i2, i3));
    }

    public static boolean o000oOoO(@NonNull Class<? extends Activity> cls) {
        Iterator<Activity> it = w5.OooO().iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                return true;
            }
        }
        return false;
    }

    public static void o00O0O(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        o00oO0O(activity, null, activity.getPackageName(), cls.getName(), Oooo0o(activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void o00Oo0(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle) {
        o00oO0O(activity, null, activity.getPackageName(), cls.getName(), bundle);
    }

    public static void o00Ooo(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, View... viewArr) {
        o00oO0O(activity, null, activity.getPackageName(), cls.getName(), Oooo0o0(activity, viewArr));
    }

    public static void o00o0O(@NonNull Activity activity, @NonNull String str, @NonNull String str2) {
        o00oO0O(activity, null, str, str2, null);
    }

    private static void o00oO0O(Context context, Bundle bundle, String str, String str2, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        o0000O00(intent, context, bundle2);
    }

    public static void o00oO0o(@NonNull Activity activity, @NonNull String str, @NonNull String str2, View... viewArr) {
        o00oO0O(activity, null, str, str2, Oooo0o0(activity, viewArr));
    }

    public static void o00ooo(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        o00oO0O(activity, null, str, str2, Oooo0o(activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void o0O0O00(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, View... viewArr) {
        o00oO0O(activity, bundle, str, str2, Oooo0o0(activity, viewArr));
    }

    public static void o0OO00O(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        o00oO0O(activity, bundle, str, str2, Oooo0o(activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void o0OOO0o(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, View... viewArr) {
        o00oO0O(activity, bundle, activity.getPackageName(), cls.getName(), Oooo0o0(activity, viewArr));
    }

    public static void o0Oo0oo(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2) {
        o00oO0O(activity, bundle, str, str2, null);
    }

    public static void o0OoOo0(@NonNull Activity activity, @NonNull Intent intent, View... viewArr) {
        o0000O00(intent, activity, Oooo0o0(activity, viewArr));
    }

    public static void o0ooOO0(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls) {
        o00oO0O(activity, bundle, activity.getPackageName(), cls.getName(), null);
    }

    public static void o0ooOOo(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        o00oO0O(activity, bundle, activity.getPackageName(), cls.getName(), Oooo0o(activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    public static void o0ooOoO(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle2) {
        o00oO0O(activity, bundle, activity.getPackageName(), cls.getName(), bundle2);
    }

    public static void oo000o(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        o00oO0O(activity, null, str, str2, bundle);
    }

    public static void oo0o0Oo(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle2) {
        o00oO0O(activity, bundle, str, str2, bundle2);
    }

    public static void ooOO(@NonNull Activity activity, @NonNull Class<? extends Activity> cls) {
        o00oO0O(activity, null, activity.getPackageName(), cls.getName(), null);
    }
}
