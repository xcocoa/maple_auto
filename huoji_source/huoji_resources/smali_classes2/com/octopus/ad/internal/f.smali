.class public Lcom/octopus/ad/internal/f;
.super Lcom/octopus/ad/internal/o;
.source ""


# instance fields
.field private final a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/octopus/ad/internal/view/AdViewImpl;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/octopus/ad/internal/network/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 1

    invoke-direct {p0}, Lcom/octopus/ad/internal/o;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/network/ServerResponse;)V

    return-void
.end method

.method private a(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d;->a(Z)V

    new-instance v0, Lcom/octopus/ad/internal/view/AdWebView;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/view/AdWebView;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/view/AdWebView;->loadAd(Lcom/octopus/ad/internal/network/ServerResponse;)V

    invoke-virtual {p2}, Lcom/octopus/ad/internal/network/ServerResponse;->getTextLogInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/octopus/ad/internal/network/ServerResponse;->getLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->createAdLogo(Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;)V

    invoke-interface {p1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->addBannerCloseBtn()V

    move-object v1, p1

    check-cast v1, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->getExpandsToFitScreenWidth()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/octopus/ad/internal/network/ServerResponse;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/octopus/ad/internal/network/ServerResponse;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->expandToFitScreenWidth(IILcom/octopus/ad/internal/view/b;)V

    :cond_0
    iput-object p2, p1, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    new-instance v1, Lcom/octopus/ad/internal/f$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/octopus/ad/internal/f$2;-><init>(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/AdWebView;Lcom/octopus/ad/internal/network/ServerResponse;)V

    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/f;->a(Lcom/octopus/ad/internal/network/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "========Exception=========:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "octopus"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception initializing the view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x13881

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/f;->a(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/octopus/ad/internal/f;->d()Lcom/octopus/ad/internal/network/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v1, "Before execute request manager, you should set ad request!"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/network/a;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/f;->d()Lcom/octopus/ad/internal/network/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/network/a;-><init>(Lcom/octopus/ad/internal/network/a$a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/network/a;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/o;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/network/a;

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/network/a;->a(Lcom/octopus/ad/internal/e;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/network/a;

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/utils/b/h;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->e()V
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

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/o;->f()V

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getMyHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/f$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/octopus/ad/internal/f$1;-><init>(Lcom/octopus/ad/internal/f;Lcom/octopus/ad/internal/network/ServerResponse;Lcom/octopus/ad/internal/view/AdViewImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/b;)V
    .locals 1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/o;->f()V

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

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

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/network/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/f;->b:Lcom/octopus/ad/internal/network/a;

    :cond_0
    return-void
.end method

.method public d()Lcom/octopus/ad/internal/network/a$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdRequest()Lcom/octopus/ad/internal/network/a$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
