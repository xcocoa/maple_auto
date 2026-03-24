.class public final Lcom/anythink/expressad/exoplayer/j/a/m$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/j/a/m;-><init>(Ljava/io/File;Lcom/anythink/expressad/exoplayer/j/a/d;Lcom/anythink/expressad/exoplayer/j/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/ConditionVariable;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/j/a/m;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/m;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/m$1;->b:Lcom/anythink/expressad/exoplayer/j/a/m;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/j/a/m$1;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/m$1;->b:Lcom/anythink/expressad/exoplayer/j/a/m;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m$1;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m$1;->b:Lcom/anythink/expressad/exoplayer/j/a/m;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/j/a/m;->a(Lcom/anythink/expressad/exoplayer/j/a/m;)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/m$1;->b:Lcom/anythink/expressad/exoplayer/j/a/m;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/j/a/m;->b(Lcom/anythink/expressad/exoplayer/j/a/m;)Lcom/anythink/expressad/exoplayer/j/a/d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
