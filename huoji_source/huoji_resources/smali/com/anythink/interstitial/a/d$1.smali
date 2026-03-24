.class public final Lcom/anythink/interstitial/a/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/d;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/ATAdInfo;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/anythink/interstitial/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/a/d;Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/interstitial/a/d$1;->c:Lcom/anythink/interstitial/a/d;

    iput-object p2, p0, Lcom/anythink/interstitial/a/d$1;->a:Lcom/anythink/core/api/ATAdInfo;

    iput-boolean p3, p0, Lcom/anythink/interstitial/a/d$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/interstitial/a/d$1;->c:Lcom/anythink/interstitial/a/d;

    iget-object v0, v0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/interstitial/a/d$1;->a:Lcom/anythink/core/api/ATAdInfo;

    iget-boolean v2, p0, Lcom/anythink/interstitial/a/d$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    :cond_0
    return-void
.end method
