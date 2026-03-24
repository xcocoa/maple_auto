.class public final Lz2/px$OooO0O0;
.super Lz2/yx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/px;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0O0"
.end annotation


# static fields
.field public static final synthetic Ooooo0o:Z


# instance fields
.field private final OoooOoo:Lz2/uw;

.field public final synthetic Ooooo00:Lz2/px;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/px;

    return-void
.end method

.method public constructor <init>(Lz2/px;Lz2/uw;)V
    .locals 2

    iput-object p1, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lz2/px;->OooO0o()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lz2/px$OooO0O0;->OoooOoo:Lz2/uw;

    return-void
.end method


# virtual methods
.method public OooOO0o()V
    .locals 5

    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v0, v0, Lz2/px;->Ooooo00:Lz2/h00;

    invoke-virtual {v0}, Lz2/h00;->OooOOO0()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-virtual {v2}, Lz2/px;->OooO0Oo()Lz2/sx;

    move-result-object v2

    iget-object v3, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v3, v3, Lz2/px;->OoooOoo:Lz2/zy;

    invoke-virtual {v3}, Lz2/zy;->OooO0Oo()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lz2/px$OooO0O0;->OoooOoo:Lz2/uw;

    iget-object v2, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lz2/uw;->onFailure(Lz2/tw;Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/px$OooO0O0;->OoooOoo:Lz2/uw;

    iget-object v3, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-interface {v1, v3, v2}, Lz2/uw;->onResponse(Lz2/tw;Lz2/sx;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v0, v0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ex;->OooO0o(Lz2/px$OooO0O0;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-virtual {v2, v1}, Lz2/px;->OooO0oo(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-virtual {v4}, Lz2/px;->OooO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lz2/uz;->OooOOo(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-static {v0}, Lz2/px;->OooO00o(Lz2/px;)Lz2/gx;

    move-result-object v0

    iget-object v2, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-virtual {v0, v2, v1}, Lz2/gx;->OooO0O0(Lz2/tw;Ljava/io/IOException;)V

    iget-object v0, p0, Lz2/px$OooO0O0;->OoooOoo:Lz2/uw;

    iget-object v2, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-interface {v0, v2, v1}, Lz2/uw;->onFailure(Lz2/tw;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v1, v1, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v1}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v1

    invoke-virtual {v1, p0}, Lz2/ex;->OooO0o(Lz2/px$OooO0O0;)V

    throw v0
.end method

.method public OooOOO()Lz2/px;
    .locals 1

    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    return-object v0
.end method

.method public OooOOO0(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-static {p1}, Lz2/px;->OooO00o(Lz2/px;)Lz2/gx;

    move-result-object p1

    iget-object v1, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-virtual {p1, v1, v0}, Lz2/gx;->OooO0O0(Lz2/tw;Ljava/io/IOException;)V

    iget-object p1, p0, Lz2/px$OooO0O0;->OoooOoo:Lz2/uw;

    iget-object v1, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    invoke-interface {p1, v1, v0}, Lz2/uw;->onFailure(Lz2/tw;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object p1, p1, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {p1}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object p1

    invoke-virtual {p1, p0}, Lz2/ex;->OooO0o(Lz2/px$OooO0O0;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v0, v0, Lz2/px;->OoooOoO:Lz2/ox;

    invoke-virtual {v0}, Lz2/ox;->OooOO0o()Lz2/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/ex;->OooO0o(Lz2/px$OooO0O0;)V

    throw p1
.end method

.method public OooOOOO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v0, v0, Lz2/px;->OooooO0:Lz2/qx;

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/kx;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOo()Lz2/qx;
    .locals 1

    iget-object v0, p0, Lz2/px$OooO0O0;->Ooooo00:Lz2/px;

    iget-object v0, v0, Lz2/px;->OooooO0:Lz2/qx;

    return-object v0
.end method
