.class public final Lcom/anythink/expressad/exoplayer/i/a;
.super Lcom/anythink/expressad/exoplayer/i/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/i/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x2710

.field public static final b:I = 0x61a8

.field public static final c:I = 0x61a8

.field public static final d:F = 0.75f

.field public static final e:F = 0.75f

.field public static final f:J = 0x7d0L


# instance fields
.field private final j:Lcom/anythink/expressad/exoplayer/j/d;

.field private final k:J

.field private final l:J

.field private final m:J

.field private final n:F

.field private final o:F

.field private final p:J

.field private final q:Lcom/anythink/expressad/exoplayer/k/c;

.field private r:F

.field private s:I

.field private t:I

.field private u:J


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/ae;[ILcom/anythink/expressad/exoplayer/j/d;)V
    .locals 15

    sget-object v14, Lcom/anythink/expressad/exoplayer/k/c;->a:Lcom/anythink/expressad/exoplayer/k/c;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x61a8

    const-wide/16 v8, 0x61a8

    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3f400000    # 0.75f

    const-wide/16 v12, 0x7d0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v14}, Lcom/anythink/expressad/exoplayer/i/a;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;[ILcom/anythink/expressad/exoplayer/j/d;JJJFFJLcom/anythink/expressad/exoplayer/k/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/ae;[ILcom/anythink/expressad/exoplayer/j/d;JJJFFJLcom/anythink/expressad/exoplayer/k/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/i/b;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;[I)V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/i/a;->j:Lcom/anythink/expressad/exoplayer/j/d;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/i/a;->k:J

    mul-long p6, p6, p1

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/i/a;->l:J

    mul-long p8, p8, p1

    iput-wide p8, p0, Lcom/anythink/expressad/exoplayer/i/a;->m:J

    iput p10, p0, Lcom/anythink/expressad/exoplayer/i/a;->n:F

    iput p11, p0, Lcom/anythink/expressad/exoplayer/i/a;->o:F

    iput-wide p12, p0, Lcom/anythink/expressad/exoplayer/i/a;->p:J

    iput-object p14, p0, Lcom/anythink/expressad/exoplayer/i/a;->q:Lcom/anythink/expressad/exoplayer/k/c;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->r:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->t:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->u:J

    const-wide/high16 p1, -0x8000000000000000L

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/i/a;->a(J)I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    return-void
.end method

.method private a(J)I
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->j:Lcom/anythink/expressad/exoplayer/j/d;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/d;->a()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/a;->n:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/anythink/expressad/exoplayer/i/b;->h:I

    if-ge v2, v4, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lcom/anythink/expressad/exoplayer/i/b;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/i/b;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v3

    iget v3, v3, Lcom/anythink/expressad/exoplayer/m;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/anythink/expressad/exoplayer/i/a;->r:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v0

    if-gtz v5, :cond_1

    return v2

    :cond_1
    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private b(J)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->k:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    iget p2, p0, Lcom/anythink/expressad/exoplayer/i/a;->o:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1

    :cond_1
    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->k:J

    return-wide p1
.end method


# virtual methods
.method public final a(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/expressad/exoplayer/h/b/i;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->q:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/i/a;->u:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/i/a;->p:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->u:J

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/h/b/i;

    iget-wide v4, v4, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    sub-long/2addr v4, p1

    iget v6, p0, Lcom/anythink/expressad/exoplayer/i/a;->r:F

    invoke-static {v4, v5, v6}, Lcom/anythink/expressad/exoplayer/k/af;->b(JF)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/i/a;->m:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/i/a;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/i/b;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/b/i;

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    sub-long/2addr v5, p1

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/a;->r:F

    invoke-static {v5, v6, v1}, Lcom/anythink/expressad/exoplayer/k/af;->b(JF)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/anythink/expressad/exoplayer/i/a;->m:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    iget v1, v4, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v5, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/anythink/expressad/exoplayer/m;->n:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    const/16 v6, 0x2d0

    if-ge v1, v6, :cond_3

    iget v4, v4, Lcom/anythink/expressad/exoplayer/m;->m:I

    if-eq v4, v5, :cond_3

    const/16 v5, 0x500

    if-ge v4, v5, :cond_3

    iget v4, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-ge v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final a()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->u:J

    return-void
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->r:F

    return-void
.end method

.method public final a(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->q:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/i/a;->a(J)I

    move-result v3

    iput v3, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/anythink/expressad/exoplayer/i/b;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/i/b;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/i/b;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v0, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    if-le v1, v0, :cond_3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_1

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/i/a;->k:J

    cmp-long v5, p3, v3

    if-gtz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    long-to-float p3, p3

    iget p4, p0, Lcom/anythink/expressad/exoplayer/i/a;->o:F

    mul-float p3, p3, p4

    float-to-long p3, p3

    goto :goto_1

    :cond_2
    iget-wide p3, p0, Lcom/anythink/expressad/exoplayer/i/a;->k:J

    :goto_1
    cmp-long v3, p1, p3

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    if-ge v1, v0, :cond_4

    iget-wide p3, p0, Lcom/anythink/expressad/exoplayer/i/a;->l:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_4

    :goto_2
    iput v2, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    :cond_4
    iget p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    if-eq p1, v2, :cond_5

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/a;->t:I

    :cond_5
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->s:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/a;->t:I

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
