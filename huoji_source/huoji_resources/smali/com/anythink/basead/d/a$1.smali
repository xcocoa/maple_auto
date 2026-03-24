.class public final Lcom/anythink/basead/d/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/out/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/d/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/a$1;->a:Lcom/anythink/basead/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/a$1$1;-><init>(Lcom/anythink/basead/d/a$1;Lcom/anythink/expressad/foundation/d/c;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/a$1;->a:Lcom/anythink/basead/d/a;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
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

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/a$1;->a:Lcom/anythink/basead/d/a;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a$1;->a:Lcom/anythink/basead/d/a;

    invoke-virtual {v0}, Lcom/anythink/basead/d/b;->e()V

    return-void
.end method
