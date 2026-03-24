package cn.haorui.sdk.core.exception;

import android.content.Context;
import androidx.annotation.NonNull;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.RequestUtil;
import com.umeng.commonsdk.proguard.v;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.lang.Thread;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import z2.hx;
import z2.qx;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final ArrayList<String> a;
    public static boolean b;

    public static class a implements Thread.UncaughtExceptionHandler {
        public Context a;
        public boolean b;
        public Thread.UncaughtExceptionHandler c;

        public a(Context context, boolean z, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = context;
            this.b = z;
            this.c = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            try {
                c.a(this.a, this.b, thread, th);
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.c;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        a = arrayList;
        b = true;
        arrayList.add("device_adid");
        arrayList.add("device_imsi");
        arrayList.add("device_imei");
        arrayList.add("device_geo_lon");
        arrayList.add("device_geo_lat");
        arrayList.add("device_battery_level");
        arrayList.add("device_mac");
        arrayList.add("secure");
        arrayList.add("device_apiLevel");
        arrayList.add("is_mobile");
        arrayList.add(v.ab);
        arrayList.add("device_oaid");
        arrayList.add("device_ssid");
        arrayList.add("device_wifi_mac");
    }

    public static void a(Context context, boolean z, Thread thread, Throwable th) {
        try {
            Map<String, String> params = RequestUtil.getParams(context, null, null, 0L, 0L);
            hx.OooO00o oooO00o = new hx.OooO00o();
            for (Map.Entry<String, String> entry : params.entrySet()) {
                if (!a.contains(entry.getKey())) {
                    oooO00o.OooO00o(entry.getKey(), entry.getValue());
                }
            }
            oooO00o.OooO00o("thread", thread.getName());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            th.printStackTrace(new PrintStream(byteArrayOutputStream));
            oooO00o.OooO00o("message", new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8")));
            oooO00o.OooO00o("env", z ? "test" : "prod");
            CountDownLatch countDownLatch = new CountDownLatch(1);
            HttpUtil.doCommonRequest(new qx.OooO00o().OooOOo0("https://e-zlsdk.1rtb.net/reports").OooOO0o(oooO00o.OooO0OO()).OooO0O0(), new b(countDownLatch));
            countDownLatch.await(2L, TimeUnit.SECONDS);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
