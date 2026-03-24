package z2;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.inputmethodservice.InputMethodService;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.PowerManager;
import android.os.Vibrator;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.ActivityChooserModel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ge {
    public static final String OooO = "2G";
    private static MediaPlayer OooO0o = new MediaPlayer();
    public static final String OooO0oO = "NO NETWORK";
    public static final String OooO0oo = "WiFi";
    public static final String OooOO0 = "3G";
    public static final String OooOO0O = "4G";
    public Context OooO00o;
    private PowerManager.WakeLock OooO0O0;
    private PowerManager.WakeLock OooO0OO;
    private KeyguardManager.KeyguardLock OooO0Oo;
    private com.ime.input.a OooO0o0;

    public ge(Context context) {
        this.OooO00o = null;
        this.OooO00o = context;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(6, "fzcyjh");
        this.OooO0O0 = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        this.OooO0o0 = com.ime.input.a.a();
        this.OooO0Oo = ((KeyguardManager) this.OooO00o.getSystemService("keyguard")).newKeyguardLock("unlock");
        this.OooO0OO = ((PowerManager) this.OooO00o.getSystemService("power")).newWakeLock(268435462, "lock_unlock_screen");
    }

    private void OooO0OO(boolean z) {
        Settings.System.putInt(this.OooO00o.getContentResolver(), "airplane_mode_on", z ? 1 : 0);
        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
        intent.putExtra("state", z);
        this.OooO00o.sendBroadcast(intent);
    }

    private void OooO0oO(boolean z) {
        Settings.System.putInt(this.OooO00o.getContentResolver(), "accelerometer_rotation", !z ? 1 : 0);
    }

    public static void OooOOO(String str) {
        if (OooO0o == null) {
            OooO0o = new MediaPlayer();
        }
        OooOOo();
        try {
            StringBuilder sb = new StringBuilder("playSound 4 -- ");
            sb.append(str);
            sb.append(", ");
            sb.append(Thread.currentThread().getName());
            OooO0o.reset();
            OooO0o.setDataSource(str);
            OooO0o.prepare();
            OooO0o.start();
        } catch (IOException e) {
            new StringBuilder("playSound 5 -- ").append(e.getMessage());
            e.printStackTrace();
            OooOoo0();
        } catch (Exception e2) {
            new StringBuilder("playSound 6 -- ").append(e2.getMessage());
            e2.printStackTrace();
            OooOoo0();
        }
    }

    public static void OooOOo() {
        MediaPlayer mediaPlayer = OooO0o;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        OooO0o.stop();
    }

    private static void OooOOoo(int i) {
        if (i > 0) {
            je.OooO00o().OooO0oo("kill ".concat(String.valueOf(i)));
        }
    }

    private boolean OooOoO() {
        try {
            return ((Vibrator) this.OooO00o.getSystemService("vibrator")).hasVibrator();
        } catch (Throwable unused) {
            return false;
        }
    }

    private void OooOoO0() {
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) this.OooO00o.getSystemService("power")).newWakeLock(6, "fzcyjh");
        this.OooO0O0 = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    private List<String> OooOoOO() {
        ArrayList arrayList = new ArrayList();
        Iterator<InputMethodInfo> it = ((InputMethodManager) this.OooO00o.getSystemService("input_method")).getInputMethodList().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getId());
        }
        new StringBuilder("getImList: ").append(arrayList);
        return arrayList;
    }

    private static void OooOoo0() {
        MediaPlayer mediaPlayer = OooO0o;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            OooO0o = null;
        }
    }

    public final String OooO() {
        WifiInfo connectionInfo = ((WifiManager) this.OooO00o.getSystemService("wifi")).getConnectionInfo();
        return connectionInfo == null ? "" : connectionInfo.getMacAddress();
    }

    public final void OooO00o() {
        ((Vibrator) this.OooO00o.getSystemService("vibrator")).cancel();
    }

    public final void OooO0O0(int i) {
        if (OooOoO()) {
            OooO00o();
            ((Vibrator) this.OooO00o.getSystemService("vibrator")).vibrate(i);
        }
    }

    public final boolean OooO0Oo(String str) {
        if (str != null && !str.trim().equals("")) {
            try {
                Intent launchIntentForPackage = this.OooO00o.getPackageManager().getLaunchIntentForPackage(str);
                if (launchIntentForPackage == null) {
                    return false;
                }
                launchIntentForPackage.setFlags(270532608);
                launchIntentForPackage.setPackage(null);
                this.OooO00o.startActivity(launchIntentForPackage);
                StringBuilder sb = new StringBuilder("runApp(");
                sb.append(str);
                sb.append(") OK.");
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public final void OooO0o(int i) {
        if (i > 0) {
            this.OooO0O0.acquire();
            return;
        }
        PowerManager.WakeLock wakeLock = this.OooO0O0;
        if (wakeLock != null) {
            wakeLock.release();
        }
    }

    public final String OooO0o0() {
        String string = Settings.Secure.getString(this.OooO00o.getContentResolver(), "default_input_method");
        if (!string.contains("com.cyjh")) {
            return string;
        }
        ArrayList<String> arrayList = new ArrayList();
        Iterator<InputMethodInfo> it = ((InputMethodManager) this.OooO00o.getSystemService("input_method")).getInputMethodList().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getId());
        }
        new StringBuilder("getImList: ").append(arrayList);
        for (String str : arrayList) {
            if (!str.contains("com.cyjh")) {
                return str;
            }
        }
        return string;
    }

    public final boolean OooO0oo(String str) {
        boolean z = false;
        if (str != null && !str.trim().equals("")) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) this.OooO00o.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    int i = runningAppProcessInfo.pid;
                    if (i > 0) {
                        je.OooO00o().OooO0oo("kill ".concat(String.valueOf(i)));
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    public final void OooOO0(int i) {
        Settings.System.putInt(this.OooO00o.getContentResolver(), "screen_off_timeout", i * 1000);
    }

    public final void OooOO0O(String str) throws Throwable {
        InputConnection currentInputConnection;
        this.OooO0o0.a(false);
        com.ime.input.a aVar = this.OooO0o0;
        StringBuilder sb = new StringBuilder("inputText: ");
        sb.append(str);
        sb.append(", name:");
        sb.append(Thread.currentThread().getName());
        InputMethodService inputMethodService = aVar.a;
        if (inputMethodService != null && (currentInputConnection = inputMethodService.getCurrentInputConnection()) != null) {
            currentInputConnection.commitText(str, str.length());
        }
        this.OooO0o0.a(true);
    }

    @SuppressLint({"MissingPermission"})
    public final String OooOO0o() {
        String string = null;
        try {
            string = Build.VERSION.SDK_INT >= 29 ? Settings.System.getString(this.OooO00o.getContentResolver(), "android_id") : ((TelephonyManager) this.OooO00o.getSystemService("phone")).getDeviceId();
            if (string == null || string.equals("")) {
                string = OooO();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (string == null || string.equals("")) ? OooO() : string;
    }

    public final void OooOOO0(int i) {
        try {
            Settings.System.putInt(this.OooO00o.getContentResolver(), "screen_brightness", (int) (((double) (i * 255)) / 100.0d));
        } catch (Exception e) {
            new StringBuilder("setBacklightLevel --- end error:").append(e.getMessage());
            e.printStackTrace();
        }
    }

    public final String OooOOOO(String str) {
        try {
            return this.OooO00o.getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (Exception e) {
            new StringBuilder("AppAgent - GetAppPath:3:").append(e.getMessage());
            e.printStackTrace();
            return "";
        }
    }

    public final void OooOOOo() {
        String packageName = this.OooO00o.getPackageName();
        ActivityManager activityManager = (ActivityManager) this.OooO00o.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (int i = 0; i < runningAppProcesses.size(); i++) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i);
                if (!runningAppProcessInfo.processName.contains(packageName) && runningAppProcessInfo.importance > 200) {
                    for (String str : runningAppProcessInfo.pkgList) {
                        activityManager.killBackgroundProcesses(str);
                    }
                }
            }
        }
    }

    public final void OooOOo0(int i) {
        AudioManager audioManager = (AudioManager) this.OooO00o.getSystemService(com.anythink.expressad.exoplayer.k.o.b);
        audioManager.setStreamVolume(4, (int) (((double) (audioManager.getStreamMaxVolume(4) * i)) / 100.0d), 8);
        audioManager.setStreamVolume(3, (int) (((double) (audioManager.getStreamMaxVolume(3) * i)) / 100.0d), 8);
        audioManager.setStreamVolume(5, (int) (((double) (audioManager.getStreamMaxVolume(5) * i)) / 100.0d), 8);
        audioManager.setStreamVolume(2, (int) (((double) (audioManager.getStreamMaxVolume(2) * i)) / 100.0d), 8);
        audioManager.setStreamVolume(1, (int) (((double) (audioManager.getStreamMaxVolume(1) * i)) / 100.0d), 8);
        audioManager.setStreamVolume(0, (int) (((double) (audioManager.getStreamMaxVolume(0) * i)) / 100.0d), 8);
        audioManager.setStreamVolume(8, (int) (((double) (i * audioManager.getStreamMaxVolume(8))) / 100.0d), 8);
    }

    public final void OooOo() {
        Intent intent = new Intent("android.net.vpn.SETTINGS");
        intent.setFlags(268435456);
        this.OooO00o.startActivity(intent);
    }

    public final void OooOo0() {
        this.OooO0Oo.disableKeyguard();
        this.OooO0OO.acquire();
        this.OooO0OO.release();
    }

    public final void OooOo00() {
        ((DevicePolicyManager) this.OooO00o.getSystemService("device_policy")).lockNow();
        this.OooO0Oo.reenableKeyguard();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0075 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String OooOo0O() {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.OooO00o.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && (state = networkInfo.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
                return OooO0oo;
            }
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo2 != null) {
                NetworkInfo.State state2 = networkInfo2.getState();
                String subtypeName = networkInfo2.getSubtypeName();
                if (state2 != null && (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING)) {
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            return OooO;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return OooOO0;
                        case 13:
                            return OooOO0O;
                        default:
                            if (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) {
                                return OooOO0;
                            }
                            break;
                    }
                }
            }
        }
        return OooO0oO;
    }

    public final String OooOo0o() {
        try {
            return this.OooO00o.getFilesDir().getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
