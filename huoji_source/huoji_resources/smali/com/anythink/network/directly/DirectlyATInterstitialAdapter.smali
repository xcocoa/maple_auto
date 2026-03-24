.class public Lcom/anythink/network/directly/DirectlyATInterstitialAdapter;
.super Lcom/anythink/network/adx/AdxATInterstitialAdapter;
.source ""


# instance fields
.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/network/directly/DirectlyATInterstitialAdapter;->d:I

    return-void
.end method


# virtual methods
.method public fixDirectlyInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->b:Lcom/anythink/basead/d/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/basead/d/b;->f()Lcom/anythink/core/common/f/l;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/anythink/network/directly/DirectlyATInterstitialAdapter;->d:I

    if-nez v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/l;->g(I)V

    check-cast v0, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/aj;->ai()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/anythink/network/directly/DirectlyATInterstitialAdapter;->d:I

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/aj;->q(I)V

    :cond_3
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "Directly"

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unit_type"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/network/directly/DirectlyATInterstitialAdapter;->d:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/anythink/network/directly/DirectlyATInterstitialAdapter;->fixDirectlyInterstitial()V

    invoke-super {p0, p1}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->show(Landroid/app/Activity;)V

    return-void
.end method
