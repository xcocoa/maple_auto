.class public Lcn/haorui/sdk/core/utils/DownloadWorker$d;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/DownloadWorker;->reportInstallSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/haorui/sdk/core/utils/DownloadWorker;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/DownloadWorker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->b:Lcn/haorui/sdk/core/utils/DownloadWorker;

    iput-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadWorker;->getInstance()Lcn/haorui/sdk/core/utils/DownloadWorker;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->findDownloadInfoByPackageName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/utils/DownloadInfo;

    iget-boolean v2, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->installStartReported:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onInstallSucc()V

    iget-boolean v2, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->hasNotifiedOpen:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->hasNotifiedOpen:Z

    iget-object v2, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->deeplinkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/high16 v3, 0x10000000

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->deeplinkUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :try_start_1
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    :try_start_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->b:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$100(Lcn/haorui/sdk/core/utils/DownloadWorker;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->b:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v4}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$100(Lcn/haorui/sdk/core/utils/DownloadWorker;)Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    invoke-static {v4, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->b:Lcn/haorui/sdk/core/utils/DownloadWorker;

    iget-object v4, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v5, "\u5b89\u88c5\u5df2\u5b8c\u6210\uff0c\u70b9\u51fb\u6253\u5f00"

    :try_start_3
    iget v6, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcn/haorui/sdk/core/utils/DownloadWorker;->updateNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Z)Landroid/app/Notification;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$d;->b:Lcn/haorui/sdk/core/utils/DownloadWorker;

    iget v1, v1, Lcn/haorui/sdk/core/utils/DownloadInfo;->notificationId:I

    invoke-virtual {v2, v1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->cancelNotification(I)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
