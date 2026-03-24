.class public Lcn/haorui/sdk/core/utils/DownloadWorker$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/DownloadWorker;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/DownloadWorker;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/DownloadWorker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "Download.DownloadWorker"

    const-string v1, "Start work."

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$400(Lcn/haorui/sdk/core/utils/DownloadWorker;)V

    const-string v0, "Download.DownloadWorker"

    const-string v1, "Queue clear."

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "Download.DownloadWorker"

    const-string v1, "Init start."

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$000(Lcn/haorui/sdk/core/utils/DownloadWorker;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadWorker;->prepareSdkDownloadDirectory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "cn.adsail.sdk.INSTALL_APK_START"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$100(Lcn/haorui/sdk/core/utils/DownloadWorker;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcn/haorui/sdk/core/utils/DownloadWorker$InstallReceiver;

    invoke-direct {v3}, Lcn/haorui/sdk/core/utils/DownloadWorker$InstallReceiver;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Download.DownloadWorker"

    const-string v3, "Failed registerReceiver InstallReceiver"

    invoke-static {v2, v3}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$100(Lcn/haorui/sdk/core/utils/DownloadWorker;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcn/haorui/sdk/core/utils/DownloadWorker$InstallSuccessReceiver;

    invoke-direct {v3}, Lcn/haorui/sdk/core/utils/DownloadWorker$InstallSuccessReceiver;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "Download.DownloadWorker"

    const-string v3, "Failed registerReceiver InstallSuccessReceiver"

    invoke-static {v2, v3}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$000(Lcn/haorui/sdk/core/utils/DownloadWorker;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$200(Lcn/haorui/sdk/core/utils/DownloadWorker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$302(Lcn/haorui/sdk/core/utils/DownloadWorker;Lcn/haorui/sdk/core/utils/DownloadInfo;)Lcn/haorui/sdk/core/utils/DownloadInfo;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init ok. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadWorker$a;->a:Lcn/haorui/sdk/core/utils/DownloadWorker;

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/DownloadWorker;->access$000(Lcn/haorui/sdk/core/utils/DownloadWorker;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download.DownloadWorker"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
