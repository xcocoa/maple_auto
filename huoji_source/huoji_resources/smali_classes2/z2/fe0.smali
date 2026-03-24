.class public Lz2/fe0;
.super Lz2/ee0$OooO0O0;
.source ""


# instance fields
.field private final OooOOO0:Lz2/he0;


# direct methods
.method public constructor <init>(ZLz2/he0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/ee0$OooO0O0;-><init>()V

    iput-boolean p1, p0, Lz2/ee0$OooO0O0;->OooO00o:Z

    iput-object p2, p0, Lz2/fe0;->OooOOO0:Lz2/he0;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->Ooooooo(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lz2/ee0$OooO0O0;->OooO0O0:I

    const-wide/16 v1, 0x1c

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->o00O0O(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lz2/ee0$OooO0O0;->OooO0OO:J

    const-wide/16 v1, 0x20

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->o00O0O(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lz2/ee0$OooO0O0;->OooO0Oo:J

    const-wide/16 v1, 0x2a

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->Ooooooo(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lz2/ee0$OooO0O0;->OooO0o0:I

    const-wide/16 v1, 0x2c

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->Ooooooo(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lz2/ee0$OooO0O0;->OooO0o:I

    const-wide/16 v1, 0x2e

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->Ooooooo(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lz2/ee0$OooO0O0;->OooO0oO:I

    const-wide/16 v1, 0x30

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->Ooooooo(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lz2/ee0$OooO0O0;->OooO0oo:I

    const-wide/16 v1, 0x32

    invoke-virtual {p2, v0, v1, v2}, Lz2/he0;->Ooooooo(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lz2/ee0$OooO0O0;->OooO:I

    return-void
.end method


# virtual methods
.method public OooO00o(JI)Lz2/ee0$OooO00o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lz2/ce0;

    iget-object v1, p0, Lz2/fe0;->OooOOO0:Lz2/he0;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lz2/ce0;-><init>(Lz2/he0;Lz2/ee0$OooO0O0;JI)V

    return-object v6
.end method

.method public OooO0O0(J)Lz2/ee0$OooO0OO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/ie0;

    iget-object v1, p0, Lz2/fe0;->OooOOO0:Lz2/he0;

    invoke-direct {v0, v1, p0, p1, p2}, Lz2/ie0;-><init>(Lz2/he0;Lz2/ee0$OooO0O0;J)V

    return-object v0
.end method

.method public OooO0OO(I)Lz2/ee0$OooO0o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/ke0;

    iget-object v1, p0, Lz2/fe0;->OooOOO0:Lz2/he0;

    invoke-direct {v0, v1, p0, p1}, Lz2/ke0;-><init>(Lz2/he0;Lz2/ee0$OooO0O0;I)V

    return-object v0
.end method
