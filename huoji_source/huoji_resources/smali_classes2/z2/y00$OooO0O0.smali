.class public final Lz2/y00$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/y00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OoooOoO:Lz2/f10;

.field public final synthetic OoooOoo:Lz2/y00;


# direct methods
.method public constructor <init>(Lz2/y00;)V
    .locals 0

    iput-object p1, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lz2/f10;

    invoke-direct {p1}, Lz2/f10;-><init>()V

    iput-object p1, p0, Lz2/y00$OooO0O0;->OoooOoO:Lz2/f10;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-object v0, v0, Lz2/y00;->OooO0O0:Lz2/j00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz2/y00;->OooO0Oo:Z

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lz2/j00;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-object v0, v0, Lz2/y00;->OooO0O0:Lz2/j00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-boolean v1, v1, Lz2/y00;->OooO0Oo:Z

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-boolean v2, v1, Lz2/y00;->OooO0OO:Z

    if-eqz v2, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    :cond_0
    iget-object v2, p0, Lz2/y00$OooO0O0;->OoooOoO:Lz2/f10;

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v2, v1}, Lz2/f10;->OooOO0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1, p1, p2, p3}, Lz2/j00;->read(Lz2/j00;J)J

    move-result-wide p1

    iget-object p3, p0, Lz2/y00$OooO0O0;->OoooOoo:Lz2/y00;

    iget-object p3, p3, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/y00$OooO0O0;->OoooOoO:Lz2/f10;

    return-object v0
.end method
