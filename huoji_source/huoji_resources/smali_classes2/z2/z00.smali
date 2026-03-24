.class public final Lz2/z00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/k00;


# instance fields
.field public final OoooOoO:Lz2/j00;

.field public final OoooOoo:Lz2/d10;

.field public Ooooo00:Z


# direct methods
.method public constructor <init>(Lz2/d10;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    const-string v0, "sink == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    return-void
.end method


# virtual methods
.method public OooO(J)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2}, Lz2/j00;->o0000O0O(J)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO00o()Lz2/j00;
    .locals 1

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    return-object v0
.end method

.method public OooO0o(I)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o000OO(I)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0o0()Lz2/k00;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    iget-object v3, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-interface {v2, v3, v0, v1}, Lz2/d10;->OooOooO(Lz2/j00;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0oO(I)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o0000OoO(I)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0oo(I)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o0000oo(I)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOO0(I)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o0000oO(I)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOOO(I)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOo(I)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o0000O(I)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOo0()Lz2/k00;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->Oooooo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    iget-object v3, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-interface {v2, v3, v0, v1}, Lz2/d10;->OooOooO(Lz2/j00;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOoO0(Ljava/lang/String;)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o0000Oo0(Ljava/lang/String;)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOoo0([BII)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2, p3}, Lz2/j00;->o00000oO([BII)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOooO(Lz2/j00;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2, p3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOooo(Ljava/lang/String;II)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2, p3}, Lz2/j00;->o0000Oo(Ljava/lang/String;II)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Oooo([B)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o0000Ooo([B)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Oooo0(Ljava/lang/String;Ljava/nio/charset/Charset;)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2}, Lz2/j00;->o0000OO(Ljava/lang/String;Ljava/nio/charset/Charset;)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Oooo000(Lz2/e10;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Oooo00O(J)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2}, Lz2/j00;->o0000O00(J)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Oooo0O0(Lz2/e10;J)Lz2/k00;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-interface {p1, v0, p2, p3}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p2, v0

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public OoooO0(Lokio/ByteString;)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OoooOOo(J)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2}, Lz2/j00;->o0000O0(J)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OoooOoO(J)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2}, Lz2/j00;->o0000(J)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OoooOoo()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lz2/z00$OooO00o;

    invoke-direct {v0, p0}, Lz2/z00$OooO00o;-><init>(Lz2/z00;)V

    return-object v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    iget-wide v2, v1, Lz2/j00;->OoooOoo:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v4, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    invoke-interface {v4, v1, v2, v3}, Lz2/d10;->OooOooO(Lz2/j00;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    invoke-interface {v1}, Lz2/d10;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/z00;->Ooooo00:Z

    if-eqz v0, :cond_3

    invoke-static {v0}, Lz2/h10;->OooO0o(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    iget-wide v1, v0, Lz2/j00;->OoooOoo:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    invoke-interface {v3, v0, v1, v2}, Lz2/d10;->OooOooO(Lz2/j00;J)V

    :cond_0
    iget-object v0, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    invoke-interface {v0}, Lz2/d10;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o000oOoO(Ljava/lang/String;IILjava/nio/charset/Charset;)Lz2/k00;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2, p3, p4}, Lz2/j00;->o0000OO0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lz2/j00;

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    invoke-interface {v0}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/z00;->OoooOoo:Lz2/d10;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/z00;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z00;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1}, Lz2/j00;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lz2/z00;->OooOo0()Lz2/k00;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
