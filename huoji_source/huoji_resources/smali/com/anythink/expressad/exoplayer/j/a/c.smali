.class public final Lcom/anythink/expressad/exoplayer/j/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/a/c$b;,
        Lcom/anythink/expressad/exoplayer/j/a/c$a;,
        Lcom/anythink/expressad/exoplayer/j/a/c$c;
    }
.end annotation


# static fields
.field public static final a:J = 0x200000L

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field private static final g:I = -0x1

.field private static final h:J = 0x19000L


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private final i:Lcom/anythink/expressad/exoplayer/j/a/a;

.field private final j:Lcom/anythink/expressad/exoplayer/j/h;

.field private final k:Lcom/anythink/expressad/exoplayer/j/h;

.field private final l:Lcom/anythink/expressad/exoplayer/j/h;

.field private final m:Lcom/anythink/expressad/exoplayer/j/a/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private q:Lcom/anythink/expressad/exoplayer/j/h;

.field private r:Z

.field private s:Landroid/net/Uri;

.field private t:Landroid/net/Uri;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:J

.field private x:J

.field private y:Lcom/anythink/expressad/exoplayer/j/a/e;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/anythink/expressad/exoplayer/j/a/c;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/expressad/exoplayer/j/a/c;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;IB)V
    .locals 7

    new-instance v3, Lcom/anythink/expressad/exoplayer/j/r;

    invoke-direct {v3}, Lcom/anythink/expressad/exoplayer/j/r;-><init>()V

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/a/b;

    invoke-direct {v4, p1}, Lcom/anythink/expressad/exoplayer/j/a/b;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/j/a/c;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/g;ILcom/anythink/expressad/exoplayer/j/a/c$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/g;ILcom/anythink/expressad/exoplayer/j/a/c$b;)V
    .locals 1
    .param p6    # Lcom/anythink/expressad/exoplayer/j/a/c$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->j:Lcom/anythink/expressad/exoplayer/j/h;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->n:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->o:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    :cond_2
    iput-boolean p3, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->p:Z

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->l:Lcom/anythink/expressad/exoplayer/j/h;

    new-instance p1, Lcom/anythink/expressad/exoplayer/j/z;

    invoke-direct {p1, p2, p4}, Lcom/anythink/expressad/exoplayer/j/z;-><init>(Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/g;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->k:Lcom/anythink/expressad/exoplayer/j/h;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->m:Lcom/anythink/expressad/exoplayer/j/a/c$b;

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/j/a/a;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-interface {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/a;->c(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/i;

    move-result-object p0

    const-string p1, "exo_redir"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/j/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object p2

    :cond_1
    return-object v0
.end method

.method private a(Z)V
    .locals 14

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->n:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    invoke-interface {v0, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    invoke-interface {v0, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;J)Lcom/anythink/expressad/exoplayer/j/a/e;

    move-result-object v0

    :goto_0
    const-wide/16 v2, -0x1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->l:Lcom/anythink/expressad/exoplayer/j/h;

    new-instance v12, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->s:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-wide v8, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget v11, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->u:I

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->d:Z

    if-eqz v4, :cond_4

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->e:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-wide v8, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->b:J

    sub-long v8, v6, v8

    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->c:J

    sub-long/2addr v6, v8

    iget-wide v10, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    cmp-long v1, v10, v2

    if-eqz v1, :cond_3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    move-wide v10, v6

    new-instance v1, Lcom/anythink/expressad/exoplayer/j/k;

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-object v12, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget v13, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->u:I

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->j:Lcom/anythink/expressad/exoplayer/j/h;

    move-object v12, v1

    move-object v1, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/e;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    goto :goto_1

    :cond_5
    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/j/a/e;->c:J

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_6
    :goto_1
    move-wide v10, v4

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->s:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-object v12, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget v13, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->u:I

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->k:Lcom/anythink/expressad/exoplayer/j/h;

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->l:Lcom/anythink/expressad/exoplayer/j/h;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v6, v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Lcom/anythink/expressad/exoplayer/j/a/e;)V

    move-object v0, v1

    :goto_2
    move-object v12, v4

    move-object v1, v5

    :goto_3
    iget-boolean v4, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->A:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->l:Lcom/anythink/expressad/exoplayer/j/h;

    if-ne v1, v4, :cond_8

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    const-wide/32 v6, 0x19000

    add-long/2addr v4, v6

    goto :goto_4

    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    :goto_4
    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->C:J

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->e()Z

    move-result p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->l:Lcom/anythink/expressad/exoplayer/j/h;

    if-ne v1, p1, :cond_9

    return-void

    :cond_9
    :try_start_1
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Lcom/anythink/expressad/exoplayer/j/a/e;)V

    :cond_a
    throw p1

    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/a/e;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->y:Lcom/anythink/expressad/exoplayer/j/a/e;

    :cond_c
    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    iget-wide v4, v12, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const/4 p1, 0x1

    cmp-long v0, v4, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->r:Z

    invoke-interface {v1, v12}, Lcom/anythink/expressad/exoplayer/j/h;->a(Lcom/anythink/expressad/exoplayer/j/k;)J

    move-result-wide v0

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/a/k;

    invoke-direct {v4}, Lcom/anythink/expressad/exoplayer/j/a/k;-><init>()V

    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->r:Z

    if-eqz v5, :cond_e

    cmp-long v5, v0, v2

    if-eqz v5, :cond_e

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    add-long/2addr v2, v0

    invoke-static {v4, v2, v3}, Lcom/anythink/expressad/exoplayer/j/a/j;->a(Lcom/anythink/expressad/exoplayer/j/a/k;J)V

    :cond_e
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/h;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->t:Landroid/net/Uri;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->s:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr p1, v0

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->t:Landroid/net/Uri;

    invoke-static {v4, p1}, Lcom/anythink/expressad/exoplayer/j/a/j;->a(Lcom/anythink/expressad/exoplayer/j/a/k;Landroid/net/Uri;)V

    goto :goto_7

    :cond_f
    const-string p1, "exo_redir"

    invoke-virtual {v4, p1}, Lcom/anythink/expressad/exoplayer/j/a/k;->a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/k;

    :cond_10
    :goto_7
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->g()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    invoke-interface {p1, v0, v4}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Ljava/lang/String;Lcom/anythink/expressad/exoplayer/j/a/k;)V

    :cond_11
    return-void
.end method

.method private static a(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/anythink/expressad/exoplayer/j/i;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/anythink/expressad/exoplayer/j/i;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/j/i;->b:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/anythink/expressad/exoplayer/j/k;)I
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->z:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->p:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private b(Ljava/io/IOException;)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/anythink/expressad/exoplayer/j/a/a$a;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->z:Z

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/j/a/a;->d(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->l:Lcom/anythink/expressad/exoplayer/j/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->j:Lcom/anythink/expressad/exoplayer/j/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->k:Lcom/anythink/expressad/exoplayer/j/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->r:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->y:Lcom/anythink/expressad/exoplayer/j/a/e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Lcom/anythink/expressad/exoplayer/j/a/e;)V

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->y:Lcom/anythink/expressad/exoplayer/j/a/e;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->r:Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->y:Lcom/anythink/expressad/exoplayer/j/a/e;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v3, v1}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Lcom/anythink/expressad/exoplayer/j/a/e;)V

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->y:Lcom/anythink/expressad/exoplayer/j/a/e;

    :cond_2
    throw v0
