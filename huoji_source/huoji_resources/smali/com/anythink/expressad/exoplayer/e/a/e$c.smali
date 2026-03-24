.class public final Lcom/anythink/expressad/exoplayer/e/a/e$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/e/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/e/m;

.field public final b:Lcom/anythink/expressad/exoplayer/e/a/l;

.field public c:Lcom/anythink/expressad/exoplayer/e/a/j;

.field public d:Lcom/anythink/expressad/exoplayer/e/a/c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Lcom/anythink/expressad/exoplayer/k/s;

.field private final j:Lcom/anythink/expressad/exoplayer/k/s;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/e/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/a/l;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/e/a/l;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->i:Lcom/anythink/expressad/exoplayer/k/s;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/k/s;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->j:Lcom/anythink/expressad/exoplayer/k/s;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/e/a/e$c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->m:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e()Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/e/a/k;->d:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/l;->n:[Z

    iget p0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    aget-boolean p0, v1, p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result p0

    mul-int/lit8 p0, p0, 0x6

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->m:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e()Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/e/a/k;->d:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/l;->n:[Z

    iget v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_2
    return-void
.end method

.method private e()Lcom/anythink/expressad/exoplayer/e/a/k;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/e/a/c;->a:I

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->o:Lcom/anythink/expressad/exoplayer/e/a/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/j;->a(I)Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/e/a/l;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->f:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->h:I

    return-void
.end method

.method public final a(J)V
    .locals 4

    invoke-static {p1, p2}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide p1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget v2, v1, Lcom/anythink/expressad/exoplayer/e/a/l;->f:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/e/a/l;->b(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/l;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/d/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/e/a/c;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/j;->a(I)Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/k;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/d/e;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/anythink/expressad/exoplayer/m;->a(Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/c;)V
    .locals 1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/j;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/exoplayer/e/a/c;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->d:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a()V

    return-void
.end method

.method public final b()Z
    .locals 4

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->f:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->h:[I

    iget v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    iput v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->f:I

    return v0

    :cond_0
    return v1
.end method

.method public final c()I
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e()Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v0

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/k;->d:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/k;->e:[B

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->j:Lcom/anythink/expressad/exoplayer/k/s;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->a([BI)V

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->j:Lcom/anythink/expressad/exoplayer/k/s;

    array-length v0, v0

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->n:[Z

    iget v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->i:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v5, v4, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    if-eqz v3, :cond_2

    const/16 v6, 0x80

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->i:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    invoke-interface {v1, v0, v2}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    if-nez v3, :cond_3

    add-int/2addr v2, v5

    return v2

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v1

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    invoke-interface {v3, v0, v1}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    return v2
.end method
