.class public Lcn/haorui/sdk/core/webview/TaskCenterJs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;
    }
.end annotation


# instance fields
.field public a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

.field public b:Landroid/webkit/WebView;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/taskcenter/TrackBean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;

.field public e:J


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->e:J

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    iput-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Lcn/haorui/sdk/core/download/b;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Lcn/haorui/sdk/core/download/b;->i:J

    iget p1, p1, Lcn/haorui/sdk/core/download/b;->j:I

    new-instance v0, Lcn/haorui/sdk/core/taskcenter/d;

    invoke-direct {v0}, Lcn/haorui/sdk/core/taskcenter/d;-><init>()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:reportDownloadApplicationProgress("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    new-instance v1, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;)V

    iput-object v1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->d:Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final a(Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getDownloadUrl()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getAppName()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_start()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_error()Ljava/util/List;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_succ()Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v1, Lcn/haorui/sdk/core/taskcenter/TrackBean;

    invoke-direct {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->setTaskId(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->setIsAppStore(Z)V

    iget-object v3, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->b(Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;)V

    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    new-instance v1, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs$b;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;)V
    .locals 9

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_start()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_error()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_succ()Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v3, Lcn/haorui/sdk/core/taskcenter/TrackBean;

    invoke-direct {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;-><init>()V

    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->setTaskId(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object v4, v3, Lcn/haorui/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/core/download/d;

    if-nez v4, :cond_3

    new-instance v4, Lcn/haorui/sdk/core/download/d;

    invoke-direct {v4, v0, v1, v2, p1}, Lcn/haorui/sdk/core/download/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcn/haorui/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance p1, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;

    invoke-direct {p1, p0, v5, v6}, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v4, Lcn/haorui/sdk/core/download/d;->e:Ljava/util/Map;

    iget-object v1, v4, Lcn/haorui/sdk/core/download/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/download/d;->b()V

    :cond_4
    return-void
.end method

.method public checkInstall(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/haorui/sdk/core/taskcenter/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    throw p1
.end method

.method public closeCurrentUI()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public downloadApplication(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->getIs_appstore()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->b(Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public downloadApplicationAction(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/haorui/sdk/core/taskcenter/DownloadPauseBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/DownloadPauseBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadPauseBean;->getDownloadUrl()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadPauseBean;->getHandleAction()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadPauseBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DownloadPauseBean;->getAppPackageName()Ljava/lang/String;

    sget-object p1, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/download/a;->b(Ljava/lang/String;)Lcn/haorui/sdk/core/download/d;

    move-result-object p1

    new-instance v1, Lcn/haorui/sdk/core/taskcenter/c;

    invoke-direct {v1}, Lcn/haorui/sdk/core/taskcenter/c;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/download/d;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:reportDownloadApplicationAction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public installApplication(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getIn_start()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v3, Lcn/haorui/sdk/core/taskcenter/TrackBean;

    invoke-direct {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;-><init>()V

    :goto_0
    invoke-virtual {v3, v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->setTaskId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object v1, v1, Lcn/haorui/sdk/core/download/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".HRFileProvider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_4
    new-instance p1, Lcn/haorui/sdk/core/taskcenter/e;

    invoke-direct {p1}, Lcn/haorui/sdk/core/taskcenter/e;-><init>()V

    invoke-virtual {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getTaskId()Ljava/lang/String;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getIn_error()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:reportInstallApplication("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method public openApplication(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;

    invoke-virtual {v6, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->e:J

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDp_start()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDp_error()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDp_succ()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v5, v2

    move-object v7, v5

    :goto_0
    new-instance v8, Lcn/haorui/sdk/core/taskcenter/b;

    invoke-direct {v8}, Lcn/haorui/sdk/core/taskcenter/b;-><init>()V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->getTaskId()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->getPackageName()Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v9, Lcn/haorui/sdk/core/webview/b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/webview/b;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Lcn/haorui/sdk/core/taskcenter/b;Lcom/google/gson/Gson;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p1, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:reportOpenApplication("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/haorui/sdk/core/taskcenter/f;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/f;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
