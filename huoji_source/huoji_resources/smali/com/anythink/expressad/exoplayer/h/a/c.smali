.class public final Lcom/anythink/expressad/exoplayer/h/a/c;
.super Lcom/anythink/expressad/exoplayer/h/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/a/c$b;,
        Lcom/anythink/expressad/exoplayer/h/a/c$c;,
        Lcom/anythink/expressad/exoplayer/h/a/c$d;,
        Lcom/anythink/expressad/exoplayer/h/a/c$a;,
        Lcom/anythink/expressad/exoplayer/h/a/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/exoplayer/h/f<",
        "Lcom/anythink/expressad/exoplayer/h/s$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdsMediaSource"


# instance fields
.field private final b:Lcom/anythink/expressad/exoplayer/h/s;

.field private final c:Lcom/anythink/expressad/exoplayer/h/a/c$e;

.field private final d:Lcom/anythink/expressad/exoplayer/h/a/b;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/anythink/expressad/exoplayer/h/a/c$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/anythink/expressad/exoplayer/h/s;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/h/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/anythink/expressad/exoplayer/ae$a;

.field private k:Lcom/anythink/expressad/exoplayer/h/a/c$c;

.field private l:Lcom/anythink/expressad/exoplayer/ae;

.field private m:Ljava/lang/Object;

.field private n:Lcom/anythink/expressad/exoplayer/h/a/a;

.field private o:[[Lcom/anythink/expressad/exoplayer/h/s;

.field private p:[[J


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/a/c$e;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/a/c;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/a/c$e;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/a/c$d;)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/a/c$e;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/a/c$d;)V
    .locals 0
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/anythink/expressad/exoplayer/h/a/c$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/f;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->b:Lcom/anythink/expressad/exoplayer/h/s;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->c:Lcom/anythink/expressad/exoplayer/h/a/c$e;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->d:Lcom/anythink/expressad/exoplayer/h/a/b;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->e:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->f:Landroid/os/Handler;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->g:Lcom/anythink/expressad/exoplayer/h/a/c$d;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->h:Landroid/os/Handler;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    new-instance p1, Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/ae$a;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->j:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 p1, 0x0

    new-array p2, p1, [[Lcom/anythink/expressad/exoplayer/h/s;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;)V
    .locals 7

    new-instance v2, Lcom/anythink/expressad/exoplayer/h/o$c;

    invoke-direct {v2, p2}, Lcom/anythink/expressad/exoplayer/h/o$c;-><init>(Lcom/anythink/expressad/exoplayer/j/h$a;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/a/c;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/a/c$e;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/a/c$d;)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/a/c$d;)V
    .locals 7
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/anythink/expressad/exoplayer/h/a/c$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Lcom/anythink/expressad/exoplayer/h/o$c;

    invoke-direct {v2, p2}, Lcom/anythink/expressad/exoplayer/h/o$c;-><init>(Lcom/anythink/expressad/exoplayer/j/h$a;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/a/c;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/a/c$e;Lcom/anythink/expressad/exoplayer/h/a/b;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/a/c$d;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    if-nez v0, :cond_0

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    new-array v0, v0, [[Lcom/anythink/expressad/exoplayer/h/s;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/anythink/expressad/exoplayer/h/s;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    new-array v1, v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    if-nez v0, :cond_0

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    new-array v0, v0, [[Lcom/anythink/expressad/exoplayer/h/s;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/anythink/expressad/exoplayer/h/s;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    new-array v1, v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 3
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget p4, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    aget-object p4, v0, p4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->j:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p3, v2, v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p3

    iget-wide v0, p3, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    aput-wide v0, p4, p1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void

    :cond_3
    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->m:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s;IILcom/anythink/expressad/exoplayer/ae;)V
    .locals 3

    invoke-virtual {p4}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->j:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p4, v2, v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p4

    iget-wide v0, p4, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    aput-wide v0, p2, p3

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->d:Lcom/anythink/expressad/exoplayer/h/a/b;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->m:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/h/a/a;->a([[J)Lcom/anythink/expressad/exoplayer/h/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/a/d;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/a/d;-><init>(Lcom/anythink/expressad/exoplayer/ae;Lcom/anythink/expressad/exoplayer/h/a/a;)V

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->m:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->g:Lcom/anythink/expressad/exoplayer/h/a/c$d;

    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget v1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    aget-object v3, v3, v0

    array-length v3, v3

    if-gt v3, v1, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->c:Lcom/anythink/expressad/exoplayer/h/a/c$e;

    invoke-interface {v3, v2}, Lcom/anythink/expressad/exoplayer/h/a/c$e;->b(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/s;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    aget-object v5, v4, v0

    array-length v5, v5

    if-lt v1, v5, :cond_0

    add-int/lit8 v6, v1, 0x1

    aget-object v7, v4, v0

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/anythink/expressad/exoplayer/h/s;

    aput-object v7, v4, v0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    aget-object v7, v4, v0

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    aput-object v7, v4, v0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    aget-object v4, v4, v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5, v6, v7, v8}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_0
    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    aget-object v4, v4, v0

    aput-object v3, v4, v1

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V

    :cond_1
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    new-instance v4, Lcom/anythink/expressad/exoplayer/h/l;

    new-instance v5, Lcom/anythink/expressad/exoplayer/h/s$a;

    const/4 v6, 0x0

    iget-wide v7, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->d:J

    invoke-direct {v5, v6, v7, v8}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(IJ)V

    invoke-direct {v4, v3, v5, p2}, Lcom/anythink/expressad/exoplayer/h/l;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)V

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/a/c$b;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/anythink/expressad/exoplayer/h/a/c$b;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c;Landroid/net/Uri;II)V

    invoke-virtual {v4, p1}, Lcom/anythink/expressad/exoplayer/h/l;->a(Lcom/anythink/expressad/exoplayer/h/l$a;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v4

    :cond_3
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/l;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->b:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-direct {v0, v1, p1, p2}, Lcom/anythink/expressad/exoplayer/h/l;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final a()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->k:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->k:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->m:Ljava/lang/Object;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->n:Lcom/anythink/expressad/exoplayer/h/a/a;

    const/4 v0, 0x0

    new-array v1, v0, [[Lcom/anythink/expressad/exoplayer/h/s;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->o:[[Lcom/anythink/expressad/exoplayer/h/s;

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->h:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/a/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/exoplayer/h/a/c$2;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 2

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/l;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/h/l;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/l;->g()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f;->a(Lcom/anythink/expressad/exoplayer/h;Z)V

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    new-instance p2, Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/exoplayer/h/a/c$c;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c;)V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->k:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(I)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->b:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->h:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/a/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/a/c$1;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h;Lcom/anythink/expressad/exoplayer/h/a/c$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 3
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget p4, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->p:[[J

    aget-object p4, v0, p4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->j:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p3, v2, v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p3

    iget-wide v0, p3, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    aput-wide v0, p4, p1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/exoplayer/h/l;

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/h/l;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void

    :cond_3
    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->l:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/a/c;->m:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c()V

    return-void
.end method
