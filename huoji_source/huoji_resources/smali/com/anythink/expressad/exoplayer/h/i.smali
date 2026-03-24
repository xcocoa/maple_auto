.class public final Lcom/anythink/expressad/exoplayer/h/i;
.super Lcom/anythink/expressad/exoplayer/h/f;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/i$c;,
        Lcom/anythink/expressad/exoplayer/h/i$b;,
        Lcom/anythink/expressad/exoplayer/h/i$a;,
        Lcom/anythink/expressad/exoplayer/h/i$f;,
        Lcom/anythink/expressad/exoplayer/h/i$d;,
        Lcom/anythink/expressad/exoplayer/h/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/exoplayer/h/f<",
        "Lcom/anythink/expressad/exoplayer/h/i$e;",
        ">;",
        "Lcom/anythink/expressad/exoplayer/x$b;"
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x6


# instance fields
.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/h/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/h/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/anythink/expressad/exoplayer/h/i$e;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/anythink/expressad/exoplayer/h/r;",
            "Lcom/anythink/expressad/exoplayer/h/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/h/i$d;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:Lcom/anythink/expressad/exoplayer/ae$b;

.field private o:Lcom/anythink/expressad/exoplayer/h;

.field private p:Z

.field private q:Lcom/anythink/expressad/exoplayer/h/aa;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/aa$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/aa$a;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/anythink/expressad/exoplayer/h/i;-><init>(ZLcom/anythink/expressad/exoplayer/h/aa;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/aa$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/h/aa$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/i;-><init>(ZLcom/anythink/expressad/exoplayer/h/aa;)V

    return-void
.end method

.method private constructor <init>(ZLcom/anythink/expressad/exoplayer/h/aa;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/h/s;

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/h/i;-><init>(ZLcom/anythink/expressad/exoplayer/h/aa;[Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method private varargs constructor <init>(ZLcom/anythink/expressad/exoplayer/h/aa;[Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/f;-><init>()V

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/h/aa;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/h/aa;->d()Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->k:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->l:Ljava/util/List;

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/i$e;-><init>(Lcom/anythink/expressad/exoplayer/h/s;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->j:Lcom/anythink/expressad/exoplayer/h/i$e;

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->m:Z

    new-instance p1, Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/ae$b;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2, p1, v1}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILjava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs constructor <init>([Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/i;-><init>([Lcom/anythink/expressad/exoplayer/h/s;B)V

    return-void
.end method

.method private varargs constructor <init>([Lcom/anythink/expressad/exoplayer/h/s;B)V
    .locals 1

    new-instance p2, Lcom/anythink/expressad/exoplayer/h/aa$a;

    invoke-direct {p2}, Lcom/anythink/expressad/exoplayer/h/aa$a;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/anythink/expressad/exoplayer/h/i;-><init>(ZLcom/anythink/expressad/exoplayer/h/aa;[Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/i$e;I)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/i$e;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/l;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/l;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    iget-wide v3, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget p0, p0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/anythink/expressad/exoplayer/h/i$f;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$f;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/anythink/expressad/exoplayer/h/i$f;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    :cond_0
    return-void
.end method

.method private a(IIII)V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->r:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->r:I

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->s:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->s:I

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->d:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    add-int/2addr v1, p4

    iput v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(IILjava/lang/Runnable;)V
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$f;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/i$f;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private a(ILcom/anythink/expressad/exoplayer/h/i$e;)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p2, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/h/i$e;->a(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/anythink/expressad/exoplayer/h/i$e;->a(III)V

    :goto_0
    iget-object v0, p2, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result v0

    iget-object v1, p2, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/anythink/expressad/exoplayer/h/i;->a(IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/h/i$e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-virtual {p0, p2, p1}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method private a(ILcom/anythink/expressad/exoplayer/h/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Runnable;)V
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-direct {v0, p2}, Lcom/anythink/expressad/exoplayer/h/i$e;-><init>(Lcom/anythink/expressad/exoplayer/h/s;)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p2

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$f;

    invoke-direct {v1, p1, v0, p3}, Lcom/anythink/expressad/exoplayer/h/i$f;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/Runnable;)V
    .locals 3
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/anythink/expressad/exoplayer/h/i$f;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private a(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/anythink/expressad/exoplayer/h/s;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILjava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILjava/util/Collection;Ljava/lang/Runnable;)V
    .locals 4
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/anythink/expressad/exoplayer/h/s;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/s;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/s;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-direct {v3, v2}, Lcom/anythink/expressad/exoplayer/h/i$e;-><init>(Lcom/anythink/expressad/exoplayer/h/s;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    invoke-interface {p2, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p2

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$f;

    invoke-direct {v1, p1, v0, p3}, Lcom/anythink/expressad/exoplayer/h/i$f;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/i$d;)V
    .locals 2
    .param p1    # Lcom/anythink/expressad/exoplayer/h/i$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->p:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/i$e;Lcom/anythink/expressad/exoplayer/ae;)V
    .locals 7

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/i$b;->d()Lcom/anythink/expressad/exoplayer/ae;

    move-result-object v1

    if-eq v1, p2, :cond_4

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget v5, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->d:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v4, v1, v2}, Lcom/anythink/expressad/exoplayer/h/i;->a(IIII)V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/exoplayer/h/i$b;->a(Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/h/i$b;

    move-result-object v0

    iput-object v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    iget-boolean v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {p2, v4, v0, v4}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-wide v0, p2, Lcom/anythink/expressad/exoplayer/ae$b;->j:J

    iget-wide v5, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    add-long/2addr v0, v5

    :goto_0
    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_2

    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {p2, v0, v1}, Lcom/anythink/expressad/exoplayer/h/l;->d(J)V

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Runnable;)V
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$d;

    invoke-direct {v1, p1}, Lcom/anythink/expressad/exoplayer/h/i$d;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/anythink/expressad/exoplayer/h/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILjava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/lang/Runnable;)V
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/anythink/expressad/exoplayer/h/s;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILjava/util/Collection;Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(I)Lcom/anythink/expressad/exoplayer/h/s;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    return-object p1
.end method

.method private b(II)V
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    iput v2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iput v3, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result p2

    add-int/2addr v2, p2

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/anythink/expressad/exoplayer/h/i$e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILcom/anythink/expressad/exoplayer/h/i$e;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/h/i$e;Lcom/anythink/expressad/exoplayer/ae;)V
    .locals 7

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/i$b;->d()Lcom/anythink/expressad/exoplayer/ae;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget v5, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->d:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v4, v1, v2}, Lcom/anythink/expressad/exoplayer/h/i;->a(IIII)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/exoplayer/h/i$b;->a(Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/h/i$b;

    move-result-object v0

    iput-object v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    iget-boolean v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {p2, v4, v0, v4}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-wide v0, p2, Lcom/anythink/expressad/exoplayer/ae$b;->j:J

    iget-wide v5, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    add-long/2addr v0, v5

    :goto_0
    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_3

    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {p2, v0, v1}, Lcom/anythink/expressad/exoplayer/h/l;->d(J)V

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v3, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v1

    neg-int v1, v1

    const/4 v3, -0x1

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/anythink/expressad/exoplayer/h/i;->a(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->h:Z

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private d(I)I
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->j:Lcom/anythink/expressad/exoplayer/h/i$e;

    iput p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    if-ne v1, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private e()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->p:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/i$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/h/i;->r:I

    iget v5, p0, Lcom/anythink/expressad/exoplayer/h/i;->s:I

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget-boolean v7, p0, Lcom/anythink/expressad/exoplayer/h/i;->m:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/h/i$a;-><init>(Ljava/util/Collection;IILcom/anythink/expressad/exoplayer/h/aa;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    invoke-interface {v1, p0}, Lcom/anythink/expressad/exoplayer/h;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    :cond_1
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/h/i;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 4

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->j:Lcom/anythink/expressad/exoplayer/h/i$e;

    iput v0, v1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    neg-int v0, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    if-ne v2, v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p1

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/l;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-direct {v1, v2, p1, p2}, Lcom/anythink/expressad/exoplayer/h/l;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->k:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    :cond_2
    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/l;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/l;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    iget-wide v3, p2, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v0, p2, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/aa;->d()Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->r:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->s:I

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$d;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/i$d;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/i$d;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/i;->e()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->c(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    check-cast p2, Lcom/anythink/expressad/exoplayer/h/i$d;

    invoke-direct {p0, p2}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void

    :pswitch_3
    check-cast p2, Lcom/anythink/expressad/exoplayer/h/i$f;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget v1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    invoke-interface {p1, v1}, Lcom/anythink/expressad/exoplayer/h/aa;->c(I)Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget-object v1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/exoplayer/h/aa;->a(II)Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    iget-object v0, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/h/i$e;

    iget v4, v4, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-interface {v5, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    if-gt v1, v2, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->i:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    iput v3, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->e:I

    iput v4, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->f:I

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result v0

    add-int/2addr v3, v0

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result p1

    add-int/2addr v4, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->c:Lcom/anythink/expressad/exoplayer/h/i$d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void

    :pswitch_4
    check-cast p2, Lcom/anythink/expressad/exoplayer/h/i$f;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget v0, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    invoke-interface {p1, v0}, Lcom/anythink/expressad/exoplayer/h/aa;->c(I)Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->c(I)V

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->c:Lcom/anythink/expressad/exoplayer/h/i$d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void

    :pswitch_5
    check-cast p2, Lcom/anythink/expressad/exoplayer/h/i$f;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget v0, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    iget-object v1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/h/aa;->a(II)Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    iget-object v0, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/i;->b(ILjava/util/Collection;)V

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->c:Lcom/anythink/expressad/exoplayer/h/i$d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void

    :pswitch_6
    check-cast p2, Lcom/anythink/expressad/exoplayer/h/i$f;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget v1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/exoplayer/h/aa;->a(II)Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->a:I

    iget-object v0, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/i;->a(ILcom/anythink/expressad/exoplayer/h/i$e;)V

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/h/i$f;->c:Lcom/anythink/expressad/exoplayer/h/i$d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/i;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/i$e;

    move-object v1, p1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/h/l;->g()V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v0, Lcom/anythink/expressad/exoplayer/h/i$e;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f;->a(Lcom/anythink/expressad/exoplayer/h;Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->o:Lcom/anythink/expressad/exoplayer/h;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/i;->e()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/anythink/expressad/exoplayer/h/aa;->a(II)Lcom/anythink/expressad/exoplayer/h/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->q:Lcom/anythink/expressad/exoplayer/h/aa;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i;->h:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->b(ILjava/util/Collection;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 5
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/i$e;

    if-eqz p1, :cond_5

    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/i$b;->d()Lcom/anythink/expressad/exoplayer/ae;

    move-result-object p4

    if-eq p4, p3, :cond_4

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result p4

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/p;->b()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/p;->c()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget v3, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->d:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3, v2, p4, v0}, Lcom/anythink/expressad/exoplayer/h/i;->a(IIII)V

    :cond_1
    invoke-virtual {p2, p3}, Lcom/anythink/expressad/exoplayer/h/i$b;->a(Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/h/i$b;

    move-result-object p2

    iput-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->c:Lcom/anythink/expressad/exoplayer/h/i$b;

    iget-boolean p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    if-nez p2, :cond_3

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {p3, v2, p2, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i;->n:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-wide p3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->j:J

    iget-wide v3, p2, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    add-long/2addr p3, v3

    :goto_0
    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    iget-object p2, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->i:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {p2, p3, p4}, Lcom/anythink/expressad/exoplayer/h/l;->d(J)V

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p1, Lcom/anythink/expressad/exoplayer/h/i$e;->g:Z

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/i;->a(Lcom/anythink/expressad/exoplayer/h/i$d;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
