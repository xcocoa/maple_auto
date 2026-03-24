.class public Lmobi/oneway/export/b/b/i;
.super Lmobi/oneway/export/b/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobi/oneway/export/b/b/b<",
        "Lmobi/oneway/export/AdListener/OWSplashAdListener;",
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
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {p1}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdFinish()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {p1, p2, p3}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {p1}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdShow()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {p1}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
