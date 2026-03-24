.class public Lcn/haorui/sdk/core/utils/DownloadWorker$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/DownloadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.adsail.sdk.INSTALL_APK_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadWorker;->getInstance()Lcn/haorui/sdk/core/utils/DownloadWorker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/haorui/sdk/core/utils/DownloadWorker;->findDownloadInfo(Ljava/lang/String;)Lcn/haorui/sdk/core/utils/DownloadInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/utils/DownloadInfo;->onInstallStart()V

    new-instance v0, Ljava/io/File;

    iget-object p2, p2, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$500(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
