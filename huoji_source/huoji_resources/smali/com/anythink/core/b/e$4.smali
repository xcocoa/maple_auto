.class public final Lcom/anythink/core/b/e$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/b/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/e$4;->a:Lcom/anythink/core/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/b/e$4;->a:Lcom/anythink/core/b/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/b/e$4;->a:Lcom/anythink/core/b/e;

    invoke-virtual {v1}, Lcom/anythink/core/b/e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/b/e$4;->a:Lcom/anythink/core/b/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;J)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
