.class public final Lz2/px;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/tw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/px$OooO0O0;
    }
.end annotation


# instance fields
.field public final OoooOoO:Lz2/ox;

.field public final OoooOoo:Lz2/zy;

.field public final Ooooo00:Lz2/h00;

.field private Ooooo0o:Lz2/gx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooooO0:Lz2/qx;

.field public final OooooOO:Z

.field private OooooOo:Z


# direct methods
.method private constructor <init>(Lz2/ox;Lz2/qx;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/px;->OoooOoO:Lz2/ox;

    iput-object p2, p0, Lz2/px;->OooooO0:Lz2/qx;

    iput-boolean p3, p0, Lz2/px;->OooooOO:Z

    new-instance p2, Lz2/zy;

    invoke-direct {p2, p1, p3}, Lz2/zy;-><init>(Lz2/ox;Z)V

    iput-object p2, p0, Lz2/px;->OoooOoo:Lz2/zy;

    new-instance p2, Lz2/px$OooO00o;

    invoke-direct {p2, p0}, Lz2/px$OooO00o;-><init>(Lz2/px;)V

    iput-object p2, p0, Lz2/px;->Ooooo00:Lz2/h00;

    invoke-virtual {p1}, Lz2/ox;->OooO0o0()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/px;)Lz2/gx;
    .locals 0

    iget-object p0, p0, Lz2/px;->Ooooo0o:Lz2/gx;

    return-object p0
.end method

.method private OooO0O0()V
    .locals 2

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lz2/uz;->OooOOOO(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz2/px;->OoooOoo:Lz2/zy;

    invoke-virtual {v1, v0}, Lz2/zy;->OooO(Ljava/lang/Object;)V

    return-void
.end method

.method public static OooO0o0(Lz2/ox;Lz2/qx;Z)Lz2/px;
    .locals 1

    new-instance v0, Lz2/px;

    invoke-direct {v0, p0, p1, p2}, Lz2/px;-><init>(Lz2/ox;Lz2/qx;Z)V

    invoke-virtual {p0}, Lz2/ox;->OooOOO()Lz2/gx$OooO0OO;

    move-result-object p0

    invoke-interface {p0, v0}, Lz2/gx$OooO0OO;->OooO00o(Lz2/tw;)Lz2/gx;

    move-result-object p0

    iput-object p0, v0, Lz2/px;->Ooooo0o:Lz2/gx;

    return-object v0
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lz2/px;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz2/px;->OooooOO:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/px;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Lz2/px;
    .locals 3

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    iget-object v1, p0, Lz2/px;->OooooO0:Lz2/qx;

    iget-boolean v2, p0, Lz2/px;->OooooOO:Z

    invoke-static {v0, v1, v2}, Lz2/px;->OooO0o0(Lz2/ox;Lz2/qx;Z)Lz2/px;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()Lz2/sx;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOOo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lz2/px;->OoooOoo:Lz2/zy;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lz2/qy;

    iget-object v2, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v2}, Lz2/ox;->OooOO0O()Lz2/cx;

    move-result-object v2

    invoke-direct {v0, v2}, Lz2/qy;-><init>(Lz2/cx;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lz2/cy;

    iget-object v2, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v2}, Lz2/ox;->OooOOoo()Lz2/hy;

    move-result-object v2

    invoke-direct {v0, v2}, Lz2/cy;-><init>(Lz2/hy;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lz2/ky;

    iget-object v2, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-direct {v0, v2}, Lz2/ky;-><init>(Lz2/ox;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lz2/px;->OooooOO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOo00()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lz2/ry;

    iget-boolean v2, p0, Lz2/px;->OooooOO:Z

    invoke-direct {v0, v2}, Lz2/ry;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lz2/wy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lz2/px;->OooooO0:Lz2/qx;

    iget-object v8, p0, Lz2/px;->Ooooo0o:Lz2/gx;

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooO0oO()I

    move-result v9

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOoo0()I

    move-result v10

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->Oooo000()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lz2/wy;-><init>(Ljava/util/List;Lz2/py;Lz2/sy;Lz2/my;ILz2/qx;Lz2/tw;Lz2/gx;III)V

    iget-object v0, p0, Lz2/px;->OooooO0:Lz2/qx;

    invoke-interface {v12, v0}, Lz2/lx$OooO00o;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/px;->OooooO0:Lz2/qx;

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->Oooo0oO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oO()Lz2/py;
    .locals 1

    iget-object v0, p0, Lz2/px;->OoooOoo:Lz2/zy;

    invoke-virtual {v0}, Lz2/zy;->OooOO0()Lz2/py;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oo(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/px;->Ooooo00:Lz2/h00;

    invoke-virtual {v0}, Lz2/h00;->OooOOOo()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public OooOO0(Lz2/uw;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/px;->OooooOo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/px;->OooooOo:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lz2/px;->OooO0O0()V

    iget-object v0, p0, Lz2/px;->Ooooo0o:Lz2/gx;

    invoke-virtual {v0, p0}, Lz2/gx;->OooO0OO(Lz2/tw;)V

    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v0

    new-instance v1, Lz2/px$OooO0O0;

    invoke-direct {v1, p0, p1}, Lz2/px$OooO0O0;-><init>(Lz2/px;Lz2/uw;)V

    invoke-virtual {v0, v1}, Lz2/ex;->OooO0O0(Lz2/px$OooO0O0;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lz2/px;->OoooOoo:Lz2/zy;

    invoke-virtual {v0}, Lz2/zy;->OooO00o()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/px;->OooO0OO()Lz2/px;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lz2/tw;
    .locals 1

    invoke-virtual {p0}, Lz2/px;->OooO0OO()Lz2/px;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lz2/sx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/px;->OooooOo:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/px;->OooooOo:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lz2/px;->OooO0O0()V

    iget-object v0, p0, Lz2/px;->Ooooo00:Lz2/h00;

    invoke-virtual {v0}, Lz2/h00;->OooOOO0()V

    iget-object v0, p0, Lz2/px;->Ooooo0o:Lz2/gx;

    invoke-virtual {v0, p0}, Lz2/gx;->OooO0OO(Lz2/tw;)V

    :try_start_1
    iget-object v0, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ex;->OooO0OO(Lz2/px;)V

    invoke-virtual {p0}, Lz2/px;->OooO0Oo()Lz2/sx;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v1}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v1

    invoke-virtual {v1, p0}, Lz2/ex;->OooO0oO(Lz2/px;)V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lz2/px;->OooO0oo(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lz2/px;->Ooooo0o:Lz2/gx;

    invoke-virtual {v1, p0, v0}, Lz2/gx;->OooO0O0(Lz2/tw;Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v1}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v1

    invoke-virtual {v1, p0}, Lz2/ex;->OooO0oO(Lz2/px;)V

    throw v0

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lz2/px;->OoooOoo:Lz2/zy;

    invoke-virtual {v0}, Lz2/zy;->OooO0Oo()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/px;->OooooOo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lz2/qx;
    .locals 1

    iget-object v0, p0, Lz2/px;->OooooO0:Lz2/qx;

    return-object v0
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/px;->Ooooo00:Lz2/h00;

    return-object v0
.end method
