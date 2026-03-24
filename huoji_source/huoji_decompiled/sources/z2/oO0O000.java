package z2;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class oO0O000 {
    private static final String OooO00o = "GlideRuntimeCompat";
    private static final String OooO0O0 = "cpu[0-9]+";
    private static final String OooO0OO = "/sys/devices/system/cpu/";

    public class OooO00o implements FilenameFilter {
        public final /* synthetic */ Pattern OoooOoO;

        public OooO00o(Pattern pattern) {
            this.OoooOoO = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.OoooOoO.matcher(str).matches();
        }
    }

    private oO0O000() {
    }

    public static int OooO00o() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        return Build.VERSION.SDK_INT < 17 ? Math.max(OooO0O0(), iAvailableProcessors) : iAvailableProcessors;
    }

    private static int OooO0O0() {
        File[] fileArrListFiles;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            fileArrListFiles = new File(OooO0OO).listFiles(new OooO00o(Pattern.compile(OooO0O0)));
        } catch (Throwable th) {
            try {
                if (Log.isLoggable(OooO00o, 6)) {
                    Log.e(OooO00o, "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                fileArrListFiles = null;
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        }
        return Math.max(1, fileArrListFiles != null ? fileArrListFiles.length : 0);
    }
}
