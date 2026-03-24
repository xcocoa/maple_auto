.class public Lz2/jy$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/jy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field private final OoooOoO:Lz2/f10;

.field private OoooOoo:Lz2/iy;

.field private Ooooo00:J

.field public final synthetic Ooooo0o:Lz2/jy;


# direct methods
.method public constructor <init>(Lz2/jy;)V
    .locals 1

    iput-object p1, p0, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/f10;

    invoke-direct {v0}, Lz2/f10;-><init>()V

    iput-object v0, p0, Lz2/jy$OooO00o;->OoooOoO:Lz2/f10;

    new-instance v0, Lz2/iy;

    iget-object p1, p1, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/iy;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lz2/jy$OooO00o;->OoooOoo:Lz2/iy;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jy$OooO00o;->OoooOoo:Lz2/iy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/jy$OooO00o;->OoooOoo:Lz2/iy;

    iget-object v1, p0, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget v3, v2, Lz2/jy;->OooOO0:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lz2/jy;->OooOO0:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    iput-object v0, v2, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    move-object v0, v3

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lz2/j00;J)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lz2/jy$OooO00o;->OoooOoo:Lz2/iy;

    if-eqz v0, :cond_7

    iget-object v4, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    monitor-enter v4

    :goto_0
    :try_start_0
    iget-wide v5, v1, Lz2/jy$OooO00o;->Ooooo00:J

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-wide v7, v0, Lz2/jy;->OooO0o0:J

    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    cmp-long v12, v5, v7

    if-nez v12, :cond_2

    iget-boolean v5, v0, Lz2/jy;->OooO0o:Z

    if-eqz v5, :cond_0

    monitor-exit v4

    return-wide v10

    :cond_0
    iget-object v5, v0, Lz2/jy;->OooO0O0:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lz2/jy$OooO00o;->OoooOoO:Lz2/f10;

    invoke-virtual {v5, v0}, Lz2/f10;->OooOO0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Lz2/jy;->OooO0O0:Ljava/lang/Thread;

    const/4 v0, 0x1

    monitor-exit v4

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lz2/jy;->OooO0oo:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v5

    sub-long v5, v7, v5

    iget-wide v12, v1, Lz2/jy$OooO00o;->Ooooo00:J

    cmp-long v0, v12, v5

    if-gez v0, :cond_6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v0, 0x2

    :goto_1
    const-wide/16 v4, 0x20

    if-ne v0, v9, :cond_3

    iget-wide v9, v1, Lz2/jy$OooO00o;->Ooooo00:J

    sub-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v9, v1, Lz2/jy$OooO00o;->OoooOoo:Lz2/iy;

    iget-wide v6, v1, Lz2/jy$OooO00o;->Ooooo00:J

    add-long v10, v6, v4

    move-object/from16 v12, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Lz2/iy;->OooO00o(JLz2/j00;J)V

    iget-wide v4, v1, Lz2/jy$OooO00o;->Ooooo00:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lz2/jy$OooO00o;->Ooooo00:J

    return-wide v2

    :cond_3
    const/4 v6, 0x0

    :try_start_1
    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-object v9, v0, Lz2/jy;->OooO0OO:Lz2/e10;

    iget-object v12, v0, Lz2/jy;->OooO0Oo:Lz2/j00;

    iget-wide v13, v0, Lz2/jy;->OooO:J

    invoke-interface {v9, v12, v13, v14}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_4

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    invoke-virtual {v0, v7, v8}, Lz2/jy;->OooO00o(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v2, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iput-object v6, v0, Lz2/jy;->OooO0O0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-wide v10

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-object v14, v0, Lz2/jy;->OooO0Oo:Lz2/j00;

    const-wide/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lz2/j00;->o0OoOo0(Lz2/j00;JJ)Lz2/j00;

    iget-wide v9, v1, Lz2/jy$OooO00o;->Ooooo00:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lz2/jy$OooO00o;->Ooooo00:J

    iget-object v15, v1, Lz2/jy$OooO00o;->OoooOoo:Lz2/iy;

    add-long v16, v7, v4

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-object v0, v0, Lz2/jy;->OooO0Oo:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->Oooooo0()Lz2/j00;

    move-result-object v18

    move-wide/from16 v19, v12

    invoke-virtual/range {v15 .. v20}, Lz2/iy;->OooO0O0(JLz2/j00;J)V

    iget-object v4, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-object v5, v0, Lz2/jy;->OooO0oo:Lz2/j00;

    iget-object v0, v0, Lz2/jy;->OooO0Oo:Lz2/j00;

    invoke-virtual {v5, v0, v12, v13}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-object v0, v0, Lz2/jy;->OooO0oo:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v7

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-wide v9, v0, Lz2/jy;->OooO:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_5

    iget-object v0, v0, Lz2/jy;->OooO0oo:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v7

    iget-object v5, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-wide v9, v5, Lz2/jy;->OooO:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lz2/j00;->skip(J)V

    :cond_5
    iget-object v5, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-wide v7, v5, Lz2/jy;->OooO0o0:J

    add-long/2addr v7, v12

    iput-wide v7, v5, Lz2/jy;->OooO0o0:J

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-enter v5

    :try_start_5
    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iput-object v6, v0, Lz2/jy;->OooO0O0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    return-wide v2

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    monitor-enter v2

    :try_start_8
    iget-object v3, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iput-object v6, v3, Lz2/jy;->OooO0O0:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_6
    sub-long/2addr v7, v12

    :try_start_a
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lz2/jy$OooO00o;->Ooooo0o:Lz2/jy;

    iget-object v9, v0, Lz2/jy;->OooO0oo:Lz2/j00;

    iget-wide v7, v1, Lz2/jy$OooO00o;->Ooooo00:J

    sub-long v11, v7, v5

    move-object/from16 v10, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Lz2/j00;->o0OoOo0(Lz2/j00;JJ)Lz2/j00;

    iget-wide v5, v1, Lz2/jy$OooO00o;->Ooooo00:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lz2/jy$OooO00o;->Ooooo00:J

    monitor-exit v4

    return-wide v2

    :catchall_5
    move-exception v0

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/jy$OooO00o;->OoooOoO:Lz2/f10;

    return-object v0
.end method
