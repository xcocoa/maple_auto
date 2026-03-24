package com.umeng.commonsdk.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.umeng.commonsdk.proguard.j;
import com.umeng.commonsdk.proguard.u;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static HandlerThread a = null;
    private static Handler b = null;
    private static Handler c = null;
    private static final int d = 273;
    private static final int e = 512;
    private static final int f = 769;
    private static a g;
    private static ConnectivityManager h;
    private static NetworkInfo i;
    private static IntentFilter j;
    private static StatTracer k;
    private static ImLatent l;
    private static boolean m;
    private static BroadcastReceiver n = new BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.d.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.framework.d.1.1
                @Override // java.lang.Runnable
                public void run() {
                    j.d(context);
                }
            }).start();
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                final Context contextA = c.a();
                ConnectivityManager unused = d.h = (ConnectivityManager) contextA.getSystemService("connectivity");
                try {
                    NetworkInfo unused2 = d.i = d.h.getActiveNetworkInfo();
                    if (d.i == null || !d.i.isAvailable()) {
                        com.umeng.commonsdk.statistics.common.e.c("--->>> network disconnected.");
                        boolean unused3 = d.m = false;
                    } else {
                        com.umeng.commonsdk.statistics.common.e.c("--->>> network isAvailable, check if there are any files to send.");
                        boolean unused4 = d.m = true;
                        d.c(273);
                        if (d.i.getType() == 1) {
                            com.umeng.commonsdk.statistics.common.e.c("--->>> wifi connection available, send uop packet now.");
                            new Thread(new Runnable() { // from class: com.umeng.commonsdk.framework.d.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        u.a(contextA);
                                    } catch (Throwable th) {
                                        com.umeng.commonsdk.proguard.e.a(contextA, th);
                                    }
                                }
                            }).start();
                        }
                    }
                } catch (Throwable th) {
                    com.umeng.commonsdk.proguard.e.a(contextA, th);
                }
            }
        }
    };

    public static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            if ((i & 8) != 8) {
                return;
            }
            com.umeng.commonsdk.statistics.common.e.b("--->>> envelope file created >>> " + str);
            d.c(273);
        }
    }

    public d(Context context, Handler handler) {
        c = handler;
        if (a == null) {
            HandlerThread handlerThread = new HandlerThread("NetWorkSender");
            a = handlerThread;
            handlerThread.start();
            if (g == null) {
                a aVar = new a(b.h(context));
                g = aVar;
                aVar.startWatching();
                com.umeng.commonsdk.statistics.common.e.b("--->>> FileMonitor has already started!");
            }
            Context contextA = c.a();
            if (DeviceConfig.checkPermission(contextA, "android.permission.ACCESS_NETWORK_STATE") && j == null) {
                IntentFilter intentFilter = new IntentFilter();
                j = intentFilter;
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                BroadcastReceiver broadcastReceiver = n;
                if (broadcastReceiver != null) {
                    contextA.registerReceiver(broadcastReceiver, j);
                }
            }
            if (k == null) {
                StatTracer statTracer = StatTracer.getInstance(context);
                k = statTracer;
                l = ImLatent.getService(context, statTracer);
            }
            if (b == null) {
                b = new Handler(a.getLooper()) { // from class: com.umeng.commonsdk.framework.d.2
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        int i2 = message.what;
                        if (i2 == 273) {
                            com.umeng.commonsdk.statistics.common.e.b("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                            d.j();
                        } else {
                            if (i2 != 512) {
                                return;
                            }
                            d.i();
                        }
                    }
                };
            }
        }
    }

    public static void a() {
        c(512);
    }

    private static void a(int i2, int i3) {
        Handler handler;
        if (!m || (handler = c) == null) {
            return;
        }
        handler.removeMessages(i2);
        Message messageObtainMessage = c.obtainMessage();
        messageObtainMessage.what = i2;
        c.sendMessageDelayed(messageObtainMessage, i3);
    }

    private static void a(int i2, long j2) {
        Handler handler;
        if (!m || (handler = b) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        b.sendMessageDelayed(messageObtainMessage, j2);
    }

    public static void b() {
        b(273);
    }

    private static void b(int i2) {
        Handler handler;
        if (!m || (handler = b) == null || handler.hasMessages(i2)) {
            return;
        }
        Message messageObtainMessage = b.obtainMessage();
        messageObtainMessage.what = i2;
        b.sendMessage(messageObtainMessage);
    }

    public static void c() {
        a(f, 3000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i2) {
        Handler handler;
        if (!m || (handler = b) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        b.sendMessage(messageObtainMessage);
    }

    private static void h() {
        if (a != null) {
            a = null;
        }
        if (b != null) {
            b = null;
        }
        if (c != null) {
            c = null;
        }
        if (l != null) {
            l = null;
        }
        if (k != null) {
            k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i() {
        a aVar = g;
        if (aVar != null) {
            aVar.stopWatching();
            g = null;
        }
        if (j != null) {
            if (n != null) {
                c.a().unregisterReceiver(n);
                n = null;
            }
            j = null;
        }
        com.umeng.commonsdk.statistics.common.e.b("--->>> handleQuit: Quit sender thread.");
        HandlerThread handlerThread = a;
        if (handlerThread != null) {
            handlerThread.quit();
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j() {
        com.umeng.commonsdk.statistics.common.e.b("--->>> handleProcessNext: Enter...");
        if (m) {
            Context contextA = c.a();
            try {
                if (b.c(contextA) > 0) {
                    com.umeng.commonsdk.statistics.common.e.b("--->>> The envelope file exists.");
                    if (b.c(contextA) > 100) {
                        com.umeng.commonsdk.statistics.common.e.b("--->>> Number of envelope files is greater than 100, remove old files first.");
                        b.d(contextA);
                    }
                    File fileE = b.e(contextA);
                    if (fileE != null) {
                        com.umeng.commonsdk.statistics.common.e.b("--->>> Ready to send envelope file [" + fileE.getPath() + "].");
                        com.umeng.commonsdk.statistics.d dVar = new com.umeng.commonsdk.statistics.d(contextA);
                        ImLatent imLatent = l;
                        if (imLatent != null && imLatent.isLatentActivite()) {
                            l.latentDeactivite();
                            long delayTime = l.getDelayTime();
                            if (delayTime > 0) {
                                com.umeng.commonsdk.statistics.common.e.c("start lacency policy, wait [" + delayTime + "] milliseconds .");
                                try {
                                    Thread.sleep(delayTime * 1000);
                                } catch (Throwable th) {
                                    com.umeng.commonsdk.proguard.e.a(contextA, th);
                                }
                            }
                        }
                        if (!dVar.a(fileE)) {
                            com.umeng.commonsdk.statistics.common.e.b("--->>> Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        com.umeng.commonsdk.statistics.common.e.b("--->>> Send envelope file success, delete it.");
                        if (!b.a(fileE)) {
                            com.umeng.commonsdk.statistics.common.e.b("--->>> Failed to delete already processed file. We try again after delete failed.");
                            b.a(fileE);
                        }
                        c(273);
                        return;
                    }
                }
                com.umeng.commonsdk.statistics.common.e.b("--->>> The envelope file not exists, start auto process for module cache data.");
                c();
            } catch (Throwable th2) {
                com.umeng.commonsdk.proguard.e.a(contextA, th2);
            }
        }
    }
}
