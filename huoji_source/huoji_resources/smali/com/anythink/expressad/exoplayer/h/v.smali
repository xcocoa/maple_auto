.class public final Lcom/anythink/expressad/exoplayer/h/v;
.super Lcom/anythink/expressad/exoplayer/h/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/exoplayer/h/f<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = -0x1


# instance fields
.field private final b:[Lcom/anythink/expressad/exoplayer/h/s;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/h/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/anythink/expressad/exoplayer/h/h;

.field private e:Lcom/anythink/expressad/exoplayer/ae;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Lcom/anythink/expressad/exoplayer/h/v$a;


# direct methods
.method private varargs constructor <init>(Lcom/anythink/expressad/exoplayer/h/h;[Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/f;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->d:Lcom/anythink/expressad/exoplayer/h/h;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    return-void
.end method

.method private varargs constructor <init>([Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/j;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/j;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/h/v;-><init>(Lcom/anythink/expressad/exoplayer/h/h;[Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/h/v$a;
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result p1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    if-eq p1, v0, :cond_1

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/v$a;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/h/v$a;-><init>()V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/v$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/v$a;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_4

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/v;->e:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/v;->f:Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/v;->f:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    array-length v0, v0

    new-array v1, v0, [Lcom/anythink/expressad/exoplayer/h/r;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/u;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/v;->d:Lcom/anythink/expressad/exoplayer/h/h;

    invoke-direct {p1, p2, v1}, Lcom/anythink/expressad/exoplayer/h/u;-><init>(Lcom/anythink/expressad/exoplayer/h/h;[Lcom/anythink/expressad/exoplayer/h/r;)V

    return-object p1
.end method

.method public final a()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->e:Lcom/anythink/expressad/exoplayer/ae;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->f:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 3

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/u;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/h/u;->a:[Lcom/anythink/expressad/exoplayer/h/r;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f;->a(Lcom/anythink/expressad/exoplayer/h;Z)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    array-length p2, p2

    if-ge p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 1
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result p1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->g:I

    if-eq p1, v0, :cond_1

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/v$a;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/h/v$a;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->b:[Lcom/anythink/expressad/exoplayer/h/s;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-ne p2, p1, :cond_3

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/v;->e:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/v;->f:Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/v;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/v;->f:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/v;->h:Lcom/anythink/expressad/exoplayer/h/v$a;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->b()V

    return-void

    :cond_0
    throw v0
.end method
