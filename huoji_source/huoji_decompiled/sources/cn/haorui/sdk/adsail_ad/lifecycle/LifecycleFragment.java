package cn.haorui.sdk.adsail_ad.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleFragment extends Fragment {
    private static final String Fragment_TAG = "LifecycleFragment";
    private LifecycleListener lifecycleListener;

    public static LifecycleFragment createLifecycleListenerFragment(Activity activity) {
        return getLifecycleListenerFragment(activity, activity.getFragmentManager());
    }

    private static LifecycleFragment getLifecycleListenerFragment(Activity activity, FragmentManager fragmentManager) {
        LifecycleFragment lifecycleFragment = (LifecycleFragment) fragmentManager.findFragmentByTag(Fragment_TAG);
        if (lifecycleFragment != null || activity.isFinishing()) {
            return lifecycleFragment;
        }
        LifecycleFragment lifecycleFragment2 = new LifecycleFragment();
        fragmentManager.beginTransaction().add(lifecycleFragment2, Fragment_TAG).commitAllowingStateLoss();
        return lifecycleFragment2;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onDestroy();
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onPause();
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onResume();
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        LifecycleListener lifecycleListener = this.lifecycleListener;
        if (lifecycleListener != null) {
            lifecycleListener.onStart();
        }
    }

    @Override // android.app.Fragment
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
