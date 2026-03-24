package z2;

import android.content.Context;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;

/* JADX INFO: loaded from: classes2.dex */
public class bh {
    public static void OooO00o(Context context, String str, String str2) {
        UMConfigure.init(context, str, str2, 1, null);
        MobclickAgent.openActivityDurationTrack(false);
    }

    public static void OooO0O0(Context context) {
        MobclickAgent.onKillProcess(context);
    }

    public static void OooO0OO(String str) {
        MobclickAgent.onPageEnd(str);
    }

    public static void OooO0Oo(String str) {
        MobclickAgent.onPageStart(str);
    }

    public static void OooO0o(Context context) {
        MobclickAgent.onResume(context);
    }

    public static void OooO0o0(Context context) {
        MobclickAgent.onPause(context);
    }

    public static void OooO0oO(boolean z) {
        MobclickAgent.openActivityDurationTrack(z);
    }
}
