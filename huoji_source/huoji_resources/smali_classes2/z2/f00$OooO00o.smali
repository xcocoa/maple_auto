.class public final Lz2/f00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/f00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public OoooOoO:I

.field public OoooOoo:J

.field public Ooooo00:Z

.field public Ooooo0o:Z

.field public final synthetic OooooO0:Lz2/f00;


# direct methods
.method public constructor <init>(Lz2/f00;)V
    .locals 0

    iput-object p1, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/f00$OooO00o;->Ooooo0o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget-object v0, v0, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {v0, p1, p2, p3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    iget-boolean p1, p0, Lz2/f00$OooO00o;->Ooooo00:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lz2/f00$OooO00o;->OoooOoo:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget-object p1, p1, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    iget-wide v2, p0, Lz2/f00$OooO00o;->OoooOoo:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget-object p3, p3, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {p3}, Lz2/j00;->Oooooo()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget v1, p0, Lz2/f00$OooO00o;->OoooOoO:I

    iget-boolean v4, p0, Lz2/f00$OooO00o;->Ooooo00:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lz2/f00;->OooO0Oo(IJZZ)V

    iput-boolean p2, p0, Lz2/f00$OooO00o;->Ooooo00:Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/f00$OooO00o;->Ooooo0o:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget v2, p0, Lz2/f00$OooO00o;->OoooOoO:I

    iget-object v0, v1, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v3

    iget-boolean v5, p0, Lz2/f00$OooO00o;->Ooooo00:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lz2/f00;->OooO0Oo(IJZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/f00$OooO00o;->Ooooo0o:Z

    iget-object v0, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz2/f00;->OooO0oo:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/f00$OooO00o;->Ooooo0o:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget v2, p0, Lz2/f00$OooO00o;->OoooOoO:I

    iget-object v0, v1, Lz2/f00;->OooO0o:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v3

    iget-boolean v5, p0, Lz2/f00$OooO00o;->Ooooo00:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lz2/f00;->OooO0Oo(IJZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/f00$OooO00o;->Ooooo00:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/f00$OooO00o;->OooooO0:Lz2/f00;

    iget-object v0, v0, Lz2/f00;->OooO0OO:Lz2/k00;

    invoke-interface {v0}, Lz2/d10;->timeout()Lz2/f10;

    move-result-object v0

    return-object v0
.end method
