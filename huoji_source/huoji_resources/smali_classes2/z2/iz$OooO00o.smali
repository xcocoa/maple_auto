.class public final Lz2/iz$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OoooOoO:Lz2/l00;

.field public OoooOoo:I

.field public Ooooo00:B

.field public Ooooo0o:I

.field public OooooO0:I

.field public OooooOO:S


# direct methods
.method public constructor <init>(Lz2/l00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    return-void
.end method

.method private OooOO0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/iz$OooO00o;->Ooooo0o:I

    iget-object v1, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    invoke-static {v1}, Lz2/iz;->ooOO(Lz2/l00;)I

    move-result v1

    iput v1, p0, Lz2/iz$OooO00o;->OooooO0:I

    iput v1, p0, Lz2/iz$OooO00o;->OoooOoo:I

    iget-object v1, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    invoke-interface {v1}, Lz2/l00;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    invoke-interface {v2}, Lz2/l00;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lz2/iz$OooO00o;->Ooooo00:B

    sget-object v2, Lz2/iz;->OooooO0:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p0, Lz2/iz$OooO00o;->Ooooo0o:I

    iget v5, p0, Lz2/iz$OooO00o;->OoooOoo:I

    iget-byte v6, p0, Lz2/iz$OooO00o;->Ooooo00:B

    invoke-static {v4, v3, v5, v1, v6}, Lz2/fz;->OooO0O0(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    invoke-interface {v2}, Lz2/l00;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lz2/iz$OooO00o;->Ooooo0o:I

    const/16 v3, 0x9

    const/4 v5, 0x0

    if-ne v1, v3, :cond_2

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, Lz2/fz;->OooO0Oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Lz2/fz;->OooO0Oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Lz2/j00;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lz2/iz$OooO00o;->OooooO0:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    iget-short v3, p0, Lz2/iz$OooO00o;->OooooOO:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lz2/l00;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lz2/iz$OooO00o;->OooooOO:S

    iget-byte v0, p0, Lz2/iz$OooO00o;->Ooooo00:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lz2/iz$OooO00o;->OooOO0()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    :cond_2
    iget p3, p0, Lz2/iz$OooO00o;->OooooO0:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lz2/iz$OooO00o;->OooooO0:I

    return-wide p1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/iz$OooO00o;->OoooOoO:Lz2/l00;

    invoke-interface {v0}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v0

    return-object v0
.end method
