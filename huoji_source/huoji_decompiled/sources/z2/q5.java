package z2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;

/* JADX INFO: loaded from: classes.dex */
public final class q5 {
    private q5() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static int OooO() {
        WindowManager windowManager = (WindowManager) u5.OooO00o().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        int i = Build.VERSION.SDK_INT;
        Display defaultDisplay = windowManager.getDefaultDisplay();
        if (i >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        return point.x;
    }

    public static int OooO0OO() {
        WindowManager windowManager = (WindowManager) u5.OooO00o().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.y;
    }

    public static int OooO0Oo() {
        WindowManager windowManager = (WindowManager) u5.OooO00o().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    public static int OooO0o() {
        return Resources.getSystem().getDisplayMetrics().densityDpi;
    }

    public static float OooO0o0() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static int OooO0oO() {
        WindowManager windowManager = (WindowManager) u5.OooO00o().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        int i = Build.VERSION.SDK_INT;
        Display defaultDisplay = windowManager.getDefaultDisplay();
        if (i >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        return point.y;
    }

    public static int OooO0oo(@NonNull Activity activity) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation == 2) {
            return 180;
        }
        if (rotation != 3) {
            return 0;
        }
        return SubsamplingScaleImageView.ORIENTATION_270;
    }

    public static float OooOO0() {
        return Resources.getSystem().getDisplayMetrics().xdpi;
    }

    public static float OooOO0O() {
        return Resources.getSystem().getDisplayMetrics().ydpi;
    }

    public static int OooOO0o() {
        try {
            return Settings.System.getInt(u5.OooO00o().getContentResolver(), "screen_off_timeout");
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            return -123;
        }
    }

    public static boolean OooOOOO(@NonNull Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 1024;
    }

    public static boolean OooOOOo() {
        return u5.OooO00o().getResources().getConfiguration().orientation == 2;
    }

    public static boolean OooOOo() {
        KeyguardManager keyguardManager = (KeyguardManager) u5.OooO00o().getSystemService("keyguard");
        if (keyguardManager == null) {
            return false;
        }
        return keyguardManager.inKeyguardRestrictedInputMode();
    }

    public static boolean OooOOo0() {
        return u5.OooO00o().getResources().getConfiguration().orientation == 1;
    }

    public static Bitmap OooOOoo(@NonNull Activity activity) {
        return OooOo00(activity, false);
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public static void OooOo(@NonNull Activity activity) {
        activity.setRequestedOrientation(1);
    }

    public static void OooOo0(@NonNull Activity activity) {
        activity.getWindow().addFlags(1024);
    }

    public static Bitmap OooOo00(@NonNull Activity activity, boolean z) {
        Bitmap bitmapOooo0oO = w5.Oooo0oO(activity.getWindow().getDecorView());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        if (!z) {
            return Bitmap.createBitmap(bitmapOooo0oO, 0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        int iOooOOoo = w5.OooOOoo();
        return Bitmap.createBitmap(bitmapOooo0oO, 0, iOooOOoo, displayMetrics.widthPixels, displayMetrics.heightPixels - iOooOOoo);
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public static void OooOo0O(@NonNull Activity activity) {
        activity.setRequestedOrientation(0);
    }

    public static void OooOo0o(@NonNull Activity activity) {
        activity.getWindow().clearFlags(1024);
    }

    public static void OooOoO(@NonNull Activity activity) {
        boolean zOooOOOO = OooOOOO(activity);
        Window window = activity.getWindow();
        if (zOooOOOO) {
            window.clearFlags(1024);
        } else {
            window.addFlags(1024);
        }
    }

    @RequiresPermission("android.permission.WRITE_SETTINGS")
    public static void OooOoO0(int i) {
        Settings.System.putInt(u5.OooO00o().getContentResolver(), "screen_off_timeout", i);
    }

    public int OooO00o(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return OooO() - iArr[0];
    }

    public int OooO0O0(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return OooO0oO() - iArr[1];
    }

    public int OooOOO(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }

    public int OooOOO0(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0];
    }
}
