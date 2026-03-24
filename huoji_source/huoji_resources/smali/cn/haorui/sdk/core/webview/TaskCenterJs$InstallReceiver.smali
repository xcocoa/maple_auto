.class public Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/webview/TaskCenterJs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/webview/TaskCenterJs;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;->a:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;->a:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-object v0, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;->a:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-object v0, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/taskcenter/TrackBean;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcn/haorui/sdk/core/taskcenter/e;

    invoke-direct {v1}, Lcn/haorui/sdk/core/taskcenter/e;-><init>()V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getTaskId()Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getIn_error()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getIn_start()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getIn_succ()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getDn_succ()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcn/haorui/sdk/core/taskcenter/TrackBean;->getIsAppStore()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_5

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;->a:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:reportInstallApplication("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method
