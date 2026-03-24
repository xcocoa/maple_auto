.class public final Lz2/jz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/jz$OooO0OO;,
        Lz2/jz$OooO00o;,
        Lz2/jz$OooO0O0;
    }
.end annotation


# static fields
.field public static final synthetic OooOOO0:Z


# instance fields
.field public final OooO:Lz2/jz$OooO00o;

.field public OooO00o:J

.field public OooO0O0:J

.field public final OooO0OO:I

.field public final OooO0Oo:Lz2/hz;

.field private OooO0o:Lz2/dz$OooO00o;

.field private final OooO0o0:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lz2/jx;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0oO:Z

.field private final OooO0oo:Lz2/jz$OooO0O0;

.field public final OooOO0:Lz2/jz$OooO0OO;

.field public final OooOO0O:Lz2/jz$OooO0OO;

.field public OooOO0o:Lokhttp3/internal/http2/ErrorCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILz2/hz;ZZLz2/jx;)V
    .locals 3
    .param p5    # Lz2/jx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/jz;->OooO00o:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    new-instance v1, Lz2/jz$OooO0OO;

    invoke-direct {v1, p0}, Lz2/jz$OooO0OO;-><init>(Lz2/jz;)V

    iput-object v1, p0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    new-instance v1, Lz2/jz$OooO0OO;

    invoke-direct {v1, p0}, Lz2/jz$OooO0OO;-><init>(Lz2/jz;)V

    iput-object v1, p0, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    const/4 v1, 0x0

    iput-object v1, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    const-string v1, "connection == null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Lz2/jz;->OooO0OO:I

    iput-object p2, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget-object p1, p2, Lz2/hz;->o00Oo0:Lz2/nz;

    invoke-virtual {p1}, Lz2/nz;->OooO0o0()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lz2/jz;->OooO0O0:J

    new-instance p1, Lz2/jz$OooO0O0;

    iget-object p2, p2, Lz2/hz;->o00O0O:Lz2/nz;

    invoke-virtual {p2}, Lz2/nz;->OooO0o0()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lz2/jz$OooO0O0;-><init>(Lz2/jz;J)V

    iput-object p1, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    new-instance p2, Lz2/jz$OooO00o;

    invoke-direct {p2, p0}, Lz2/jz$OooO00o;-><init>(Lz2/jz;)V

    iput-object p2, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iput-boolean p4, p1, Lz2/jz$OooO0O0;->OooooO0:Z

    iput-boolean p3, p2, Lz2/jz$OooO00o;->Ooooo00:Z

    if-eqz p5, :cond_0

    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lz2/jz;->OooOOO()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lz2/jz;->OooOOO()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic OooO00o(Lz2/jz;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/jz;)Lz2/dz$OooO00o;
    .locals 0

    iget-object p0, p0, Lz2/jz;->OooO0o:Lz2/dz$OooO00o;

    return-object p0
.end method

.method private OooO0oO(Lokhttp3/internal/http2/ErrorCode;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    iget-boolean v0, v0, Lz2/jz$OooO0O0;->OooooO0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iget-boolean v0, v0, Lz2/jz$OooO00o;->Ooooo00:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iput-object p1, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v0, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {p1, v0}, Lz2/hz;->o0OO00O(I)Lz2/jz;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public OooO()Lz2/hz;
    .locals 1

    iget-object v0, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    return-object v0
.end method

.method public OooO0OO(J)V
    .locals 3

    iget-wide v0, p0, Lz2/jz;->OooO0O0:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lz2/jz;->OooO0O0:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    iget-boolean v1, v0, Lz2/jz$OooO0O0;->OooooO0:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lz2/jz$OooO0O0;->Ooooo0o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iget-boolean v1, v0, Lz2/jz$OooO00o;->Ooooo00:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lz2/jz$OooO00o;->OoooOoo:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lz2/jz;->OooOOOO()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lz2/jz;->OooO0o(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v1, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {v0, v1}, Lz2/hz;->o0OO00O(I)Lz2/jz;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public OooO0o(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/jz;->OooO0oO(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v1, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {v0, v1, p1}, Lz2/hz;->o00000OO(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public OooO0o0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iget-boolean v1, v0, Lz2/jz$OooO00o;->OoooOoo:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lz2/jz$OooO00o;->Ooooo00:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0oo(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lz2/jz;->OooO0oO(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v1, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {v0, v1, p1}, Lz2/hz;->o00000Oo(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public declared-synchronized OooOO0()Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOO0O()I
    .locals 1

    iget v0, p0, Lz2/jz;->OooO0OO:I

    return v0
.end method

.method public OooOO0o()Lz2/d10;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/jz;->OooO0oO:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lz2/jz;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public OooOOO()Z
    .locals 4

    iget v0, p0, Lz2/jz;->OooO0OO:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget-boolean v3, v3, Lz2/hz;->OoooOoO:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public OooOOO0()Lz2/e10;
    .locals 1

    iget-object v0, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    return-object v0
.end method

.method public declared-synchronized OooOOOO()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    iget-boolean v2, v0, Lz2/jz$OooO0O0;->OooooO0:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lz2/jz$OooO0O0;->Ooooo0o:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iget-boolean v2, v0, Lz2/jz$OooO00o;->Ooooo00:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lz2/jz$OooO00o;->OoooOoo:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lz2/jz;->OooO0oO:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOOOo()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    return-object v0
.end method

.method public OooOOo()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz2/jz$OooO0O0;->OooooO0:Z

    invoke-virtual {p0}, Lz2/jz;->OooOOOO()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v1, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {v0, v1}, Lz2/hz;->o0OO00O(I)Lz2/jz;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public OooOOo0(Lz2/l00;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jz;->OooO0oo:Lz2/jz$OooO0O0;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lz2/jz$OooO0O0;->OooOO0(Lz2/l00;J)V

    return-void
.end method

.method public OooOOoo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lz2/jz;->OooO0oO:Z

    iget-object v0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    invoke-static {p1}, Lz2/zx;->Oooo0(Ljava/util/List;)Lz2/jx;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lz2/jz;->OooOOOO()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v0, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {p1, v0}, Lz2/hz;->o0OO00O(I)Lz2/jz;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooOo(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headers == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lz2/jz;->OooO0oO:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lz2/jz;->OooO:Lz2/jz$OooO00o;

    iput-boolean v0, p2, Lz2/jz$OooO00o;->Ooooo00:Z

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_2

    iget-object v3, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    monitor-enter v3

    :try_start_1
    iget-object p2, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget-wide v4, p2, Lz2/hz;->ooOO:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit v3

    move p2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    iget-object v0, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    iget v1, p0, Lz2/jz;->OooO0OO:I

    invoke-virtual {v0, v1, v2, p1}, Lz2/hz;->o00000O(IZLjava/util/List;)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lz2/jz;->OooO0Oo:Lz2/hz;

    invoke-virtual {p1}, Lz2/hz;->flush()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public declared-synchronized OooOo0(Lz2/dz$OooO00o;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lz2/jz;->OooO0o:Lz2/dz$OooO00o;

    iget-object v0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOo00(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOo0O()Lz2/jx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/h00;->OooOOO0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/jz;->OooOo0o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v0}, Lz2/jz$OooO0OO;->OooOo0o()V

    iget-object v0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/jz;->OooO0o0:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/jx;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lz2/jz;->OooOO0o:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/jz;->OooOO0:Lz2/jz$OooO0OO;

    invoke-virtual {v1}, Lz2/jz$OooO0OO;->OooOo0o()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOo0o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public OooOoO0()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/jz;->OooOO0O:Lz2/jz$OooO0OO;

    return-object v0
.end method
