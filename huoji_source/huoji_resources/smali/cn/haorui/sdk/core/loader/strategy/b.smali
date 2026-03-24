.class public Lcn/haorui/sdk/core/loader/strategy/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/strategy/c;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/strategy/c;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/b;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/b;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->k:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcn/haorui/sdk/core/loader/strategy/c;->p:J

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    iput-boolean v5, v0, Lcn/haorui/sdk/core/loader/strategy/c;->u:Z

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/strategy/c;->c()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-object v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__MS_ERRNO__"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "__MS_ERRNO__"

    const-string v5, "1025"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__TIMEOUT__"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v2, v3, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    if-le v1, v2, :cond_4

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    iget v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/loader/loadbean/a;

    iget v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I

    if-eq v3, v5, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_3
    const/4 v3, 0x5

    monitor-enter v2

    :try_start_0
    iput v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const/4 v3, 0x2

    iput v3, v2, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/strategy/c;->f()V

    :cond_5
    return-void
.end method
