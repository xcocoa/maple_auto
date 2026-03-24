.class public final Lcom/anythink/expressad/exoplayer/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/ae;

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/anythink/expressad/exoplayer/h/s$a;

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:Z

.field public final h:Lcom/anythink/expressad/exoplayer/h/af;

.field public final i:Lcom/anythink/expressad/exoplayer/i/i;

.field public volatile j:J

.field public volatile k:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/ae;JLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V
    .locals 12

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/s$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/u;->d:J

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/u;->e:J

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/u;->j:J

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/u;->k:J

    iput p8, p0, Lcom/anythink/expressad/exoplayer/u;->f:I

    iput-boolean p9, p0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    iput-object p10, p0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    iput-object p11, p0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;)V
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/u;->j:J

    iput-wide v0, p1, Lcom/anythink/expressad/exoplayer/u;->j:J

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/u;->k:J

    iput-wide v0, p1, Lcom/anythink/expressad/exoplayer/u;->k:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/anythink/expressad/exoplayer/u;
    .locals 13

    new-instance v12, Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v3

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/u;->d:J

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget v8, p0, Lcom/anythink/expressad/exoplayer/u;->f:I

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v11, p0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    invoke-static {p0, v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;)V

    return-object v12
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/u;
    .locals 13

    new-instance v12, Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/u;->d:J

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget v8, p0, Lcom/anythink/expressad/exoplayer/u;->f:I

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v11, p0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    invoke-static {p0, v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;)V

    return-object v12
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)Lcom/anythink/expressad/exoplayer/u;
    .locals 13

    new-instance v12, Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/u;->d:J

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget v8, p0, Lcom/anythink/expressad/exoplayer/u;->f:I

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    move-object v0, v12

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    invoke-static {p0, v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;)V

    return-object v12
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;
    .locals 14

    move-object v0, p0

    new-instance v13, Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lcom/anythink/expressad/exoplayer/u;->f:I

    iget-boolean v10, v0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    move-object v1, v13

    move-object v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    return-object v13
.end method

.method public final a(Z)Lcom/anythink/expressad/exoplayer/u;
    .locals 13

    new-instance v12, Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/u;->d:J

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget v8, p0, Lcom/anythink/expressad/exoplayer/u;->f:I

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v11, p0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    move-object v0, v12

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    invoke-static {p0, v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;)V

    return-object v12
.end method

.method public final b(I)Lcom/anythink/expressad/exoplayer/u;
    .locals 13

    new-instance v12, Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/u;->d:J

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/u;->e:J

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v11, p0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    move-object v0, v12

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    invoke-static {p0, v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;)V

    return-object v12
.end method
