.class public final Lcom/anythink/interstitial/a/a$4;
.super Lcom/anythink/basead/e/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a;->a(Landroid/app/Activity;Lcom/anythink/interstitial/a/e;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/interstitial/a/e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/interstitial/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/interstitial/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/interstitial/a/a$4;->c:Lcom/anythink/interstitial/a/a;

    iput-object p2, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    iput-object p3, p0, Lcom/anythink/interstitial/a/a$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anythink/basead/e/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoStart()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/interstitial/a/e;->onInterstitialAdShow()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoEnd()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/interstitial/a/e;->onInterstitialAdClicked()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/interstitial/a/a$4;->a:Lcom/anythink/interstitial/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/interstitial/a/e;->onInterstitialAdClose()V

    :cond_0
    return-void
.end method
