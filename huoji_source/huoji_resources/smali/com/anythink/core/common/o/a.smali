.class public abstract Lcom/anythink/core/common/o/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private final b:Lcom/anythink/core/common/m/a;

.field private final c:Lcom/anythink/core/common/m/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/o/a;->b:Lcom/anythink/core/common/m/a;

    new-instance v0, Lcom/anythink/core/common/o/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/o/a$1;-><init>(Lcom/anythink/core/common/o/a;)V

    iput-object v0, p0, Lcom/anythink/core/common/o/a;->c:Lcom/anythink/core/common/m/b;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/o/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/core/common/o/a;->a:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/core/common/o/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/o/a;->a:Z

    return v0
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/o/a;->a:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/o/a;->b:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/core/common/o/a;->c:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/o/a;->b:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/core/common/o/a;->c:Lcom/anythink/core/common/m/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract b()V
.end method
