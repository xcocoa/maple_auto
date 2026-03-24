package z2;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class o0OOO0o {
    public static String OooO00o = "Volley";
    public static boolean OooO0O0 = Log.isLoggable("Volley", 2);

    public static class OooO00o {
        public static final boolean OooO0OO = o0OOO0o.OooO0O0;
        private static final long OooO0Oo = 0;
        private final List<C0254OooO00o> OooO00o = new ArrayList();
        private boolean OooO0O0 = false;

        /* JADX INFO: renamed from: z2.o0OOO0o$OooO00o$OooO00o, reason: collision with other inner class name */
        public static class C0254OooO00o {
            public final String OooO00o;
            public final long OooO0O0;
            public final long OooO0OO;

            public C0254OooO00o(String str, long j, long j2) {
                this.OooO00o = str;
                this.OooO0O0 = j;
                this.OooO0OO = j2;
            }
        }

        private long OooO0OO() {
            if (this.OooO00o.size() == 0) {
                return 0L;
            }
            return this.OooO00o.get(r2.size() - 1).OooO0OO - this.OooO00o.get(0).OooO0OO;
        }

        public synchronized void OooO00o(String str, long j) {
            if (this.OooO0O0) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.OooO00o.add(new C0254OooO00o(str, j, SystemClock.elapsedRealtime()));
        }

        public synchronized void OooO0O0(String str) {
            this.OooO0O0 = true;
            long jOooO0OO = OooO0OO();
            if (jOooO0OO <= 0) {
                return;
            }
            long j = this.OooO00o.get(0).OooO0OO;
            o0OOO0o.OooO0O0("(%-4d ms) %s", Long.valueOf(jOooO0OO), str);
            for (C0254OooO00o c0254OooO00o : this.OooO00o) {
                long j2 = c0254OooO00o.OooO0OO;
                o0OOO0o.OooO0O0("(+%-4d) [%2d] %s", Long.valueOf(j2 - j), Long.valueOf(c0254OooO00o.OooO0O0), c0254OooO00o.OooO00o);
                j = j2;
            }
        }

        public void finalize() throws Throwable {
            if (this.OooO0O0) {
                return;
            }
            OooO0O0("Request on the loose");
            o0OOO0o.OooO0OO("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    private static String OooO00o(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!stackTrace[i].getClass().equals(o0OOO0o.class)) {
                String className = stackTrace[i].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void OooO0O0(String str, Object... objArr) {
        Log.d(OooO00o, OooO00o(str, objArr));
    }

    public static void OooO0OO(String str, Object... objArr) {
        Log.e(OooO00o, OooO00o(str, objArr));
    }

    public static void OooO0Oo(Throwable th, String str, Object... objArr) {
        Log.e(OooO00o, OooO00o(str, objArr), th);
    }

    public static void OooO0o(String str, Object... objArr) {
        if (OooO0O0) {
            Log.v(OooO00o, OooO00o(str, objArr));
        }
    }

    public static void OooO0o0(String str) {
        OooO0O0("Changing log tag to %s", str);
        OooO00o = str;
        OooO0O0 = Log.isLoggable(str, 2);
    }

    public static void OooO0oO(String str, Object... objArr) {
        Log.wtf(OooO00o, OooO00o(str, objArr));
    }

    public static void OooO0oo(Throwable th, String str, Object... objArr) {
        Log.wtf(OooO00o, OooO00o(str, objArr), th);
    }
}
