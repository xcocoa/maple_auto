.class public final Lz2/cz$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO"
.end annotation


# instance fields
.field private final OoooOoO:Lz2/q00;

.field private OoooOoo:Z

.field private Ooooo00:J

.field public final synthetic Ooooo0o:Lz2/cz;


# direct methods
.method public constructor <init>(Lz2/cz;J)V
    .locals 1

    iput-object p1, p0, Lz2/cz$OooO;->Ooooo0o:Lz2/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/q00;

    iget-object p1, p1, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {p1}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/q00;-><init>(Lz2/f10;)V

    iput-object v0, p0, Lz2/cz$OooO;->OoooOoO:Lz2/q00;

    iput-wide p2, p0, Lz2/cz$OooO;->Ooooo00:J

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/cz$OooO;->OoooOoo:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lz2/zx;->OooO0o(JJJ)V

    iget-wide v0, p0, Lz2/cz$OooO;->Ooooo00:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lz2/cz$OooO;->Ooooo0o:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0, p1, p2, p3}, Lz2/d10;->OooOooO(Lz2/j00;J)V

    iget-wide v0, p0, Lz2/cz$OooO;->Ooooo00:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lz2/cz$OooO;->Ooooo00:J

    return-void

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz2/cz$OooO;->Ooooo00:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/cz$OooO;->OoooOoo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/cz$OooO;->OoooOoo:Z

    iget-wide v0, p0, Lz2/cz$OooO;->Ooooo00:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lz2/cz$OooO;->Ooooo0o:Lz2/cz;

    iget-object v1, p0, Lz2/cz$OooO;->OoooOoO:Lz2/q00;

    invoke-virtual {v0, v1}, Lz2/cz;->OooO0oO(Lz2/q00;)V

    iget-object v0, p0, Lz2/cz$OooO;->Ooooo0o:Lz2/cz;

    const/4 v1, 0x3

    iput v1, v0, Lz2/cz;->OooO0o:I

    return-void

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/cz$OooO;->OoooOoo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/cz$OooO;->Ooooo0o:Lz2/cz;

    iget-object v0, v0, Lz2/cz;->OooO0o0:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->flush()V

    return-void
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/cz$OooO;->OoooOoO:Lz2/q00;

    return-object v0
.end method
