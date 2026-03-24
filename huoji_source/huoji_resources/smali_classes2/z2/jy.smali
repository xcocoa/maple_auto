.class public final Lz2/jy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/jy$OooO00o;
    }
.end annotation


# static fields
.field private static final OooOO0O:I = 0x1

.field private static final OooOO0o:I = 0x2

.field public static final OooOOO:Lokio/ByteString;

.field public static final OooOOO0:Lokio/ByteString;

.field private static final OooOOOO:J = 0x20L


# instance fields
.field public final OooO:J

.field public OooO00o:Ljava/io/RandomAccessFile;

.field public OooO0O0:Ljava/lang/Thread;

.field public OooO0OO:Lz2/e10;

.field public final OooO0Oo:Lz2/j00;

.field public OooO0o:Z

.field public OooO0o0:J

.field private final OooO0oO:Lokio/ByteString;

.field public final OooO0oo:Lz2/j00;

.field public OooOO0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lz2/jy;->OooOOO0:Lokio/ByteString;

    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lz2/jy;->OooOOO:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lz2/e10;JLokio/ByteString;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/jy;->OooO0Oo:Lz2/j00;

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/jy;->OooO0oo:Lz2/j00;

    iput-object p1, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lz2/jy;->OooO0OO:Lz2/e10;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lz2/jy;->OooO0o:Z

    iput-wide p3, p0, Lz2/jy;->OooO0o0:J

    iput-object p5, p0, Lz2/jy;->OooO0oO:Lokio/ByteString;

    iput-wide p6, p0, Lz2/jy;->OooO:J

    return-void
.end method

.method public static OooO0O0(Ljava/io/File;Lz2/e10;Lokio/ByteString;J)Lz2/jy;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lz2/jy;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lz2/jy;-><init>(Ljava/io/RandomAccessFile;Lz2/e10;JLokio/ByteString;J)V

    const-wide/16 p1, 0x0

    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    sget-object v2, Lz2/jy;->OooOOO:Lokio/ByteString;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lz2/jy;->OooO0oO(Lokio/ByteString;JJ)V

    return-object p0
.end method

.method public static OooO0o(Ljava/io/File;)Lz2/jy;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lz2/iy;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/iy;-><init>(Ljava/nio/channels/FileChannel;)V

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lz2/iy;->OooO00o(JLz2/j00;J)V

    sget-object v2, Lz2/jy;->OooOOO0:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lz2/j00;->OooO0Oo(J)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lz2/j00;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Lz2/j00;->readLong()J

    move-result-wide v6

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    const-wide/16 v2, 0x20

    add-long v3, v8, v2

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lz2/iy;->OooO00o(JLz2/j00;J)V

    invoke-virtual {v0}, Lz2/j00;->Oooo00o()Lokio/ByteString;

    move-result-object v5

    new-instance p0, Lz2/jy;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lz2/jy;-><init>(Ljava/io/RandomAccessFile;Lz2/e10;JLokio/ByteString;J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private OooO0oO(Lokio/ByteString;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lz2/j00;

    invoke-direct {v3}, Lz2/j00;-><init>()V

    invoke-virtual {v3, p1}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    invoke-virtual {v3, p2, p3}, Lz2/j00;->o0000O0(J)Lz2/j00;

    invoke-virtual {v3, p4, p5}, Lz2/j00;->o0000O0(J)Lz2/j00;

    invoke-virtual {v3}, Lz2/j00;->o00000O0()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    new-instance v0, Lz2/iy;

    iget-object p1, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/iy;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, Lz2/iy;->OooO0O0(JLz2/j00;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private OooO0oo(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lz2/j00;

    invoke-direct {v3}, Lz2/j00;-><init>()V

    iget-object v0, p0, Lz2/jy;->OooO0oO:Lokio/ByteString;

    invoke-virtual {v3, v0}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    new-instance v0, Lz2/iy;

    iget-object v1, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/iy;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    iget-object p1, p0, Lz2/jy;->OooO0oO:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lz2/iy;->OooO0O0(JLz2/j00;J)V

    return-void
.end method


# virtual methods
.method public OooO00o(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2/jy;->OooO0oo(J)V

    iget-object v0, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, Lz2/jy;->OooOOO0:Lokio/ByteString;

    iget-object v0, p0, Lz2/jy;->OooO0oO:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lz2/jy;->OooO0oO(Lokio/ByteString;JJ)V

    iget-object p1, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lz2/jy;->OooO0o:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lz2/jy;->OooO0OO:Lz2/e10;

    invoke-static {p1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/jy;->OooO0OO:Lz2/e10;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooO0OO()Z
    .locals 1

    iget-object v0, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0Oo()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lz2/jy;->OooO0oO:Lokio/ByteString;

    return-object v0
.end method

.method public OooO0o0()Lz2/e10;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jy;->OooO00o:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    iget v0, p0, Lz2/jy;->OooOO0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/jy;->OooOO0:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lz2/jy$OooO00o;

    invoke-direct {v0, p0}, Lz2/jy$OooO00o;-><init>(Lz2/jy;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
