.class public final Lcom/anythink/expressad/exoplayer/h/q;
.super Lcom/anythink/expressad/exoplayer/h/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/q$a;,
        Lcom/anythink/expressad/exoplayer/h/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/exoplayer/h/f<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/h/s;

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/q;-><init>(Lcom/anythink/expressad/exoplayer/h/s;B)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/f;-><init>()V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/q;->a:Lcom/anythink/expressad/exoplayer/h/s;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/q;->b:I

    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->c:I

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->b:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/q$b;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/q;->b:I

    invoke-direct {v0, p1, v1}, Lcom/anythink/expressad/exoplayer/h/q$b;-><init>(Lcom/anythink/expressad/exoplayer/ae;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/q$a;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/exoplayer/h/q$a;-><init>(Lcom/anythink/expressad/exoplayer/ae;)V

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->b:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->a:Lcom/anythink/expressad/exoplayer/h/s;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget v2, p0, Lcom/anythink/expressad/exoplayer/h/q;->c:I

    rem-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->a:Lcom/anythink/expressad/exoplayer/h/s;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->c:I

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/q;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f;->a(Lcom/anythink/expressad/exoplayer/h;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/q;->a:Lcom/anythink/expressad/exoplayer/h/s;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/q;->c:I

    iget p1, p0, Lcom/anythink/expressad/exoplayer/h/q;->b:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/q$b;

    iget p2, p0, Lcom/anythink/expressad/exoplayer/h/q;->b:I

    invoke-direct {p1, p3, p2}, Lcom/anythink/expressad/exoplayer/h/q$b;-><init>(Lcom/anythink/expressad/exoplayer/ae;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/q$a;

    invoke-direct {p1, p3}, Lcom/anythink/expressad/exoplayer/h/q$a;-><init>(Lcom/anythink/expressad/exoplayer/ae;)V

    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void
.end method
