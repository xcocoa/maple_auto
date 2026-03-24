.class public Lcn/haorui/sdk/core/utils/DownloadUtils$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/DownloadUtils;->onTaskSuccess(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcn/haorui/sdk/core/utils/DownloadUtils;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/utils/NotificationBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->getReportDownloadSuccess()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "DownloadUtils"

    const-string v2, "Report send dn_succ"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->b:Landroid/content/Context;

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->b:Landroid/content/Context;

    const-class v2, Lcn/haorui/sdk/core/utils/DownloadWorker$InstallReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.hr.sdk.INSTALL_APK_START1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->b:Landroid/content/Context;

    const/high16 v3, 0x4000000

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->b:Landroid/content/Context;

    const/high16 v3, 0x10000000

    :goto_1
    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v2, Lcn/haorui/sdk/R$id;->notification_cancel:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v2, Lcn/haorui/sdk/R$id;->notification_pause:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v2, Lcn/haorui/sdk/R$id;->notification_progressText:I

    const-string v3, "\u4e0b\u8f7d\u5df2\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/utils/NotificationBean;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$b;->c:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method
