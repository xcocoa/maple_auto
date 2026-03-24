package cn.haorui.sdk.core.utils;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import cn.haorui.sdk.R;
import cn.haorui.sdk.core.download.a;
import cn.haorui.sdk.core.download.d;
import cn.haorui.sdk.core.download.h;
import cn.haorui.sdk.core.utils.DownloadWorker;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DownloadUtils {
    private static final String ACTION_RECEIVER_INSTALL = "com.hr.sdk.INSTALL_APK_START1";
    private static final String MESSAGES_CHANNEL = "ms_download";
    private static final String TAG = "DownloadUtils";
    private static Map<Integer, NotificationBean> notificationMap = new HashMap();
    private static int requestCode = 0;
    private RemoteViews contentView;
    private long currentTime;
    private Notification notification;
    private NotificationManager notificationManager;
    private long pastTime;
    private final String ACTION_DOWNLOAD_PAUSE = "ACTION_DOWNLOAD_PAUSE";
    private final String ACTION_DOWNLOAD_CACEL = "ACTION_DOWNLOAD_CACEL";
    private final String ACTION_DOWNLOAD_INSTALL = "ACTION_DOWNLOAD_INSTALL";
    private Handler mHandler = new Handler(Looper.getMainLooper());

    public static class InstallSuccessReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                try {
                    String action = intent.getAction();
                    LogUtil.i(DownloadUtils.TAG, "InstallSuccessReceiver." + action);
                    if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                        Iterator it = DownloadUtils.notificationMap.values().iterator();
                        while (it.hasNext()) {
                            NotificationBean notificationBean = (NotificationBean) it.next();
                            if (notificationBean != null) {
                                String packageName = notificationBean.getPackageName();
                                if (schemeSpecificPart != null && schemeSpecificPart.equals(packageName)) {
                                    String[] reportInstallSucc = notificationBean.getReportInstallSucc();
                                    if (reportInstallSucc != null) {
                                        LogUtil.d(DownloadUtils.TAG, "Report send dn_inst_succ");
                                        for (String str : reportInstallSucc) {
                                            if (!TextUtils.isEmpty(str)) {
                                                HttpUtil.asyncGetWithWebViewUA(context, str, new DefaultHttpGetWithNoHandlerCallback());
                                            }
                                        }
                                    }
                                    it.remove();
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public class NotificationClickReceiver extends BroadcastReceiver {
        public NotificationClickReceiver() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0063  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            int intExtra;
            cn.haorui.sdk.core.download.b bVar;
            RemoteViews remoteViews;
            int i;
            String str;
            cn.haorui.sdk.core.download.b bVar2;
            String action = intent.getAction();
            DownloadUtils.this.pastTime = System.currentTimeMillis() - DownloadUtils.this.currentTime;
            DownloadUtils.this.currentTime = System.currentTimeMillis();
            if (DownloadUtils.this.pastTime < 500) {
            }
            stringExtra = intent.getStringExtra("notify_url");
            intExtra = intent.getIntExtra("notify_id", 0);
            LogUtil.e(DownloadUtils.TAG, "NotificationClickReceiver,notify_id=" + intExtra + ",url=" + stringExtra);
            action.hashCode();
            action.hashCode();
            switch (action) {
                case "ACTION_DOWNLOAD_CACEL":
                    a.C0007a.a.a(stringExtra);
                    if (DownloadUtils.this.notificationManager != null) {
                        DownloadUtils.this.notificationManager.cancel(intExtra);
                    }
                    DownloadUtils.notificationMap.remove(Integer.valueOf(DownloadUtils.this.getNotifyId(stringExtra)));
                    break;
                case "ACTION_DOWNLOAD_PAUSE":
                    cn.haorui.sdk.core.download.a aVar = a.C0007a.a;
                    d dVarB = aVar.b(stringExtra);
                    if (dVarB != null && (bVar = dVarB.a) != null) {
                        if (bVar.j == 3) {
                            dVarB.b();
                            if (DownloadUtils.this.contentView != null) {
                                remoteViews = DownloadUtils.this.contentView;
                                i = R.id.notification_pause;
                                str = "暂停";
                                remoteViews.setTextViewText(i, str);
                            }
                        } else {
                            d dVar = aVar.a.get(stringExtra);
                            if (dVar != null) {
                                dVar.a();
                            }
                            if (DownloadUtils.this.contentView != null) {
                                remoteViews = DownloadUtils.this.contentView;
                                i = R.id.notification_pause;
                                str = "继续";
                                remoteViews.setTextViewText(i, str);
                            }
                        }
                    }
                    if (DownloadUtils.this.notificationManager != null && DownloadUtils.notificationMap.containsKey(Integer.valueOf(intExtra))) {
                        DownloadUtils.this.notificationManager.notify(intExtra, ((NotificationBean) DownloadUtils.notificationMap.get(Integer.valueOf(intExtra))).getNotification());
                        break;
                    }
                    break;
                case "ACTION_DOWNLOAD_INSTALL":
                    cn.haorui.sdk.core.download.a aVar2 = a.C0007a.a;
                    d dVarB2 = aVar2.b(stringExtra);
                    if (dVarB2 != null && (bVar2 = dVarB2.a) != null && bVar2.j == 5) {
                        aVar2.a(stringExtra);
                        if (DownloadUtils.this.notificationManager != null) {
                            DownloadUtils.this.notificationManager.cancel(intExtra);
                        }
                        DownloadUtils.notificationMap.remove(Integer.valueOf(DownloadUtils.this.getNotifyId(stringExtra)));
                        DownloadUtils.this.install(context, stringExtra);
                        break;
                    }
                    break;
            }
        }
    }

    public class a implements h {
        public final /* synthetic */ String a;
        public final /* synthetic */ String[] b;
        public final /* synthetic */ Context c;
        public final /* synthetic */ String d;
        public final /* synthetic */ String e;
        public final /* synthetic */ String[] f;
        public final /* synthetic */ String[] g;
        public final /* synthetic */ String[] h;

        public a(String str, String[] strArr, Context context, String str2, String str3, String[] strArr2, String[] strArr3, String[] strArr4) {
            this.a = str;
            this.b = strArr;
            this.c = context;
            this.d = str2;
            this.e = str3;
            this.f = strArr2;
            this.g = strArr3;
            this.h = strArr4;
        }

        @Override // cn.haorui.sdk.core.download.h
        public void a(cn.haorui.sdk.core.download.b bVar) {
            if (DownloadUtils.notificationMap == null) {
                Map unused = DownloadUtils.notificationMap = new HashMap();
            }
            if (DownloadUtils.notificationMap.containsKey(Integer.valueOf(DownloadUtils.this.getNotifyId(this.a)))) {
                return;
            }
            try {
                if (this.b != null) {
                    LogUtil.d(DownloadUtils.TAG, "Report send dn_start");
                    for (String str : this.b) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(this.c, str, new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            NotificationBean notificationBean = new NotificationBean();
            notificationBean.setAppName(this.d);
            notificationBean.setPackageName(this.e);
            notificationBean.setReportDownloadStart(this.b);
            notificationBean.setReportDownloadSuccess(this.f);
            notificationBean.setReportInstallStart(this.g);
            notificationBean.setReportInstallSucc(this.h);
            DownloadUtils.notificationMap.put(Integer.valueOf(DownloadUtils.this.getNotifyId(this.a)), notificationBean);
            DownloadUtils.this.createNotification(this.a, this.c, this.d, this.e);
        }

        @Override // cn.haorui.sdk.core.download.h
        public void a(cn.haorui.sdk.core.download.b bVar, String str) {
            a.C0007a.a.a(this.a);
            if (DownloadUtils.this.notificationManager != null) {
                DownloadUtils.this.notificationManager.cancel(DownloadUtils.this.getNotifyId(this.a));
            }
            DownloadUtils.notificationMap.remove(Integer.valueOf(DownloadUtils.this.getNotifyId(this.a)));
        }

        @Override // cn.haorui.sdk.core.download.h
        public void a(File file, cn.haorui.sdk.core.download.b bVar) {
            DownloadUtils.this.onTaskSuccess(this.c, file, bVar.b);
        }

        @Override // cn.haorui.sdk.core.download.h
        public void b(cn.haorui.sdk.core.download.b bVar) {
            int i = (int) (((bVar.i * 1.0f) / bVar.h) * 100.0f);
            if (i > 100) {
                i = 100;
            }
            int notifyId = DownloadUtils.this.getNotifyId(bVar.b);
            if (DownloadUtils.notificationMap == null || !DownloadUtils.notificationMap.containsKey(Integer.valueOf(notifyId))) {
                a.C0007a.a.a(bVar.b);
                if (DownloadUtils.this.notificationManager != null) {
                    DownloadUtils.this.notificationManager.cancel(notifyId);
                    return;
                }
                return;
            }
            if (DownloadUtils.this.notificationManager == null || DownloadUtils.this.contentView == null) {
                return;
            }
            DownloadUtils.this.contentView.setTextViewText(R.id.notification_progressText, i + "%");
            DownloadUtils.this.contentView.setProgressBar(R.id.notification_pregressBar, 100, i, false);
            DownloadUtils.this.notificationManager.notify(notifyId, ((NotificationBean) DownloadUtils.notificationMap.get(Integer.valueOf(notifyId))).getNotification());
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ Context b;

        public b(String str, Context context) {
            this.a = str;
            this.b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            int i;
            String[] reportDownloadSuccess;
            try {
                NotificationBean notificationBean = (NotificationBean) DownloadUtils.notificationMap.get(Integer.valueOf(DownloadUtils.this.getNotifyId(this.a)));
                if (notificationBean != null && (reportDownloadSuccess = notificationBean.getReportDownloadSuccess()) != null) {
                    LogUtil.d(DownloadUtils.TAG, "Report send dn_succ");
                    for (String str : reportDownloadSuccess) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(this.b, str, new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            Intent intent = new Intent(this.b, (Class<?>) DownloadWorker.InstallReceiver.class);
            intent.setAction(DownloadUtils.ACTION_RECEIVER_INSTALL);
            intent.setPackage(this.b.getPackageName());
            int notifyId = DownloadUtils.this.getNotifyId(this.a);
            if (Build.VERSION.SDK_INT >= 31) {
                context = this.b;
                i = 67108864;
            } else {
                context = this.b;
                i = 268435456;
            }
            PendingIntent.getBroadcast(context, notifyId, intent, i);
            DownloadUtils.this.contentView.setViewVisibility(R.id.notification_cancel, 8);
            DownloadUtils.this.contentView.setViewVisibility(R.id.notification_pause, 8);
            DownloadUtils.this.contentView.setTextViewText(R.id.notification_progressText, "下载已完成，点击安装");
            if (DownloadUtils.notificationMap.containsKey(Integer.valueOf(notifyId))) {
                DownloadUtils.this.notificationManager.notify(notifyId, ((NotificationBean) DownloadUtils.notificationMap.get(Integer.valueOf(notifyId))).getNotification());
            }
        }
    }

    public static class c {
        public static final DownloadUtils a = new DownloadUtils();
    }

    private void createMessageNotificationChannel(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.notificationManager.createNotificationChannel(new NotificationChannel(MESSAGES_CHANNEL, "正在下载应用" + str + "...", 4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createNotification(String str, Context context, String str2, String str3) {
        NotificationBean notificationBean;
        registerBroadcast(context, str3);
        this.notificationManager = (NotificationManager) context.getSystemService("notification");
        createMessageNotificationChannel(context, str2);
        NotificationCompat.Builder notificationBuilderByChannel = getNotificationBuilderByChannel(context);
        notificationBuilderByChannel.setContentTitle("正在下载应用" + str2 + "...");
        notificationBuilderByChannel.setSmallIcon(R.mipmap.adsail_ic_launcher);
        notificationBuilderByChannel.setAutoCancel(true);
        this.notification = notificationBuilderByChannel.build();
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.adsail_notification_item);
        this.contentView = remoteViews;
        if (str2 == null) {
            str2 = "";
        }
        remoteViews.setTextViewText(R.id.notification_title, "正在下载:" + str2 + "...");
        RemoteViews remoteViews2 = this.contentView;
        int i = R.id.notification_cancel;
        remoteViews2.setViewVisibility(i, 0);
        RemoteViews remoteViews3 = this.contentView;
        int i2 = R.id.notification_pause;
        remoteViews3.setViewVisibility(i2, 0);
        this.contentView.setTextViewText(R.id.notification_progressText, "0%");
        this.contentView.setProgressBar(R.id.notification_pregressBar, 100, 0, false);
        int notifyId = getNotifyId(str);
        requestCode = notifyId;
        Intent intent = new Intent();
        intent.setAction("ACTION_DOWNLOAD_PAUSE");
        intent.putExtra("notify_id", notifyId);
        intent.putExtra("notify_url", str);
        int i3 = Build.VERSION.SDK_INT;
        int i4 = requestCode;
        this.contentView.setOnClickPendingIntent(i2, i3 >= 31 ? PendingIntent.getBroadcast(context, i4, intent, 201326592) : PendingIntent.getBroadcast(context, i4, intent, 134217728));
        Intent intent2 = new Intent();
        intent2.setAction("ACTION_DOWNLOAD_CACEL");
        intent2.putExtra("notify_id", notifyId);
        intent2.putExtra("notify_url", str);
        this.contentView.setOnClickPendingIntent(i, PendingIntent.getBroadcast(context, requestCode, intent2, i3 >= 31 ? 335544320 : 268435456));
        Intent intent3 = new Intent();
        intent3.setAction("ACTION_DOWNLOAD_INSTALL");
        intent3.putExtra("notify_id", notifyId);
        intent3.putExtra("notify_url", str);
        int i5 = requestCode;
        this.contentView.setOnClickPendingIntent(R.id.notification_rootView, i3 >= 31 ? PendingIntent.getBroadcast(context, i5, intent3, 201326592) : PendingIntent.getBroadcast(context, i5, intent3, 134217728));
        if (notificationMap.containsKey(Integer.valueOf(notifyId)) && (notificationBean = notificationMap.get(Integer.valueOf(notifyId))) != null) {
            notificationBean.setNotification(this.notification);
            notificationMap.put(Integer.valueOf(notifyId), notificationBean);
        }
        Notification notification = this.notification;
        RemoteViews remoteViews4 = this.contentView;
        notification.contentView = remoteViews4;
        if (i3 >= 31) {
            notification.bigContentView = remoteViews4;
        }
        this.notificationManager.notify(notifyId, notification);
    }

    public static DownloadUtils getInstance() {
        return c.a;
    }

    private NotificationCompat.Builder getNotificationBuilderByChannel(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return new NotificationCompat.Builder(context.getApplicationContext(), MESSAGES_CHANNEL);
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        builder.setPriority(i >= 24 ? 4 : 1);
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNotifyId(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return Math.abs(str.hashCode() + 199);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void install(Context context, String str) {
        Uri uriFromFile;
        String[] reportInstallStart;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strReplace = str.substring(str.lastIndexOf("/")).replace("/", "");
        String str2 = a.C0007a.a.c;
        try {
            strReplace = StringUtils.byte2hex(MessageDigest.getInstance("MD5").digest(str.getBytes())).toLowerCase() + com.anythink.china.common.a.a.g;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        File file = new File(str2, strReplace);
        if (!file.exists()) {
            LogUtil.e(TAG, "file not exists");
            return;
        }
        try {
            NotificationBean notificationBean = notificationMap.get(Integer.valueOf(getNotifyId(str)));
            if (notificationBean != null && (reportInstallStart = notificationBean.getReportInstallStart()) != null) {
                LogUtil.d(TAG, "Report send dn_inst_start");
                for (String str3 : reportInstallStart) {
                    if (!TextUtils.isEmpty(str3)) {
                        HttpUtil.asyncGetWithWebViewUA(context, str3, new DefaultHttpGetWithNoHandlerCallback());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
        intent.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
            uriFromFile = FileProvider.getUriForFile(context, context.getPackageName() + ".HRFileProvider", file);
        } else {
            uriFromFile = Uri.fromFile(file);
        }
        intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTaskSuccess(Context context, File file, String str) {
        this.mHandler.post(new b(str, context));
    }

    private void registerBroadcast(Context context, String str) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ACTION_DOWNLOAD_PAUSE");
        intentFilter.addAction("ACTION_DOWNLOAD_CACEL");
        intentFilter.addAction("ACTION_DOWNLOAD_INSTALL");
        context.registerReceiver(new NotificationClickReceiver(), intentFilter);
        try {
            IntentFilter intentFilter2 = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter2.addDataScheme("package");
            context.registerReceiver(new InstallSuccessReceiver(), intentFilter2);
        } catch (Exception e) {
            LogUtil.w(TAG, "Failed registerReceiver InstallSuccessReceiver");
            e.printStackTrace();
        }
    }

    public void startDownload(Context context, String str, String str2, String str3, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        cn.haorui.sdk.core.download.a aVar = a.C0007a.a;
        d dVar = aVar.a.get(str);
        if (dVar == null) {
            dVar = new d(str, str2, "", str);
            aVar.a.put(str, dVar);
        }
        d dVar2 = dVar;
        dVar2.e.put(dVar2.b, new a(str, strArr, context, str2, str3, strArr2, strArr3, strArr4));
        dVar2.b();
    }
}
