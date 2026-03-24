package z2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class u0 extends Fragment {
    private static final String OooooOo = "SupportRMFragment";
    private final g0 OoooOoO;
    private final s0 OoooOoo;
    private final Set<u0> Ooooo00;

    @Nullable
    private u0 Ooooo0o;

    @Nullable
    private o0 OooooO0;

    @Nullable
    private Fragment OooooOO;

    public class OooO00o implements s0 {
        public OooO00o() {
        }

        @Override // z2.s0
        @NonNull
        public Set<o0> OooO00o() {
            Set<u0> setOooOo0 = u0.this.OooOo0();
            HashSet hashSet = new HashSet(setOooOo0.size());
            for (u0 u0Var : setOooOo0) {
                if (u0Var.OooOo() != null) {
                    hashSet.add(u0Var.OooOo());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + u0.this + "}";
        }
    }

    public u0() {
        this(new g0());
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public u0(@NonNull g0 g0Var) {
        this.OoooOoo = new OooO00o();
        this.Ooooo00 = new HashSet();
        this.OoooOoO = g0Var;
    }

    private void OooOo00(u0 u0Var) {
        this.Ooooo00.add(u0Var);
    }

    @Nullable
    private Fragment OooOo0o() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.OooooOO;
    }

    private boolean OooOoO(@NonNull Fragment fragment) {
        Fragment fragmentOooOo0o = OooOo0o();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(fragmentOooOo0o)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void OooOoOO(@NonNull FragmentActivity fragmentActivity) {
        OooOooo();
        u0 u0VarOooOOo = o00Oo00.OooO0Oo(fragmentActivity).OooOOO().OooOOo(fragmentActivity);
        this.Ooooo0o = u0VarOooOOo;
        if (equals(u0VarOooOOo)) {
            return;
        }
        this.Ooooo0o.OooOo00(this);
    }

    private void OooOoo0(u0 u0Var) {
        this.Ooooo00.remove(u0Var);
    }

    private void OooOooo() {
        u0 u0Var = this.Ooooo0o;
        if (u0Var != null) {
            u0Var.OooOoo0(this);
            this.Ooooo0o = null;
        }
    }

    @Nullable
    public o0 OooOo() {
        return this.OooooO0;
    }

    @NonNull
    public Set<u0> OooOo0() {
        u0 u0Var = this.Ooooo0o;
        if (u0Var == null) {
            return Collections.emptySet();
        }
        if (equals(u0Var)) {
            return Collections.unmodifiableSet(this.Ooooo00);
        }
        HashSet hashSet = new HashSet();
        for (u0 u0Var2 : this.Ooooo0o.OooOo0()) {
            if (OooOoO(u0Var2.OooOo0o())) {
                hashSet.add(u0Var2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    public g0 OooOo0O() {
        return this.OoooOoO;
    }

    @NonNull
    public s0 OooOoO0() {
        return this.OoooOoo;
    }

    public void OooOoo(@Nullable Fragment fragment) {
        this.OooooOO = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        OooOoOO(fragment.getActivity());
    }

    public void OooOooO(@Nullable o0 o0Var) {
        this.OooooO0 = o0Var;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            OooOoOO(getActivity());
        } catch (IllegalStateException e) {
            if (Log.isLoggable(OooooOo, 5)) {
                Log.w(OooooOo, "Unable to register fragment with root", e);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.OoooOoO.OooO0OO();
        OooOooo();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.OooooOO = null;
        OooOooo();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.OoooOoO.OooO0Oo();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.OoooOoO.OooO0o0();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + OooOo0o() + "}";
    }
}
