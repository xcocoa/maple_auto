.class public final Lz2/c00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/vx;
.implements Lz2/e00$OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/c00$OooO0OO;,
        Lz2/c00$OooOO0O;,
        Lz2/c00$OooO0o;,
        Lz2/c00$OooO;,
        Lz2/c00$OooOO0;
    }
.end annotation


# static fields
.field private static final OooOo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final OooOoO:J = 0xea60L

.field private static final OooOoO0:J = 0x1000000L

.field public static final synthetic OooOoOO:Z


# instance fields
.field private OooO:Lz2/f00;

.field private final OooO00o:Lz2/qx;

.field public final OooO0O0:Lz2/wx;

.field private final OooO0OO:Ljava/util/Random;

.field private final OooO0Oo:J

.field private OooO0o:Lz2/tw;

.field private final OooO0o0:Ljava/lang/String;

.field private final OooO0oO:Ljava/lang/Runnable;

.field private OooO0oo:Lz2/e00;

.field private OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

.field private OooOO0O:Lz2/c00$OooOO0O;

.field private final OooOO0o:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private OooOOO:J

.field private final OooOOO0:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private OooOOOO:Z

.field private OooOOOo:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private OooOOo:Ljava/lang/String;

.field private OooOOo0:I

.field private OooOOoo:Z

.field private OooOo0:I

.field private OooOo00:I

.field private OooOo0O:I

