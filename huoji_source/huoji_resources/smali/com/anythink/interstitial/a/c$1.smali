.class public final Lcom/anythink/interstitial/a/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/interstitial/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/interstitial/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/interstitial/a/c$1;->a:Lcom/anythink/interstitial/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialAutoLoadFail(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/c$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/interstitial/a/c$1$2;-><init>(Lcom/anythink/interstitial/a/c$1;Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onInterstitialAutoLoaded(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/a/c$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/a/c$1$1;-><init>(Lcom/anythink/interstitial/a/c$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
