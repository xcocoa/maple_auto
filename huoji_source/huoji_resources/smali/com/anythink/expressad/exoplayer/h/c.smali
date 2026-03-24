.class public abstract Lcom/anythink/expressad/exoplayer/h/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/s;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/h/s$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/anythink/expressad/exoplayer/h/t$a;

.field private c:Lcom/anythink/expressad/exoplayer/h;

.field private d:Lcom/anythink/expressad/exoplayer/ae;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/t$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;J)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/c;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(ILcom/anythink/expressad/exoplayer/h/s$a;J)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 3
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(ILcom/anythink/expressad/exoplayer/h/s$a;J)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 4
    .param p1    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(ILcom/anythink/expressad/exoplayer/h/s$a;J)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()V
.end method

.method public final a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->d:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/c;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/s$b;

    invoke-interface {v1, p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/s$b;->a(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s$b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->c:Lcom/anythink/expressad/exoplayer/h;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->d:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/c;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/t;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t;)V

    return-void
.end method

.method public abstract a(Lcom/anythink/expressad/exoplayer/h;Z)V
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;ZLcom/anythink/expressad/exoplayer/h/s$b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->c:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/c;->c:Lcom/anythink/expressad/exoplayer/h;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->c:Lcom/anythink/expressad/exoplayer/h;

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/h;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/c;->d:Lcom/anythink/expressad/exoplayer/ae;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/c;->e:Ljava/lang/Object;

    invoke-interface {p3, p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/s$b;->a(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