.field private OooOo0o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/c00;->OooOo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lz2/qx;Lz2/wx;Ljava/util/Random;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz2/c00;->OooOO0o:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    iput v0, p0, Lz2/c00;->OooOOo0:I

    invoke-virtual {p1}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz2/c00;->OooO00o:Lz2/qx;

    iput-object p2, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    iput-object p3, p0, Lz2/c00;->OooO0OO:Ljava/util/Random;

    iput-wide p4, p0, Lz2/c00;->OooO0Oo:J

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/c00;->OooO0o0:Ljava/lang/String;

    new-instance p1, Lz2/c00$OooO00o;

    invoke-direct {p1, p0}, Lz2/c00$OooO00o;-><init>(Lz2/c00;)V

    iput-object p1, p0, Lz2/c00;->OooO0oO:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request must be GET: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private OooOo0()V
    .locals 2

    iget-object v0, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/c00;->OooO0oO:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized OooOo0O(Lokio/ByteString;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lz2/c00;->OooOOOO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lz2/c00;->OooOOO:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lz2/c00;->OooO0o(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lz2/c00;->OooOOO:J

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lz2/c00;->OooOOO:J

    iget-object v0, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    new-instance v1, Lz2/c00$OooO;

    invoke-direct {v1, p2, p1}, Lz2/c00$OooO;-><init>(ILokio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lz2/c00;->OooOo0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public OooO(ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lz2/c00;->OooOOo0:I

    if-ne v1, v0, :cond_3

    iput p1, p0, Lz2/c00;->OooOOo0:I

    iput-object p2, p0, Lz2/c00;->OooOOo:Ljava/lang/String;

    iget-boolean v0, p0, Lz2/c00;->OooOOOO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    iput-object v1, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    iget-object v1, p0, Lz2/c00;->OooOOOo:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v1, v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v0, p0, p1, p2}, Lz2/wx;->OooO0O0(Lz2/vx;ILjava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v0, p0, p1, p2}, Lz2/wx;->OooO00o(Lz2/vx;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public OooO00o(Lokio/ByteString;)Z
    .locals 1

    const-string v0, "bytes == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lz2/c00;->OooOo0O(Lokio/ByteString;I)Z

    move-result p1

    return p1
.end method

.method public OooO0O0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lz2/c00;->OooOo0O(Lokio/ByteString;I)Z

    move-result p1

    return p1
.end method

.method public OooO0OO(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v0, p0, p1}, Lz2/wx;->OooO0o0(Lz2/vx;Lokio/ByteString;)V

    return-void
.end method

.method public OooO0Oo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v0, p0, p1}, Lz2/wx;->OooO0Oo(Lz2/vx;Ljava/lang/String;)V

    return-void
.end method

.method public OooO0o(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lz2/c00;->OooOO0o(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized OooO0o0(Lokio/ByteString;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/c00;->OooOOOO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/c00;->OooOO0o:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lz2/c00;->OooOo0()V

    iget p1, p0, Lz2/c00;->OooOo0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/c00;->OooOo0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0oO()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lz2/c00;->OooOOO:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OooO0oo(Lokio/ByteString;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lz2/c00;->OooOo0O:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/c00;->OooOo0O:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/c00;->OooOo0o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooOO0(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public OooOO0O(Lz2/sx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lz2/sx;->OoooooO()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "websocket"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lz2/c00;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz2/sx;->OoooooO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz2/sx;->o00ooo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized OooOO0o(ILjava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lz2/d00;->OooO0Oo(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lz2/c00;->OooOOoo:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lz2/c00;->OooOOOO:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/c00;->OooOOOO:Z

    iget-object v1, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    new-instance v2, Lz2/c00$OooO0o;

    invoke-direct {v2, p1, v0, p3, p4}, Lz2/c00$OooO0o;-><init>(ILokio/ByteString;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lz2/c00;->OooOo0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooOOO(Ljava/lang/Exception;Lz2/sx;)V
    .locals 3
    .param p2    # Lz2/sx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    iget-object v0, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    const/4 v1, 0x0

    iput-object v1, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    iget-object v1, p0, Lz2/c00;->OooOOOo:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v1, p0, p1, p2}, Lz2/wx;->OooO0OO(Lz2/vx;Ljava/lang/Throwable;Lz2/sx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public OooOOO0(Lz2/ox;)V
    .locals 3

    invoke-virtual {p1}, Lz2/ox;->OooOo0()Lz2/ox$OooO0O0;

    move-result-object p1

    sget-object v0, Lz2/gx;->OooO00o:Lz2/gx;

    invoke-virtual {p1, v0}, Lz2/ox$OooO0O0;->OooOOOo(Lz2/gx;)Lz2/ox$OooO0O0;

    move-result-object p1

    sget-object v0, Lz2/c00;->OooOo:Ljava/util/List;

    invoke-virtual {p1, v0}, Lz2/ox$OooO0O0;->OooOoO0(Ljava/util/List;)Lz2/ox$OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object p1

    iget-object v0, p0, Lz2/c00;->OooO00o:Lz2/qx;

    invoke-virtual {v0}, Lz2/qx;->OooO0oo()Lz2/qx$OooO00o;

    move-result-object v0

    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-virtual {v0, v1, v2}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2, v1}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    iget-object v1, p0, Lz2/c00;->OooO0o0:Ljava/lang/String;

    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v0, v2, v1}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v0

    sget-object v1, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {v1, p1, v0}, Lz2/xx;->OooOO0O(Lz2/ox;Lz2/qx;)Lz2/tw;

    move-result-object p1

    iput-object p1, p0, Lz2/c00;->OooO0o:Lz2/tw;

    invoke-interface {p1}, Lz2/tw;->timeout()Lz2/f10;

    move-result-object p1

    invoke-virtual {p1}, Lz2/f10;->OooO0O0()Lz2/f10;

    iget-object p1, p0, Lz2/c00;->OooO0o:Lz2/tw;

    new-instance v1, Lz2/c00$OooO0O0;

    invoke-direct {v1, p0, v0}, Lz2/c00$OooO0O0;-><init>(Lz2/c00;Lz2/qx;)V

    invoke-interface {p1, v1}, Lz2/tw;->OooOO0(Lz2/uw;)V

    return-void
.end method

.method public OooOOOO(Ljava/lang/String;Lz2/c00$OooOO0O;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    new-instance v0, Lz2/f00;

    iget-boolean v1, p2, Lz2/c00$OooOO0O;->OoooOoO:Z

    iget-object v2, p2, Lz2/c00$OooOO0O;->Ooooo00:Lz2/k00;

    iget-object v3, p0, Lz2/c00;->OooO0OO:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lz2/f00;-><init>(ZLz2/k00;Ljava/util/Random;)V

    iput-object v0, p0, Lz2/c00;->OooO:Lz2/f00;

    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lz2/zx;->Oooo00o(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-direct {v4, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v0, p0, Lz2/c00;->OooO0Oo:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance v5, Lz2/c00$OooOO0;

    invoke-direct {v5, p0}, Lz2/c00$OooOO0;-><init>(Lz2/c00;)V

    iget-wide v8, p0, Lz2/c00;->OooO0Oo:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object p1, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lz2/c00;->OooOo0()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lz2/e00;

    iget-boolean v0, p2, Lz2/c00$OooOO0O;->OoooOoO:Z

    iget-object p2, p2, Lz2/c00$OooOO0O;->OoooOoo:Lz2/l00;

    invoke-direct {p1, v0, p2, p0}, Lz2/e00;-><init>(ZLz2/l00;Lz2/e00$OooO00o;)V

    iput-object p1, p0, Lz2/c00;->OooO0oo:Lz2/e00;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooOOOo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lz2/c00;->OooOOo0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/c00;->OooO0oo:Lz2/e00;

    invoke-virtual {v0}, Lz2/e00;->OooO00o()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOOo()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/c00;->OooO0oo:Lz2/e00;

    invoke-virtual {v1}, Lz2/e00;->OooO00o()V

    iget v1, p0, Lz2/c00;->OooOOo0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    return v0
.end method

.method public declared-synchronized OooOOo0(Lokio/ByteString;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/c00;->OooOOOO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/c00;->OooOO0o:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lz2/c00;->OooOo0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooOOoo()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/c00;->OooOo0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lz2/c00;->OooOOOo:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v0, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public declared-synchronized OooOo00()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/c00;->OooOo0O:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OooOo0o()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/c00;->OooOo00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOoO()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/c00;->OooO:Lz2/f00;

    iget-boolean v1, p0, Lz2/c00;->OooOo0o:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lz2/c00;->OooOo00:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget v3, p0, Lz2/c00;->OooOo00:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lz2/c00;->OooOo00:I

    iput-boolean v4, p0, Lz2/c00;->OooOo0o:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lz2/c00;->OooO0Oo:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " successful ping/pongs)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lz2/f00;->OooO0o0(Lokio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, v3}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public OooOoO0()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/c00;->OooOOoo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lz2/c00;->OooO:Lz2/f00;

    iget-object v2, p0, Lz2/c00;->OooOO0o:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    iget-object v5, p0, Lz2/c00;->OooOOO0:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lz2/c00$OooO0o;

    if-eqz v6, :cond_2

    iget v1, p0, Lz2/c00;->OooOOo0:I

    iget-object v6, p0, Lz2/c00;->OooOOo:Ljava/lang/String;

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    iput-object v4, p0, Lz2/c00;->OooOO0O:Lz2/c00$OooOO0O;

    iget-object v4, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v4, v5

    move-object v11, v3

    move v3, v1

    move-object v1, v11

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lz2/c00;->OooOO0:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lz2/c00$OooO0OO;

    invoke-direct {v7, p0}, Lz2/c00$OooO0OO;-><init>(Lz2/c00;)V

    move-object v8, v5

    check-cast v8, Lz2/c00$OooO0o;

    iget-wide v8, v8, Lz2/c00$OooO0o;->OooO0OO:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lz2/c00;->OooOOOo:Ljava/util/concurrent/ScheduledFuture;

    move v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    move-object v1, v4

    move-object v6, v1

    :goto_0
    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v1, v4

    move-object v6, v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v0, v2}, Lz2/f00;->OooO0o(Lokio/ByteString;)V

    goto :goto_2

    :cond_5
    instance-of v2, v4, Lz2/c00$OooO;

    if-eqz v2, :cond_6

    move-object v2, v4

    check-cast v2, Lz2/c00$OooO;

    iget-object v2, v2, Lz2/c00$OooO;->OooO0O0:Lokio/ByteString;

    check-cast v4, Lz2/c00$OooO;

    iget v3, v4, Lz2/c00$OooO;->OooO00o:I

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lz2/f00;->OooO00o(IJ)Lz2/d10;

    move-result-object v0

    invoke-static {v0}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object v0

    invoke-interface {v0, v2}, Lz2/k00;->OoooO0(Lokio/ByteString;)Lz2/k00;

    invoke-interface {v0}, Lz2/d10;->close()V

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v3, p0, Lz2/c00;->OooOOO:J

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lz2/c00;->OooOOO:J

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_6
    instance-of v2, v4, Lz2/c00$OooO0o;

    if-eqz v2, :cond_8

    check-cast v4, Lz2/c00$OooO0o;

    iget v2, v4, Lz2/c00$OooO0o;->OooO00o:I

    iget-object v4, v4, Lz2/c00$OooO0o;->OooO0O0:Lokio/ByteString;

    invoke-virtual {v0, v2, v4}, Lz2/f00;->OooO0O0(ILokio/ByteString;)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v0, p0, v3, v6}, Lz2/wx;->OooO00o(Lz2/vx;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_2
    const/4 v0, 0x1

    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return v0

    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lz2/c00;->OooO0o:Lz2/tw;

    invoke-interface {v0}, Lz2/tw;->cancel()V

    return-void
.end method

.method public request()Lz2/qx;
    .locals 1

    iget-object v0, p0, Lz2/c00;->OooO00o:Lz2/qx;

    return-object v0
.end method
