.class public final Lz2/e00;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/e00$OooO00o;
    }
.end annotation


# instance fields
.field private final OooO:Lz2/j00;

.field public final OooO00o:Z

.field public final OooO0O0:Lz2/l00;

.field public final OooO0OO:Lz2/e00$OooO00o;

.field public OooO0Oo:Z

.field public OooO0o:J

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Z

.field private final OooOO0:Lz2/j00;

.field private final OooOO0O:[B

.field private final OooOO0o:Lz2/j00$OooO0OO;


# direct methods
.method public constructor <init>(ZLz2/l00;Lz2/e00$OooO00o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/e00;->OooO:Lz2/j00;

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    iput-object v0, p0, Lz2/e00;->OooOO0:Lz2/j00;

    const-string v0, "source == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "frameCallback == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean p1, p0, Lz2/e00;->OooO00o:Z

    iput-object p2, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    iput-object p3, p0, Lz2/e00;->OooO0OO:Lz2/e00$OooO00o;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    new-array p3, p3, [B

    :goto_0
    iput-object p3, p0, Lz2/e00;->OooOO0O:[B

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lz2/j00$OooO0OO;

    invoke-direct {p2}, Lz2/j00$OooO0OO;-><init>()V

    :goto_1
    iput-object p2, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    return-void
.end method

.method private OooO0O0()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lz2/e00;->OooO0o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    iget-object v5, p0, Lz2/e00;->OooO:Lz2/j00;

    invoke-interface {v4, v5, v0, v1}, Lz2/l00;->OooOOo0(Lz2/j00;J)V

    iget-boolean v0, p0, Lz2/e00;->OooO00o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/e00;->OooO:Lz2/j00;

    iget-object v1, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    invoke-virtual {v0, v1}, Lz2/j00;->o0ooOOo(Lz2/j00$OooO0OO;)Lz2/j00$OooO0OO;

    iget-object v0, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    invoke-virtual {v0, v2, v3}, Lz2/j00$OooO0OO;->Oooooo(J)I

    iget-object v0, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    iget-object v1, p0, Lz2/e00;->OooOO0O:[B

    invoke-static {v0, v1}, Lz2/d00;->OooO0OO(Lz2/j00$OooO0OO;[B)V

    iget-object v0, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    invoke-virtual {v0}, Lz2/j00$OooO0OO;->close()V

    :cond_0
    iget v0, p0, Lz2/e00;->OooO0o0:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/e00;->OooO0o0:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lz2/e00;->OooO0OO:Lz2/e00$OooO00o;

    iget-object v1, p0, Lz2/e00;->OooO:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->Oooo00o()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/e00$OooO00o;->OooO0oo(Lokio/ByteString;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lz2/e00;->OooO0OO:Lz2/e00$OooO00o;

    iget-object v1, p0, Lz2/e00;->OooO:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->Oooo00o()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/e00$OooO00o;->OooO0o0(Lokio/ByteString;)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x3ed

    iget-object v1, p0, Lz2/e00;->OooO:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->o00000O0()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lz2/e00;->OooO:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->readShort()S

    move-result v0

    iget-object v1, p0, Lz2/e00;->OooO:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->Oooo0oo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lz2/d00;->OooO0O0(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lz2/e00;->OooO0OO:Lz2/e00$OooO00o;

    invoke-interface {v2, v0, v1}, Lz2/e00$OooO00o;->OooO(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/e00;->OooO0Oo:Z

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private OooO0OO()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/e00;->OooO0Oo:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v0

    invoke-virtual {v0}, Lz2/f10;->OooO()J

    move-result-wide v0

    iget-object v2, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v2}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v2

    invoke-virtual {v2}, Lz2/f10;->OooO0O0()Lz2/f10;

    :try_start_0
    iget-object v2, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v2}, Lz2/l00;->readByte()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v3}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    and-int/lit8 v0, v2, 0xf

    iput v0, p0, Lz2/e00;->OooO0o0:I

    and-int/lit16 v0, v2, 0x80

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lz2/e00;->OooO0oO:Z

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lz2/e00;->OooO0oo:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-nez v0, :cond_10

    if-nez v4, :cond_10

    if-nez v2, :cond_10

    iget-object v0, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    iget-boolean v2, p0, Lz2/e00;->OooO00o:Z

    if-ne v1, v2, :cond_9

    new-instance v0, Ljava/net/ProtocolException;

    iget-boolean v1, p0, Lz2/e00;->OooO00o:Z

    if-eqz v1, :cond_8

    const-string v1, "Server-sent frames must not be masked."

    goto :goto_7

    :cond_8
    const-string v1, "Client-sent frames must be masked."

    :goto_7
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    and-int/lit8 v0, v0, 0x7f

    int-to-long v2, v0

    iput-wide v2, p0, Lz2/e00;->OooO0o:J

    const-wide/16 v4, 0x7e

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    iget-object v0, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->readShort()S

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lz2/e00;->OooO0o:J

    goto :goto_8

    :cond_a
    const-wide/16 v4, 0x7f

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    iget-object v0, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lz2/e00;->OooO0o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lz2/e00;->OooO0o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    iget-boolean v0, p0, Lz2/e00;->OooO0oo:Z

    if-eqz v0, :cond_e

    iget-wide v2, p0, Lz2/e00;->OooO0o:J

    const-wide/16 v4, 0x7d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    iget-object v0, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    iget-object v1, p0, Lz2/e00;->OooOO0O:[B

    invoke-interface {v0, v1}, Lz2/l00;->readFully([B)V

    :cond_f
    return-void

    :cond_10
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    invoke-interface {v3}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    throw v2

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooO0Oo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lz2/e00;->OooO0Oo:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lz2/e00;->OooO0o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lz2/e00;->OooO0O0:Lz2/l00;

    iget-object v3, p0, Lz2/e00;->OooOO0:Lz2/j00;

    invoke-interface {v2, v3, v0, v1}, Lz2/l00;->OooOOo0(Lz2/j00;J)V

    iget-boolean v0, p0, Lz2/e00;->OooO00o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/e00;->OooOO0:Lz2/j00;

    iget-object v1, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    invoke-virtual {v0, v1}, Lz2/j00;->o0ooOOo(Lz2/j00$OooO0OO;)Lz2/j00$OooO0OO;

    iget-object v0, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    iget-object v1, p0, Lz2/e00;->OooOO0:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    iget-wide v3, p0, Lz2/e00;->OooO0o:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lz2/j00$OooO0OO;->Oooooo(J)I

    iget-object v0, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    iget-object v1, p0, Lz2/e00;->OooOO0O:[B

    invoke-static {v0, v1}, Lz2/d00;->OooO0OO(Lz2/j00$OooO0OO;[B)V

    iget-object v0, p0, Lz2/e00;->OooOO0o:Lz2/j00$OooO0OO;

    invoke-virtual {v0}, Lz2/j00$OooO0OO;->close()V

    :cond_0
    iget-boolean v0, p0, Lz2/e00;->OooO0oO:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lz2/e00;->OooO0o()V

    iget v0, p0, Lz2/e00;->OooO0o0:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/e00;->OooO0o0:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooO0o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lz2/e00;->OooO0Oo:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lz2/e00;->OooO0OO()V

    iget-boolean v0, p0, Lz2/e00;->OooO0oo:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lz2/e00;->OooO0O0()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private OooO0o0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/e00;->OooO0o0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lz2/e00;->OooO0Oo()V

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lz2/e00;->OooO0OO:Lz2/e00$OooO00o;

    iget-object v1, p0, Lz2/e00;->OooOO0:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->Oooo0oo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/e00$OooO00o;->OooO0Oo(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz2/e00;->OooO0OO:Lz2/e00$OooO00o;

    iget-object v1, p0, Lz2/e00;->OooOO0:Lz2/j00;

    invoke-virtual {v1}, Lz2/j00;->Oooo00o()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/e00$OooO00o;->OooO0OO(Lokio/ByteString;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/e00;->OooO0OO()V

    iget-boolean v0, p0, Lz2/e00;->OooO0oo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/e00;->OooO0O0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/e00;->OooO0o0()V

    :goto_0
    return-void
.end method
