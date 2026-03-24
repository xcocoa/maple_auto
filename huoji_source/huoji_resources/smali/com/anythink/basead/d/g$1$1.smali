.class public final Lcom/anythink/basead/d/g$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/out/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Lcom/anythink/basead/d/g$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/g$1;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/g$1$1;->b:Lcom/anythink/basead/d/g$1;

    iput-object p2, p0, Lcom/anythink/basead/d/g$1$1;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/g$1$1;->b:Lcom/anythink/basead/d/g$1;

    iget-object v0, v0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/g$1$1;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/anythink/basead/d/g$1$1;->b:Lcom/anythink/basead/d/g$1;

    iget-object v0, v0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    invoke-static {v0}, Lcom/anythink/basead/d/g;->a(Lcom/anythink/basead/d/g;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "close_scene"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/basead/d/g$1$1;->b:Lcom/anythink/basead/d/g$1;

    iget-object p1, p1, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object p1, p1, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/g$1$1;->b:Lcom/anythink/basead/d/g$1;

    iget-object p1, p1, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    invoke-virtual {p1}, Lcom/anythink/basead/d/b;->e()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/g$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/g$1$1$1;-><init>(Lcom/anythink/basead/d/g$1$1;Lcom/anythink/expressad/foundation/d/c;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/g$1$1;->b:Lcom/anythink/basead/d/g$1;

    iget-object v0, v0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    const-string v1, "40002"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
