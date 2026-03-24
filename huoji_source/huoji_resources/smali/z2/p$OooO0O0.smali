.class public Lz2/p$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lz2/o0O00o00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lz2/t2;->OooO0o(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lz2/p$OooO0O0;->OooO00o:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o(Ljava/nio/ByteBuffer;)Lz2/o0O00o00;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/p$OooO0O0;->OooO00o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00o00;

    if-nez v0, :cond_0

    new-instance v0, Lz2/o0O00o00;

    invoke-direct {v0}, Lz2/o0O00o00;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lz2/o0O00o00;->OooOOo0(Ljava/nio/ByteBuffer;)Lz2/o0O00o00;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0O0(Lz2/o0O00o00;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lz2/o0O00o00;->OooO00o()V

    iget-object v0, p0, Lz2/p$OooO0O0;->OooO00o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
