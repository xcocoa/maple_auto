.class public Lz2/o00O0O;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private final OoooOoO:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OoooOoo:Lz2/o0OoOo0;

.field private final Ooooo00:Lz2/OooOo;

.field private final Ooooo0o:Lz2/o00oO0o;

.field private volatile OooooO0:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lz2/o0OoOo0;Lz2/OooOo;Lz2/o00oO0o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lz2/o0OoOo0;",
            "Lz2/OooOo;",
            "Lz2/o00oO0o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/o00O0O;->OooooO0:Z

    iput-object p1, p0, Lz2/o00O0O;->OoooOoO:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lz2/o00O0O;->OoooOoo:Lz2/o0OoOo0;

    iput-object p3, p0, Lz2/o00O0O;->Ooooo00:Lz2/OooOo;

    iput-object p4, p0, Lz2/o00O0O;->Ooooo0o:Lz2/o00oO0o;

    return-void
.end method

.method private OooO00o(Lcom/android/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->OooOoo0()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private OooO0O0(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->Oooo00O(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    iget-object v0, p0, Lz2/o00O0O;->Ooooo0o:Lz2/o00oO0o;

    invoke-interface {v0, p1, p2}, Lz2/o00oO0o;->OooO0OO(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public OooO0OO()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o00O0O;->OooooO0:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lz2/o00O0O;->OoooOoO:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/volley/Request;->OooOooo()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "network-discard-cancelled"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->OooO(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lz2/o00O0O;->OooO00o(Lcom/android/volley/Request;)V

    iget-object v3, p0, Lz2/o00O0O;->OoooOoo:Lz2/o0OoOo0;

    invoke-interface {v3, v2}, Lz2/o0OoOo0;->OooO00o(Lcom/android/volley/Request;)Lz2/o00Oo0;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    iget-boolean v4, v3, Lz2/o00Oo0;->OooO0Oo:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/volley/Request;->OooOooO()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "not-modified"

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/volley/Request;->Oooo0oo()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lz2/oo000o;->OooO0O0:Lz2/OooOo$OooO00o;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lz2/o00O0O;->Ooooo00:Lz2/OooOo;

    invoke-virtual {v2}, Lcom/android/volley/Request;->OooOOO0()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lz2/oo000o;->OooO0O0:Lz2/OooOo$OooO00o;

    invoke-interface {v4, v5, v6}, Lz2/OooOo;->OooO0OO(Ljava/lang/String;Lz2/OooOo$OooO00o;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/volley/Request;->Oooo000()V

    iget-object v4, p0, Lz2/o00O0O;->Ooooo0o:Lz2/o00oO0o;

    invoke-interface {v4, v2, v3}, Lz2/o00oO0o;->OooO00o(Lcom/android/volley/Request;Lz2/oo000o;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Lz2/o0OOO0o;->OooO0Oo(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4, v3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    iget-object v0, p0, Lz2/o00O0O;->Ooooo0o:Lz2/o00oO0o;

    invoke-interface {v0, v2, v4}, Lz2/o00oO0o;->OooO0OO(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    invoke-direct {p0, v2, v3}, Lz2/o00O0O;->OooO0O0(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_2
    nop

    iget-boolean v0, p0, Lz2/o00O0O;->OooooO0:Z

    if-eqz v0, :cond_0

    return-void
.end method
