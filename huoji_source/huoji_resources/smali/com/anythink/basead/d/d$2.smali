.class public final Lcom/anythink/basead/d/d$2;
.super Lcom/anythink/basead/e/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/d;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/basead/d/d;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/d;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iput-object p4, p0, Lcom/anythink/basead/d/d$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/anythink/basead/e/b$b;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/basead/e/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    sget-object v0, Lcom/anythink/basead/d/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/basead/e/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/basead/e/i;)V
    .locals 1

    sget-object v0, Lcom/anythink/basead/d/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/basead/e/b$b;->d()V

    sget-object v0, Lcom/anythink/basead/d/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_0
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/b;->b(Ljava/lang/String;)V

    return-void
.end method
