.class public final Lz2/y00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/y00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final OoooOoO:Lz2/f10;

.field public final synthetic OoooOoo:Lz2/y00;


# direct methods
.method public constructor <init>(Lz2/y00;)V
    .locals 0

    iput-object p1, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lz2/f10;

    invoke-direct {p1}, Lz2/f10;-><init>()V

    iput-object p1, p0, Lz2/y00$OooO00o;->OoooOoO:Lz2/f10;

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-object v0, v0, Lz2/y00;->OooO0O0:Lz2/j00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-boolean v1, v1, Lz2/y00;->OooO0OO:Z

    if-nez v1, :cond_3

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    iget-object v3, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-boolean v4, v3, Lz2/y00;->OooO0Oo:Z

    if-nez v4, :cond_1

    iget-wide v4, v3, Lz2/y00;->OooO00o:J

    iget-object v3, v3, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v3}, Lz2/j00;->o00000O0()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v1

    if-nez v3, :cond_0

    iget-object v1, p0, Lz2/y00$OooO00o;->OoooOoO:Lz2/f10;

    iget-object v2, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-object v2, v2, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1, v2}, Lz2/f10;->OooOO0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-object v3, v3, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v3, p1, v1, v2}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    sub-long/2addr p2, v1

    iget-object v1, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
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

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-object v0, v0, Lz2/y00;->OooO0O0:Lz2/j00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-boolean v2, v1, Lz2/y00;->OooO0OO:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v2, v1, Lz2/y00;->OooO0Oo:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz2/y00;->OooO0OO:Z

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

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-object v0, v0, Lz2/y00;->OooO0O0:Lz2/j00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/y00$OooO00o;->OoooOoo:Lz2/y00;

    iget-boolean v2, v1, Lz2/y00;->OooO0OO:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lz2/y00;->OooO0Oo:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lz2/y00;->OooO0O0:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/y00$OooO00o;->OoooOoO:Lz2/f10;

    return-object v0
.end method
