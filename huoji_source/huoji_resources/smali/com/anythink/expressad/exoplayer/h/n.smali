.class public final Lcom/anythink/expressad/exoplayer/h/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/e/g;
.implements Lcom/anythink/expressad/exoplayer/h/r;
.implements Lcom/anythink/expressad/exoplayer/h/x$b;
.implements Lcom/anythink/expressad/exoplayer/j/t$a;
.implements Lcom/anythink/expressad/exoplayer/j/t$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/n$b;,
        Lcom/anythink/expressad/exoplayer/h/n$a;,
        Lcom/anythink/expressad/exoplayer/h/n$d;,
        Lcom/anythink/expressad/exoplayer/h/n$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anythink/expressad/exoplayer/e/g;",
        "Lcom/anythink/expressad/exoplayer/h/r;",
        "Lcom/anythink/expressad/exoplayer/h/x$b;",
        "Lcom/anythink/expressad/exoplayer/j/t$a<",
        "Lcom/anythink/expressad/exoplayer/h/n$a;",
        ">;",
        "Lcom/anythink/expressad/exoplayer/j/t$d;"
    }
.end annotation


# static fields
.field private static final a:J = 0x2710L


# instance fields
.field private A:Lcom/anythink/expressad/exoplayer/h/af;

.field private B:J

