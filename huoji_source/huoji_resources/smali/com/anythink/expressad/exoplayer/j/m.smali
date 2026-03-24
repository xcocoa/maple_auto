.class public final Lcom/anythink/expressad/exoplayer/j/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/aa;
.implements Lcom/anythink/expressad/exoplayer/j/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anythink/expressad/exoplayer/j/aa<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/anythink/expressad/exoplayer/j/d;"
    }
.end annotation


# static fields
.field public static final a:J = 0xf4240L

.field public static final b:I = 0x7d0

.field private static final c:I = 0x7d0

.field private static final d:I = 0x80000


# instance fields
.field private final e:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/anythink/expressad/exoplayer/j/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/anythink/expressad/exoplayer/k/y;

.field private final h:Lcom/anythink/expressad/exoplayer/k/c;

.field private i:I

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v6, Lcom/anythink/expressad/exoplayer/k/c;->a:Lcom/anythink/expressad/exoplayer/k/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/32 v3, 0xf4240

    const/16 v5, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/j/m;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v6, Lcom/anythink/expressad/exoplayer/k/c;->a:Lcom/anythink/expressad/exoplayer/k/c;

    const-wide/32 v3, 0xf4240

    const/16 v5, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/j/m;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v6, Lcom/anythink/expressad/exoplayer/k/c;->a:Lcom/anythink/expressad/exoplayer/k/c;

    const-wide/32 v3, 0xf4240

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/j/m;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/anythink/expressad/exoplayer/j/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/m;->e:Landroid/os/Handler;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/m;->f:Lcom/anythink/expressad/exoplayer/j/d$a;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/y;

    invoke-direct {p1, p5}, Lcom/anythink/expressad/exoplayer/k/y;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/m;->g:Lcom/anythink/expressad/exoplayer/k/y;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/j/m;->h:Lcom/anythink/expressad/exoplayer/k/c;

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/j/m;->n:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/anythink/expressad/exoplayer/j/m;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/j/d$a;JILcom/anythink/expressad/exoplayer/k/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/j/m;)Lcom/anythink/expressad/exoplayer/j/d$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/m;->f:Lcom/anythink/expressad/exoplayer/j/d$a;

    return-object p0
.end method

.method private a(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/m;->f:Lcom/anythink/expressad/exoplayer/j/d$a;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/exoplayer/j/m$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/j/m$1;-><init>(Lcom/anythink/expressad/exoplayer/j/m;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->h:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->j:J

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->i:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->h:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->j:J

    sub-long v4, v2, v4

    long-to-int v8, v4

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->l:J

    int-to-long v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->l:J

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->m:J

    iget-wide v9, p0, Lcom/anythink/expressad/exoplayer/j/m;->k:J

    add-long/2addr v4, v9

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->m:J

    if-lez v8, :cond_2

    const-wide/16 v4, 0x1f40

    mul-long v4, v4, v9

    div-long/2addr v4, v6

    long-to-float v0, v4

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->g:Lcom/anythink/expressad/exoplayer/k/y;

    long-to-double v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/expressad/exoplayer/k/y;->a(IF)V

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->l:J

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->m:J

    const-wide/32 v6, 0x80000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->g:Lcom/anythink/expressad/exoplayer/k/y;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/y;->a()F

    move-result v0

    float-to-long v4, v0

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->n:J

    :cond_2
    iget-wide v9, p0, Lcom/anythink/expressad/exoplayer/j/m;->k:J

    iget-wide v11, p0, Lcom/anythink/expressad/exoplayer/j/m;->n:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->e:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j/m;->f:Lcom/anythink/expressad/exoplayer/j/d$a;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/m$1;

    move-object v6, v4

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/anythink/expressad/exoplayer/j/m$1;-><init>(Lcom/anythink/expressad/exoplayer/j/m;IJJ)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->i:I

    if-lez v0, :cond_4

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/m;->j:J

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/m;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
