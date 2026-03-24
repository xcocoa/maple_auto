package z2;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AlphaAnimation;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Thread;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes.dex */
public class o00O000 {
    private static File OooO = null;
    private static boolean OooO00o = false;
    private static Object OooO0O0 = null;
    private static Thread.UncaughtExceptionHandler OooO0OO = null;
    private static final int OooO0o = 4096;
    private static Handler OooO0o0;
    private static ScheduledExecutorService OooO0oo;
    private static File OooOO0;
    private static Context OooOO0O;
    private static final byte[] OooOOO0;
    private static Map<String, Long> OooO0Oo = new HashMap();
    public static boolean OooO0oO = false;
    private static final char[] OooOO0o = new char[64];

    public class OooO00o implements Runnable {
        private final /* synthetic */ Object OoooOoO;
        private final /* synthetic */ String OoooOoo;
        private final /* synthetic */ Class[] Ooooo00;
        private final /* synthetic */ Object[] Ooooo0o;

        public OooO00o(Object obj, String str, Class[] clsArr, Object[] objArr) {
            this.OoooOoO = obj;
            this.OoooOoo = str;
            this.Ooooo00 = clsArr;
            this.Ooooo0o = objArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            o00O000.OooOooO(this.OoooOoO, this.OoooOoo, false, true, this.Ooooo00, this.Ooooo0o);
        }
    }

    public class OooO0O0 extends AsyncTask<Void, Void, String> {
        private final /* synthetic */ Runnable OooO00o;

        public OooO0O0(Runnable runnable) {
            this.OooO00o = runnable;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public String doInBackground(Void... voidArr) {
            try {
                this.OooO00o.run();
                return null;
            } catch (Exception e) {
                o00O000.OoooO0O(e);
                return null;
            }
        }
    }

    public class OooO0OO implements Runnable {
        private final /* synthetic */ Object OoooOoO;
        private final /* synthetic */ String OoooOoo;
        private final /* synthetic */ Class[] Ooooo00;
        private final /* synthetic */ Object[] Ooooo0o;

        public OooO0OO(Object obj, String str, Class[] clsArr, Object[] objArr) {
            this.OoooOoO = obj;
            this.OoooOoo = str;
            this.Ooooo00 = clsArr;
            this.Ooooo0o = objArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            o00O000.OooOooO(this.OoooOoO, this.OoooOoo, false, true, this.Ooooo00, this.Ooooo0o);
        }
    }

    static {
        char c = 'A';
        int i = 0;
        while (c <= 'Z') {
            OooOO0o[i] = c;
            c = (char) (c + 1);
            i++;
        }
        char c2 = 'a';
        while (c2 <= 'z') {
            OooOO0o[i] = c2;
            c2 = (char) (c2 + 1);
            i++;
        }
        char c3 = '0';
        while (c3 <= '9') {
            OooOO0o[i] = c3;
            c3 = (char) (c3 + 1);
            i++;
        }
        char[] cArr = OooOO0o;
        cArr[i] = '+';
        cArr[i + 1] = IOUtils.DIR_SEPARATOR_UNIX;
        OooOOO0 = new byte[128];
        int i2 = 0;
        while (true) {
            byte[] bArr = OooOOO0;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        for (int i3 = 0; i3 < 64; i3++) {
            OooOOO0[OooOO0o[i3]] = (byte) i3;
        }
    }

    public static void OooO(Object obj) {
        if (OooO00o) {
            StringBuilder sb = new StringBuilder();
            sb.append(obj);
            Log.w("AQuery", sb.toString());
        }
    }

    public static void OooO00o(SharedPreferences.Editor editor) {
        if (o00O00.Oooo0oO >= 9) {
            OooOooO(editor, "apply", false, true, null, null);
        } else {
            editor.commit();
        }
    }

    public static void OooO0O0(File file, long j, long j2) {
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            Arrays.sort(fileArrListFiles, new o00O000o());
            if (OoooOoo(fileArrListFiles, j)) {
                OooO0OO(fileArrListFiles, j2);
            }
            File fileOooOoo0 = OooOoo0();
            if (fileOooOoo0 == null || !fileOooOoo0.exists()) {
                return;
            }
            OooO0OO(fileOooOoo0.listFiles(), 0L);
        } catch (Exception e) {
            OoooO0O(e);
        }
    }

