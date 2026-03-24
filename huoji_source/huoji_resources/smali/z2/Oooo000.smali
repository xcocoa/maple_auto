.class public Lz2/Oooo000;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final OooooOO:Z


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

.field private final OoooOoo:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Ooooo00:Lz2/OooOo;

.field private final Ooooo0o:Lz2/o00oO0o;

.field private volatile OooooO0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lz2/o0OOO0o;->OooO0O0:Z

    sput-boolean v0, Lz2/Oooo000;->OooooOO:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lz2/OooOo;Lz2/o00oO0o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lz2/OooOo;",
            "Lz2/o00oO0o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/Oooo000;->OooooO0:Z

    iput-object p1, p0, Lz2/Oooo000;->OoooOoO:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lz2/Oooo000;->OoooOoo:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lz2/Oooo000;->Ooooo00:Lz2/OooOo;

    iput-object p4, p0, Lz2/Oooo000;->Ooooo0o:Lz2/o00oO0o;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/Oooo000;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lz2/Oooo000;->OoooOoo:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public OooO0O0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/Oooo000;->OooooO0:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 5

    sget-boolean v0, Lz2/Oooo000;->OooooOO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start new dispatcher"

    invoke-static {v1, v0}, Lz2/o0OOO0o;->OooO0o(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lz2/Oooo000;->Ooooo00:Lz2/OooOo;

    invoke-interface {v0}, Lz2/OooOo;->OooO00o()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lz2/Oooo000;->OoooOoO:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/volley/Request;->OooOooo()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lz2/Oooo000;->Ooooo00:Lz2/OooOo;

    invoke-virtual {v0}, Lcom/android/volley/Request;->OooOOO0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lz2/OooOo;->get(Ljava/lang/String;)Lz2/OooOo$OooO00o;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/Oooo000;->OoooOoo:Ljava/util/concurrent/BlockingQueue;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lz2/OooOo$OooO00o;->OooO00o()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->Oooo0(Lz2/OooOo$OooO00o;)Lcom/android/volley/Request;

    iget-object v1, p0, Lz2/Oooo000;->OoooOoo:Ljava/util/concurrent/BlockingQueue;

    goto :goto_1

    :cond_4
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    new-instance v2, Lz2/o00Oo0;

    iget-object v3, v1, Lz2/OooOo$OooO00o;->OooO00o:[B

    iget-object v4, v1, Lz2/OooOo$OooO00o;->OooO0oO:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lz2/o00Oo0;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/android/volley/Request;->Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {v1}, Lz2/OooOo$OooO00o;->OooO0O0()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lz2/Oooo000;->Ooooo0o:Lz2/o00oO0o;

    invoke-interface {v1, v0, v2}, Lz2/o00oO0o;->OooO00o(Lcom/android/volley/Request;Lz2/oo000o;)V

    goto :goto_0

    :cond_5
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->Oooo0(Lz2/OooOo$OooO00o;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lz2/oo000o;->OooO0Oo:Z

    iget-object v1, p0, Lz2/Oooo000;->Ooooo0o:Lz2/o00oO0o;

    new-instance v3, Lz2/Oooo000$OooO00o;

    invoke-direct {v3, p0, v0}, Lz2/Oooo000$OooO00o;-><init>(Lz2/Oooo000;Lcom/android/volley/Request;)V

    invoke-interface {v1, v0, v2, v3}, Lz2/o00oO0o;->OooO0O0(Lcom/android/volley/Request;Lz2/oo000o;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    iget-boolean v0, p0, Lz2/Oooo000;->OooooO0:Z

    if-eqz v0, :cond_1

    return-void
.end method
