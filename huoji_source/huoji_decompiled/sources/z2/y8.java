package z2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService;
import com.cyjh.elfin.services.KeepMainService;
import com.cyjh.elfin.ui.activity.BindRegisterCodeActivity;
import com.cyjh.elfin.ui.activity.ElfinFreeActivity;
import com.cyjh.elfin.ui.activity.H5LinkJumpPageActivity;
import com.cyjh.elfin.ui.activity.SweepCodeZbarActivity;
import com.cyjh.elfin.ui.activity.UnbindRegistrationCodeActivity;
import com.elfin.ad.activity.FullScreenTwoAdActivity;

/* JADX INFO: loaded from: classes.dex */
public class y8 {
    public static void OooO(String str, String str2) {
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) KeepMainService.class);
        intent.putExtra(KeepMainService.OoooOoo, 1);
        Bundle bundle = new Bundle();
        bundle.putString(KeepMainService.Oooooo0, str);
        bundle.putString(KeepMainService.Oooooo, str2);
        intent.putExtra(KeepMainService.OooooOo, bundle);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooO00o(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) BindRegisterCodeActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(BindRegisterCodeActivity.class.getCanonicalName(), str);
        context.startActivity(intent);
    }

    public static void OooO0O0(Context context) {
        Intent intent = new Intent(context, (Class<?>) ElfinFreeActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void OooO0OO(Context context) {
        Intent intent = new Intent(context, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void OooO0Oo(Context context, String str) {
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public static void OooO0o() {
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) FloatingWindowService.class);
        intent.putExtra(d3.OooO, 12);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooO0o0(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) H5LinkJumpPageActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(H5LinkJumpPageActivity.class.getCanonicalName(), str);
        intent.putExtra(H5LinkJumpPageActivity.class.getSimpleName(), str2);
        context.startActivity(intent);
    }

    public static void OooO0oO(String str, String str2) {
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) FloatingWindowService.class);
        intent.putExtra(d3.OooO, 2);
        Bundle bundle = new Bundle();
        bundle.putInt(FloatingWindowService.o00Ooo, 1);
        bundle.putString(FloatingWindowService.o00o0O, str);
        bundle.putString(FloatingWindowService.o00ooo, str2);
        intent.putExtra(FloatingWindowService.ooOO, bundle);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooO0oo(String str, String[] strArr, String str2) {
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) FloatingWindowService.class);
        intent.putExtra(d3.OooO, 2);
        Bundle bundle = new Bundle();
        bundle.putInt(FloatingWindowService.o00Ooo, 0);
        bundle.putString(FloatingWindowService.o00oO0O, j3.OooO0O0());
        bundle.putString(FloatingWindowService.o0ooOO0, j3.OooO00o());
        bundle.putString(FloatingWindowService.o00O0O, str);
        bundle.putString(FloatingWindowService.o00Oo0, str2);
        bundle.putStringArray(FloatingWindowService.o0ooOOo, strArr);
        intent.putExtra(FloatingWindowService.ooOO, bundle);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooOO0() {
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) KeepMainService.class);
        intent.putExtra(KeepMainService.OoooOoo, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooOO0O() {
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) KeepMainService.class);
        intent.putExtra(KeepMainService.OoooOoo, 100);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooOO0o(int i) {
        String str = "ShowFloatServiceWithKey key start :" + i;
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) FloatingWindowService.class);
        intent.putExtra(d3.OooO, i);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
        String str2 = "ShowFloatServiceWithKey key end :" + i;
    }

    public static Intent OooOOO(Context context) {
        return new Intent(context, (Class<?>) SweepCodeZbarActivity.class);
    }

    public static void OooOOO0(long j) {
        b7.OooO0Oo().OooOOO0(j);
        String str = "toShowFloatServiceWithTokenKey: tokenKey = " + j;
        AppContext appContextOooO00o = AppContext.OooO00o();
        Intent intent = new Intent(appContextOooO00o, (Class<?>) FloatingWindowService.class);
        intent.putExtra(d3.OooO, 202);
        intent.putExtra("tokenKey", j);
        if (Build.VERSION.SDK_INT >= 26) {
            appContextOooO00o.startForegroundService(intent);
        } else {
            appContextOooO00o.startService(intent);
        }
    }

    public static void OooOOOO(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) UnbindRegistrationCodeActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(UnbindRegistrationCodeActivity.class.getCanonicalName(), str);
        context.startActivity(intent);
    }
}
