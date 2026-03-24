.class public final Lz2/jz$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/jz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0O0"
.end annotation


# static fields
.field public static final synthetic OooooOo:Z


# instance fields
.field private final OoooOoO:Lz2/j00;

.field private final OoooOoo:Lz2/j00;

.field private final Ooooo00:J

.field public Ooooo0o:Z

.field public OooooO0:Z

.field public final synthetic OooooOO:Lz2/jz;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lz2/jz;J)V
    .locals 0

    iput-object p1, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lz2/j00;

    invoke-direct {p1}, Lz2/j00;-><init>()V

    iput-object p1, p0, Lz2/jz$OooO0O0;->OoooOoO:Lz2/j00;

    new-instance p1, Lz2/j00;

    invoke-direct {p1}, Lz2/j00;-><init>()V

    iput-object p1, p0, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    iput-wide p2, p0, Lz2/jz$OooO0O0;->Ooooo00:J

    return-void
.end method

.method private OooooOo(J)V
    .locals 1

    iget-object v0, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    invoke-virtual {v0, p1, p2}, Lz2/hz;->o000000O(J)V

    return-void
.end method


# virtual methods
.method public OooOO0(Lz2/l00;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    iget-object v2, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lz2/jz$OooO0O0;->OooooO0:Z

    iget-object v4, p0, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    invoke-virtual {v4}, Lz2/j00;->o00000O0()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lz2/jz$OooO0O0;->Ooooo00:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    invoke-interface {p1, p2, p3}, Lz2/l00;->skip(J)V

    iget-object p1, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lz2/jz;->OooO0oo(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {p1, p2, p3}, Lz2/l00;->skip(J)V

    return-void

    :cond_2
    iget-object v2, p0, Lz2/jz$OooO0O0;->OoooOoO:Lz2/j00;

    invoke-interface {p1, v2, p2, p3}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    sub-long/2addr p2, v2

    iget-object v2, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    invoke-virtual {v3}, Lz2/j00;->o00000O0()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    iget-object v1, p0, Lz2/jz$OooO0O0;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, v1}, Lz2/j00;->Oooo000(Lz2/e10;)J

    if-eqz v8, :cond_4

    iget-object v0, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lz2/jz$OooO0O0;->Ooooo0o:Z

    iget-object v1, p0, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    iget-object v3, p0, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    invoke-virtual {v3}, Lz2/j00;->OooooOo()V

    iget-object v3, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v3}, Lz2/jz;->OooO00o(Lz2/jz;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v3}, Lz2/jz;->OooO0O0(Lz2/jz;)Lz2/dz$OooO00o;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v3}, Lz2/jz;->OooO00o(Lz2/jz;)Ljava/util/Deque;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v3}, Lz2/jz;->OooO00o(Lz2/jz;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    iget-object v3, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v3}, Lz2/jz;->OooO0O0(Lz2/jz;)Lz2/dz$OooO00o;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    invoke-direct {p0, v1, v2}, Lz2/jz$OooO0O0;->OooooOo(J)V

    :cond_1
    iget-object v0, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-virtual {v0}, Lz2/jz;->OooO0Oo()V

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/jx;

    invoke-interface {v4, v1}, Lz2/dz$OooO00o;->OooO00o(Lz2/jx;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read(Lz2/j00;J)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    :goto_0
    iget-object v6, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/h00;->OooOOO0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v7, v0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-boolean v9, v1, Lz2/jz$OooO0O0;->Ooooo0o:Z

    if-nez v9, :cond_8

    invoke-static {v0}, Lz2/jz;->OooO00o(Lz2/jz;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v0}, Lz2/jz;->OooO0O0(Lz2/jz;)Lz2/dz$OooO00o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v0}, Lz2/jz;->OooO00o(Lz2/jz;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lz2/jx;

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-static {v0}, Lz2/jz;->OooO0O0(Lz2/jz;)Lz2/dz$OooO00o;

    move-result-object v0

    move-object/from16 v13, p1

    move-object v10, v0

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-lez v0, :cond_3

    iget-object v0, v1, Lz2/jz$OooO0O0;->OoooOoo:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v11, v12}, Lz2/j00;->read(Lz2/j00;J)J

    move-result-wide v11

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-wide v14, v0, Lz2/jz;->OooO00o:J

    add-long/2addr v14, v11

    iput-wide v14, v0, Lz2/jz;->OooO00o:J

    if-nez v7, :cond_2

    iget-object v0, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget-object v0, v0, Lz2/hz;->o00O0O:Lz2/nz;

    invoke-virtual {v0}, Lz2/nz;->OooO0o0()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    cmp-long v0, v14, v8

    if-ltz v0, :cond_2

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v8, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v9, v0, Lz2/jz;->OooO0OO:I

    iget-wide v14, v0, Lz2/jz;->OooO00o:J

    invoke-virtual {v8, v9, v14, v15}, Lz2/hz;->o00000o0(IJ)V

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iput-wide v4, v0, Lz2/jz;->OooO00o:J

    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v13, p1

    iget-boolean v0, v1, Lz2/jz$OooO0O0;->OooooO0:Z

    if-nez v0, :cond_4

    if-nez v7, :cond_4

    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    invoke-virtual {v0}, Lz2/jz;->OooOo0o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/jz$OooO0OO;->OooOo0o()V

    monitor-exit v6

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    const-wide/16 v11, -0x1

    :goto_3
    iget-object v0, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/jz$OooO0OO;->OooOo0o()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    invoke-interface {v10, v8}, Lz2/dz$OooO00o;->OooO00o(Lz2/jx;)V

    goto/16 :goto_0

    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v0, v11, v2

    if-eqz v0, :cond_6

    invoke-direct {v1, v11, v12}, Lz2/jz$OooO0O0;->OooooOo(J)V

    return-wide v11

    :cond_6
    if-nez v7, :cond_7

    return-wide v2

    :cond_7
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v0, v7}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    :cond_8
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v2, v1, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v2, v2, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v2}, Lz2/jz$OooO0OO;->OooOo0o()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/jz$OooO0O0;->OooooOO:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    return-object v0
.end method
