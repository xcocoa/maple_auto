package cn.haorui.sdk.core.utils;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.content.FileProvider;
import cn.haorui.sdk.R;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.platform.hr.IAdSailAd;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.io.IOUtils;
import z2.jx;
import z2.o4;
import z2.ox;
import z2.qx;
import z2.sx;

/* JADX INFO: loaded from: classes.dex */
public class DownloadWorker {
    private static final String ACTION_RECEIVER_INSTALL = "cn.adsail.sdk.INSTALL_APK_START";
    private static final int BUFFER_SIZE = 16384;
    private static final int MAX_RETRY_TIME = 10;
    private static final int MESSAGE_DOWNLOAD_URL = 101;
    private static final int MESSAGE_INIT = 100;
    private static final int NOTIFICATION_ID = 1;
    private static final String TAG = "Download.DownloadWorker";
    private static final long WEEK_TIME = 259200000;
    private Context context;
    private DownloadInfo currentDownloadInfo;
    private ox defaultOkHttpClient;
    private Handler handler;
    private HandlerThread handlerThread;
    private NotificationManager manager;
    private static final DownloadWorker instance = new DownloadWorker();
    private static final AtomicInteger BASE_INCREASED_NOTIFICATION_ID = new AtomicInteger(10);
    private final Queue<DownloadInfo> taskList = new LinkedBlockingQueue();
    private final Map<String, DownloadInfo> taskCache = new ConcurrentHashMap();
    private String notificationTitle = null;

