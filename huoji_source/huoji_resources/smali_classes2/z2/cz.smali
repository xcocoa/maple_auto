.class public final Lz2/cz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/sy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/cz$OooOO0O;,
        Lz2/cz$OooO0o;,
        Lz2/cz$OooOO0;,
        Lz2/cz$OooO0O0;,
        Lz2/cz$OooO0OO;,
        Lz2/cz$OooO;
    }
.end annotation


# static fields
.field private static final OooO:I = 0x1

.field private static final OooO0oo:I = 0x0

.field private static final OooOO0:I = 0x2

.field private static final OooOO0O:I = 0x3

.field private static final OooOO0o:I = 0x4

.field private static final OooOOO:I = 0x6

.field private static final OooOOO0:I = 0x5

.field private static final OooOOOO:I = 0x40000


# instance fields
.field public final OooO0O0:Lz2/ox;

.field public final OooO0OO:Lz2/py;

.field public final OooO0Oo:Lz2/l00;

.field public OooO0o:I

.field public final OooO0o0:Lz2/k00;

.field private OooO0oO:J


# direct methods
.method public constructor <init>(Lz2/ox;Lz2/py;Lz2/l00;Lz2/k00;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/cz;->OooO0o:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lz2/cz;->OooO0oO:J

    iput-object p1, p0, Lz2/cz;->OooO0O0:Lz2/ox;

    iput-object p2, p0, Lz2/cz;->OooO0OO:Lz2/py;

    iput-object p3, p0, Lz2/cz;->OooO0Oo:Lz2/l00;

    iput-object p4, p0, Lz2/cz;->OooO0o0:Lz2/k00;

    return-void
.end method

.method private OooOOO()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cz;->OooO0Oo:Lz2/l00;

    iget-wide v1, p0, Lz2/cz;->OooO0oO:J

    invoke-interface {v0, v1, v2}, Lz2/l00;->OooOo0o(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lz2/cz;->OooO0oO:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lz2/cz;->OooO0oO:J

    return-object v0
.end method


# virtual methods
.method public OooO()Lz2/d10;
    .locals 3

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lz2/cz;->OooO0o:I

    new-instance v0, Lz2/cz$OooO0OO;

    invoke-direct {v0, p0}, Lz2/cz$OooO0OO;-><init>(Lz2/cz;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->flush()V

    return-void
.end method

.method public OooO0O0(Lz2/qx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cz;->OooO0OO:Lz2/py;

    invoke-virtual {v0}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v0

    invoke-virtual {v0}, Lz2/my;->OooO0O0()Lz2/ux;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ux;->OooO0O0()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/yy;->OooO00o(Lz2/qx;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lz2/cz;->OooOOOo(Lz2/jx;Ljava/lang/String;)V

    return-void
.end method

.method public OooO0OO(Lz2/sx;)Lz2/tx;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cz;->OooO0OO:Lz2/py;

    iget-object v1, v0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v0, v0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v1, v0}, Lz2/gx;->OooOOo0(Lz2/tw;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lz2/uy;->OooO0OO(Lz2/sx;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lz2/cz;->OooOO0o(J)Lz2/e10;

    move-result-object p1

    new-instance v3, Lz2/xy;

    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/cz;->OooOO0(Lz2/kx;)Lz2/e10;

    move-result-object p1

    new-instance v1, Lz2/xy;

    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lz2/uy;->OooO0O0(Lz2/sx;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v5}, Lz2/cz;->OooOO0o(J)Lz2/e10;

    move-result-object p1

    new-instance v1, Lz2/xy;

    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    return-object v1

    :cond_2
    new-instance p1, Lz2/xy;

    invoke-virtual {p0}, Lz2/cz;->OooOOO0()Lz2/e10;

    move-result-object v1

    invoke-static {v1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    return-object p1
.end method

.method public OooO0Oo(Z)Lz2/sx$OooO00o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lz2/cz;->OooOOO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/az;->OooO0O0(Ljava/lang/String;)Lz2/az;

    move-result-object v0

    new-instance v2, Lz2/sx$OooO00o;

    invoke-direct {v2}, Lz2/sx$OooO00o;-><init>()V

    iget-object v3, v0, Lz2/az;->OooO00o:Lokhttp3/Protocol;

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOOO(Lokhttp3/Protocol;)Lz2/sx$OooO00o;

    move-result-object v2

    iget v3, v0, Lz2/az;->OooO0O0:I

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooO0oO(I)Lz2/sx$OooO00o;

    move-result-object v2

    iget-object v3, v0, Lz2/az;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOO0O(Ljava/lang/String;)Lz2/sx$OooO00o;

    move-result-object v2

    invoke-virtual {p0}, Lz2/cz;->OooOOOO()Lz2/jx;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOO0(Lz2/jx;)Lz2/sx$OooO00o;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Lz2/az;->OooO0O0:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget p1, v0, Lz2/az;->OooO0O0:I

    if-ne p1, v3, :cond_3

    iput v1, p0, Lz2/cz;->OooO0o:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Lz2/cz;->OooO0o:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/cz;->OooO0OO:Lz2/py;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public OooO0o(Lz2/qx;J)Lz2/d10;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz2/cz;->OooO()Lz2/d10;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lz2/cz;->OooOO0O(J)Lz2/d10;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0o0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->flush()V

    return-void
.end method

.method public OooO0oO(Lz2/q00;)V
    .locals 2

    invoke-virtual {p1}, Lz2/q00;->OooOO0O()Lz2/f10;

    move-result-object v0

    sget-object v1, Lz2/f10;->OooO0Oo:Lz2/f10;

    invoke-virtual {p1, v1}, Lz2/q00;->OooOO0o(Lz2/f10;)Lz2/q00;

    invoke-virtual {v0}, Lz2/f10;->OooO00o()Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0O0()Lz2/f10;

    return-void
.end method

.method public OooO0oo()Z
    .locals 2

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOO0(Lz2/kx;)Lz2/e10;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lz2/cz;->OooO0o:I

    new-instance v0, Lz2/cz$OooO0o;

    invoke-direct {v0, p0, p1}, Lz2/cz$OooO0o;-><init>(Lz2/cz;Lz2/kx;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOO0O(J)Lz2/d10;
    .locals 2

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lz2/cz;->OooO0o:I

    new-instance v0, Lz2/cz$OooO;

    invoke-direct {v0, p0, p1, p2}, Lz2/cz$OooO;-><init>(Lz2/cz;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOO0o(J)Lz2/e10;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lz2/cz;->OooO0o:I

    new-instance v0, Lz2/cz$OooOO0;

    invoke-direct {v0, p0, p1, p2}, Lz2/cz$OooOO0;-><init>(Lz2/cz;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOO0()Lz2/e10;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/cz;->OooO0o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lz2/cz;->OooO0OO:Lz2/py;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {v0}, Lz2/py;->OooOO0()V

    new-instance v0, Lz2/cz$OooOO0O;

    invoke-direct {v0, p0}, Lz2/cz$OooOO0O;-><init>(Lz2/cz;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOOOO()Lz2/jx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    :goto_0
    invoke-direct {p0}, Lz2/cz;->OooOOO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {v2, v0, v1}, Lz2/xx;->OooO00o(Lz2/jx$OooO00o;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOo(Lz2/jx;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/cz;->OooO0o:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0, p2}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lz2/jx;->OooOO0o()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object v2, p0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-virtual {p1, p2}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v2

    invoke-virtual {p1, p2}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v2

    invoke-interface {v2, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {p1, v0}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    const/4 p1, 0x1

    iput p1, p0, Lz2/cz;->OooO0o:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lz2/cz;->OooO0o:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lz2/cz;->OooO0OO:Lz2/py;

    invoke-virtual {v0}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/my;->OooO0oO()V

    :cond_0
    return-void
.end method
