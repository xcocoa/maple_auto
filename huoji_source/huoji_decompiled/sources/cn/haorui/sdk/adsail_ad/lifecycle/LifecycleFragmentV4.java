package cn.haorui.sdk.adsail_ad.lifecycle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleFragmentV4 extends Fragment {
    private static final String Fragment_TAG = "LifecycleFragment_V4";
    private LifecycleListener lifecycleListener;

    public static LifecycleFragmentV4 createLifecycleListenerFragment(FragmentActivity fragmentActivity) {
        return getLifecycleListenerFragment(fragmentActivity, fragmentActivity.getSupportFragmentManager());
    }

    private static LifecycleFragmentV4 getLifecycleListenerFragment(FragmentActivity fragmentActivity, FragmentManager fragmentManager) {
        LifecycleFragmentV4 lifecycleFragmentV4 = (LifecycleFragmentV4) fragmentManager.findFragmentByTag(Fragment_TAG);
        if (lifecycleFragmentV4 != null || fragmentActivity.isFinishing()) {
            return lifecycleFragmentV4;
        }
        LifecycleFragmentV4 lifecycleFragmentV42 = new LifecycleFragmentV4();
        fragmentManager.beginTransaction().add(lifecycleFragmentV42, Fragment_TAG).commitAllowingStateLoss();
        return lifecycleFragmentV42;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onPause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onStop();
        }
    }

    public void setLifecycleListener(LifecycleListener lifecycleListener) {
        this.lifecycleListener = lifecycleListener;
    }
}