    public static class InstallReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !DownloadWorker.ACTION_RECEIVER_INSTALL.equals(intent.getAction())) {
                return;
            }
            DownloadInfo downloadInfoFindDownloadInfo = DownloadWorker.getInstance().findDownloadInfo(intent.getStringExtra("key"));
            if (downloadInfoFindDownloadInfo != null) {
                downloadInfoFindDownloadInfo.onInstallStart();
                context.startActivity(DownloadWorker.buildInstallApkIntent(context, new File(downloadInfoFindDownloadInfo.downloadFile)));
            }
        }
    }

    public static class InstallSuccessReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                LogUtil.i(DownloadWorker.TAG, "InstallSuccessReceiver." + action);
                if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                    DownloadWorker.getInstance().reportInstallSuccess(intent.getData().getSchemeSpecificPart());
                }
            }
        }
    }

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) throws Throwable {
            int i = message.what;
            if (i == 100) {
                LogUtil.i(DownloadWorker.TAG, "Init start.");
                synchronized (DownloadWorker.this.taskList) {
                    DownloadWorker.prepareSdkDownloadDirectory();
                    try {
                        IntentFilter intentFilter = new IntentFilter(DownloadWorker.ACTION_RECEIVER_INSTALL);
                        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                        DownloadWorker.this.context.registerReceiver(new InstallReceiver(), intentFilter);
                    } catch (Exception e) {
                        LogUtil.w(DownloadWorker.TAG, "Failed registerReceiver InstallReceiver");
                        e.printStackTrace();
                    }
                    try {
                        IntentFilter intentFilter2 = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                        intentFilter2.addDataScheme("package");
                        DownloadWorker.this.context.registerReceiver(new InstallSuccessReceiver(), intentFilter2);
                    } catch (Exception e2) {
                        LogUtil.w(DownloadWorker.TAG, "Failed registerReceiver InstallSuccessReceiver");
                        e2.printStackTrace();
                    }
                    DownloadWorker.this.taskList.clear();
                    DownloadWorker.this.taskCache.clear();
                    DownloadWorker.this.currentDownloadInfo = null;
                }
                LogUtil.i(DownloadWorker.TAG, "Init ok. " + DownloadWorker.this.taskList.size());
            } else if (i == 101) {
                LogUtil.i(DownloadWorker.TAG, "Start work.");
                DownloadWorker.this.handleMessageDownload();
                LogUtil.i(DownloadWorker.TAG, "Queue clear.");
            }
            super.handleMessage(message);
        }
    }

    public static class b implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(com.anythink.china.common.a.a.g);
        }
    }

    public static class c implements FileFilter {
        public final /* synthetic */ long a;

        public c(long j) {
            this.a = j;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.lastModified() + DownloadWorker.WEEK_TIME < this.a;
        }
    }

    public class d extends Thread {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, String str2) {
            super(str);
            this.a = str2;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Intent launchIntentForPackage;
            for (DownloadInfo downloadInfo : DownloadWorker.getInstance().findDownloadInfoByPackageName(this.a)) {
                if (downloadInfo.installStartReported) {
                    downloadInfo.onInstallSucc();
                    if (!downloadInfo.hasNotifiedOpen) {
                        downloadInfo.hasNotifiedOpen = true;
                        if (!TextUtils.isEmpty(downloadInfo.deeplinkUrl)) {
                            try {
                                launchIntentForPackage = Intent.parseUri(downloadInfo.deeplinkUrl, 0);
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                            if (launchIntentForPackage.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                                launchIntentForPackage.setFlags(268435456);
                            } else {
                                try {
                                    launchIntentForPackage = AdSdk.getContext().getPackageManager().getLaunchIntentForPackage(this.a);
                                } catch (Throwable th2) {
                                    th2.printStackTrace();
                                    launchIntentForPackage = null;
                                }
                            }
                            if (launchIntentForPackage != null) {
                                try {
                                    DownloadWorker.this.updateNotification(downloadInfo.displayName, "安装已完成，点击打开", downloadInfo.notificationId, Build.VERSION.SDK_INT >= 31 ? PendingIntent.getActivity(DownloadWorker.this.context, downloadInfo.notificationId, launchIntentForPackage, 67108864) : PendingIntent.getActivity(DownloadWorker.this.context, downloadInfo.notificationId, launchIntentForPackage, 268435456), true);
                                } catch (Throwable th3) {
                                    th3.printStackTrace();
                                    DownloadWorker.this.cancelNotification(downloadInfo.notificationId);
                                }
                            }
                        }
                    }
                    DownloadWorker.this.cancelNotification(downloadInfo.notificationId);
                }
            }
        }
    }

    private DownloadWorker() {
        this.manager = null;
        Context context = AdSdk.getContext();
        this.context = context;
        try {
            AppStoreUtil.registerBroadCast(context.getApplicationContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.defaultOkHttpClient = new ox.OooO0O0().OooO0Oo();
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.handlerThread = handlerThread;
        handlerThread.start();
        a aVar = new a(this.handlerThread.getLooper());
        this.handler = aVar;
        aVar.sendEmptyMessage(100);
        this.manager = (NotificationManager) this.context.getSystemService("notification");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent buildInstallApkIntent(Context context, File file) {
        Uri uriFromFile;
        Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
        if (Build.VERSION.SDK_INT >= 24) {
            uriFromFile = FileProvider.getUriForFile(context, context.getPackageName() + ".HRFileProvider", file);
            intent.addFlags(268435457);
        } else {
            intent.setFlags(268435456);
            uriFromFile = Uri.fromFile(file);
        }
        intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
        return intent;
    }

    private void buildNotificationTitle(boolean z) {
        if (this.currentDownloadInfo == null) {
            return;
        }
        this.notificationTitle = this.taskList.isEmpty() ? z ? this.context.getString(R.string.adsail_notification_title_wait, this.currentDownloadInfo.getDisplayName()) : this.context.getString(R.string.adsail_notification_title, this.currentDownloadInfo.getDisplayName()) : z ? this.context.getString(R.string.adsail_notification_title_more_wait, this.currentDownloadInfo.getDisplayName(), Integer.valueOf(this.taskList.size() + 1)) : this.context.getString(R.string.adsail_notification_title_more, this.currentDownloadInfo.getDisplayName(), Integer.valueOf(this.taskList.size() + 1));
    }

    private static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static File getDownloadDirectory() {
        File file = new File(AdSdk.getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), "adsail_sdk");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static DownloadWorker getInstance() {
        return instance;
    }

    public static File[] getLocalApkFiles() {
        File downloadDirectory = getDownloadDirectory();
        if (downloadDirectory.exists()) {
            return downloadDirectory.listFiles(new b());
        }
        return null;
    }

    public static String getPackageNameFromFile(Context context, String str) {
        PackageInfo packageArchiveInfo;
        if (str == null || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1)) == null) {
            return null;
        }
        return packageArchiveInfo.applicationInfo.packageName;
    }

    private long getSizeFromRange(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str.substring(str.lastIndexOf(47) + 1).trim());
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(11:11|(4:12|93|13|(2:121|18)(1:119))|17|21|(2:112|23)(4:24|91|25|(4:106|27|115|114)(1:113))|29|101|30|31|(12:33|103|34|95|35|38|52|(2:53|(5:55|(1:57)|58|(3:60|61|124)(2:62|123)|63)(1:122))|64|(1:66)|67|(2:110|69)(4:108|70|90|116))(2:43|(13:45|99|46|111|(1:48)(1:49)|50|51|52|(3:53|(0)(0)|63)|64|(0)|67|(0)(0))(5:107|76|77|84|118))|114) */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02ec, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02ed, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02ef, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02f0, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x027c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0263 A[EDGE_INSN: B:122:0x0263->B:64:0x0263 BREAK  A[LOOP:2: B:53:0x01fd->B:63:0x0259], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0203 A[Catch: all -> 0x01b9, Exception -> 0x01be, TryCatch #8 {Exception -> 0x01be, all -> 0x01b9, blocks: (B:34:0x01a0, B:35:0x01a7, B:52:0x01eb, B:53:0x01fd, B:55:0x0203, B:57:0x0212, B:58:0x022e, B:60:0x023a), top: B:103:0x01a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0273  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void handleMessageDownload() throws Throwable {
        int i;
        FileChannel fileChannel;
        RandomAccessFile randomAccessFile;
        long length;
        long sizeFromRange;
        InputStream inputStreamByteStream;
        byte[] bArr;
        int i2;
        int i3;
        int i4;
        int i5;
        byte[] bArr2;
        int i6;
        long j;
        while (true) {
            DownloadInfo downloadInfoPoll = poll();
            this.currentDownloadInfo = downloadInfoPoll;
            if (downloadInfoPoll == null) {
                LogUtil.i(TAG, "Queue is empty.");
                return;
            }
            File file = new File(this.currentDownloadInfo.cacheFile);
            File file2 = new File(this.currentDownloadInfo.downloadFile);
            if (file2.exists()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                LogUtil.i(TAG, "Set modify time " + file2.getName() + ":" + jCurrentTimeMillis);
                file2.setLastModified(jCurrentTimeMillis);
                this.currentDownloadInfo.onDownloadStart();
            } else {
                buildNotificationTitle(true);
                while (true) {
                    i = -1;
                    try {
                        updateNotification(this.notificationTitle, "", -1, -1);
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            break;
                        }
                        LogUtil.i(TAG, "Wait network connection: " + this.currentDownloadInfo.url);
                        Thread.sleep(UMAmapConfig.AMAP_CACHE_WRITE_TIME);
                    } catch (Throwable unused) {
                    }
                }
                jx.OooO00o oooO00o = new jx.OooO00o();
                oooO00o.OooO0O0("User-Agent", WebSettings.getDefaultUserAgent(this.context));
                qx.OooO00o oooO00o2 = new qx.OooO00o();
                oooO00o2.OooO(oooO00o.OooO0oo()).OooOOo0(this.currentDownloadInfo.url).OooO0o().OooO0O0();
                this.currentDownloadInfo.onDownloadStart();
                if (file.exists()) {
                    long length2 = file.length();
                    LogUtil.i(TAG, "Start download: " + this.currentDownloadInfo.url + "; tempFile: " + file.getName() + "; range: " + length2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("bytes=");
                    sb.append(length2);
                    sb.append("-");
                    oooO00o2.OooO00o("range", sb.toString());
                } else {
                    LogUtil.i(TAG, "Start download: " + this.currentDownloadInfo.url + "; tempFile: " + file.getName());
                    try {
                    } catch (IOException e) {
                        LogUtil.w(TAG, "Failed in download(Exception in create file). url: " + this.currentDownloadInfo.url + "; file: " + file.getAbsolutePath());
                        e.printStackTrace();
                    }
                    if (!file.createNewFile()) {
                        LogUtil.w(TAG, "Failed in download(Failed in create file). url: " + this.currentDownloadInfo.url + "; file: " + file.getAbsolutePath());
                        onTaskFailed();
                    }
                }
                qx qxVarOooO0O0 = oooO00o2.OooO0o().OooO0O0();
                FileChannel channel = null;
                int i7 = 0;
                buildNotificationTitle(false);
                updateNotification(this.notificationTitle, "", -1, -1);
                sx sxVarExecute = this.defaultOkHttpClient.OooO00o(qxVarOooO0O0).execute();
                int iOoooooO = sxVarExecute.OoooooO();
                if (iOoooooO == 200) {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    try {
                        channel = randomAccessFile.getChannel();
                        channel.position(0L);
                        try {
                            j = Long.parseLong(sxVarExecute.o0OoOo0("content-length"));
                        } catch (NumberFormatException unused2) {
                            j = -1;
                        }
                        length = 0;
                        sizeFromRange = j;
                        inputStreamByteStream = sxVarExecute.OooOO0().byteStream();
                        bArr = new byte[16384];
                        long j2 = 0;
                        i2 = 0;
                        i3 = 0;
                        while (true) {
                            i4 = inputStreamByteStream.read(bArr);
                            if (i4 != i) {
                                break;
                            }
                            channel.write(ByteBuffer.wrap(bArr, i7, i4));
                            int i8 = i3 + i4;
                            int i9 = i2 + 1;
                            if (i9 >= 200) {
                                LogUtil.d(TAG, "Download: " + (i8 / 1024) + "KBs");
                                i9 = 0;
                            }
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            if (j2 + 1000 <= jCurrentTimeMillis2) {
                                bArr2 = bArr;
                                i6 = i9;
                                i5 = i8;
                                updateNotification(this.notificationTitle, "", (int) ((length + ((long) i8)) / 1024), (int) (sizeFromRange / 1024));
                                j2 = jCurrentTimeMillis2;
                            } else {
                                i5 = i8;
                                bArr2 = bArr;
                                i6 = i9;
                            }
                            bArr = bArr2;
                            i2 = i6;
                            i3 = i5;
                            i = -1;
                            i7 = 0;
                        }
                        closeQuietly(channel);
                        closeQuietly(randomAccessFile);
                        cancelNotification(1);
                        if (file2.exists()) {
                            file2.delete();
                        }
                        if (file.renameTo(file2)) {
                            LogUtil.w(TAG, "Failed in download(Rename). url: " + this.currentDownloadInfo.url);
                            onTaskFailed();
                        } else {
                            LogUtil.i(TAG, "Download OK. " + this.currentDownloadInfo.url + " to " + this.currentDownloadInfo.downloadFile);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        fileChannel = channel;
                        channel = randomAccessFile;
                        try {
                            LogUtil.w(TAG, "Failed in download(Exception). url: " + this.currentDownloadInfo.url);
                            e.printStackTrace();
                            onTaskFailed();
                            closeQuietly(fileChannel);
                            closeQuietly(channel);
                            cancelNotification(1);
                        } catch (Throwable th) {
                            th = th;
                            closeQuietly(fileChannel);
                            closeQuietly(channel);
                            cancelNotification(1);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileChannel = channel;
                        channel = randomAccessFile;
                        closeQuietly(fileChannel);
                        closeQuietly(channel);
                        cancelNotification(1);
                        throw th;
                    }
                } else if (iOoooooO == 206) {
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                    try {
                        channel = randomAccessFile2.getChannel();
                        length = file.length();
                        channel.position(iOoooooO == 200 ? 0L : length);
                        randomAccessFile = randomAccessFile2;
                        sizeFromRange = getSizeFromRange(sxVarExecute.o0OoOo0("content-range"));
                        inputStreamByteStream = sxVarExecute.OooOO0().byteStream();
                        bArr = new byte[16384];
                        long j22 = 0;
                        i2 = 0;
                        i3 = 0;
                        while (true) {
                            i4 = inputStreamByteStream.read(bArr);
                            if (i4 != i) {
                            }
                            bArr = bArr2;
                            i2 = i6;
                            i3 = i5;
                            i = -1;
                            i7 = 0;
                        }
                        closeQuietly(channel);
                        closeQuietly(randomAccessFile);
                        cancelNotification(1);
                        if (file2.exists()) {
                        }
                        if (file.renameTo(file2)) {
                        }
                    } catch (Exception e3) {
                        e = e3;
                        randomAccessFile = randomAccessFile2;
                        fileChannel = channel;
                        channel = randomAccessFile;
                        LogUtil.w(TAG, "Failed in download(Exception). url: " + this.currentDownloadInfo.url);
                        e.printStackTrace();
                        onTaskFailed();
                        closeQuietly(fileChannel);
                        closeQuietly(channel);
                        cancelNotification(1);
                    } catch (Throwable th3) {
                        th = th3;
                        fileChannel = channel;
                        channel = randomAccessFile2;
                        closeQuietly(fileChannel);
                        closeQuietly(channel);
                        cancelNotification(1);
                        throw th;
                    }
                } else {
                    LogUtil.w(TAG, "Failed in download(Response code). url: " + this.currentDownloadInfo.url + "; code: " + iOoooooO);
                    onTaskFailed();
                    closeQuietly(null);
                    closeQuietly(channel);
                    cancelNotification(1);
                }
            }
            this.currentDownloadInfo.onDownloaded();
            onTaskSuccess();
        }
    }

    private static void installApk(Context context, File file) {
        LogUtil.i(TAG, "Install apk " + file.getAbsolutePath());
        context.startActivity(buildInstallApkIntent(context, file));
    }

    public static void installApk(DownloadInfo downloadInfo) {
        downloadInfo.onInstallStart();
        installApk(AdSdk.getContext(), new File(downloadInfo.downloadFile));
    }

    public static synchronized boolean isAppInFront(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningTasks(1);
        if (!runningTasks.isEmpty()) {
            if (runningTasks.get(0).topActivity.getPackageName().equals(context.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    private void onNewTask() {
    }

    private void onTaskFailed() {
        DownloadInfo downloadInfo = this.currentDownloadInfo;
        this.currentDownloadInfo = null;
        retry(downloadInfo);
    }

    private void onTaskSuccess() {
        Context context;
        int i;
        int i2;
        Intent intent = new Intent(this.context, (Class<?>) InstallReceiver.class);
        intent.putExtra("key", this.currentDownloadInfo.key);
        intent.setAction(ACTION_RECEIVER_INSTALL);
        intent.setPackage(this.context.getPackageName());
        if (Build.VERSION.SDK_INT >= 31) {
            context = this.context;
            i = this.currentDownloadInfo.notificationId;
            i2 = 67108864;
        } else {
            context = this.context;
            i = this.currentDownloadInfo.notificationId;
            i2 = 268435456;
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i, intent, i2);
        DownloadInfo downloadInfo = this.currentDownloadInfo;
        updateNotification(downloadInfo.displayName, "下载已完成，点击安装", downloadInfo.notificationId, broadcast, false);
        if (isAppInFront(this.context)) {
            installApk(this.currentDownloadInfo);
        }
        this.currentDownloadInfo = null;
    }

    private DownloadInfo poll() {
        DownloadInfo downloadInfoPoll;
        synchronized (this.taskList) {
            downloadInfoPoll = this.taskList.poll();
        }
        return downloadInfoPoll;
    }

    public static void prepareSdkDownloadDirectory() {
        File downloadDirectory = getDownloadDirectory();
        if (!downloadDirectory.exists()) {
            downloadDirectory.mkdirs();
        }
        LogUtil.i(TAG, "directory prepared.");
        File[] fileArrListFiles = downloadDirectory.listFiles(new c(System.currentTimeMillis()));
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportInstallSuccess(String str) {
        new d("Download.InstallSuccess", str).start();
    }

    private void retry(DownloadInfo downloadInfo) {
        int i = downloadInfo.retryTime + 1;
        downloadInfo.retryTime = i;
        if (i >= 10) {
            updateNotification(downloadInfo.displayName, "下载失败", BASE_INCREASED_NOTIFICATION_ID.getAndIncrement(), null, true);
            LogUtil.w(TAG, "Stop retry. url: " + downloadInfo.downloadFile);
            this.taskCache.remove(downloadInfo.key);
            return;
        }
        synchronized (this.taskList) {
            this.taskList.offer(downloadInfo);
            this.handler.removeMessages(101);
            this.handler.sendEmptyMessage(101);
        }
        LogUtil.i(TAG, "Retry. url: " + downloadInfo.downloadFile);
    }

    public void cancelNotification(int i) {
        NotificationManager notificationManager = this.manager;
        if (notificationManager == null) {
            return;
        }
        notificationManager.cancel(i);
    }

    public void directInstall(IAdSailAd iAdSailAd, DownloadInfo downloadInfo) {
        this.taskCache.put(iAdSailAd.toString(), downloadInfo);
        downloadInfo.onDownloadStart();
        downloadInfo.onDownloaded();
        installApk(downloadInfo);
    }

    public void download(IAdSailAd iAdSailAd, DownloadInfo downloadInfo) {
        synchronized (this.taskList) {
            downloadInfo.notificationId = BASE_INCREASED_NOTIFICATION_ID.getAndIncrement();
            this.taskList.offer(downloadInfo);
            this.taskCache.put(iAdSailAd.toString(), downloadInfo);
            buildNotificationTitle(false);
            onNewTask();
            LogUtil.i(TAG, "New download. size: " + this.taskList.size() + IOUtils.LINE_SEPARATOR_WINDOWS + downloadInfo);
            this.handler.removeMessages(101);
            this.handler.sendEmptyMessage(101);
        }
    }

    public DownloadInfo findDownloadInfo(String str) {
        try {
            if (this.taskCache.containsKey(str)) {
                return this.taskCache.get(str);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<DownloadInfo> findDownloadInfoByPackageName(String str) {
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : this.taskCache.values()) {
            String packageNameFromFile = downloadInfo.packageName;
            if (TextUtils.isEmpty(packageNameFromFile)) {
                packageNameFromFile = getPackageNameFromFile(this.context, downloadInfo.downloadFile);
                downloadInfo.packageName = packageNameFromFile;
            }
            if (TextUtils.equals(str, packageNameFromFile)) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    public Notification updateNotification(String str, String str2, int i, int i2) {
        return updateNotification(str, str2, i, i2, 1, null, true);
    }

    public Notification updateNotification(String str, String str2, int i, int i2, int i3, PendingIntent pendingIntent, boolean z) {
        String str3;
        if (!AdSdk.adConfig().enableNotify() || this.manager == null) {
            return null;
        }
        Notification.Builder builder = new Notification.Builder(this.context);
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) this.context.getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("cn.adsail.sdk", "下载进度通知", 4));
            builder.setChannelId("cn.adsail.sdk");
        }
        if (i != -1) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(i);
            if (i2 == -1) {
                str3 = "";
            } else {
                str3 = "/" + i2;
            }
            sb.append(str3);
            sb.append("KB");
            str2 = sb.toString();
            builder.setProgress(i2, i, false);
        }
        if (pendingIntent != null) {
            builder.setContentIntent(pendingIntent);
        }
        builder.setContentTitle(str).setContentText(str2).setAutoCancel(z).setWhen(System.currentTimeMillis()).setOnlyAlertOnce(true).setPriority(0).setDefaults(-1).setSmallIcon(this.context.getApplicationInfo().icon);
        Notification notificationBuild = builder.build();
        this.manager.notify(i3, notificationBuild);
        return notificationBuild;
    }

    public Notification updateNotification(String str, String str2, int i, PendingIntent pendingIntent, boolean z) {
        return updateNotification(str, str2, -1, -1, i, pendingIntent, z);
    }
}
