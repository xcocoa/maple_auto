package cn.haorui.sdk.adsail_ad.lifecycle;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import cn.haorui.sdk.core.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleHelper {
    private String TAG = getClass().getName();
    private Activity activity;
    private LifecycleFragment lifecycleFragment;
    private LifecycleFragmentV4 lifecycleFragmentV4;

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public void setLifecycleListener(LifecycleListener lifecycleListener) {
        try {
            Activity activity = this.activity;
            if (activity == null) {
                LogUtil.e(this.TAG, "setLifecycleListener: ", new Exception("View Context非Activity"));
            } else if (activity instanceof FragmentActivity) {
                LifecycleFragmentV4 lifecycleFragmentV4CreateLifecycleListenerFragment = LifecycleFragmentV4.createLifecycleListenerFragment((FragmentActivity) activity);
                this.lifecycleFragmentV4 = lifecycleFragmentV4CreateLifecycleListenerFragment;
                if (lifecycleFragmentV4CreateLifecycleListenerFragment != null) {
                    lifecycleFragmentV4CreateLifecycleListenerFragment.setLifecycleListener(lifecycleListener);
                }
            } else {
                LifecycleFragment lifecycleFragmentCreateLifecycleListenerFragment = LifecycleFragment.createLifecycleListenerFragment(activity);
                this.lifecycleFragment = lifecycleFragmentCreateLifecycleListenerFragment;
                if (lifecycleFragmentCreateLifecycleListenerFragment != null) {
                    lifecycleFragmentCreateLifecycleListenerFragment.setLifecycleListener(lifecycleListener);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void unsetLifecycleListener() {
        LifecycleFragmentV4 lifecycleFragmentV4 = this.lifecycleFragmentV4;
        if (lifecycleFragmentV4 != null) {
            lifecycleFragmentV4.setLifecycleListener(null);
        }
        LifecycleFragment lifecycleFragment = this.lifecycleFragment;
        if (lifecycleFragment != null) {
            lifecycleFragment.setLifecycleListener(null);
        }
    }
}
