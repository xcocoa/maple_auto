.class public final Lz2/cz$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OoooOoO:Lz2/q00;

.field private OoooOoo:Z

.field public final synthetic Ooooo00:Lz2/cz;


# direct methods
.method public constructor <init>(Lz2/cz;)V
    .locals 1

    iput-object p1, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/q00;

    iget-object p1, p1, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {p1}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/q00;-><init>(Lz2/f10;)V

    iput-object v0, p0, Lz2/cz$OooO0OO;->OoooOoO:Lz2/q00;

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/cz$OooO0OO;->OoooOoo:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0, p2, p3}, Lz2/k00;->Oooo00O(J)Lz2/k00;

    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0, p1, p2, p3}, Lz2/d10;->OooOooO(Lz2/j00;J)V

    iget-object p1, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object p1, p1, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {p1, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/cz$OooO0OO;->OoooOoo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lz2/cz$OooO0OO;->OoooOoo:Z

    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object v1, p0, Lz2/cz$OooO0OO;->OoooOoO:Lz2/q00;

    invoke-virtual {v0, v1}, Lz2/cz;->OooO0oO(Lz2/q00;)V

    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    const/4 v1, 0x3

    iput v1, v0, Lz2/cz;->OooO0o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/cz$OooO0OO;->OoooOoo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lz2/cz$OooO0OO;->Ooooo00:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/cz$OooO0OO;->OoooOoO:Lz2/q00;

    return-object v0
.end method
