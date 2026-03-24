.class public Lcn/haorui/sdk/core/utils/DownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/DownloadUtils$InstallSuccessReceiver;,
        Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;,
        Lcn/haorui/sdk/core/utils/DownloadUtils$c;
    }
.end annotation


# static fields
.field private static final ACTION_RECEIVER_INSTALL:Ljava/lang/String; = "com.hr.sdk.INSTALL_APK_START1"

.field private static final MESSAGES_CHANNEL:Ljava/lang/String; = "ms_download"

.field private static final TAG:Ljava/lang/String; = "DownloadUtils"

.field private static notificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/haorui/sdk/core/utils/NotificationBean;",
            ">;"
        }
    .end annotation
.end field

.field private static requestCode:I


# instance fields
.field private final ACTION_DOWNLOAD_CACEL:Ljava/lang/String;

.field private final ACTION_DOWNLOAD_INSTALL:Ljava/lang/String;

.field private final ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

.field private contentView:Landroid/widget/RemoteViews;

.field private currentTime:J

.field private mHandler:Landroid/os/Handler;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private pastTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcn/haorui/sdk/core/utils/DownloadUtils;->requestCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ACTION_DOWNLOAD_PAUSE"

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    const-string v0, "ACTION_DOWNLOAD_CACEL"

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->ACTION_DOWNLOAD_CACEL:Ljava/lang/String;

    const-string v0, "ACTION_DOWNLOAD_INSTALL"

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->ACTION_DOWNLOAD_INSTALL:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$102(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->getNotifyId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/haorui/sdk/core/utils/DownloadUtils;->createNotification(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/core/utils/DownloadUtils;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/core/utils/DownloadUtils;->onTaskSuccess(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/core/utils/DownloadUtils;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->pastTime:J

    return-wide v0
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/core/utils/DownloadUtils;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->pastTime:J

    return-wide p1
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/core/utils/DownloadUtils;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->currentTime:J

    return-wide v0
.end method

.method public static synthetic access$802(Lcn/haorui/sdk/core/utils/DownloadUtils;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->currentTime:J

    return-wide p1
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/core/utils/DownloadUtils;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->install(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createMessageNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    new-instance p1, Landroid/app/NotificationChannel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    const-string v1, "ms_download"

    invoke-direct {p1, v1, p2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private createNotification(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0, p2, p4}, Lcn/haorui/sdk/core/utils/DownloadUtils;->registerBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    const-string p4, "notification"

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/NotificationManager;

    iput-object p4, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p2, p3}, Lcn/haorui/sdk/core/utils/DownloadUtils;->createMessageNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->getNotificationBuilderByChannel(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget v0, Lcn/haorui/sdk/R$mipmap;->adsail_ic_launcher:I

    invoke-virtual {p4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p4

    iput-object p4, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notification:Landroid/app/Notification;

    new-instance p4, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcn/haorui/sdk/R$layout;->adsail_notification_item:I

    invoke-direct {p4, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    sget v0, Lcn/haorui/sdk/R$id;->notification_title:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    sget p4, Lcn/haorui/sdk/R$id;->notification_cancel:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    sget v1, Lcn/haorui/sdk/R$id;->notification_pause:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcn/haorui/sdk/R$id;->notification_progressText:I

    const-string v3, "0%"

    invoke-virtual {p3, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcn/haorui/sdk/R$id;->notification_pregressBar:I

    const/16 v3, 0x64

    invoke-virtual {p3, v2, v3, v0, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->getNotifyId(Ljava/lang/String;)I

    move-result p3

    sput p3, Lcn/haorui/sdk/core/utils/DownloadUtils;->requestCode:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "notify_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "notify_url"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v5, 0xc000000

    const/high16 v6, 0x8000000

    const/16 v7, 0x1f

    sget v8, Lcn/haorui/sdk/core/utils/DownloadUtils;->requestCode:I

    if-lt v4, v7, :cond_1

    invoke-static {p2, v8, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2, v8, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    iget-object v8, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_DOWNLOAD_CACEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcn/haorui/sdk/core/utils/DownloadUtils;->requestCode:I

    if-lt v4, v7, :cond_2

    const/high16 v8, 0x14000000

    goto :goto_1

    :cond_2
    const/high16 v8, 0x10000000

    :goto_1
    invoke-static {p2, v1, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const-string v0, "ACTION_DOWNLOAD_INSTALL"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Lcn/haorui/sdk/core/utils/DownloadUtils;->requestCode:I

    if-lt v4, v7, :cond_3

    invoke-static {p2, p1, p4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p2, p1, p4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_2
    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    sget p4, Lcn/haorui/sdk/R$id;->notification_rootView:I

    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget-object p1, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/NotificationBean;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notification:Landroid/app/Notification;

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/core/utils/NotificationBean;->setNotification(Landroid/app/Notification;)V

    sget-object p2, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notification:Landroid/app/Notification;

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->contentView:Landroid/widget/RemoteViews;

    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-lt v4, v7, :cond_5

    iput-object p2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_5
    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static getInstance()Lcn/haorui/sdk/core/utils/DownloadUtils;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/DownloadUtils$c;->a:Lcn/haorui/sdk/core/utils/DownloadUtils;

    return-object v0
.end method

.method private getNotificationBuilderByChannel(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "ms_download"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x18

    if-lt v0, p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private getNotifyId(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit16 p1, p1, 0xc7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method private install(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object v1, v1, Lcn/haorui/sdk/core/download/a;->c:Ljava/lang/String;

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/StringUtils;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DownloadUtils"

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Lcn/haorui/sdk/core/utils/DownloadUtils;->notificationMap:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->getNotifyId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/haorui/sdk/core/utils/NotificationBean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/utils/NotificationBean;->getReportInstallStart()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "Report send dn_inst_start"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {p1, v3, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v3, "application/vnd.android.package-archive"

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".HRFileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_3
    const-string p1, "file not exists"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private onTaskSuccess(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;

    invoke-direct {v0, p0, p3, p1}, Lcn/haorui/sdk/core/utils/DownloadUtils$b;-><init>(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_DOWNLOAD_CACEL"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_DOWNLOAD_INSTALL"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;-><init>(Lcn/haorui/sdk/core/utils/DownloadUtils;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcn/haorui/sdk/core/utils/DownloadUtils$InstallSuccessReceiver;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils$InstallSuccessReceiver;-><init>()V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DownloadUtils"

    const-string v0, "Failed registerReceiver InstallSuccessReceiver"

    invoke-static {p2, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public startDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    move-object v2, p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object v1, v0, Lcn/haorui/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/download/d;

    if-nez v1, :cond_1

    new-instance v1, Lcn/haorui/sdk/core/download/d;

    const-string v3, ""

    move-object v5, p3

    invoke-direct {v1, p2, p3, v3, p2}, Lcn/haorui/sdk/core/download/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcn/haorui/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v5, p3

    :goto_0
    move-object v10, v1

    new-instance v11, Lcn/haorui/sdk/core/utils/DownloadUtils$a;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcn/haorui/sdk/core/utils/DownloadUtils$a;-><init>(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, v10, Lcn/haorui/sdk/core/download/d;->e:Ljava/util/Map;

    iget-object v1, v10, Lcn/haorui/sdk/core/download/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcn/haorui/sdk/core/download/d;->b()V

    return-void
.end method
