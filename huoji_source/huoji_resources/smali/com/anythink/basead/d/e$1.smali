.class public final Lcom/anythink/basead/d/e$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/e;->a(Lcom/anythink/basead/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/e/d;

.field public final synthetic b:Lcom/anythink/basead/d/e;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/e;Lcom/anythink/basead/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/e$1;->b:Lcom/anythink/basead/d/e;

    iput-object p2, p0, Lcom/anythink/basead/d/e$1;->a:Lcom/anythink/basead/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/d/e$1;->b:Lcom/anythink/basead/d/e;

    invoke-virtual {v0}, Lcom/anythink/basead/d/e;->a()Lcom/anythink/basead/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/e$1;->a:Lcom/anythink/basead/e/d;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/anythink/basead/d/h;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/anythink/basead/e/d;->onNativeAdLoaded([Lcom/anythink/basead/d/h;)V

    :cond_0
    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 0

    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/e$1;->a:Lcom/anythink/basead/e/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/d;->onNativeAdLoadError(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method
