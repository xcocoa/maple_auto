.class public Lmobi/oneway/export/b/b/e;
.super Lmobi/oneway/export/b/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobi/oneway/export/b/b/b<",
        "Lmobi/oneway/export/AdListener/OWInteractiveAdListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/oneway/export/enums/AdType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/oneway/export/b/b/b;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdReady()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    invoke-interface {v0, v1, p1}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmobi/oneway/export/b/b/b;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/b/b/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {p1, p2, p3}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmobi/oneway/export/b/b/b;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/b/b/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {p1}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdReady()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/oneway/export/b/b/b;->a(Z)V

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onReward(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
