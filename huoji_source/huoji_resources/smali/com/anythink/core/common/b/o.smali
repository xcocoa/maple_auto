.class public final Lcom/anythink/core/common/b/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATBiddingListenerExt;


# instance fields
.field private a:Lcom/anythink/core/api/ATBiddingListener;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/ATBiddingListener;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/ATBiddingListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/common/b/o;->c:I

    iput-object p1, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    iput-object p2, p0, Lcom/anythink/core/common/b/o;->b:Ljava/util/Map;

    iput p3, p0, Lcom/anythink/core/common/b/o;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/ATBiddingListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/b/o;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/b/o;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    :cond_0
    return-void
.end method

.method public final onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V
    .locals 4

    iget v0, p0, Lcom/anythink/core/common/b/o;->c:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/o;->isSuccessWithUseType()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/anythink/core/common/f/a/e;

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->b:Ljava/util/Map;

    invoke-direct {v1, p2, v2}, Lcom/anythink/core/common/f/a/e;-><init>(Lcom/anythink/core/api/BaseAd;Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/e;

    const/4 v2, 0x2

    invoke-interface {p2}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/anythink/core/common/b/o$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/anythink/core/common/b/o$1;-><init>(Lcom/anythink/core/common/b/o;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBiddingResult;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1, v2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz p1, :cond_3

    const-string p2, "load fail with no adObject"

    invoke-static {p2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_3
    return-void
.end method

.method public final onC2SBiddingResultWithData(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/b/o;->a:Lcom/anythink/core/api/ATBiddingListener;

    instance-of v1, v0, Lcom/anythink/core/api/ATBiddingListenerExt;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/core/api/ATBiddingListenerExt;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATBiddingListenerExt;->onC2SBiddingResultWithData(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method
