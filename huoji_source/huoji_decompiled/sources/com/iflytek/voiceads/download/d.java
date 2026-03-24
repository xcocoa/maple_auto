package com.iflytek.voiceads.download;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import com.iflytek.voiceads.download.d.a;
import com.iflytek.voiceads.listener.DialogListener;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import z2.g6;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d {
    private static d j;
    private Context a;
    private Handler b;
    private HandlerThread e;
    private DialogListener f;
    private boolean g;
    private com.iflytek.voiceads.download.a.b k;
    private NotificationManager l;
    private final int h = 0;
    private final int i = com.anythink.expressad.exoplayer.d.b;
    private final String n = com.anythink.china.common.a.a.g;
    private final BroadcastReceiver o = new o(this);
    private final int p = 24;
    private final int q = 26;
    private HashMap<Integer, Object> m = new HashMap<>();
    private HashMap<String, b> c = new HashMap<>();
    private HashMap<String, b> d = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b {
        public String a;
        public String b;
        public String c;
        public JSONArray d;
        public JSONArray e;
        public JSONArray f;
        public JSONArray g;
        public int h;

        private b() {
        }

        /* synthetic */ b(d dVar, e eVar) {
            this();
        }
    }

    private d(Context context) {
        this.a = context;
        this.l = (NotificationManager) context.getSystemService("notification");
        a();
    }

    public static synchronized d a(Context context) {
        if (j == null) {
            j = new d(context);
        }
        return j;
    }

    private void a() {
        this.e = new HandlerThread(g6.OoooOOo);
        this.e.start();
        this.b = new e(this, this.e.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        try {
            if (!this.m.containsKey(Integer.valueOf(i))) {
                int i2 = Build.VERSION.SDK_INT;
                int i3 = this.a.getApplicationInfo().targetSdkVersion;
                if (i2 < 26 || i3 < 26) {
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(this.a);
                    builder.setContentTitle("准备下载").setWhen(System.currentTimeMillis()).setProgress(100, 0, false).setSmallIcon(R.drawable.stat_sys_download).setDefaults(16);
                    this.l.notify(i, builder.build());
                    this.m.put(Integer.valueOf(i), builder);
                } else {
                    Notification.Builder builder2 = new Notification.Builder(this.a);
                    this.l.createNotificationChannel(new NotificationChannel("iflyad", "iflyad", 2));
                    builder2.setContentTitle("准备下载").setChannelId("iflyad").setWhen(System.currentTimeMillis()).setProgress(100, 0, false).setSmallIcon(R.drawable.stat_sys_download).setDefaults(16);
                    this.l.notify(i, builder2.build());
                    this.m.put(Integer.valueOf(i), builder2);
                }
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "showNotification error " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        int i4 = this.a.getApplicationInfo().targetSdkVersion;
        if (i3 < 26 || i4 < 26) {
            NotificationCompat.Builder builder = (NotificationCompat.Builder) this.m.get(Integer.valueOf(i));
            if (builder != null) {
                builder.setContentTitle("正在下载").setContentText(i2 + "%").setProgress(100, i2, false);
                this.l.notify(i, builder.build());
                return;
            }
            return;
        }
        Notification.Builder builder2 = (Notification.Builder) this.m.get(Integer.valueOf(i));
        if (builder2 != null) {
            builder2.setContentTitle("正在下载").setContentText(i2 + "%").setProgress(100, i2, false);
            this.l.notify(i, builder2.build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, a aVar) {
        if (activity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage("确认下载？");
        builder.setPositiveButton("下载", new j(this, aVar));
        builder.setNegativeButton("取消", new k(this));
        builder.setOnCancelListener(new l(this));
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, File file) {
        if (context == null || file == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            int i = Build.VERSION.SDK_INT;
            int i2 = context.getApplicationInfo().targetSdkVersion;
            if (i < 24 || i2 < 24) {
                intent.setFlags(268435456);
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            } else {
                if (i >= 26 && i2 >= 26 && !b(context)) {
                    Intent intent2 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                    if (context instanceof Activity) {
                        ((Activity) context).startActivityForResult(intent2, 0);
                    }
                }
                intent.addFlags(1);
                intent.setDataAndType(FileProvider.getUriForFile(context, this.a.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
            }
            context.startActivity(intent);
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "installApp error " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(b bVar) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "start download ad");
        try {
            String str = c.a(this.a) + File.separator + bVar.b + com.anythink.china.common.a.a.g;
            File file = new File(str);
            if (file.exists() && com.iflytek.voiceads.utils.b.a(this.a, str)) {
                a(bVar.d);
                a(bVar.e);
                this.d.put(bVar.b, bVar);
                b();
                c(bVar.b);
                a(this.a, file);
            } else {
                com.iflytek.voiceads.download.d.a aVarA = new a.C0183a().a(bVar.a).b(str).a();
                this.k = com.iflytek.voiceads.download.a.a(this.a);
                aVarA.a(new m(this, bVar, str));
                this.c.put(bVar.b, bVar);
                this.k.a(aVarA);
                a(bVar.d);
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "开始下载监控 下载地址：" + bVar.a);
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "startDownloadAd error " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "start download ad no trace");
        if (!TextUtils.isEmpty(str)) {
            try {
                String str2 = c.a(this.a) + File.separator + com.iflytek.voiceads.utils.d.a(str) + com.anythink.china.common.a.a.g;
                File file = new File(str2);
                if (file.exists() && com.iflytek.voiceads.utils.b.a(this.a, str2)) {
                    a(this.a, file);
                } else {
                    this.k = com.iflytek.voiceads.download.a.a(this.a);
                    com.iflytek.voiceads.download.d.a aVarA = new a.C0183a().a(str).b(str2).a();
                    aVarA.a(new n(this, str2));
                    this.k.a(aVarA);
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "下载地址：" + str);
                }
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "startDownloadAdNoTrace error " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(JSONArray jSONArray) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    String string = jSONArray.getString(i);
                    com.iflytek.voiceads.utils.j.b(string);
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "report url: " + string);
                } catch (JSONException e) {
                    com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "report url: " + e.getMessage());
                }
            }
        } else {
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "monitor: no valid url");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            this.a.registerReceiver(this.o, intentFilter);
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "注册广播");
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "注册广播");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (this.m.containsKey(Integer.valueOf(i))) {
            this.l.cancel(i);
            this.m.remove(Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "download finished");
        for (Map.Entry<String, b> entry : this.d.entrySet()) {
            if (str.equals(entry.getValue().b)) {
                entry.getValue().h = 1;
                a(entry.getValue().e);
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "下载完成监控");
            }
        }
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "移除广播 start");
        this.b.removeMessages(0);
        this.b.sendEmptyMessageDelayed(0, 50000L);
    }

    private boolean b(Context context) {
        if (context == null) {
            return false;
        }
        return context.getPackageManager().canRequestPackageInstalls();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            this.a.unregisterReceiver(this.o);
            if (this.d != null) {
                this.d.clear();
            }
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "注销安装广播");
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "注销安装广播 error");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "start installation");
        for (Map.Entry<String, b> entry : this.d.entrySet()) {
            if (str.equals(entry.getValue().b)) {
                entry.getValue().h = 1;
                a(entry.getValue().f);
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "开始安装监控");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005f A[Catch: all -> 0x0072, TryCatch #0 {, blocks: (B:7:0x0007, B:8:0x000c, B:10:0x0014, B:12:0x0017, B:13:0x001e, B:14:0x0055, B:16:0x005f, B:18:0x0063, B:20:0x0067, B:32:0x00a2, B:34:0x00a9, B:28:0x007e, B:31:0x0084, B:26:0x0076), top: B:36:0x0003, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void a(Context context, com.iflytek.voiceads.d.a aVar, Object... objArr) {
        if (aVar != null) {
            if (context != null) {
                try {
                    Class.forName("com.iflytek.voiceads.download.DownloadService");
                    b bVar = new b(this, null);
                    if (objArr != null) {
                        try {
                            if (objArr.length > 0) {
                                bVar.a = (String) objArr[0];
                            }
                            bVar.b = com.iflytek.voiceads.utils.d.a(bVar.a);
                            bVar.c = aVar.E;
                            bVar.d = aVar.J.optJSONArray("download_start_urls");
                            bVar.e = aVar.J.optJSONArray("download_complete_urls");
                            bVar.f = aVar.J.optJSONArray("install_start_urls");
                            bVar.g = aVar.J.optJSONArray("install_complete_urls");
                            bVar.h = 0;
                            if (!this.c.containsKey(bVar.b)) {
                                if (this.g && (context instanceof Activity)) {
                                    Activity activity = (Activity) context;
                                    activity.runOnUiThread(new f(this, activity, bVar));
                                } else {
                                    a(bVar);
                                    if (this.f != null) {
                                        this.f.onConfirm();
                                        this.f = null;
                                    }
                                }
                            }
                        } catch (Exception e) {
                            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "parse downExpInfo" + e.getMessage());
                        }
                    }
                    bVar.a = aVar.L;
                    bVar.b = com.iflytek.voiceads.utils.d.a(bVar.a);
                    bVar.c = aVar.E;
                    bVar.d = aVar.J.optJSONArray("download_start_urls");
                    bVar.e = aVar.J.optJSONArray("download_complete_urls");
                    bVar.f = aVar.J.optJSONArray("install_start_urls");
                    bVar.g = aVar.J.optJSONArray("install_complete_urls");
                    bVar.h = 0;
                    if (!this.c.containsKey(bVar.b)) {
                    }
                } catch (ClassNotFoundException e2) {
                    com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "service not found");
                }
            }
        }
    }

    public synchronized void a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                Class.forName("com.iflytek.voiceads.download.DownloadService");
                if (this.g && (context instanceof Activity)) {
                    Activity activity = (Activity) context;
                    activity.runOnUiThread(new h(this, activity, str));
                } else {
                    a(str);
                    if (this.f != null) {
                        this.f.onConfirm();
                        this.f = null;
                    }
                }
            } catch (ClassNotFoundException e) {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "service not found");
            }
        }
    }

    public void a(DialogListener dialogListener) {
        this.f = dialogListener;
    }

    public void a(boolean z) {
        this.g = z;
    }
}
