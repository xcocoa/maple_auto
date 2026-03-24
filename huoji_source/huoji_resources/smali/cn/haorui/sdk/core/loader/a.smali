.class public Lcn/haorui/sdk/core/loader/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/IAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K::",
        "Lcn/haorui/sdk/core/loader/IAdLoadListener<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/IAdLoadListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdLoadListenerProxy"


# instance fields
.field public listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public loader:Lcn/haorui/sdk/core/loader/d;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/loader/d;",
            "TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    const-string v0, "AdLoadListenerProxy"

    const-string v1, "send onAdClosed"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    :cond_1
    return-void
.end method

.method public onAdError()V
    .locals 0

    return-void
.end method

.method public onAdExposure()V
    .locals 3

    const-string v0, "AdLoadListenerProxy"

    const-string v1, "send onAdExposure"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    instance-of v1, v0, Lcn/haorui/sdk/platform/hr/HRAdLoader;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v2}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_2
    return-void
.end method

.method public onAdLoaded(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getTag()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;->onAdLoaded(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 7

    const-string v0, "AdLoadListenerProxy"

    const-string v1, "send onAdPlatformError"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getTag()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;->onAdError(Lcn/haorui/sdk/core/loader/AdPlatformError;I)V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v2}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    move-result-wide v2

    check-cast v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "ConCurrentManager"

    const-string v5, "onAdRenderFail"

    invoke-static {v4, v5}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->a:Lcn/haorui/sdk/core/loader/cache/a;

    iget-boolean v5, v4, Lcn/haorui/sdk/core/loader/cache/a;->e:Z

    if-eqz v5, :cond_2

    iget-wide v4, v4, Lcn/haorui/sdk/core/loader/cache/a;->f:J

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    move-result-wide v4

    :goto_0
    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$a;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onAdReady(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getTag()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;->onRenderSuccess(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/a;->loader:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getTag()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;->onRenderFail(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
