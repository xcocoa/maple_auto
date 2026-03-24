.class public Lcn/haorui/sdk/core/webview/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/taskcenter/b;

.field public final synthetic b:Lcom/google/gson/Gson;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcn/haorui/sdk/core/webview/TaskCenterJs;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Lcn/haorui/sdk/core/taskcenter/b;Lcom/google/gson/Gson;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/b;->e:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iput-object p2, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    iput-object p3, p0, Lcn/haorui/sdk/core/webview/b;->b:Lcom/google/gson/Gson;

    iput-object p4, p0, Lcn/haorui/sdk/core/webview/b;->c:Ljava/util/List;

    iput-object p5, p0, Lcn/haorui/sdk/core/webview/b;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x2710

    const-string v7, ")"

    const-string v8, "javascript:reportOpenApplication("

    cmp-long v9, v3, v5

    if-lez v9, :cond_1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->e:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/webview/b;->b:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/core/webview/b;->e:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-object v3, v3, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    iget-boolean v4, v3, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v5, p0, Lcn/haorui/sdk/core/webview/b;->e:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-wide v9, v5, Lcn/haorui/sdk/core/webview/TaskCenterJs;->e:J

    cmp-long v6, v3, v9

    iget-object v3, v5, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    iget-boolean v4, v3, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->d:Z

    if-lez v6, :cond_4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->e:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/webview/b;->b:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->d:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->e:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/webview/b;->b:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcn/haorui/sdk/core/webview/b;->a:Lcn/haorui/sdk/core/taskcenter/b;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
