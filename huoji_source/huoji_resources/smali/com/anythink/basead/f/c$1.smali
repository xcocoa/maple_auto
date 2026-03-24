.class public final Lcom/anythink/basead/f/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/f/c;->a(Lcom/anythink/basead/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/e/c;

.field public final synthetic b:Lcom/anythink/basead/f/c;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/f/c;Lcom/anythink/basead/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/f/c$1;->b:Lcom/anythink/basead/f/c;

    iput-object p2, p0, Lcom/anythink/basead/f/c$1;->a:Lcom/anythink/basead/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/f/c$1;->b:Lcom/anythink/basead/f/c;

    iget-object v2, v1, Lcom/anythink/basead/f/c;->c:Landroid/content/Context;

    iget-object v3, v1, Lcom/anythink/basead/f/c;->g:Lcom/anythink/core/common/f/z;

    iget-object v1, v1, Lcom/anythink/basead/f/c;->d:Lcom/anythink/core/common/f/m;

    invoke-interface {v0, v2, v3, v1}, Lcom/anythink/core/api/IExHandler;->fillDownloadStatus(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/f/c$1;->a:Lcom/anythink/basead/e/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/basead/e/c;->onAdCacheLoaded()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/f/c$1;->a:Lcom/anythink/basead/e/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method
