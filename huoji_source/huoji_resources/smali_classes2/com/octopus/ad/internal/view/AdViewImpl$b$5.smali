.class public Lcom/octopus/ad/internal/view/AdViewImpl$b$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-boolean v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->j:Z

    const-string v2, "enter Octopus ad click"

    const-string v3, "OctopusAd"

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a(Lcom/octopus/ad/internal/view/AdViewImpl$a$a;)V

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->r(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->d(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->v(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->v(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/SplashAdListener;->onAdClicked()V

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->o(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/InterstitialAdListener;->onAdClicked()V

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->t(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->t(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/BannerAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/BannerAdListener;->onAdClicked()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a;

    sget-object v1, Lcom/octopus/ad/internal/view/AdViewImpl$a$a;->b:Lcom/octopus/ad/internal/view/AdViewImpl$a$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl$a;->a(Lcom/octopus/ad/internal/view/AdViewImpl$a$a;)V

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->r(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->d(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;->a:Lcom/octopus/ad/internal/view/AdViewImpl$b;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->p(Lcom/octopus/ad/internal/view/AdViewImpl;)Lcom/octopus/ad/RewardVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdClicked()V

    :cond_3
    :goto_0
    return-void
.end method
