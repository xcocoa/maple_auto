package z2;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.manager.RequestManagerFragment;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class r0 implements Handler.Callback {

    @VisibleForTesting
    public static final String Oooooo = "com.bumptech.glide.manager";
    private static final String OoooooO = "RMRetriever";
    private static final int Ooooooo = 1;
    private static final OooO0O0 o00O0O = new OooO00o();
    private static final int o0OoOo0 = 2;
    private static final String ooOO = "key";
    private volatile o0 OoooOoO;
    private final Handler Ooooo0o;
    private final OooO0O0 OooooO0;

    @VisibleForTesting
    public final Map<FragmentManager, RequestManagerFragment> OoooOoo = new HashMap();

    @VisibleForTesting
    public final Map<androidx.fragment.app.FragmentManager, u0> Ooooo00 = new HashMap();
    private final ArrayMap<View, Fragment> OooooOO = new ArrayMap<>();
    private final ArrayMap<View, android.app.Fragment> OooooOo = new ArrayMap<>();
    private final Bundle Oooooo0 = new Bundle();

    public class OooO00o implements OooO0O0 {
        @Override // z2.r0.OooO0O0
        @NonNull
        public o0 OooO00o(@NonNull o00Oo00 o00oo00, @NonNull n0 n0Var, @NonNull s0 s0Var, @NonNull Context context) {
            return new o0(o00oo00, n0Var, s0Var, context);
        }
    }

    public interface OooO0O0 {
        @NonNull
        o0 OooO00o(@NonNull o00Oo00 o00oo00, @NonNull n0 n0Var, @NonNull s0 s0Var, @NonNull Context context);
    }

    public r0(@Nullable OooO0O0 oooO0O0) {
        this.OooooO0 = oooO0O0 == null ? o00O0O : oooO0O0;
        this.Ooooo0o = new Handler(Looper.getMainLooper(), this);
    }

    @TargetApi(17)
    private static void OooO00o(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @Nullable
    private Activity OooO0O0(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return OooO0O0(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @TargetApi(26)
    @Deprecated
    private void OooO0OO(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        if (Build.VERSION.SDK_INT < 26) {
            OooO0Oo(fragmentManager, arrayMap);
            return;
        }
        for (android.app.Fragment fragment : fragmentManager.getFragments()) {
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                OooO0OO(fragment.getChildFragmentManager(), arrayMap);
            }
        }
    }

    @Deprecated
    private void OooO0Oo(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            this.Oooooo0.putInt("key", i);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.Oooooo0, "key");
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                if (Build.VERSION.SDK_INT >= 17) {
                    OooO0OO(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            i = i2;
        }
    }

    @Nullable
    @Deprecated
    private android.app.Fragment OooO0o(@NonNull View view, @NonNull Activity activity) {
        this.OooooOo.clear();
        OooO0OO(activity.getFragmentManager(), this.OooooOo);
        View viewFindViewById = activity.findViewById(R.id.content);
        android.app.Fragment fragment = null;
        while (!view.equals(viewFindViewById) && (fragment = this.OooooOo.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.OooooOo.clear();
        return fragment;
    }

    private static void OooO0o0(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                OooO0o0(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    @Nullable
    private Fragment OooO0oO(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.OooooOO.clear();
        OooO0o0(fragmentActivity.getSupportFragmentManager().getFragments(), this.OooooOO);
        View viewFindViewById = fragmentActivity.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(viewFindViewById) && (fragment = this.OooooOO.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.OooooOO.clear();
        return fragment;
    }

    @NonNull
    @Deprecated
    private o0 OooO0oo(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        RequestManagerFragment requestManagerFragmentOooOOo0 = OooOOo0(fragmentManager, fragment, z);
        o0 o0VarOooO0o0 = requestManagerFragmentOooOOo0.OooO0o0();
        if (o0VarOooO0o0 != null) {
            return o0VarOooO0o0;
        }
        o0 o0VarOooO00o = this.OooooO0.OooO00o(o00Oo00.OooO0Oo(context), requestManagerFragmentOooOOo0.OooO0OO(), requestManagerFragmentOooOOo0.OooO0o(), context);
        requestManagerFragmentOooOOo0.OooOO0O(o0VarOooO00o);
        return o0VarOooO00o;
    }

    @NonNull
    private o0 OooOOOO(@NonNull Context context) {
        if (this.OoooOoO == null) {
            synchronized (this) {
                if (this.OoooOoO == null) {
                    this.OoooOoO = this.OooooO0.OooO00o(o00Oo00.OooO0Oo(context.getApplicationContext()), new h0(), new m0(), context.getApplicationContext());
                }
            }
        }
        return this.OoooOoO;
    }

    @NonNull
    private RequestManagerFragment OooOOo0(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag(Oooooo);
        if (requestManagerFragment == null && (requestManagerFragment = this.OoooOoo.get(fragmentManager)) == null) {
            requestManagerFragment = new RequestManagerFragment();
            requestManagerFragment.OooOO0(fragment);
            if (z) {
                requestManagerFragment.OooO0OO().OooO0Oo();
            }
            this.OoooOoo.put(fragmentManager, requestManagerFragment);
            fragmentManager.beginTransaction().add(requestManagerFragment, Oooooo).commitAllowingStateLoss();
            this.Ooooo0o.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return requestManagerFragment;
    }

    @NonNull
    private u0 OooOOoo(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        u0 u0Var = (u0) fragmentManager.findFragmentByTag(Oooooo);
        if (u0Var == null && (u0Var = this.Ooooo00.get(fragmentManager)) == null) {
            u0Var = new u0();
            u0Var.OooOoo(fragment);
            if (z) {
                u0Var.OooOo0O().OooO0Oo();
            }
            this.Ooooo00.put(fragmentManager, u0Var);
            fragmentManager.beginTransaction().add(u0Var, Oooooo).commitAllowingStateLoss();
            this.Ooooo0o.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return u0Var;
    }

    @NonNull
    private o0 OooOo0(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        u0 u0VarOooOOoo = OooOOoo(fragmentManager, fragment, z);
        o0 o0VarOooOo = u0VarOooOOoo.OooOo();
        if (o0VarOooOo != null) {
            return o0VarOooOo;
        }
        o0 o0VarOooO00o = this.OooooO0.OooO00o(o00Oo00.OooO0Oo(context), u0VarOooOOoo.OooOo0O(), u0VarOooOOoo.OooOoO0(), context);
        u0VarOooOOoo.OooOooO(o0VarOooO00o);
        return o0VarOooO00o;
    }

    private static boolean OooOo00(Activity activity) {
        return !activity.isFinishing();
    }

    @NonNull
    public o0 OooO(@NonNull Activity activity) {
        if (t2.OooOOoo()) {
            return OooOO0O(activity.getApplicationContext());
        }
        OooO00o(activity);
        return OooO0oo(activity, activity.getFragmentManager(), null, OooOo00(activity));
    }

    @NonNull
    @TargetApi(17)
    @Deprecated
    public o0 OooOO0(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        }
        if (t2.OooOOoo() || Build.VERSION.SDK_INT < 17) {
            return OooOO0O(fragment.getActivity().getApplicationContext());
        }
        return OooO0oo(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public o0 OooOO0O(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (t2.OooOo00() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return OooOOO((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return OooO((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                return OooOO0O(((ContextWrapper) context).getBaseContext());
            }
        }
        return OooOOOO(context);
    }

    @NonNull
    public o0 OooOO0o(@NonNull View view) {
        if (!t2.OooOOoo()) {
            r2.OooO0Oo(view);
            r2.OooO0o0(view.getContext(), "Unable to obtain a request manager for a view without a Context");
            Activity activityOooO0O0 = OooO0O0(view.getContext());
            if (activityOooO0O0 != null) {
                if (activityOooO0O0 instanceof FragmentActivity) {
                    Fragment fragmentOooO0oO = OooO0oO(view, (FragmentActivity) activityOooO0O0);
                    return fragmentOooO0oO != null ? OooOOO0(fragmentOooO0oO) : OooO(activityOooO0O0);
                }
                android.app.Fragment fragmentOooO0o = OooO0o(view, activityOooO0O0);
                return fragmentOooO0o == null ? OooO(activityOooO0O0) : OooOO0(fragmentOooO0o);
            }
        }
        return OooOO0O(view.getContext().getApplicationContext());
    }

    @NonNull
    public o0 OooOOO(@NonNull FragmentActivity fragmentActivity) {
        if (t2.OooOOoo()) {
            return OooOO0O(fragmentActivity.getApplicationContext());
        }
        OooO00o(fragmentActivity);
        return OooOo0(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, OooOo00(fragmentActivity));
    }

    @NonNull
    public o0 OooOOO0(@NonNull Fragment fragment) {
        r2.OooO0o0(fragment.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (t2.OooOOoo()) {
            return OooOO0O(fragment.getActivity().getApplicationContext());
        }
        return OooOo0(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    @Deprecated
    public RequestManagerFragment OooOOOo(Activity activity) {
        return OooOOo0(activity.getFragmentManager(), null, OooOo00(activity));
    }

    @NonNull
    public u0 OooOOo(FragmentActivity fragmentActivity) {
        return OooOOoo(fragmentActivity.getSupportFragmentManager(), null, OooOo00(fragmentActivity));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        Map map;
        Object obj2;
        int i = message.what;
        Object objRemove = null;
        boolean z = true;
        if (i == 1) {
            obj = (FragmentManager) message.obj;
            map = this.OoooOoo;
        } else {
            if (i != 2) {
                z = false;
                obj2 = null;
                if (z && objRemove == null && Log.isLoggable(OoooooO, 5)) {
                    Log.w(OoooooO, "Failed to remove expected request manager fragment, manager: " + obj2);
                }
                return z;
            }
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            map = this.Ooooo00;
        }
        Object obj3 = obj;
        objRemove = map.remove(obj);
        obj2 = obj3;
        if (z) {
            Log.w(OoooooO, "Failed to remove expected request manager fragment, manager: " + obj2);
        }
        return z;
    }
}
