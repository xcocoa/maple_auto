.class public final Lcom/anythink/expressad/exoplayer/h/e;
.super Lcom/anythink/expressad/exoplayer/h/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/e$a;,
        Lcom/anythink/expressad/exoplayer/h/e$b;
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

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/anythink/expressad/exoplayer/ae$b;

.field private i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/anythink/expressad/exoplayer/h/e$a;

.field private k:Lcom/anythink/expressad/exoplayer/h/e$b;

.field private l:J

.field private m:J


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;J)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/h/e;-><init>(Lcom/anythink/expressad/exoplayer/h/s;JJZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;JJ)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/h/e;-><init>(Lcom/anythink/expressad/exoplayer/h/s;JJZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;JJZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/h/e;-><init>(Lcom/anythink/expressad/exoplayer/h/s;JJZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/h/s;JJZZ)V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/f;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/s;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/h/e;->b:J

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/h/e;->c:J

    iput-boolean p6, p0, Lcom/anythink/expressad/exoplayer/h/e;->d:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->e:Z

    iput-boolean p7, p0, Lcom/anythink/expressad/exoplayer/h/e;->f:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    new-instance p1, Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/ae$b;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->h:Lcom/anythink/expressad/exoplayer/ae$b;

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/ae;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->h:Lcom/anythink/expressad/exoplayer/ae$b;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->h:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/ae$b;->j:J

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->j:Lcom/anythink/expressad/exoplayer/h/e$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v2, v1, Lcom/anythink/expressad/exoplayer/h/e;->l:J

    sub-long/2addr v2, v5

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/h/e;->c:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/anythink/expressad/exoplayer/h/e;->m:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_5

    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/h/e;->b:J

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/h/e;->c:J

    iget-boolean v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->h:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-wide v13, v0, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    add-long/2addr v9, v13

    add-long/2addr v13, v11

    goto :goto_2

    :cond_3
    move-wide v13, v11

    :goto_2
    add-long v2, v5, v9

    iput-wide v2, v1, Lcom/anythink/expressad/exoplayer/h/e;->l:J

    cmp-long v2, v11, v7

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    add-long v7, v5, v13

    :goto_3
    iput-wide v7, v1, Lcom/anythink/expressad/exoplayer/h/e;->m:J

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_5

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/h/d;

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/h/e;->l:J

    iget-wide v7, v1, Lcom/anythink/expressad/exoplayer/h/e;->m:J

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/anythink/expressad/exoplayer/h/d;->a(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move-wide v5, v9

    move-wide v7, v13

    :goto_5
    :try_start_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/e$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/anythink/expressad/exoplayer/h/e$a;-><init>(Lcom/anythink/expressad/exoplayer/ae;JJ)V

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->j:Lcom/anythink/expressad/exoplayer/h/e$a;
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/h/e$b; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/e;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/h/e;->k:Lcom/anythink/expressad/exoplayer/h/e$b;

    return-void
.end method

.method private b(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->b:J

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p1, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/e;->c:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method private b(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->k:Lcom/anythink/expressad/exoplayer/h/e$b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/e;->i:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/e;->a(Lcom/anythink/expressad/exoplayer/ae;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->b:J

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p1, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/e;->c:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 8

    new-instance v7, Lcom/anythink/expressad/exoplayer/h/d;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v1

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/e;->d:Z

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/h/e;->l:J

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/h/e;->m:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/d;-><init>(Lcom/anythink/expressad/exoplayer/h/r;ZJJ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public final a()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->k:Lcom/anythink/expressad/exoplayer/h/e$b;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->j:Lcom/anythink/expressad/exoplayer/h/e$a;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/d;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->j:Lcom/anythink/expressad/exoplayer/h/e$a;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/e;->a(Lcom/anythink/expressad/exoplayer/ae;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/f;->a(Lcom/anythink/expressad/exoplayer/h;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->a:Lcom/anythink/expressad/exoplayer/h/s;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/anythink/expressad/exoplayer/h/f;->a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/e;->k:Lcom/anythink/expressad/exoplayer/h/e$b;

    if-nez p1, :cond_0

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/e;->i:Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/anythink/expressad/exoplayer/h/e;->a(Lcom/anythink/expressad/exoplayer/ae;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/e;->k:Lcom/anythink/expressad/exoplayer/h/e$b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/h/f;->b()V

    return-void

    :cond_0
    throw v0
.end method
