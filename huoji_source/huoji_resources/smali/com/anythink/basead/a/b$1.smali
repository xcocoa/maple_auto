.class public final Lcom/anythink/basead/a/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/a/b;

    iget-boolean v1, v0, Lcom/anythink/basead/a/b;->R:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/anythink/basead/a/b;->V:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->a()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/a/b;

    iget-boolean v1, v0, Lcom/anythink/basead/a/b;->R:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/anythink/basead/a/b;->V:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/anythink/basead/a/b$b;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->V:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/basead/a/b$b;->a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/a/b;

    iget-boolean v1, v0, Lcom/anythink/basead/a/b;->R:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/anythink/basead/a/b;->V:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->b()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b$1;->a:Lcom/anythink/basead/a/b;

    iget-boolean v1, v0, Lcom/anythink/basead/a/b;->R:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/anythink/basead/a/b;->V:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->c()V

    :cond_1
    return-void
.end method
