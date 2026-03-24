package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import z2.g0;
import z2.o0;
import z2.o00Oo00;
import z2.s0;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class RequestManagerFragment extends Fragment {
    private static final String OooooOo = "RMFragment";
    private final g0 OoooOoO;
    private final s0 OoooOoo;
    private final Set<RequestManagerFragment> Ooooo00;

    @Nullable
    private o0 Ooooo0o;

    @Nullable
    private RequestManagerFragment OooooO0;

    @Nullable
    private Fragment OooooOO;

    public class OooO00o implements s0 {
        public OooO00o() {
        }

        @Override // z2.s0
        @NonNull
        public Set<o0> OooO00o() {
            Set<RequestManagerFragment> setOooO0O0 = RequestManagerFragment.this.OooO0O0();
            HashSet hashSet = new HashSet(setOooO0O0.size());
            for (RequestManagerFragment requestManagerFragment : setOooO0O0) {
                if (requestManagerFragment.OooO0o0() != null) {
                    hashSet.add(requestManagerFragment.OooO0o0());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new g0());
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public RequestManagerFragment(@NonNull g0 g0Var) {
        this.OoooOoo = new OooO00o();
        this.Ooooo00 = new HashSet();
        this.OoooOoO = g0Var;
    }

    private void OooO(RequestManagerFragment requestManagerFragment) {
        this.Ooooo00.remove(requestManagerFragment);
    }

    private void OooO00o(RequestManagerFragment requestManagerFragment) {
        this.Ooooo00.add(requestManagerFragment);
    }

    @Nullable
    @TargetApi(17)
    private Fragment OooO0Oo() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        return parentFragment != null ? parentFragment : this.OooooOO;
    }

    @TargetApi(17)
    private boolean OooO0oO(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void OooO0oo(@NonNull Activity activity) {
        OooOO0o();
        RequestManagerFragment requestManagerFragmentOooOOOo = o00Oo00.OooO0Oo(activity).OooOOO().OooOOOo(activity);
        this.OooooO0 = requestManagerFragmentOooOOOo;
        if (equals(requestManagerFragmentOooOOOo)) {
            return;
        }
        this.OooooO0.OooO00o(this);
    }

    private void OooOO0o() {
        RequestManagerFragment requestManagerFragment = this.OooooO0;
        if (requestManagerFragment != null) {
            requestManagerFragment.OooO(this);
            this.OooooO0 = null;
        }
    }

    @NonNull
    @TargetApi(17)
    public Set<RequestManagerFragment> OooO0O0() {
        if (equals(this.OooooO0)) {
            return Collections.unmodifiableSet(this.Ooooo00);
        }
        if (this.OooooO0 == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.OooooO0.OooO0O0()) {
            if (OooO0oO(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    public g0 OooO0OO() {
        return this.OoooOoO;
    }

    @NonNull
    public s0 OooO0o() {
        return this.OoooOoo;
    }

    @Nullable
    public o0 OooO0o0() {
        return this.Ooooo0o;
    }

    public void OooOO0(@Nullable Fragment fragment) {
        this.OooooOO = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        OooO0oo(fragment.getActivity());
    }

    public void OooOO0O(@Nullable o0 o0Var) {
        this.Ooooo0o = o0Var;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            OooO0oo(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable(OooooOo, 5)) {
                Log.w(OooooOo, "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.OoooOoO.OooO0OO();
        OooOO0o();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        OooOO0o();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.OoooOoO.OooO0Oo();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.OoooOoO.OooO0o0();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + OooO0Oo() + "}";
    }
}
