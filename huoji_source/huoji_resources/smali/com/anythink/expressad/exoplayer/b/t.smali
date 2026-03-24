.class public final Lcom/anythink/expressad/exoplayer/b/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/b/f;


# static fields
.field public static final b:F = 8.0f

.field public static final c:F = 0.1f

.field public static final d:F = 8.0f

.field public static final e:F = 0.1f

.field public static final f:I = -0x1

.field private static final g:F = 0.01f

.field private static final h:I = 0x400


# instance fields
.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:Lcom/anythink/expressad/exoplayer/b/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/nio/ByteBuffer;

.field private q:Ljava/nio/ShortBuffer;

.field private r:Ljava/nio/ByteBuffer;

.field private s:J

.field private t:J

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->l:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    sget-object v1, Lcom/anythink/expressad/exoplayer/b/f;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/b/t;->q:Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->r:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->n:I

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->n:I

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(F)F

    move-result p1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/t;->h()V

    return p1
.end method

.method public final a(J)J
    .locals 15

    move-object v0, p0

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/b/t;->t:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    iget v2, v0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/b/t;->s:J

    if-ne v1, v2, :cond_0

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v1

    return-wide v1

    :cond_0
    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v1

    return-wide v1

    :cond_1
    iget v1, v0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/t;->s:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/t;->s:J

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/b/s;->a(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/b/s;->c()I

    move-result p1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->q:Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->q:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->q:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/b/s;->b(Ljava/nio/ShortBuffer;)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->t:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->t:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->r:Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget p3, p0, Lcom/anythink/expressad/exoplayer/b/t;->n:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    iput p3, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance v0, Lcom/anythink/expressad/exoplayer/b/f$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/b/f$a;-><init>(III)V

    throw v0
.end method

.method public final b(F)F
    .locals 1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(F)F

    move-result p1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/t;->l:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/t;->h()V

    return p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    return v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/s;->a()V

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->u:Z

    return-void
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->r:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/anythink/expressad/exoplayer/b/f;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->r:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/s;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 7

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/exoplayer/b/s;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    iget v3, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    iget v5, p0, Lcom/anythink/expressad/exoplayer/b/t;->l:F

    iget v6, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/b/s;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/s;->b()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/expressad/exoplayer/b/f;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->r:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->s:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->t:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->u:Z

    return-void
.end method

.method public final i()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->k:F

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->l:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->i:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->j:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->m:I

    sget-object v1, Lcom/anythink/expressad/exoplayer/b/f;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/b/t;->q:Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/t;->r:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->o:Lcom/anythink/expressad/exoplayer/b/s;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->s:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->t:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/t;->u:Z

    return-void
.end method
