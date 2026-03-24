package com.anythink.china.common.b;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.anythink.china.common.NotificationBroadcaseReceiver;
import com.anythink.china.common.a.e;
import com.anythink.core.common.o.i;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements b {
    public static final String a = "a";
    public static final String b = "anythink_action_notification_click";
    public static final String c = "anythink_action_notification_cannel";
    public static final String d = "anythink_broadcast_receiver_extra_url";
    public static final String e = "anythink_broadcast_receiver_extra_unique_id";
    public static final String f = "anythink_broadcast_receiver_extra_request_status";
    public static final String g = "anythink_broadcast_receiver_extra_notification_id";
    private static volatile a j;
    public Map<String, c> h = new HashMap();
    private NotificationManager i;
    private Context k;
    private int l;

    private a(Context context) {
        this.k = context;
        this.i = b(context);
    }

    private static int a(long j2, long j3) {
        return (int) (((j2 * 1.0f) / j3) * 100.0f);
    }

    public static a a(Context context) {
        if (j == null) {
            synchronized (a.class) {
                if (j == null) {
                    j = new a(context);
                }
            }
        }
        return j;
    }

    private void a(e eVar, NotificationCompat.Builder builder, c cVar) {
        e.a aVar = cVar.d;
        if (aVar == null || aVar != eVar.a()) {
            cVar.d = eVar.a();
            Intent intent = new Intent(b);
            intent.putExtra(e, eVar.n);
            intent.putExtra(d, eVar.b);
            intent.putExtra(f, eVar.a().toString());
            intent.putExtra(g, cVar.a);
            intent.setClass(this.k, NotificationBroadcaseReceiver.class);
            int i = Build.VERSION.SDK_INT;
            PendingIntent broadcast = PendingIntent.getBroadcast(this.k, cVar.a, intent, i >= 31 ? 201326592 : 134217728);
            Intent intent2 = new Intent(c);
            intent2.putExtra(e, eVar.n);
            intent2.putExtra(d, eVar.b);
            intent2.putExtra(f, eVar.a().toString());
            intent2.putExtra(g, cVar.a);
            intent2.setClass(this.k, NotificationBroadcaseReceiver.class);
            builder.setContentIntent(broadcast).setDeleteIntent(PendingIntent.getBroadcast(this.k, cVar.a, intent2, i < 31 ? 134217728 : 201326592));
        }
    }

    private void d(e eVar) {
        a(eVar, 0L, 100L, true);
    }

    private void e(e eVar) {
        a(eVar, 0L, 100L, true);
    }

    private c f(e eVar) {
        String str = eVar.n;
        c cVar = this.h.get(str);
        if (cVar != null) {
            return cVar;
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this.k, str);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24 && i >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(str, str, 3);
            notificationChannel.setSound(null, null);
            this.i.createNotificationChannel(notificationChannel);
        }
        this.l++;
        builder.setOngoing(true).setSound(null).setPriority(0).setOnlyAlertOnce(true).setAutoCancel(false);
        try {
            builder.setSmallIcon(this.k.getPackageManager().getApplicationInfo(this.k.getPackageName(), 128).icon);
        } catch (Throwable th) {
            th.printStackTrace();
            builder.setSmallIcon(i.a(this.k, "core_icon_close", com.anythink.expressad.foundation.h.i.c));
        }
        builder.setContentTitle(eVar.c).setLargeIcon(eVar.d);
        c cVar2 = new c();
        cVar2.a = this.l;
        cVar2.b = builder;
        cVar2.c = -1;
        this.h.put(str, cVar2);
        return cVar2;
    }

    public final void a() {
        try {
            NotificationManager notificationManager = this.i;
            if (notificationManager != null) {
                notificationManager.cancelAll();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(int i) {
        if (i < 0) {
            return;
        }
        try {
            this.i.cancel(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(e eVar) {
        a(eVar, 100L, 100L, true);
    }

    public final void a(e eVar, long j2, long j3) {
        a(eVar, j2, j3, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0153 A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:8:0x000f, B:10:0x0013, B:11:0x001b, B:13:0x0025, B:24:0x00bc, B:28:0x00c8, B:61:0x014d, B:63:0x0153, B:64:0x0157, B:66:0x0169, B:68:0x0178, B:67:0x0171, B:32:0x00d8, B:35:0x00e4, B:44:0x0103, B:46:0x010b, B:51:0x0116, B:54:0x011f, B:56:0x0125, B:58:0x0129, B:59:0x0138, B:60:0x013d, B:15:0x002b, B:19:0x0070, B:23:0x00ad), top: B:80:0x000f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0169 A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:8:0x000f, B:10:0x0013, B:11:0x001b, B:13:0x0025, B:24:0x00bc, B:28:0x00c8, B:61:0x014d, B:63:0x0153, B:64:0x0157, B:66:0x0169, B:68:0x0178, B:67:0x0171, B:32:0x00d8, B:35:0x00e4, B:44:0x0103, B:46:0x010b, B:51:0x0116, B:54:0x011f, B:56:0x0125, B:58:0x0129, B:59:0x0138, B:60:0x013d, B:15:0x002b, B:19:0x0070, B:23:0x00ad), top: B:80:0x000f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0171 A[Catch: all -> 0x0185, TryCatch #0 {all -> 0x0185, blocks: (B:8:0x000f, B:10:0x0013, B:11:0x001b, B:13:0x0025, B:24:0x00bc, B:28:0x00c8, B:61:0x014d, B:63:0x0153, B:64:0x0157, B:66:0x0169, B:68:0x0178, B:67:0x0171, B:32:0x00d8, B:35:0x00e4, B:44:0x0103, B:46:0x010b, B:51:0x0116, B:54:0x011f, B:56:0x0125, B:58:0x0129, B:59:0x0138, B:60:0x013d, B:15:0x002b, B:19:0x0070, B:23:0x00ad), top: B:80:0x000f, outer: #1 }] */
    @Override // com.anythink.china.common.b.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a(e eVar, long j2, long j3, boolean z) {
        int i;
        StringBuilder sb;
        if (eVar != null) {
            if (!TextUtils.isEmpty(eVar.b)) {
                try {
                    if (this.i == null) {
                        this.i = b(this.k);
                    }
                    c cVarF = f(eVar);
                    NotificationCompat.Builder progress = cVarF.b;
                    e.a aVar = cVarF.d;
                    if (aVar == null || aVar != eVar.a()) {
                        cVarF.d = eVar.a();
                        Intent intent = new Intent(b);
                        intent.putExtra(e, eVar.n);
                        intent.putExtra(d, eVar.b);
                        intent.putExtra(f, eVar.a().toString());
                        intent.putExtra(g, cVarF.a);
                        intent.setClass(this.k, NotificationBroadcaseReceiver.class);
                        int i2 = Build.VERSION.SDK_INT;
                        int i3 = 201326592;
                        PendingIntent broadcast = PendingIntent.getBroadcast(this.k, cVarF.a, intent, i2 >= 31 ? 201326592 : 134217728);
                        Intent intent2 = new Intent(c);
                        intent2.putExtra(e, eVar.n);
                        intent2.putExtra(d, eVar.b);
                        intent2.putExtra(f, eVar.a().toString());
                        intent2.putExtra(g, cVarF.a);
                        intent2.setClass(this.k, NotificationBroadcaseReceiver.class);
                        if (i2 < 31) {
                            i3 = 134217728;
                        }
                        progress.setContentIntent(broadcast).setDeleteIntent(PendingIntent.getBroadcast(this.k, cVarF.a, intent2, i3));
                    }
                    int i4 = cVarF.c;
                    boolean z3 = eVar.p == 2;
                    String string = CallMraidJS.f;
                    if (!eVar.f()) {
                        if (eVar.g()) {
                            string = "点击安装";
                            i = 100;
                        } else if (eVar.h()) {
                            string = "下载失败，可点击重试";
                        } else {
                            i = (int) (((j2 * 1.0f) / j3) * 100.0f);
                            if (!z && i4 == i) {
                                return;
                            }
                            cVarF.c = i;
                            if (eVar.b()) {
                                string = eVar.q == 2 ? "等待下载中" : "等待下载中（点击可暂停）";
                            } else if (eVar.c()) {
                                string = "点击继续下载";
                            } else if (eVar.d()) {
                                if (eVar.q == 2) {
                                    sb = new StringBuilder("（下载中：");
                                    sb.append(i);
                                    sb.append("%)");
                                } else {
                                    sb = new StringBuilder("点击暂停下载（下载中：");
                                    sb.append(i);
                                    sb.append("%)");
                                }
                                string = sb.toString();
                            }
                            z3 = false;
                        }
                        if (eVar.d()) {
                            progress = progress.setProgress(100, i, false);
                        }
                        progress.setContentText(string).setStyle(new NotificationCompat.BigTextStyle().bigText(string));
                        if (z3) {
                            progress.setOngoing(true).setAutoCancel(false);
                        } else {
                            progress.setOngoing(false).setAutoCancel(true);
                        }
                        this.i.notify(cVarF.a, progress.build());
                    }
                    string = "点击打开";
                    z3 = true;
                    i = 0;
                    if (eVar.d()) {
                    }
                    progress.setContentText(string).setStyle(new NotificationCompat.BigTextStyle().bigText(string));
                    if (z3) {
                    }
                    this.i.notify(cVarF.a, progress.build());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    @Override // com.anythink.china.common.b.b
    public final NotificationManager b(Context context) {
        if (context == null) {
            return null;
        }
        return (NotificationManager) context.getSystemService("notification");
    }

    @Override // com.anythink.china.common.b.b
    public final String b(e eVar) {
        return eVar.n;
    }

    public final void c(e eVar) {
        if (eVar == null || TextUtils.isEmpty(eVar.b) || this.i == null) {
            return;
        }
        try {
            this.i.cancel(f(eVar).a);
            this.h.remove(eVar.n);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
