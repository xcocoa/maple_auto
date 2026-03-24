.class public final Lcom/anythink/core/common/b/p$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/p;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/BaseAd;

.field public final synthetic b:Lcom/anythink/core/common/b/p;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/p;Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/p$1;->b:Lcom/anythink/core/common/b/p;

    iput-object p2, p0, Lcom/anythink/core/common/b/p$1;->a:Lcom/anythink/core/api/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/core/common/b/p$1;->b:Lcom/anythink/core/common/b/p;

    iget-object p1, p1, Lcom/anythink/core/common/b/p;->a:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "load image fail:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "10011"

    invoke-interface {p1, v0, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object p2, p0, Lcom/anythink/core/common/b/p$1;->a:Lcom/anythink/core/api/BaseAd;

    invoke-interface {p2}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/b/p$1;->b:Lcom/anythink/core/common/b/p;

    iget-object p2, p1, Lcom/anythink/core/common/b/p;->a:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    const/4 v1, 0x0

    new-instance v2, Lcom/anythink/core/common/f/a/e;

    iget-object v3, p0, Lcom/anythink/core/common/b/p$1;->a:Lcom/anythink/core/api/BaseAd;

    iget-object p1, p1, Lcom/anythink/core/common/b/p;->b:Ljava/util/Map;

    invoke-direct {v2, v3, p1}, Lcom/anythink/core/common/f/a/e;-><init>(Lcom/anythink/core/api/BaseAd;Ljava/util/Map;)V

    aput-object v2, v0, v1

    invoke-interface {p2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method
