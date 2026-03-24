.class public Lcom/octopus/ad/internal/view/AdViewImpl$b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(Lcom/octopus/ad/internal/network/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/network/b;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;Lcom/octopus/ad/internal/network/b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->b()Lcom/octopus/ad/internal/view/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/octopus/ad/internal/view/b;->getCreativeWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setCreativeWidth(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->b()Lcom/octopus/ad/internal/view/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/octopus/ad/internal/view/b;->getCreativeHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setCreativeHeight(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdExtInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setPrice(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setTagId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->setAdId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v1}, Lcom/octopus/ad/internal/network/b;->b()Lcom/octopus/ad/internal/view/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/b;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-boolean v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->a:Lcom/octopus/ad/internal/network/b;

    invoke-interface {v0}, Lcom/octopus/ad/internal/network/b;->a()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OctopusAd"

    const-string v1, "enter Octopus ad load"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/InterstitialAdListener;->onAdLoaded()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;->b:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdLoaded()V

    :cond_1
    :goto_0
    return-void
.end method