.field private C:[Z

.field private D:[Z

.field private E:[Z

.field private F:Z

.field private G:J

.field private H:J

.field private I:J

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Z

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/anythink/expressad/exoplayer/j/h;

.field private final d:I

.field private final e:Lcom/anythink/expressad/exoplayer/h/t$a;

.field private final f:Lcom/anythink/expressad/exoplayer/h/n$c;

.field private final g:Lcom/anythink/expressad/exoplayer/j/b;

.field private final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:J

.field private final j:Lcom/anythink/expressad/exoplayer/j/t;

.field private final k:Lcom/anythink/expressad/exoplayer/h/n$b;

.field private final l:Lcom/anythink/expressad/exoplayer/k/f;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;

.field private final o:Landroid/os/Handler;

.field private p:Lcom/anythink/expressad/exoplayer/h/r$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/anythink/expressad/exoplayer/e/k;

.field private r:[Lcom/anythink/expressad/exoplayer/h/x;

.field private s:[I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h;[Lcom/anythink/expressad/exoplayer/e/e;ILcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/n$c;Lcom/anythink/expressad/exoplayer/j/b;Ljava/lang/String;I)V
    .locals 0
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->c:Lcom/anythink/expressad/exoplayer/j/h;

    iput p4, p0, Lcom/anythink/expressad/exoplayer/h/n;->d:I

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/h/n;->f:Lcom/anythink/expressad/exoplayer/h/n$c;

    iput-object p7, p0, Lcom/anythink/expressad/exoplayer/h/n;->g:Lcom/anythink/expressad/exoplayer/j/b;

    iput-object p8, p0, Lcom/anythink/expressad/exoplayer/h/n;->h:Ljava/lang/String;

    int-to-long p1, p9

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->i:J

    new-instance p1, Lcom/anythink/expressad/exoplayer/j/t;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/j/t;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/n$b;

    invoke-direct {p1, p3, p0}, Lcom/anythink/expressad/exoplayer/h/n$b;-><init>([Lcom/anythink/expressad/exoplayer/e/e;Lcom/anythink/expressad/exoplayer/e/g;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->k:Lcom/anythink/expressad/exoplayer/h/n$b;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/f;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/k/f;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->l:Lcom/anythink/expressad/exoplayer/k/f;

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/n$1;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/exoplayer/h/n$1;-><init>(Lcom/anythink/expressad/exoplayer/h/n;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->m:Ljava/lang/Runnable;

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/n$2;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/exoplayer/h/n$2;-><init>(Lcom/anythink/expressad/exoplayer/h/n;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->n:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->o:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->s:[I

    new-array p1, p1, [Lcom/anythink/expressad/exoplayer/h/x;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    const-wide/16 p6, -0x1

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    const/4 p4, 0x3

    :cond_0
    iput p4, p0, Lcom/anythink/expressad/exoplayer/h/n;->v:I

    invoke-virtual {p5}, Lcom/anythink/expressad/exoplayer/h/t$a;->a()V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/n$a;JJLjava/io/IOException;)I
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    move-object/from16 v1, p6

    instance-of v7, v1, Lcom/anythink/expressad/exoplayer/h/ag;

    move/from16 v19, v7

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->c(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    move/from16 v21, v7

    move-object/from16 v7, v20

    invoke-virtual/range {v1 .. v19}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    invoke-direct/range {p0 .. p1}, Lcom/anythink/expressad/exoplayer/h/n;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)V

    if-eqz v21, :cond_0

    const/4 v1, 0x3

    return v1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->m()I

    move-result v1

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_5

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->j()Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v4, v0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    iput v3, v0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v7, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v1, v8

    invoke-virtual {v9}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v8, p1

    invoke-virtual {v8, v5, v6, v5, v6}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(JJ)V

    goto :goto_3

    :cond_5
    :goto_2
    iput v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_7

    if-eqz v2, :cond_6

    return v4

    :cond_6
    return v3

    :cond_7
    const/4 v1, 0x2

    return v1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/n$a;)V
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->d(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/n$a;JJ)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->n()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    :goto_0
    iput-wide v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/n;->f:Lcom/anythink/expressad/exoplayer/h/n$c;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/k;->a()Z

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lcom/anythink/expressad/exoplayer/h/n$c;->a(JZ)V

    :cond_1
    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->c(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v20

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-virtual/range {v5 .. v21}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    invoke-direct/range {p0 .. p1}, Lcom/anythink/expressad/exoplayer/h/n;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/n$a;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/n$a;->c(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/anythink/expressad/exoplayer/h/n;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/n;)V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->M:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->t:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->f()Lcom/anythink/expressad/exoplayer/m;

    move-result-object v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->l:Lcom/anythink/expressad/exoplayer/k/f;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/f;->b()Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v0, v0

    new-array v1, v0, [Lcom/anythink/expressad/exoplayer/h/ae;

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->E:[Z

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/h/x;->f()Lcom/anythink/expressad/exoplayer/m;

    move-result-object v5

    new-instance v6, Lcom/anythink/expressad/exoplayer/h/ae;

    new-array v7, v4, [Lcom/anythink/expressad/exoplayer/m;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/anythink/expressad/exoplayer/h/ae;-><init>([Lcom/anythink/expressad/exoplayer/m;)V

    aput-object v6, v1, v3

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/k/o;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/k/o;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->F:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->F:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/af;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/af;-><init>([Lcom/anythink/expressad/exoplayer/h/ae;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->A:Lcom/anythink/expressad/exoplayer/h/af;

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v2

    if-nez v5, :cond_5

    const/4 v0, 0x6

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->v:I

    :cond_5
    iput-boolean v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->f:Lcom/anythink/expressad/exoplayer/h/n$c;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/e/k;->a()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/h/n$c;->a(JZ)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h/r$a;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/n$a;I)Z
    .locals 6

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->j()Z

    move-result p2

    if-nez p2, :cond_1

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    return v0

    :cond_1
    iget-boolean p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3, v4, v3, v4}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(JJ)V

    return v2

    :cond_3
    :goto_1
    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    return v2
.end method

.method private static a(Ljava/io/IOException;)Z
    .locals 0

    instance-of p0, p0, Lcom/anythink/expressad/exoplayer/h/ag;

    return p0
.end method

.method private b(I)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->E:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->A:Lcom/anythink/expressad/exoplayer/h/af;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v4

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v0, v4, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/o;->d(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(ILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->E:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/h/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/exoplayer/h/n;->M:Z

    return p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/h/n;)Lcom/anythink/expressad/exoplayer/h/r$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {p1, p0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/exoplayer/h/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/n;->h:Ljava/lang/String;

    return-object p0
.end method

.method private d(J)Z
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->i()V

    invoke-virtual {v4, p1, p2, v1}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->F:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static synthetic e(Lcom/anythink/expressad/exoplayer/h/n;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->i:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/anythink/expressad/exoplayer/h/n;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/n;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/expressad/exoplayer/h/n;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/n;->o:Landroid/os/Handler;

    return-object p0
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private k()V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->M:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->t:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->f()Lcom/anythink/expressad/exoplayer/m;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->l:Lcom/anythink/expressad/exoplayer/k/f;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/f;->b()Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v0, v0

    new-array v1, v0, [Lcom/anythink/expressad/exoplayer/h/ae;

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->E:[Z

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/h/x;->f()Lcom/anythink/expressad/exoplayer/m;

    move-result-object v5

    new-instance v6, Lcom/anythink/expressad/exoplayer/h/ae;

    new-array v7, v4, [Lcom/anythink/expressad/exoplayer/m;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/anythink/expressad/exoplayer/h/ae;-><init>([Lcom/anythink/expressad/exoplayer/m;)V

    aput-object v6, v1, v3

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/k/o;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/k/o;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->F:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->F:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/af;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/af;-><init>([Lcom/anythink/expressad/exoplayer/h/ae;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->A:Lcom/anythink/expressad/exoplayer/h/af;

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->v:I

    :cond_6
    iput-boolean v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->f:Lcom/anythink/expressad/exoplayer/h/n$c;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/e/k;->a()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/h/n$c;->a(JZ)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v0, p0}, Lcom/anythink/expressad/exoplayer/h/r$a;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private l()V
    .locals 21

    move-object/from16 v6, p0

    new-instance v7, Lcom/anythink/expressad/exoplayer/h/n$a;

    iget-object v2, v6, Lcom/anythink/expressad/exoplayer/h/n;->b:Landroid/net/Uri;

    iget-object v3, v6, Lcom/anythink/expressad/exoplayer/h/n;->c:Lcom/anythink/expressad/exoplayer/j/h;

    iget-object v4, v6, Lcom/anythink/expressad/exoplayer/h/n;->k:Lcom/anythink/expressad/exoplayer/h/n$b;

    iget-object v5, v6, Lcom/anythink/expressad/exoplayer/h/n;->l:Lcom/anythink/expressad/exoplayer/k/f;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/h/n$a;-><init>(Lcom/anythink/expressad/exoplayer/h/n;Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/h/n$b;Lcom/anythink/expressad/exoplayer/k/f;)V

    iget-boolean v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->o()Z

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-wide v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, v6, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    cmp-long v8, v4, v0

    if-ltz v8, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    iput-wide v2, v6, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    return-void

    :cond_0
    iget-object v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    iget-wide v4, v6, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    invoke-interface {v0, v4, v5}, Lcom/anythink/expressad/exoplayer/e/k;->a(J)Lcom/anythink/expressad/exoplayer/e/k$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/k$a;->a:Lcom/anythink/expressad/exoplayer/e/l;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/e/l;->c:J

    iget-wide v4, v6, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(JJ)V

    iput-wide v2, v6, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->m()I

    move-result v0

    iput v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    iget-object v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    iget v1, v6, Lcom/anythink/expressad/exoplayer/h/n;->v:I

    invoke-virtual {v0, v7, v6, v1}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t$c;Lcom/anythink/expressad/exoplayer/j/t$a;I)J

    move-result-wide v19

    iget-object v8, v6, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v15

    iget-wide v0, v6, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v8 .. v20}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private m()I
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private n()J
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/h/x;->g()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private o()Z
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(IJ)I
    .locals 5

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->g()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->k()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-lez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/n;->b(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/n;->c(I)V

    :goto_1
    return v1
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I
    .locals 9

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->j()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    iget-wide v7, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/h/x;->a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;ZZJ)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/n;->b(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/n;->c(I)V

    :cond_2
    :goto_0
    return p2
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/j/t$c;JJLjava/io/IOException;)I
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    move-object/from16 v7, p1

    check-cast v7, Lcom/anythink/expressad/exoplayer/h/n$a;

    move-object/from16 v1, p6

    instance-of v6, v1, Lcom/anythink/expressad/exoplayer/h/ag;

    move/from16 v19, v6

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v2

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->c(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v20, 0x0

    move/from16 v21, v6

    move/from16 v6, v20

    const/16 v20, 0x0

    move-object v0, v7

    move-object/from16 v7, v20

    invoke-virtual/range {v1 .. v19}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/n;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)V

    if-eqz v21, :cond_0

    const/4 v1, 0x3

    return v1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->m()I

    move-result v2

    iget v3, v0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/h/n;->G:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/e/k;->b()J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->j()Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v5, v0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    iget-boolean v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    iput-boolean v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    iput v4, v0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v8, v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v2, v9

    invoke-virtual {v10}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v6, v7, v6, v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(JJ)V

    goto :goto_3

    :cond_5
    :goto_2
    iput v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_7

    if-eqz v3, :cond_6

    return v5

    :cond_6
    return v4

    :cond_7
    const/4 v1, 0x2

    return v1
.end method

.method public final a(JLcom/anythink/expressad/exoplayer/ac;)J
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/e/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/k;->a(J)Lcom/anythink/expressad/exoplayer/e/k$a;

    move-result-object v0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/k$a;->a:Lcom/anythink/expressad/exoplayer/e/l;

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/e/l;->b:J

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/k$a;->b:Lcom/anythink/expressad/exoplayer/e/l;

    iget-wide v7, v0, Lcom/anythink/expressad/exoplayer/e/l;->b:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/k/af;->a(JLcom/anythink/expressad/exoplayer/ac;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Lcom/anythink/expressad/exoplayer/i/f;[Z[Lcom/anythink/expressad/exoplayer/h/y;[ZJ)J
    .locals 6

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, p3, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v2

    if-nez v3, :cond_1

    :cond_0
    aget-object v3, p3, v2

    check-cast v3, Lcom/anythink/expressad/exoplayer/h/n$d;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/h/n$d;->a(Lcom/anythink/expressad/exoplayer/h/n$d;)I

    move-result v3

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    aput-boolean v1, v4, v3

    const/4 v3, 0x0

    aput-object v3, p3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->w:Z

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_9

    aget-object v2, p3, v0

    if-nez v2, :cond_8

    aget-object v2, p1, v0

    if-eqz v2, :cond_8

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/i/f;->g()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/i/f;->b(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->A:Lcom/anythink/expressad/exoplayer/h/af;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/i/f;->f()Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/h/af;->a(Lcom/anythink/expressad/exoplayer/h/ae;)I

    move-result v2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    aput-boolean v4, v3, v2

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/n$d;

    invoke-direct {v3, p0, v2}, Lcom/anythink/expressad/exoplayer/h/n$d;-><init>(Lcom/anythink/expressad/exoplayer/h/n;I)V

    aput-object v3, p3, v0

    aput-boolean v4, p4, v0

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/x;->i()V

    invoke-virtual {p2, p5, p6, v4}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/x;->e()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    if-nez p1, :cond_c

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_a

    aget-object p3, p1, v1

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/h/x;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/t;->b()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length p2, p1

    :goto_8
    if-ge v1, p2, :cond_e

    aget-object p3, p1, v1

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lcom/anythink/expressad/exoplayer/h/n;->b(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v1, p1, :cond_e

    aget-object p1, p3, v1

    if-eqz p1, :cond_d

    aput-boolean v4, p4, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/anythink/expressad/exoplayer/h/n;->w:Z

    return-wide p5
.end method

.method public final a(II)Lcom/anythink/expressad/exoplayer/e/m;
    .locals 3

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->s:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/x;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->g:Lcom/anythink/expressad/exoplayer/j/b;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/x;-><init>(Lcom/anythink/expressad/exoplayer/j/b;)V

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/exoplayer/h/x;->a(Lcom/anythink/expressad/exoplayer/h/x$b;)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->s:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->s:[I

    aput p1, v1, p2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/expressad/exoplayer/h/x;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aput-object v0, p1, p2

    return-object v0
.end method

.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/n;->h()V

    return-void
.end method

.method public final a(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n;->C:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/e/k;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->l:Lcom/anythink/expressad/exoplayer/k/f;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/f;->a()Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->l()V

    return-void
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/j/t$c;JJ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/n$a;

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/n;->n()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/h/n;->f:Lcom/anythink/expressad/exoplayer/h/n$c;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/e/k;->a()Z

    move-result v5

    invoke-interface {v4, v2, v3, v5}, Lcom/anythink/expressad/exoplayer/h/n$c;->a(JZ)V

    :cond_1
    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v13

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    move-wide v15, v2

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/h/n$a;->c(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v21

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    invoke-virtual/range {v6 .. v22}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/n;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/j/t$c;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v7, p1

    check-cast v7, Lcom/anythink/expressad/exoplayer/h/n$a;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;

    move-result-object v2

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->b(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/h/n;->B:J

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n$a;->c(Lcom/anythink/expressad/exoplayer/h/n$a;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v7, v18

    invoke-virtual/range {v1 .. v17}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/n;->a(Lcom/anythink/expressad/exoplayer/h/n$a;)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a_(J)V
    .locals 0

    return-void
.end method

.method public final b(J)J
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->q:Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/e/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->o()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/n;->d(J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-wide p1

    :cond_1
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/t;->b()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-wide p1
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/h/af;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->A:Lcom/anythink/expressad/exoplayer/h/af;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/t$a;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->y:Z

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->m()I

    move-result v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->K:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->x:Z

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 0

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n;->l:Lcom/anythink/expressad/exoplayer/k/f;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/f;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->l()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c_()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->t:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()J
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->L:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->I:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->F:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v0, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/n;->D:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/h/x;->g()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/n;->n()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->H:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final e()J
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->z:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/n;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/h/x;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t$d;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->p:Lcom/anythink/expressad/exoplayer/h/r$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->M:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->e:Lcom/anythink/expressad/exoplayer/h/t$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/t$a;->b()V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->r:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->k:Lcom/anythink/expressad/exoplayer/h/n$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/n$b;->a()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->j:Lcom/anythink/expressad/exoplayer/j/t;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->v:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t;->a(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
