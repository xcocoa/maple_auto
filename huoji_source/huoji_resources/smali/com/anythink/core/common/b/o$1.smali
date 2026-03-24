.class public final Lcom/anythink/core/common/b/o$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/BaseAd;

.field public final synthetic b:Lcom/anythink/core/api/ATBiddingResult;

.field public final synthetic c:Lcom/anythink/core/common/b/o;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/o;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBiddingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/o$1;->c:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$1;->a:Lcom/anythink/core/api/BaseAd;

    iput-object p3, p0, Lcom/anythink/core/common/b/o$1;->b:Lcom/anythink/core/api/ATBiddingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/core/common/b/o$1;->c:Lcom/anythink/core/common/b/o;

    invoke-static {p1}, Lcom/anythink/core/common/b/o;->a(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/ATBiddingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/b/o$1;->c:Lcom/anythink/core/common/b/o;

    invoke-static {p1}, Lcom/anythink/core/common/b/o;->a(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/ATBiddingListener;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "load image failed: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object p2, p0, Lcom/anythink/core/common/b/o$1;->a:Lcom/anythink/core/api/BaseAd;

    invoke-interface {p2}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/b/o$1;->c:Lcom/anythink/core/common/b/o;

    invoke-static {p1}, Lcom/anythink/core/common/b/o;->a(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/ATBiddingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/b/o$1;->c:Lcom/anythink/core/common/b/o;

    invoke-static {p1}, Lcom/anythink/core/common/b/o;->a(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/ATBiddingListener;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/core/common/b/o$1;->b:Lcom/anythink/core/api/ATBiddingResult;

    new-instance v0, Lcom/anythink/core/common/f/a/e;

    iget-object v1, p0, Lcom/anythink/core/common/b/o$1;->a:Lcom/anythink/core/api/BaseAd;

    iget-object v2, p0, Lcom/anythink/core/common/b/o$1;->c:Lcom/anythink/core/common/b/o;

    invoke-static {v2}, Lcom/anythink/core/common/b/o;->b(Lcom/anythink/core/common/b/o;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/a/e;-><init>(Lcom/anythink/core/api/BaseAd;Ljava/util/Map;)V

    invoke-interface {p1, p2, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method
