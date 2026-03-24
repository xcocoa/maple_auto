.class public final Lcom/anythink/core/common/m/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/Runnable;

.field public d:Z

.field public e:Z

.field public f:Lcom/anythink/core/common/m/b;

.field private final g:Lcom/anythink/core/common/m/a;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/m/c;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/m/c;->e:Z

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/m/c;->g:Lcom/anythink/core/common/m/a;

    new-instance v0, Lcom/anythink/core/common/m/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/m/c$1;-><init>(Lcom/anythink/core/common/m/c;)V

    iput-object v0, p0, Lcom/anythink/core/common/m/c;->f:Lcom/anythink/core/common/m/b;

    iput-wide p1, p0, Lcom/anythink/core/common/m/c;->b:J

    iput-object p3, p0, Lcom/anythink/core/common/m/c;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Runnable;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/m/c;-><init>(JLjava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/common/m/c;->e:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/anythink/core/common/m/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/common/m/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/m/c;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/m/c;->a:J

    iget-object v0, p0, Lcom/anythink/core/common/m/c;->g:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/core/common/m/c;->f:Lcom/anythink/core/common/m/b;

    iget-wide v2, p0, Lcom/anythink/core/common/m/c;->b:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/common/m/c;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/m/c;->d:Z

    iget-wide v0, p0, Lcom/anythink/core/common/m/c;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/core/common/m/c;->a:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/core/common/m/c;->b:J

    iget-object v0, p0, Lcom/anythink/core/common/m/c;->g:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/core/common/m/c;->f:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/anythink/core/common/m/c;->d:Z

    iget-object v0, p0, Lcom/anythink/core/common/m/c;->g:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/core/common/m/c;->f:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/anythink/core/common/m/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
