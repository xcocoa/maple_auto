package com.umeng.commonsdk.stateless;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static final int a = 273;
    private static Context b = null;
    private static HandlerThread c = null;
    private static Handler d = null;
    private static final int f = 512;
    private static IntentFilter g;
    private static boolean h;
    private static Object e = new Object();
    private static BroadcastReceiver i = new BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.d.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager;
            if (context == null || intent == null) {
                return;
            }
            try {
                if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    Context unused = d.b = context.getApplicationContext();
                    if (d.b != null && (connectivityManager = (ConnectivityManager) d.b.getSystemService("connectivity")) != null) {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] net reveiver disconnected --->>>");
                            boolean unused2 = d.h = false;
                        } else {
                            boolean unused3 = d.h = true;
                            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] net reveiver ok --->>>");
                            d.b(273);
                        }
                    }
                }
            } catch (Throwable th) {
                com.umeng.commonsdk.proguard.e.a(context, th);
            }
        }
    };

    /* JADX WARN: Removed duplicated region for block: B:22:0x0075 A[Catch: all -> 0x0077, DONT_GENERATE, TryCatch #1 {, blocks: (B:22:0x0075, B:21:0x0072, B:5:0x0008, B:7:0x0010, B:9:0x0014, B:11:0x0024, B:12:0x0031, B:14:0x003b, B:16:0x004c, B:18:0x005c), top: B:27:0x0008, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public d(Context context) {
        Context applicationContext;
        synchronized (e) {
            if (context != null) {
                try {
                    applicationContext = context.getApplicationContext();
                    b = applicationContext;
                } finally {
                }
                if (applicationContext != null && c == null) {
                    HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                    c = handlerThread;
                    handlerThread.start();
                    if (d == null) {
                        d = new Handler(c.getLooper()) { // from class: com.umeng.commonsdk.stateless.d.2
                            @Override // android.os.Handler
                            public void handleMessage(Message message) {
                                int i2 = message.what;
                                if (i2 == 273) {
                                    d.e();
                                } else {
                                    if (i2 != 512) {
                                        return;
                                    }
                                    d.f();
                                }
                            }
                        };
                    }
                    if (DeviceConfig.checkPermission(b, "android.permission.ACCESS_NETWORK_STATE")) {
                        com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] begin register receiver");
                        if (g == null) {
                            IntentFilter intentFilter = new IntentFilter();
                            g = intentFilter;
                            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                            if (i != null) {
                                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] register receiver ok");
                                b.registerReceiver(i, g);
                            }
                        }
                    }
                }
            }
        }
    }

    public static void a() {
        b(512);
    }

    public static void a(int i2) {
        Handler handler;
        if (!h || (handler = d) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        d.sendMessage(messageObtainMessage);
    }

    public static void b(int i2) {
        Handler handler;
        try {
            if (!h || (handler = d) == null || handler.hasMessages(i2)) {
                return;
            }
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] sendMsgOnce !!!!");
            Message messageObtainMessage = d.obtainMessage();
            messageObtainMessage.what = i2;
            d.sendMessage(messageObtainMessage);
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(b, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e() {
        Context context;
        if (!h || (context = b) == null) {
            return;
        }
        try {
            File fileA = f.a(context);
            if (fileA == null || fileA.getParentFile() == null || TextUtils.isEmpty(fileA.getParentFile().getName())) {
                return;
            }
            e eVar = new e(b);
            String str = new String(Base64.decode(fileA.getParentFile().getName(), 0));
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] handleProcessNext, pathUrl is " + str);
            byte[] bArrA = null;
            try {
                bArrA = f.a(fileA.getAbsolutePath());
            } catch (Exception unused) {
            }
            if (!eVar.a(bArrA, str)) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                return;
            }
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] Send envelope file success, delete it.");
            File file = new File(fileA.getAbsolutePath());
            if (!file.delete()) {
                com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                file.delete();
            }
            b(273);
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(b, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        if (g != null) {
            BroadcastReceiver broadcastReceiver = i;
            if (broadcastReceiver != null) {
                Context context = b;
                if (context != null) {
                    context.unregisterReceiver(broadcastReceiver);
                }
                i = null;
            }
            g = null;
        }
        HandlerThread handlerThread = c;
        if (handlerThread != null) {
            handlerThread.quit();
            if (c != null) {
                c = null;
            }
            if (d != null) {
                d = null;
            }
        }
    }
}
