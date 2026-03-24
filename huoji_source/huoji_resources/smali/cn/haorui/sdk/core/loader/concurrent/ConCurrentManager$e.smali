.class public Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->handleLoadMeshu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Z)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    iput-boolean p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcn/haorui/sdk/core/loader/AdPlatformError;I)V
    .locals 0

    iget-boolean p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "ConCurrentManager"

    const-string p2, "AdSail___onAdError"

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Ljava/lang/Object;I)V
    .locals 0

    iget-boolean p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->a:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRenderFail(Ljava/lang/String;II)V
    .locals 0

    iget-boolean p3, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->a:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p3}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p3}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Ljava/lang/Object;I)V
    .locals 4

    iget-boolean p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->a:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheKey()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$400(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcn/haorui/sdk/core/loader/cache/a;

    invoke-direct {v1}, Lcn/haorui/sdk/core/loader/cache/a;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;

    move-result-object v2

    iput-object v2, v1, Lcn/haorui/sdk/core/loader/cache/a;->h:Lcn/haorui/sdk/core/domain/HRAdInfo;

    iput-object p1, v1, Lcn/haorui/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    iput-object p2, v1, Lcn/haorui/sdk/core/loader/cache/a;->a:Ljava/lang/String;

    iput-boolean v0, v1, Lcn/haorui/sdk/core/loader/cache/a;->e:Z

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getLoadedTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/haorui/sdk/core/loader/cache/a;->f:J

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getExpire_timestamp()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, v1, Lcn/haorui/sdk/core/loader/cache/a;->g:J

    new-instance p1, Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-direct {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;-><init>()V

    const-string v0, "AD_HR"

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    iput-object p1, v1, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCacheScore()I

    move-result p1

    iput p1, v1, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$400(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcn/haorui/sdk/core/loader/cache/CacheManager;->INSTANCE:Lcn/haorui/sdk/core/loader/cache/CacheManager;

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$400(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {v1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$300(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/domain/HRAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcn/haorui/sdk/core/loader/cache/CacheManager;->handleCurrentList(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$500(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2, v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$502(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Z)Z

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$600(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/strategy/a;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$600(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/strategy/a;

    move-result-object p2

    check-cast p2, Lcn/haorui/sdk/core/loader/strategy/c;

    iput-boolean v0, p2, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    :cond_1
    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$000(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$e;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-static {p2, p1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$100(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
