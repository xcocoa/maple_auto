.class public Lcom/anythink/expressad/foundation/g/f/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/g/f/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/expressad/foundation/g/f/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->a:Ljava/lang/String;

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d$1;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d$2;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/i;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;JJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/anythink/expressad/foundation/g/f/d$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/foundation/g/f/d$7;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;JJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;",
            "Lcom/anythink/expressad/foundation/g/f/a/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/anythink/expressad/foundation/g/f/k;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/foundation/g/f/d$a;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;",
            "Lcom/anythink/expressad/foundation/g/f/k<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/foundation/g/f/d$a;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d$3;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d$4;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d$5;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d$6;-><init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
