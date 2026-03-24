.class public Lcn/haorui/sdk/core/utils/DownloadWorker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/DownloadWorker$InstallSuccessReceiver;,
        Lcn/haorui/sdk/core/utils/DownloadWorker$InstallReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_RECEIVER_INSTALL:Ljava/lang/String; = "cn.adsail.sdk.INSTALL_APK_START"

.field private static final BASE_INCREASED_NOTIFICATION_ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final BUFFER_SIZE:I = 0x4000

.field private static final MAX_RETRY_TIME:I = 0xa

.field private static final MESSAGE_DOWNLOAD_URL:I = 0x65

.field private static final MESSAGE_INIT:I = 0x64

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Download.DownloadWorker"

.field private static final WEEK_TIME:J = 0xf731400L

.field private static final instance:Lcn/haorui/sdk/core/utils/DownloadWorker;


# instance fields
.field private context:Landroid/content/Context;

.field private currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

.field private defaultOkHttpClient:Lz2/ox;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private manager:Landroid/app/NotificationManager;

.field private notificationTitle:Ljava/lang/String;

.field private final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final taskList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcn/haorui/sdk/core/utils/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/utils/DownloadWorker;->instance:Lcn/haorui/sdk/core/utils/DownloadWorker;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/haorui/sdk/core/utils/DownloadWorker;->BASE_INCREASED_NOTIFICATION_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->manager:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->notificationTitle:Ljava/lang/String;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->registerBroadCast(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    invoke-virtual {v0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->defaultOkHttpClient:Lz2/ox;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Download.DownloadWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/haorui/sdk/core/utils/DownloadWorker$a;-><init>(Lcn/haorui/sdk/core/utils/DownloadWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->manager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/core/utils/DownloadWorker;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/core/utils/DownloadWorker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/core/utils/DownloadWorker;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/core/utils/DownloadWorker;Lcn/haorui/sdk/core/utils/DownloadInfo;)Lcn/haorui/sdk/core/utils/DownloadInfo;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    return-object p1
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/core/utils/DownloadWorker;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->handleMessageDownload()V

    return-void
.end method

.method public static synthetic access$500(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->buildInstallApkIntent(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/core/utils/DownloadWorker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->reportInstallSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private static buildInstallApkIntent(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".HRFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const p1, 0x10000001

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    const-string p1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private buildNotificationTitle(Z)V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    sget v0, Lcn/haorui/sdk/R$string;->adsail_notification_title_wait:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    sget v0, Lcn/haorui/sdk/R$string;->adsail_notification_title:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/utils/DownloadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    sget v3, Lcn/haorui/sdk/R$string;->adsail_notification_title_more_wait:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/DownloadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    sget v3, Lcn/haorui/sdk/R$string;->adsail_notification_title_more:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/utils/DownloadInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->notificationTitle:Ljava/lang/String;

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getDownloadDirectory()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "adsail_sdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcn/haorui/sdk/core/utils/DownloadWorker;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/DownloadWorker;->instance:Lcn/haorui/sdk/core/utils/DownloadWorker;

    return-object v0
.end method

.method public static getLocalApkFiles()[Ljava/io/File;
    .locals 2

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadWorker;->getDownloadDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcn/haorui/sdk/core/utils/DownloadWorker$b;

    invoke-direct {v1}, Lcn/haorui/sdk/core/utils/DownloadWorker$b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPackageNameFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getSizeFromRange(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private handleMessageDownload()V
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "; file: "

    const-string v3, ""

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->poll()Lcn/haorui/sdk/core/utils/DownloadInfo;

    move-result-object v0

    iput-object v0, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    const-string v4, "Download.DownloadWorker"

    if-nez v0, :cond_0

    const-string v0, "Queue is empty."

    invoke-static {v4, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v0, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v0, v0, Lcn/haorui/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v6, v6, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set modify time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    iget-object v0, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onDownloadStart()V

    :goto_1
    iget-object v0, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onDownloaded()V

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->onTaskSuccess()V

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lcn/haorui/sdk/core/utils/DownloadWorker;->buildNotificationTitle(Z)V

    :goto_2
    const/4 v7, -0x1

    :try_start_0
    iget-object v8, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v1, v8, v3, v7, v7}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;II)Landroid/app/Notification;

    iget-object v8, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wait network connection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v9, v9, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x2710

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :goto_3
    new-instance v8, Lz2/jx$OooO00o;

    invoke-direct {v8}, Lz2/jx$OooO00o;-><init>()V

    iget-object v9, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "User-Agent"

    invoke-virtual {v8, v10, v9}, Lz2/jx$OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    new-instance v9, Lz2/qx$OooO00o;

    invoke-direct {v9}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {v8}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v8

    invoke-virtual {v9, v8}, Lz2/qx$OooO00o;->OooO(Lz2/jx;)Lz2/qx$OooO00o;

    move-result-object v8

    iget-object v10, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v10, v10, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v8

    invoke-virtual {v8}, Lz2/qx$OooO00o;->OooO0o()Lz2/qx$OooO00o;

    move-result-object v8

    invoke-virtual {v8}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    iget-object v8, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-virtual {v8}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onDownloadStart()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    const-string v10, "; tempFile: "

    const-string v11, "Start download: "

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v11, v11, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; range: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "range"

    invoke-virtual {v9, v10, v8}, Lz2/qx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    goto :goto_4

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v11, v11, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed in download(Failed in create file). url: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v6, v6, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->onTaskFailed()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    :cond_4
    :goto_4
    invoke-virtual {v9}, Lz2/qx$OooO00o;->OooO0o()Lz2/qx$OooO00o;

    move-result-object v8

    invoke-virtual {v8}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_2
    invoke-direct {v1, v10}, Lcn/haorui/sdk/core/utils/DownloadWorker;->buildNotificationTitle(Z)V

    iget-object v11, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v1, v11, v3, v7, v7}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;II)Landroid/app/Notification;

    iget-object v11, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->defaultOkHttpClient:Lz2/ox;

    invoke-virtual {v11, v8}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object v8

    invoke-interface {v8}, Lz2/tw;->execute()Lz2/sx;

    move-result-object v8

    invoke-virtual {v8}, Lz2/sx;->OoooooO()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v12, "rw"

    const/16 v13, 0xc8

    const-wide/16 v14, 0x0

    if-ne v11, v13, :cond_5

    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    invoke-direct {v11, v5, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v12, "content-length"

    invoke-virtual {v8, v12}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catch_0
    const-wide/16 v16, -0x1

    :goto_5
    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v5, v9

    move-object v9, v11

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_5
    const/16 v14, 0xce

    if-ne v11, v14, :cond_c

    :try_start_6
    new-instance v14, Ljava/io/RandomAccessFile;

    invoke-direct {v14, v5, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v18

    if-ne v11, v13, :cond_6

    const-wide/16 v11, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v11, v18

    :goto_6
    invoke-virtual {v9, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-string v11, "content-range"

    invoke-virtual {v8, v11}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcn/haorui/sdk/core/utils/DownloadWorker;->getSizeFromRange(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide/from16 v26, v11

    move-object v11, v14

    move-wide/from16 v14, v26

    :goto_7
    :try_start_8
    invoke-virtual {v8}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v8

    invoke-virtual {v8}, Lz2/tx;->byteStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v12, 0x4000

    new-array v12, v12, [B

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_8
    invoke-virtual {v8, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-eq v13, v7, :cond_9

    invoke-static {v12, v10, v13}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v7, v21, v13

    add-int/lit8 v13, v20, 0x1

    const/16 v10, 0xc8

    if-lt v13, v10, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download: "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v10, v7, 0x400

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "KBs"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    add-long v24, v16, v24

    cmp-long v10, v24, v22

    if-gtz v10, :cond_8

    iget-object v10, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->notificationTitle:Ljava/lang/String;

    move-object/from16 v21, v12

    move/from16 v24, v13

    int-to-long v12, v7

    add-long v12, v18, v12

    const-wide/16 v16, 0x400

    div-long v12, v12, v16

    long-to-int v13, v12

    move/from16 v25, v7

    div-long v6, v14, v16

    long-to-int v7, v6

    invoke-virtual {v1, v10, v3, v13, v7}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;II)Landroid/app/Notification;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide/from16 v16, v22

    goto :goto_9

    :cond_8
    move/from16 v25, v7

    move-object/from16 v21, v12

    move/from16 v24, v13

    :goto_9
    move-object/from16 v12, v21

    move/from16 v20, v24

    move/from16 v21, v25

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    invoke-static {v9}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcn/haorui/sdk/core/utils/DownloadWorker;->cancelNotification(I)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_a
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download OK. "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v5, v5, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v5, v5, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed in download(Rename). url: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v5, v5, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object v5, v9

    move-object v9, v14

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v11, v14

    :goto_a
    move-object v5, v9

    move-object v9, v11

    goto :goto_b

    :cond_c
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed in download(Response code). url: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v5, v5, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; code: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->onTaskFailed()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v9}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v5, v9

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v5, v9

    :goto_b
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed in download(Exception). url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v7, v7, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->onTaskFailed()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {v5}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    :goto_c
    invoke-static {v9}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/haorui/sdk/core/utils/DownloadWorker;->cancelNotification(I)V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_d
    invoke-static {v5}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v9}, Lcn/haorui/sdk/core/utils/DownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/haorui/sdk/core/utils/DownloadWorker;->cancelNotification(I)V

    throw v0

    :catch_4
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed in download(Exception in create file). url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v7, v7, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->onTaskFailed()V

    goto/16 :goto_0
.end method

.method private static installApk(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install apk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download.DownloadWorker"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->buildInstallApkIntent(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static installApk(Lcn/haorui/sdk/core/utils/DownloadInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onInstallStart()V

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->installApk(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static declared-synchronized isAppInFront(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcn/haorui/sdk/core/utils/DownloadWorker;

    monitor-enter v0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onNewTask()V
    .locals 0

    return-void
.end method

.method private onTaskFailed()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->retry(Lcn/haorui/sdk/core/utils/DownloadInfo;)V

    return-void
.end method

.method private onTaskSuccess()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    const-class v2, Lcn/haorui/sdk/core/utils/DownloadWorker$InstallReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v1, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->key:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.adsail.sdk.INSTALL_APK_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget v2, v2, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    const/high16 v3, 0x4000000

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget v2, v2, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    const/high16 v3, 0x10000000

    :goto_0
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v5, v0

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v2, v0, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    iget v4, v0, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    const/4 v6, 0x0

    const-string v3, "\u4e0b\u8f7d\u5df2\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Z)Landroid/app/Notification;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->isAppInFront(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->installApk(Lcn/haorui/sdk/core/utils/DownloadInfo;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->currentDownloadInfo:Lcn/haorui/sdk/core/utils/DownloadInfo;

    return-void
.end method

.method private poll()Lcn/haorui/sdk/core/utils/DownloadInfo;
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/utils/DownloadInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareSdkDownloadDirectory()V
    .locals 4

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadWorker;->getDownloadDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v1, "Download.DownloadWorker"

    const-string v2, "directory prepared."

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcn/haorui/sdk/core/utils/DownloadWorker$c;

    invoke-direct {v3, v1, v2}, Lcn/haorui/sdk/core/utils/DownloadWorker$c;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportInstallSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;

    const-string v1, "Download.InstallSuccess"

    invoke-direct {v0, p0, v1, p1}, Lcn/haorui/sdk/core/utils/DownloadWorker$d;-><init>(Lcn/haorui/sdk/core/utils/DownloadWorker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private retry(Lcn/haorui/sdk/core/utils/DownloadInfo;)V
    .locals 7

    iget v0, p1, Lcn/haorui/sdk/core/utils/DownloadInfo;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/haorui/sdk/core/utils/DownloadInfo;->retryTime:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry. url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Download.DownloadWorker"

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    iget-object v2, p1, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    sget-object v0, Lcn/haorui/sdk/core/utils/DownloadWorker;->BASE_INCREASED_NOTIFICATION_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Z)Landroid/app/Notification;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop retry. url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download.DownloadWorker"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    iget-object p1, p1, Lcn/haorui/sdk/core/utils/DownloadInfo;->key:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public directInstall(Lcn/haorui/sdk/platform/hr/IAdSailAd;Lcn/haorui/sdk/core/utils/DownloadInfo;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onDownloadStart()V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onDownloaded()V

    invoke-static {p2}, Lcn/haorui/sdk/core/utils/DownloadWorker;->installApk(Lcn/haorui/sdk/core/utils/DownloadInfo;)V

    return-void
.end method

.method public download(Lcn/haorui/sdk/platform/hr/IAdSailAd;Lcn/haorui/sdk/core/utils/DownloadInfo;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/haorui/sdk/core/utils/DownloadWorker;->BASE_INCREASED_NOTIFICATION_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p2, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->buildNotificationTitle(Z)V

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->onNewTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "Download.DownloadWorker"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New download. size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public findDownloadInfo(Ljava/lang/String;)Lcn/haorui/sdk/core/utils/DownloadInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDownloadInfoByPackageName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/DownloadInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->taskCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-object v3, v2, Lcn/haorui/sdk/core/utils/DownloadInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    iget-object v4, v2, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/haorui/sdk/core/utils/DownloadWorker;->getPackageNameFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/haorui/sdk/core/utils/DownloadInfo;->packageName:Ljava/lang/String;

    :cond_1
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public updateNotification(Ljava/lang/String;Ljava/lang/String;II)Landroid/app/Notification;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public updateNotification(Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->enableNotify()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "cn.adsail.sdk"

    const-string v4, "\u4e0b\u8f7d\u8fdb\u5ea6\u901a\u77e5"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne p4, v2, :cond_2

    const-string p2, ""

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "KB"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p4, p3, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_4
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker;->manager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p5, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 8

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
