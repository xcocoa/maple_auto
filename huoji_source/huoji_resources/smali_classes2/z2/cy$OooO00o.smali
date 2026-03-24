.class public Lz2/cy$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/cy;->OooO00o(Lz2/dy;Lz2/sx;)Lz2/sx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OoooOoO:Z

.field public final synthetic OoooOoo:Lz2/l00;

.field public final synthetic Ooooo00:Lz2/dy;

.field public final synthetic Ooooo0o:Lz2/k00;

.field public final synthetic OooooO0:Lz2/cy;


# direct methods
.method public constructor <init>(Lz2/cy;Lz2/l00;Lz2/dy;Lz2/k00;)V
    .locals 0

    iput-object p1, p0, Lz2/cy$OooO00o;->OooooO0:Lz2/cy;

    iput-object p2, p0, Lz2/cy$OooO00o;->OoooOoo:Lz2/l00;

    iput-object p3, p0, Lz2/cy$OooO00o;->Ooooo00:Lz2/dy;

    iput-object p4, p0, Lz2/cy$OooO00o;->Ooooo0o:Lz2/k00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/cy$OooO00o;->OoooOoO:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lz2/zx;->OooOOo0(Lz2/e10;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/cy$OooO00o;->OoooOoO:Z

    iget-object v0, p0, Lz2/cy$OooO00o;->Ooooo00:Lz2/dy;

    invoke-interface {v0}, Lz2/dy;->abort()V

    :cond_0
    iget-object v0, p0, Lz2/cy$OooO00o;->OoooOoo:Lz2/l00;

    invoke-interface {v0}, Lz2/e10;->close()V

    return-void
.end method

.method public read(Lz2/j00;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lz2/cy$OooO00o;->OoooOoo:Lz2/l00;

    invoke-interface {v1, p1, p2, p3}, Lz2/e10;->read(Lz2/j00;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lz2/cy$OooO00o;->OoooOoO:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lz2/cy$OooO00o;->OoooOoO:Z

    iget-object p1, p0, Lz2/cy$OooO00o;->Ooooo0o:Lz2/k00;

    invoke-interface {p1}, Lz2/d10;->close()V

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, Lz2/cy$OooO00o;->Ooooo0o:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->OooO00o()Lz2/j00;

    move-result-object v3

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lz2/j00;->o0OoOo0(Lz2/j00;JJ)Lz2/j00;

    iget-object p1, p0, Lz2/cy$OooO00o;->Ooooo0o:Lz2/k00;

    invoke-interface {p1}, Lz2/k00;->OooOo0()Lz2/k00;

    return-wide p2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lz2/cy$OooO00o;->OoooOoO:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, Lz2/cy$OooO00o;->OoooOoO:Z

    iget-object p2, p0, Lz2/cy$OooO00o;->Ooooo00:Lz2/dy;

    invoke-interface {p2}, Lz2/dy;->abort()V

    :cond_2
    throw p1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/cy$OooO00o;->OoooOoo:Lz2/l00;

    invoke-interface {v0}, Lz2/e10;->timeout()Lz2/f10;

    move-result-object v0

    return-object v0
.end method