    private static void OooO0OO(File[] fileArr, long j) {
        long length = 0;
        int i = 0;
        for (File file : fileArr) {
            if (file.isFile()) {
                length += file.length();
                if (length >= j) {
                    file.delete();
                    i++;
                }
            }
        }
        OooOO0("deleted", Integer.valueOf(i));
    }

    public static void OooO0Oo(Context context) {
        OooO0o0(context, 3000000L, 2000000L);
    }

    public static void OooO0o(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void OooO0o0(Context context, long j, long j2) {
        try {
            OooOo().schedule(new o00O000o().OooO0oo(2, OooOOo0(context), Long.valueOf(j), Long.valueOf(j2)), 0L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            OoooO0O(e);
        }
    }

    public static void OooO0oO(InputStream inputStream, OutputStream outputStream) throws IOException {
        OooO0oo(inputStream, outputStream, 0, null);
    }

    public static void OooO0oo(InputStream inputStream, OutputStream outputStream, int i, oOO00O ooo00o) throws IOException {
        if (ooo00o != null) {
            ooo00o.OooO0o0();
            ooo00o.OooO0o(i);
        }
        byte[] bArr = new byte[4096];
        int i2 = 0;
        while (true) {
            int i3 = inputStream.read(bArr);
            if (i3 == -1) {
                if (ooo00o != null) {
                    ooo00o.OooO0O0();
                    return;
                }
                return;
            }
            outputStream.write(bArr, 0, i3);
            i2++;
            if (OooO0oO && i2 > 2) {
                OooO("simulating internet error");
                throw new IOException();
            }
            if (ooo00o != null) {
                ooo00o.OooO0Oo(i3);
            }
        }
    }

    public static void OooOO0(Object obj, Object obj2) {
        if (OooO00o) {
            Log.w("AQuery", obj + ":" + obj2);
        }
    }

    public static void OooOO0O(Throwable th) {
        if (OooO00o) {
            Log.w("AQuery", Log.getStackTraceString(th));
        }
    }

    public static void OooOO0o() {
        Object obj;
        if (!OooO00o || (obj = OooO0O0) == null) {
            return;
        }
        synchronized (obj) {
            OooO0O0.notifyAll();
        }
    }

    public static int OooOOO(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static void OooOOO0(long j) {
        if (OooO00o) {
            if (OooO0O0 == null) {
                OooO0O0 = new Object();
            }
            synchronized (OooO0O0) {
                try {
                    OooO0O0.wait(j);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static char[] OooOOOO(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = ((i2 * 4) + 2) / 3;
        char[] cArr = new char[((i2 + 2) / 3) * 4];
        int i7 = i2 + i;
        int i8 = 0;
        while (i < i7) {
            int i9 = i + 1;
            int i10 = bArr[i] & 255;
            if (i9 < i7) {
                i3 = i9 + 1;
                i4 = bArr[i9] & 255;
            } else {
                i3 = i9;
                i4 = 0;
            }
            if (i3 < i7) {
                i5 = bArr[i3] & 255;
                i3++;
            } else {
                i5 = 0;
            }
            int i11 = i10 >>> 2;
            int i12 = ((i10 & 3) << 4) | (i4 >>> 4);
            int i13 = ((i4 & 15) << 2) | (i5 >>> 6);
            int i14 = i5 & 63;
            int i15 = i8 + 1;
            char[] cArr2 = OooOO0o;
            cArr[i8] = cArr2[i11];
            int i16 = i15 + 1;
            cArr[i15] = cArr2[i12];
            char c = '=';
            cArr[i16] = i16 < i6 ? cArr2[i13] : '=';
            int i17 = i16 + 1;
            if (i17 < i6) {
                c = cArr2[i14];
            }
            cArr[i17] = c;
            i8 = i17 + 1;
            i = i3;
        }
        return cArr;
    }

    public static void OooOOOo() {
        if (Oooo00O()) {
            return;
        }
        OoooO0O(new IllegalStateException("Not UI Thread"));
    }

    public static File OooOOo(Context context, int i) {
        if (i != 1) {
            return OooOOo0(context);
        }
        File file = OooOO0;
        if (file != null) {
            return file;
        }
        File file2 = new File(OooOOo0(context), "persistent");
        OooOO0 = file2;
        file2.mkdirs();
        return OooOO0;
    }

    public static File OooOOo0(Context context) {
        if (OooO == null) {
            File file = new File(context.getCacheDir(), "aquery");
            OooO = file;
            file.mkdirs();
        }
        return OooO;
    }

    public static File OooOOoo(File file, String str) {
        if (str == null) {
            return null;
        }
        return str.startsWith(File.separator) ? new File(str) : Oooo0(file, OooOo00(str));
    }

    private static ScheduledExecutorService OooOo() {
        if (OooO0oo == null) {
            OooO0oo = Executors.newSingleThreadScheduledExecutor();
        }
        return OooO0oo;
    }

    public static Context OooOo0() {
        if (OooOO0O == null) {
            OooooOo("warn", "getContext with null");
            OooOO0O(new IllegalStateException());
        }
        return OooOO0O;
    }

    private static String OooOo00(String str) {
        return OooOoOO(str);
    }

    public static File OooOo0O(File file, String str) {
        File fileOooOOoo = OooOOoo(file, str);
        if (fileOooOOoo == null || !fileOooOOoo.exists() || fileOooOOoo.length() == 0) {
            return null;
        }
        return fileOooOOoo;
    }

    public static File OooOo0o(File file, String str) {
        File fileOooOo0O = OooOo0O(file, str);
        if (fileOooOo0O != null) {
            Oooo00o(fileOooOo0O);
        }
        return fileOooOo0O;
    }

    private static byte[] OooOoO(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            OoooO0O(e);
            return null;
        }
    }

    public static Handler OooOoO0() {
        if (OooO0o0 == null) {
            OooO0o0 = new Handler(Looper.getMainLooper());
        }
        return OooO0o0;
    }

    private static String OooOoOO(String str) {
        return new BigInteger(OooOoO(str.getBytes())).abs().toString(36);
    }

    public static Object OooOoo(Object obj, String str, boolean z, boolean z3, Class<?>[] clsArr, Class<?>[] clsArr2, Object... objArr) {
        try {
            return OooOooo(obj, str, z, clsArr, clsArr2, objArr);
        } catch (Exception e) {
            if (z3) {
                OoooO0O(e);
                return null;
            }
            OooOO0O(e);
            return null;
        }
    }

    public static File OooOoo0() {
        File file = new File(Environment.getExternalStorageDirectory(), "aquery/temp");
        file.mkdirs();
        if (file.exists() && file.canWrite()) {
            return file;
        }
        return null;
    }

    public static Object OooOooO(Object obj, String str, boolean z, boolean z3, Class<?>[] clsArr, Object... objArr) {
        return OooOoo(obj, str, z, z3, clsArr, null, objArr);
    }

    private static Object OooOooo(Object obj, String str, boolean z, Class<?>[] clsArr, Class<?>[] clsArr2, Object... objArr) throws Exception {
        if (obj != null && str != null) {
            if (clsArr == null) {
                try {
                    clsArr = new Class[0];
                } catch (NoSuchMethodException unused) {
                    if (z) {
                        try {
                            return clsArr2 == null ? obj.getClass().getMethod(str, new Class[0]).invoke(obj, new Object[0]) : obj.getClass().getMethod(str, clsArr2).invoke(obj, objArr);
                        } catch (NoSuchMethodException unused2) {
                        }
                    }
                }
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        }
        return null;
    }

    public static void Oooo(Runnable runnable) {
        new OooO0O0(runnable).execute(new Void[0]);
    }

    private static File Oooo0(File file, String str) {
        return new File(file, str);
    }

    public static boolean Oooo000() {
        return OooO00o;
    }

    public static boolean Oooo00O() {
        return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
    }

    private static void Oooo00o(File file) {
        file.setLastModified(System.currentTimeMillis());
    }

    public static float Oooo0O0(Context context, float f) {
        return f / (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static void Oooo0OO(Object obj, String str) {
        Oooo0o0(obj, str, new Class[0], new Object[0]);
    }

    public static void Oooo0o(Runnable runnable) {
        OooOoO0().post(runnable);
    }

    public static void Oooo0o0(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        Oooo0o(new OooO00o(obj, str, clsArr, objArr));
    }

    public static void Oooo0oO(Object obj, String str) {
        Oooo0oo(obj, str, new Class[0], new Object[0]);
    }

    public static void Oooo0oo(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        Oooo(new OooO0OO(obj, str, clsArr, objArr));
    }

    private static void OoooO(View view, float f) {
        if (f == 1.0f) {
            view.clearAnimation();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f);
        alphaAnimation.setDuration(0L);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    public static void OoooO0(Runnable runnable) {
        OooOoO0().removeCallbacks(runnable);
    }

    public static void OoooO00(Runnable runnable, long j) {
        OooOoO0().postDelayed(runnable, j);
    }

    public static void OoooO0O(Throwable th) {
        if (th == null) {
            return;
        }
        try {
            OooooOo("reporting", Log.getStackTraceString(th));
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = OooO0OO;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void OoooOO0(File file) {
        OooO = file;
        if (file != null) {
            file.mkdirs();
        }
    }

    public static void OoooOOO(boolean z) {
        OooO00o = z;
    }

    public static void OoooOOo(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        OooO0OO = uncaughtExceptionHandler;
    }

    public static void OoooOo0(File file, byte[] bArr) {
        if (file != null) {
            try {
                Oooooo0(file, bArr);
            } catch (Exception e) {
                OoooO0O(e);
            }
        }
    }

    public static void OoooOoO(File file, byte[] bArr, long j) {
        OooOo().schedule(new o00O000o().OooO0oo(1, file, bArr), j, TimeUnit.MILLISECONDS);
    }

    private static boolean OoooOoo(File[] fileArr, long j) {
        long length = 0;
        for (File file : fileArr) {
            length += file.length();
            if (length > j) {
                return true;
            }
        }
        return false;
    }

    public static void Ooooo00(String str) {
        OooO0Oo.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public static long Ooooo0o(String str, long j) {
        Long l = OooO0Oo.get(str);
        if (l == null) {
            return 0L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - l.longValue();
        if (j == 0 || jCurrentTimeMillis > j) {
            OooOO0(str, Long.valueOf(jCurrentTimeMillis));
        }
        return jCurrentTimeMillis;
    }

    public static byte[] OooooO0(InputStream inputStream) {
        byte[] byteArray;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OooO0oO(inputStream, byteArrayOutputStream);
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            OoooO0O(e);
            byteArray = null;
        }
        OooO0o(inputStream);
        return byteArray;
    }

    public static void OooooOO(View view, boolean z) {
        OoooO(view, z ? 0.5f : 1.0f);
    }

    public static void OooooOo(Object obj, Object obj2) {
        Log.w("AQuery", obj + ":" + obj2);
    }

    public static void Oooooo0(File file, byte[] bArr) {
        try {
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Exception e) {
                    OooOO0("file create fail", file);
                    OoooO0O(e);
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Exception e2) {
            OoooO0O(e2);
        }
    }

    public static void o000oOoO(Application application) {
        OooOO0O = application.getApplicationContext();
    }
}
