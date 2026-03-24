.class public final Lz2/jz$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/jz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# static fields
.field private static final OooooO0:J = 0x4000L

.field public static final synthetic OooooOO:Z


# instance fields
.field private final OoooOoO:Lz2/j00;

.field public OoooOoo:Z

.field public Ooooo00:Z

.field public final synthetic Ooooo0o:Lz2/jz;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lz2/jz;)V
    .locals 0

    iput-object p1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lz2/j00;

    invoke-direct {p1}, Lz2/j00;-><init>()V

    iput-object p1, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    return-void
.end method

.method private OooOO0(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v1, v1, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    invoke-virtual {v1}, Lz2/h00;->OooOOO0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-wide v2, v1, Lz2/jz;->OooO0O0:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lz2/jz$OooO00o;->Ooooo00:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lz2/jz$OooO00o;->OoooOoo:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lz2/jz;->OooOo0o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, v1, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    invoke-virtual {v1}, Lz2/jz$OooO0OO;->OooOo0o()V

    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    invoke-virtual {v1}, Lz2/jz;->OooO0o0()V

    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-wide v1, v1, Lz2/jz;->OooO0O0:J

    iget-object v3, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {v3}, Lz2/j00;->o00000O0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-wide v2, v1, Lz2/jz;->OooO0O0:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lz2/jz;->OooO0O0:J

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v1, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/h00;->OooOOO0()V

    :try_start_3
    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v5, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v6, v0, Lz2/jz;->OooO0OO:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual/range {v5 .. v10}, Lz2/hz;->o000000o(IZLz2/j00;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object p1, p1, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    invoke-virtual {p1}, Lz2/jz$OooO0OO;->OooOo0o()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/jz$OooO0OO;->OooOo0o()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v1, v1, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    invoke-virtual {v1}, Lz2/jz$OooO0OO;->OooOo0o()V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {v0, p1, p2, p3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    :goto_0
    iget-object p1, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {p1}, Lz2/j00;->o00000O0()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lz2/jz$OooO00o;->OooOO0(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/jz$OooO00o;->OoooOoo:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iget-boolean v0, v0, Lz2/jz$OooO00o;->Ooooo00:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-direct {p0, v1}, Lz2/jz$OooO00o;->OooOO0(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v2, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v3, v0, Lz2/jz;->OooO0OO:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lz2/hz;->o000000o(IZLz2/j00;J)V

    :cond_2
    iget-object v2, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lz2/jz$OooO00o;->OoooOoo:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    invoke-virtual {v0}, Lz2/hz;->flush()V

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    invoke-virtual {v0}, Lz2/jz;->OooO0Oo()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    invoke-virtual {v1}, Lz2/jz;->OooO0o0()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lz2/jz$OooO00o;->OoooOoO:Lz2/j00;

    invoke-virtual {v0}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/jz$OooO00o;->OooOO0(Z)V

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooO0Oo:Lz2/hz;

    invoke-virtual {v0}, Lz2/hz;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/jz$OooO00o;->Ooooo0o:Lz2/jz;

    iget-object v0, v0, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    return-object v0
.end method
