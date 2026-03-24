.class public final Lz2/f00;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/f00$OooO00o;
    }
.end annotation


# instance fields
.field private final OooO:[B

.field public final OooO00o:Z

.field public final OooO0O0:Ljava/util/Random;

.field public final OooO0OO:Lz2/k00;

.field public final OooO0Oo:Lz2/j00;

.field public final OooO0o:Lz2/j00;

.field public OooO0o0:Z

.field public final OooO0oO:Lz2/f00$OooO00o;

.field public OooO0oo:Z

.field private final OooOO0:Lz2/j00$OooO0OO;


# direct methods
.method public constructor <init>(ZLz2/k00;Ljava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/f00;->OooO0o:Lz2/j00;

    new-instance v0, Lz2/f00$OooO00o;

    invoke-direct {v0, p0}, Lz2/f00$OooO00o;-><init>(Lz2/f00;)V

    iput-object v0, p0, Lz2/f00;->OooO0oO:Lz2/f00$OooO00o;

    const-string v0, "sink == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "random == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean p1, p0, Lz2/f00;->OooO00o:Z

    iput-object p2, p0, Lz2/f00;->OooO0OO:Lz2/k00;

    invoke-interface {p2}, Lz2/k00;->OooO00o()Lz2/j00;

    move-result-object p2

    iput-object p2, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iput-object p3, p0, Lz2/f00;->OooO0O0:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lz2/f00;->OooO:[B

    if-eqz p1, :cond_1

    new-instance p2, Lz2/j00$OooO0OO;

    invoke-direct {p2}, Lz2/j00$OooO0OO;-><init>()V

    :cond_1
    iput-object p2, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    return-void
.end method

.method private OooO0OO(ILokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/f00;->OooO0o0:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {v1, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-boolean p1, p0, Lz2/f00;->OooO00o:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    iget-object v1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {v1, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-object p1, p0, Lz2/f00;->OooO0O0:Ljava/util/Random;

    iget-object v1, p0, Lz2/f00;->OooO:[B

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iget-object v1, p0, Lz2/f00;->OooO:[B

    invoke-virtual {p1, v1}, Lz2/j00;->o0000Ooo([B)Lz2/j00;

    if-lez v0, :cond_1

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p1, p2}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iget-object p2, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    invoke-virtual {p1, p2}, Lz2/j00;->o0ooOOo(Lz2/j00$OooO0OO;)Lz2/j00$OooO0OO;

    iget-object p1, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    invoke-virtual {p1, v0, v1}, Lz2/j00$OooO0OO;->Oooooo(J)I

    iget-object p1, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    iget-object p2, p0, Lz2/f00;->OooO:[B

    invoke-static {p1, p2}, Lz2/d00;->OooO0OO(Lz2/j00$OooO0OO;[B)V

    iget-object p1, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    invoke-virtual {p1}, Lz2/j00$OooO0OO;->close()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p1, v0}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p1, p2}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    :cond_1
    :goto_0
    iget-object p1, p0, Lz2/f00;->OooO0OO:Lz2/k00;

    invoke-interface {p1}, Lz2/k00;->flush()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO00o(IJ)Lz2/d10;
    .locals 2

    iget-boolean v0, p0, Lz2/f00;->OooO0oo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/f00;->OooO0oo:Z

    iget-object v1, p0, Lz2/f00;->OooO0oO:Lz2/f00$OooO00o;

    iput p1, v1, Lz2/f00$OooO00o;->OoooOoO:I

    iput-wide p2, v1, Lz2/f00$OooO00o;->OoooOoo:J

    iput-boolean v0, v1, Lz2/f00$OooO00o;->Ooooo00:Z

    const/4 p1, 0x0

    iput-boolean p1, v1, Lz2/f00$OooO00o;->Ooooo0o:Z

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0O0(ILokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lz2/d00;->OooO0Oo(I)V

    :cond_1
    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    invoke-virtual {v0, p1}, Lz2/j00;->o000OO(I)Lz2/j00;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lz2/j00;->o00000o0(Lokio/ByteString;)Lz2/j00;

    :cond_2
    invoke-virtual {v0}, Lz2/j00;->Oooo00o()Lokio/ByteString;

    move-result-object v0

    :cond_3
    const/16 p1, 0x8

    const/4 p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lz2/f00;->OooO0OO(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lz2/f00;->OooO0o0:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Lz2/f00;->OooO0o0:Z

    throw p1
.end method

.method public OooO0Oo(IJZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/f00;->OooO0o0:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 p1, p1, 0x80

    :cond_1
    iget-object p4, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p4, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-boolean p1, p0, Lz2/f00;->OooO00o:Z

    if-eqz p1, :cond_2

    const/16 v0, 0x80

    :cond_2
    const-wide/16 p4, 0x7d

    cmp-long p1, p2, p4

    if-gtz p1, :cond_3

    long-to-int p1, p2

    or-int/2addr p1, v0

    iget-object p4, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p4, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    goto :goto_1

    :cond_3
    const-wide/32 p4, 0xffff

    cmp-long p1, p2, p4

    if-gtz p1, :cond_4

    or-int/lit8 p1, v0, 0x7e

    iget-object p4, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p4, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    long-to-int p4, p2

    invoke-virtual {p1, p4}, Lz2/j00;->o000OO(I)Lz2/j00;

    goto :goto_1

    :cond_4
    or-int/lit8 p1, v0, 0x7f

    iget-object p4, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p4, p1}, Lz2/j00;->o00000oo(I)Lz2/j00;

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p1, p2, p3}, Lz2/j00;->o0000O0(J)Lz2/j00;

    :goto_1
    iget-boolean p1, p0, Lz2/f00;->OooO00o:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lz2/f00;->OooO0O0:Ljava/util/Random;

    iget-object p4, p0, Lz2/f00;->OooO:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iget-object p4, p0, Lz2/f00;->OooO:[B

    invoke-virtual {p1, p4}, Lz2/j00;->o0000Ooo([B)Lz2/j00;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_6

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide p4

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iget-object v0, p0, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {p1, v0, p2, p3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iget-object p2, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    invoke-virtual {p1, p2}, Lz2/j00;->o0ooOOo(Lz2/j00$OooO0OO;)Lz2/j00$OooO0OO;

    iget-object p1, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    invoke-virtual {p1, p4, p5}, Lz2/j00$OooO0OO;->Oooooo(J)I

    iget-object p1, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    iget-object p2, p0, Lz2/f00;->OooO:[B

    invoke-static {p1, p2}, Lz2/d00;->OooO0OO(Lz2/j00$OooO0OO;[B)V

    iget-object p1, p0, Lz2/f00;->OooOO0:Lz2/j00$OooO0OO;

    invoke-virtual {p1}, Lz2/j00$OooO0OO;->close()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lz2/f00;->OooO0Oo:Lz2/j00;

    iget-object p4, p0, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {p1, p4, p2, p3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lz2/f00;->OooO0OO:Lz2/k00;

    invoke-interface {p1}, Lz2/k00;->OooO0o0()Lz2/k00;

    return-void

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0o(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lz2/f00;->OooO0OO(ILokio/ByteString;)V

    return-void
.end method

.method public OooO0o0(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lz2/f00;->OooO0OO(ILokio/ByteString;)V

    return-void
.end method