.end method

.method private static i()V
    .locals 0

    return-void
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->m:Lcom/anythink/expressad/exoplayer/j/a/c$b;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->c()J

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->B:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 11

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    return v5

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-wide v8, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->C:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/j/a/c;->a(Z)V

    :cond_2
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->q:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v2, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/h;->a([BII)I

    move-result v2

    const-wide/16 v6, -0x1

    if-eq v2, v5, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->B:J

    int-to-long v3, v2

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->B:J

    :cond_3
    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    int-to-long v3, v2

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    cmp-long p3, p1, v6

    if-eqz p3, :cond_6

    sub-long/2addr p1, v3

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    goto :goto_0

    :cond_4
    iget-boolean v8, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->r:Z

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->c()V

    goto :goto_0

    :cond_5
    iget-wide v8, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    cmp-long v10, v8, v3

    if-gtz v10, :cond_7

    cmp-long v3, v8, v6

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->h()V

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/j/a/c;->a(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/a/c;->a([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->r:Z

    if-eqz p2, :cond_a

    move-object p2, p1

    :goto_2
    if-eqz p2, :cond_9

    instance-of p3, p2, Lcom/anythink/expressad/exoplayer/j/i;

    if-eqz p3, :cond_8

    move-object p3, p2

    check-cast p3, Lcom/anythink/expressad/exoplayer/j/i;

    iget p3, p3, Lcom/anythink/expressad/exoplayer/j/i;->b:I

    if-nez p3, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->c()V

    return v5

    :cond_a
    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/c;->b(Ljava/io/IOException;)V

    throw p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;)J
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/j/a/f;->a(Lcom/anythink/expressad/exoplayer/j/k;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->s:Landroid/net/Uri;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v2, v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->c(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/j/a/i;

    move-result-object v0

    const-string v2, "exo_redir"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/j/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->t:Landroid/net/Uri;

    iget v0, p1, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->u:I

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->w:J

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->o:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->z:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->p:Z

    if-eqz v0, :cond_3

    iget-wide v6, p1, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->A:Z

    iget-wide v6, p1, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_7

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->v:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/j/a/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_8

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Lcom/anythink/expressad/exoplayer/j/i;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/j/i;-><init>()V

    throw p1

    :cond_7
    :goto_4
    iput-wide v6, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J

    :cond_8
    :goto_5
    invoke-direct {p0, v5}, Lcom/anythink/expressad/exoplayer/j/a/c;->a(Z)V

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->x:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/j/a/c;->b(Ljava/io/IOException;)V

    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->t:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->s:Landroid/net/Uri;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->t:Landroid/net/Uri;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->m:Lcom/anythink/expressad/exoplayer/j/a/c$b;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->i:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->c()J

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/a/c;->B:J

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/c;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/j/a/c;->b(Ljava/io/IOException;)V

    throw v0
.end method
