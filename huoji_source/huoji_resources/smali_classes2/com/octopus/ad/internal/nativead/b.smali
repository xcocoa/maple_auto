.class public Lcom/octopus/ad/internal/nativead/b;
.super Lcom/octopus/ad/internal/o;
.source ""


# instance fields
.field private final a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/octopus/ad/internal/nativead/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/octopus/ad/internal/o;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/nativead/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v1, "Before execute request manager, you should set ad request!"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/o;->e()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/network/a;->a(Lcom/octopus/ad/internal/e;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/utils/b/h;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignored:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "octopus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Concurrent Thread Exception while firing new ad request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/o;->f()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/nativead/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->f()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/nativead/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->containsAds()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_no_ads:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->f()Lcom/octopus/ad/internal/b;

    move-result-object p1

    const v0, 0x138e4

    invoke-interface {p1, v0}, Lcom/octopus/ad/internal/b;->a(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->getNativeAdResponse()Lcom/octopus/ad/NativeAdResponse;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->e()Lcom/octopus/ad/internal/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/nativead/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/nativead/c;->a(Z)V

    new-instance v0, Lcom/octopus/ad/internal/nativead/b$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/octopus/ad/internal/nativead/b$1;-><init>(Lcom/octopus/ad/internal/nativead/b;Lcom/octopus/ad/internal/nativead/c;Lcom/octopus/ad/internal/network/ServerResponse;)V

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/nativead/b;->a(Lcom/octopus/ad/internal/network/b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/b;)V
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/o;->f()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/nativead/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->f()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(Lcom/octopus/ad/internal/network/b;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->h()V

    :goto_0
    return-void
.end method

.method public b()Lcom/octopus/ad/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/nativead/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->e()Lcom/octopus/ad/internal/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/nativead/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
