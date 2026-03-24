.class public final Lz2/r00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# instance fields
.field private final OoooOoO:Lz2/k00;

.field private final OoooOoo:Ljava/util/zip/Deflater;

.field private final Ooooo00:Lz2/m00;

.field private Ooooo0o:Z

.field private final OooooO0:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lz2/d10;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lz2/r00;->OooooO0:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lz2/r00;->OoooOoo:Ljava/util/zip/Deflater;

    invoke-static {p1}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object p1

    iput-object p1, p0, Lz2/r00;->OoooOoO:Lz2/k00;

    new-instance v1, Lz2/m00;

    invoke-direct {v1, p1, v0}, Lz2/m00;-><init>(Lz2/k00;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lz2/r00;->Ooooo00:Lz2/m00;

    invoke-direct {p0}, Lz2/r00;->Oooooo()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OooooOo(Lz2/j00;J)V
    .locals 4

    iget-object p1, p1, Lz2/j00;->OoooOoO:Lz2/b10;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    iget v0, p1, Lz2/b10;->OooO0OO:I

    iget v1, p1, Lz2/b10;->OooO0O0:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lz2/r00;->OooooO0:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lz2/b10;->OooO00o:[B

    iget v3, p1, Lz2/b10;->OooO0O0:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p2, v0

    iget-object p1, p1, Lz2/b10;->OooO0o:Lz2/b10;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Oooooo()V
    .locals 2

    iget-object v0, p0, Lz2/r00;->OoooOoO:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->OooO00o()Lz2/j00;

    move-result-object v0

    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lz2/j00;->o000OO(I)Lz2/j00;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    invoke-virtual {v0, v1}, Lz2/j00;->o0000oo(I)Lz2/j00;

    invoke-virtual {v0, v1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    invoke-virtual {v0, v1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    return-void
.end method

.method private Oooooo0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/r00;->OoooOoO:Lz2/k00;

    iget-object v1, p0, Lz2/r00;->OooooO0:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lz2/k00;->OooOOO0(I)Lz2/k00;

    iget-object v0, p0, Lz2/r00;->OoooOoO:Lz2/k00;

    iget-object v1, p0, Lz2/r00;->OoooOoo:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lz2/k00;->OooOOO0(I)Lz2/k00;

    return-void
.end method


# virtual methods
.method public final OooOO0()Ljava/util/zip/Deflater;
    .locals 1

    iget-object v0, p0, Lz2/r00;->OoooOoo:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public OooOooO(Lz2/j00;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lz2/r00;->OooooOo(Lz2/j00;J)V

    iget-object v0, p0, Lz2/r00;->Ooooo00:Lz2/m00;

    invoke-virtual {v0, p1, p2, p3}, Lz2/m00;->OooOooO(Lz2/j00;J)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/r00;->Ooooo0o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/r00;->Ooooo00:Lz2/m00;

    invoke-virtual {v1}, Lz2/m00;->OooooOo()V

    invoke-direct {p0}, Lz2/r00;->Oooooo0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lz2/r00;->OoooOoo:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lz2/r00;->OoooOoO:Lz2/k00;

    invoke-interface {v1}, Lz2/d10;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/r00;->Ooooo0o:Z

    if-eqz v0, :cond_3

    invoke-static {v0}, Lz2/h10;->OooO0o(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/r00;->Ooooo00:Lz2/m00;

    invoke-virtual {v0}, Lz2/m00;->flush()V

    return-void
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/r00;->OoooOoO:Lz2/k00;

    invoke-interface {v0}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object v0

    return-object v0
.end method
