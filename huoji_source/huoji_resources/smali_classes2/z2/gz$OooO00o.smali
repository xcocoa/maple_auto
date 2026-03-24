.class public Lz2/gz$OooO00o;
.super Lz2/p00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field public OoooOoO:Z

.field public OoooOoo:J

.field public final synthetic Ooooo00:Lz2/gz;


# direct methods
.method public constructor <init>(Lz2/gz;Lz2/e10;)V
    .locals 0

    iput-object p1, p0, Lz2/gz$OooO00o;->Ooooo00:Lz2/gz;

    invoke-direct {p0, p2}, Lz2/p00;-><init>(Lz2/e10;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/gz$OooO00o;->OoooOoO:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lz2/gz$OooO00o;->OoooOoo:J

    return-void
.end method

.method private OooOO0(Ljava/io/IOException;)V
    .locals 7

    iget-boolean v0, p0, Lz2/gz$OooO00o;->OoooOoO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/gz$OooO00o;->OoooOoO:Z

    iget-object v3, p0, Lz2/gz$OooO00o;->Ooooo00:Lz2/gz;

    iget-object v1, v3, Lz2/gz;->OooO0OO:Lz2/py;

    const/4 v2, 0x0

    iget-wide v4, p0, Lz2/gz$OooO00o;->OoooOoo:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lz2/py;->OooOOo(ZLz2/sy;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lz2/p00;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/gz$OooO00o;->OooOO0(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lz2/j00;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lz2/p00;->delegate()Lz2/e10;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lz2/gz$OooO00o;->OoooOoo:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lz2/gz$OooO00o;->OoooOoo:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lz2/gz$OooO00o;->OooOO0(Ljava/io/IOException;)V

    throw p1
.end method
