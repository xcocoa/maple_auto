.class public final Lcom/anythink/expressad/video/signal/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/signal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/video/signal/c;

.field private b:Lcom/anythink/expressad/video/signal/c$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/signal/c;Lcom/anythink/expressad/video/signal/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/c$b;->a:Lcom/anythink/expressad/video/signal/c;

    iput-object p2, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/video/signal/c$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/video/signal/c$a;->a(Lcom/anythink/expressad/foundation/d/c;Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/j;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/signal/a/c$b;->a:Lcom/anythink/expressad/video/signal/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/anythink/expressad/video/signal/c;->j()V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/out/p$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/anythink/expressad/out/j;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/p$c;->b(Lcom/anythink/expressad/out/j;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/out/p$c;->b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/signal/a/c$b;->a:Lcom/anythink/expressad/video/signal/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/anythink/expressad/video/signal/c;->j()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c$a;->c()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/anythink/expressad/out/j;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/p$c;->c(Lcom/anythink/expressad/out/j;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c$a;->d()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/anythink/expressad/out/j;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/c$b;->b:Lcom/anythink/expressad/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/p$c;->d(Lcom/anythink/expressad/out/j;)V

    :cond_0
    return-void
.end method
