.class public Lz2/uu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private OoooOoO:Ljava/net/Socket;

.field private OoooOoo:I

.field private Ooooo00:Ljava/io/InputStream;

.field public Ooooo0o:Ljava/io/OutputStream;

.field private OooooO0:Ljava/lang/Thread;

.field private OooooOO:Z

.field private OooooOo:Z

.field private Oooooo:Lz2/vu;

.field private Oooooo0:I

.field private OoooooO:Z

.field private Ooooooo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lz2/xu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/uu;->Ooooooo:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lz2/uu;->OoooOoo:I

    invoke-direct {p0}, Lz2/uu;->o00oO0o()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lz2/uu;->OooooO0:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic OooOO0(Lz2/uu;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lz2/uu;->OooooO0:Ljava/lang/Thread;

    return-object p0
.end method

.method public static synthetic OooooOo(Lz2/uu;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lz2/uu;->Ooooo00:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic Oooooo(Lz2/uu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/uu;->OooooOo:Z

    return p1
.end method

.method public static synthetic Oooooo0(Lz2/uu;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/uu;->OooooOo:Z

    return p0
.end method

.method public static synthetic OoooooO(Lz2/uu;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lz2/uu;->Ooooooo:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic Ooooooo(Lz2/uu;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/uu;->OoooooO:Z

    return p0
.end method

.method public static synthetic o00O0O(Lz2/uu;I)I
    .locals 0

    iput p1, p0, Lz2/uu;->Oooooo0:I

    return p1
.end method

.method public static synthetic o00Oo0(Lz2/uu;)V
    .locals 0

    invoke-direct {p0}, Lz2/uu;->o00o0O()V

    return-void
.end method

.method public static synthetic o00Ooo(Lz2/uu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/uu;->OooooOO:Z

    return p1
.end method

.method private o00o0O()V
    .locals 2

    iget-object v0, p0, Lz2/uu;->Ooooooo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/xu;

    :try_start_0
    invoke-virtual {v1}, Lz2/xu;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/uu;->Ooooooo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private o00oO0o()Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lz2/uu$OooO00o;

    invoke-direct {v1, p0, p0}, Lz2/uu$OooO00o;-><init>(Lz2/uu;Lz2/uu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic o0OoOo0(Lz2/uu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz2/uu;->OoooooO:Z

    return p1
.end method

.method public static oo000o(Ljava/net/Socket;Lz2/vu;)Lz2/uu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/uu;

    invoke-direct {v0}, Lz2/uu;-><init>()V

    iput-object p1, v0, Lz2/uu;->Oooooo:Lz2/vu;

    iput-object p0, v0, Lz2/uu;->OoooOoO:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lz2/uu;->Ooooo00:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, v0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-object v0
.end method

.method public static synthetic ooOO(Lz2/uu;)Lz2/vu;
    .locals 0

    iget-object p0, p0, Lz2/uu;->Oooooo:Lz2/vu;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/uu;->OooooO0:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/uu;->OoooOoO:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lz2/uu;->OooooO0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lz2/uu;->OooooO0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public o00oO0O()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/uu;->OooooOO:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/uu;->OooooOo:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    iget-boolean v0, p0, Lz2/uu;->OooooOo:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lz2/uu;->Oooooo0:I

    return v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connect() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o00ooo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/uu;->OooooOo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-static {}, Lz2/wu;->OooO0OO()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/uu;->OooooOO:Z

    iget-object v0, p0, Lz2/uu;->OooooO0:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/uu;->OooooOo:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    iget-boolean v0, p0, Lz2/uu;->OooooOo:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o0ooOO0(Ljava/lang/String;)Lz2/xu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lz2/uu;->OoooOoo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/uu;->OoooOoo:I

    iget-boolean v1, p0, Lz2/uu;->OooooOO:Z

    if-eqz v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lz2/uu;->OooooOo:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    iget-boolean v1, p0, Lz2/uu;->OooooOo:Z

    if-eqz v1, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Lz2/xu;

    invoke-direct {v1, p0, v0}, Lz2/xu;-><init>(Lz2/uu;I)V

    iget-object v2, p0, Lz2/uu;->Ooooooo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lz2/wu;->OooO0o0(ILjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lz2/uu;->Ooooo0o:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lz2/xu;->OooooOo()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Ljava/net/ConnectException;

    const-string v0, "Stream open actively rejected by remote peer"

    invoke-direct {p1, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Connection failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect() must be called first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
