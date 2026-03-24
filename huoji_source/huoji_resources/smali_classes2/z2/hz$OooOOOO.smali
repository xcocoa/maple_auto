.class public Lz2/hz$OooOOOO;
.super Lz2/yx;
.source ""

# interfaces
.implements Lz2/iz$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOOO"
.end annotation


# instance fields
.field public final OoooOoo:Lz2/iz;

.field public final synthetic Ooooo00:Lz2/hz;


# direct methods
.method public constructor <init>(Lz2/hz;Lz2/iz;)V
    .locals 2

    iput-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lz2/hz;->Ooooo0o:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lz2/hz$OooOOOO;->OoooOoo:Lz2/iz;

    return-void
.end method

.method private OooOOO0(Lz2/nz;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-static {v0}, Lz2/hz;->Oooooo0(Lz2/hz;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lz2/hz$OooOOOO$OooO0OO;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v5, v5, Lz2/hz;->Ooooo0o:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lz2/hz$OooOOOO$OooO0OO;-><init>(Lz2/hz$OooOOOO;Ljava/lang/String;[Ljava/lang/Object;Lz2/nz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public OooO(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p1}, Lz2/hz;->o0Oo0oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p1, p2}, Lz2/hz;->o0ooOoO(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p1}, Lz2/hz;->o0OO00O(I)Lz2/jz;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lz2/jz;->OooOo00(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public OooO00o()V
    .locals 0

    return-void
.end method

.method public OooO0O0(ZLz2/nz;)V
    .locals 10

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v1, v1, Lz2/hz;->o00Oo0:Lz2/nz;

    invoke-virtual {v1}, Lz2/nz;->OooO0o0()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object p1, p1, Lz2/hz;->o00Oo0:Lz2/nz;

    invoke-virtual {p1}, Lz2/nz;->OooO00o()V

    :cond_0
    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object p1, p1, Lz2/hz;->o00Oo0:Lz2/nz;

    invoke-virtual {p1, p2}, Lz2/nz;->OooOO0(Lz2/nz;)V

    invoke-direct {p0, p2}, Lz2/hz$OooOOOO;->OooOOO0(Lz2/nz;)V

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object p1, p1, Lz2/hz;->o00Oo0:Lz2/nz;

    invoke-virtual {p1}, Lz2/nz;->OooO0o0()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-boolean v6, v1, Lz2/hz;->o00Ooo:Z

    if-nez v6, :cond_1

    iput-boolean v4, v1, Lz2/hz;->o00Ooo:Z

    :cond_1
    iget-object v1, v1, Lz2/hz;->Ooooo00:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v1, v1, Lz2/hz;->Ooooo00:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v5, v5, Lz2/hz;->Ooooo00:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lz2/jz;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lz2/jz;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    :cond_3
    :goto_0
    invoke-static {}, Lz2/hz;->OooooOo()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Lz2/hz$OooOOOO$OooO0O0;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v8, v8, Lz2/hz;->Ooooo0o:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lz2/hz$OooOOOO$OooO0O0;-><init>(Lz2/hz$OooOOOO;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p1, p2}, Lz2/jz;->OooO0OO(J)V

    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public OooO0OO(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {p3, p2}, Lz2/hz;->o0Oo0oo(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {p3, p2, p4, p1}, Lz2/hz;->o0ooOO0(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p3, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p2}, Lz2/hz;->o00O0O(I)Lz2/jz;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-boolean v1, v0, Lz2/hz;->OooooOo:Z

    if-eqz v1, :cond_1

    monitor-exit p3

    return-void

    :cond_1
    iget v1, v0, Lz2/hz;->OooooO0:I

    if-gt p2, v1, :cond_2

    monitor-exit p3

    return-void

    :cond_2
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Lz2/hz;->OooooOO:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-ne v1, v0, :cond_3

    monitor-exit p3

    return-void

    :cond_3
    invoke-static {p4}, Lz2/zx;->Oooo0(Ljava/util/List;)Lz2/jx;

    move-result-object v8

    new-instance p4, Lz2/jz;

    iget-object v5, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lz2/jz;-><init>(ILz2/hz;ZZLz2/jx;)V

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iput p2, p1, Lz2/hz;->OooooO0:I

    iget-object p1, p1, Lz2/hz;->Ooooo00:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lz2/hz;->OooooOo()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lz2/hz$OooOOOO$OooO00o;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v4, v4, Lz2/hz;->Ooooo0o:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Lz2/hz$OooOOOO$OooO00o;-><init>(Lz2/hz$OooOOOO;Ljava/lang/String;[Ljava/lang/Object;Lz2/jz;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p4}, Lz2/jz;->OooOOoo(Ljava/util/List;)V

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lz2/jz;->OooOOo()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooO0Oo(IJ)V
    .locals 3

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    if-nez p1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-wide v1, p1, Lz2/hz;->ooOO:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lz2/hz;->ooOO:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-virtual {v0, p1}, Lz2/hz;->o00O0O(I)Lz2/jz;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lz2/jz;->OooO0OO(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0o(ZILz2/l00;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p2}, Lz2/hz;->o0Oo0oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p2, p3, p4, p1}, Lz2/hz;->o00oO0o(ILz2/l00;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v0, p2}, Lz2/hz;->o00O0O(I)Lz2/jz;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lz2/hz;->o00000Oo(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lz2/hz;->o000000O(J)V

    invoke-interface {p3, v0, v1}, Lz2/l00;->skip(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lz2/jz;->OooOOo0(Lz2/l00;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lz2/jz;->OooOOo()V

    :cond_2
    return-void
.end method

.method public OooO0o0(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public OooO0oO(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lz2/hz;->Oooooo(Lz2/hz;Z)Z

    iget-object p2, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :try_start_1
    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-static {p1}, Lz2/hz;->Oooooo0(Lz2/hz;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lz2/hz$OooOOO;

    iget-object v1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lz2/hz$OooOOO;-><init>(Lz2/hz;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public OooO0oo(IIIZ)V
    .locals 0

    return-void
.end method

.method public OooOO0(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {p1, p2, p3}, Lz2/hz;->o0ooOOo(ILjava/util/List;)V

    return-void
.end method

.method public OooOO0O(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 3

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    iget-object p2, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object p3, p3, Lz2/hz;->Ooooo00:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    iget-object v0, v0, Lz2/hz;->Ooooo00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lz2/jz;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lz2/jz;

    iget-object v0, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz2/hz;->OooooOo:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lz2/jz;->OooOO0O()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lz2/jz;->OooOOO()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lz2/jz;->OooOo00(Lokhttp3/internal/http2/ErrorCode;)V

    iget-object v2, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v1}, Lz2/jz;->OooOO0O()I

    move-result v1

    invoke-virtual {v2, v1}, Lz2/hz;->o0OO00O(I)Lz2/jz;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooOO0o()V
    .locals 4

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    :try_start_0
    iget-object v1, p0, Lz2/hz$OooOOOO;->OoooOoo:Lz2/iz;

    invoke-virtual {v1, p0}, Lz2/iz;->Oooooo0(Lz2/iz$OooO0O0;)V

    :goto_0
    iget-object v1, p0, Lz2/hz$OooOOOO;->OoooOoo:Lz2/iz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lz2/iz;->OooooOo(ZLz2/iz$OooO0O0;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v2, v1, v0}, Lz2/hz;->Ooooooo(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    :catch_1
    :try_start_3
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v1, v0, v0}, Lz2/hz;->Ooooooo(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    iget-object v0, p0, Lz2/hz$OooOOOO;->OoooOoo:Lz2/iz;

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    :goto_2
    :try_start_5
    iget-object v3, p0, Lz2/hz$OooOOOO;->Ooooo00:Lz2/hz;

    invoke-virtual {v3, v1, v0}, Lz2/hz;->Ooooooo(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget-object v0, p0, Lz2/hz$OooOOOO;->OoooOoo:Lz2/iz;

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    throw v2
.end method
