package z2;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;

/* JADX INFO: loaded from: classes.dex */
public final class oOo0000O {

    @VisibleForTesting
    public static final int OooO0o = 4;
    private static final String OooO0o0 = "MemorySizeCalculator";
    private static final int OooO0oO = 2;
    private final int OooO00o;
    private final int OooO0O0;
    private final Context OooO0OO;
    private final int OooO0Oo;

    public static final class OooO00o {

        @VisibleForTesting
        public static final int OooO = 2;
        public static final int OooOO0;
        public static final float OooOO0O = 0.4f;
        public static final float OooOO0o = 0.33f;
        public static final int OooOOO0 = 4194304;
        public final Context OooO00o;
        public ActivityManager OooO0O0;
        public OooO0OO OooO0OO;
        public float OooO0o0;
        public float OooO0Oo = 2.0f;
        public float OooO0o = 0.4f;
        public float OooO0oO = 0.33f;
        public int OooO0oo = 4194304;

        static {
            OooOO0 = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public OooO00o(Context context) {
            this.OooO0o0 = OooOO0;
            this.OooO00o = context;
            this.OooO0O0 = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            this.OooO0OO = new OooO0O0(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !oOo0000O.OooO0o0(this.OooO0O0)) {
                return;
            }
            this.OooO0o0 = 0.0f;
        }

        public oOo0000O OooO00o() {
            return new oOo0000O(this);
        }

        @VisibleForTesting
        public OooO00o OooO0O0(ActivityManager activityManager) {
            this.OooO0O0 = activityManager;
            return this;
        }

        public OooO00o OooO0OO(int i) {
            this.OooO0oo = i;
            return this;
        }

        public OooO00o OooO0Oo(float f) {
            r2.OooO00o(f >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.OooO0o0 = f;
            return this;
        }

        public OooO00o OooO0o(float f) {
            r2.OooO00o(f >= 0.0f && f <= 1.0f, "Size multiplier must be between 0 and 1");
            this.OooO0o = f;
            return this;
        }

        public OooO00o OooO0o0(float f) {
            r2.OooO00o(f >= 0.0f && f <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.OooO0oO = f;
            return this;
        }

        public OooO00o OooO0oO(float f) {
            r2.OooO00o(f >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.OooO0Oo = f;
            return this;
        }

        @VisibleForTesting
        public OooO00o OooO0oo(OooO0OO oooO0OO) {
            this.OooO0OO = oooO0OO;
            return this;
        }
    }

    public static final class OooO0O0 implements OooO0OO {
        private final DisplayMetrics OooO00o;

        public OooO0O0(DisplayMetrics displayMetrics) {
            this.OooO00o = displayMetrics;
        }

        @Override // z2.oOo0000O.OooO0OO
        public int OooO00o() {
            return this.OooO00o.heightPixels;
        }

        @Override // z2.oOo0000O.OooO0OO
        public int OooO0O0() {
            return this.OooO00o.widthPixels;
        }
    }

    public interface OooO0OO {
        int OooO00o();

        int OooO0O0();
    }

    public oOo0000O(OooO00o oooO00o) {
        this.OooO0OO = oooO00o.OooO00o;
        int i = OooO0o0(oooO00o.OooO0O0) ? oooO00o.OooO0oo / 2 : oooO00o.OooO0oo;
        this.OooO0Oo = i;
        int iOooO0OO = OooO0OO(oooO00o.OooO0O0, oooO00o.OooO0o, oooO00o.OooO0oO);
        float fOooO0O0 = oooO00o.OooO0OO.OooO0O0() * oooO00o.OooO0OO.OooO00o() * 4;
        int iRound = Math.round(oooO00o.OooO0o0 * fOooO0O0);
        int iRound2 = Math.round(fOooO0O0 * oooO00o.OooO0Oo);
        int i2 = iOooO0OO - i;
        int i3 = iRound2 + iRound;
        if (i3 <= i2) {
            this.OooO0O0 = iRound2;
            this.OooO00o = iRound;
        } else {
            float f = i2;
            float f2 = oooO00o.OooO0o0;
            float f3 = oooO00o.OooO0Oo;
            float f4 = f / (f2 + f3);
            this.OooO0O0 = Math.round(f3 * f4);
            this.OooO00o = Math.round(f4 * oooO00o.OooO0o0);
        }
        if (Log.isLoggable(OooO0o0, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(OooO0o(this.OooO0O0));
            sb.append(", pool size: ");
            sb.append(OooO0o(this.OooO00o));
            sb.append(", byte array size: ");
            sb.append(OooO0o(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > iOooO0OO);
            sb.append(", max size: ");
            sb.append(OooO0o(iOooO0OO));
            sb.append(", memoryClass: ");
            sb.append(oooO00o.OooO0O0.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(OooO0o0(oooO00o.OooO0O0));
            Log.d(OooO0o0, sb.toString());
        }
    }

    private static int OooO0OO(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (OooO0o0(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    private String OooO0o(int i) {
        return Formatter.formatFileSize(this.OooO0OO, i);
    }

    @TargetApi(19)
    public static boolean OooO0o0(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    public int OooO00o() {
        return this.OooO0Oo;
    }

    public int OooO0O0() {
        return this.OooO00o;
    }

    public int OooO0Oo() {
        return this.OooO0O0;
    }
}
