.class public Lz2/rl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/rl$OooO0OO;,
        Lz2/rl$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO0o:I = 0x5dc

.field public static final OooO0o0:I = 0x0

.field private static final OooO0oO:I = 0xabe

.field private static OooO0oo:Lz2/rl;


# instance fields
.field private final OooO00o:Ljava/lang/Object;

.field private final OooO0O0:Landroid/os/Handler;

.field private OooO0OO:Lz2/rl$OooO0OO;

.field private OooO0Oo:Lz2/rl$OooO0OO;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lz2/rl$OooO00o;

    invoke-direct {v2, p0}, Lz2/rl$OooO00o;-><init>(Lz2/rl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lz2/rl;->OooO0O0:Landroid/os/Handler;

    return-void
.end method

.method private OooO00o(Lz2/rl$OooO0OO;I)Z
    .locals 2

    iget-object v0, p1, Lz2/rl$OooO0OO;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/rl$OooO0O0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/rl;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lz2/rl$OooO0O0;->OooO00o(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static OooO0OO()Lz2/rl;
    .locals 1

    sget-object v0, Lz2/rl;->OooO0oo:Lz2/rl;

    if-nez v0, :cond_0

    new-instance v0, Lz2/rl;

    invoke-direct {v0}, Lz2/rl;-><init>()V

    sput-object v0, Lz2/rl;->OooO0oo:Lz2/rl;

    :cond_0
    sget-object v0, Lz2/rl;->OooO0oo:Lz2/rl;

    return-object v0
.end method

.method private OooO0oO(Lz2/rl$OooO0O0;)Z
    .locals 1

    iget-object v0, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/rl$OooO0OO;->OooO00o(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OooO0oo(Lz2/rl$OooO0O0;)Z
    .locals 1

    iget-object v0, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/rl$OooO0OO;->OooO00o(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OooOOO0(Lz2/rl$OooO0OO;)V
    .locals 4

    iget v0, p1, Lz2/rl$OooO0OO;->OooO0O0:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xabe

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    :goto_0
    iget-object v1, p0, Lz2/rl;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lz2/rl;->OooO0O0:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private OooOOOO()V
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    const/4 v1, 0x0

    iput-object v1, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    iget-object v0, v0, Lz2/rl$OooO0OO;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/rl$OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/rl$OooO0O0;->show()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public OooO(Lz2/rl$OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    iget-object p1, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lz2/rl;->OooOOOO()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0O0(Lz2/rl$OooO0O0;I)V
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    :goto_0
    invoke-direct {p0, p1, p2}, Lz2/rl;->OooO00o(Lz2/rl$OooO0OO;I)Z

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oo(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0Oo(Lz2/rl$OooO0OO;)V
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lz2/rl;->OooO00o(Lz2/rl$OooO0OO;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0o(Lz2/rl$OooO0O0;)Z
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lz2/rl;->OooO0oo(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0o0(Lz2/rl$OooO0O0;)Z
    .locals 1

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0(Lz2/rl$OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    invoke-direct {p0, p1}, Lz2/rl;->OooOOO0(Lz2/rl$OooO0OO;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0O(Lz2/rl$OooO0O0;)V
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    iget-boolean v1, p1, Lz2/rl$OooO0OO;->OooO0OO:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lz2/rl$OooO0OO;->OooO0OO:Z

    iget-object v1, p0, Lz2/rl;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0o(Lz2/rl$OooO0O0;)V
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    iget-boolean v1, p1, Lz2/rl$OooO0OO;->OooO0OO:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lz2/rl$OooO0OO;->OooO0OO:Z

    invoke-direct {p0, p1}, Lz2/rl;->OooOOO0(Lz2/rl$OooO0OO;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOOO(ILz2/rl$OooO0O0;)V
    .locals 2

    iget-object v0, p0, Lz2/rl;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lz2/rl;->OooO0oO(Lz2/rl$OooO0O0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    iput p1, p2, Lz2/rl$OooO0OO;->OooO0O0:I

    iget-object p1, p0, Lz2/rl;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    invoke-direct {p0, p1}, Lz2/rl;->OooOOO0(Lz2/rl$OooO0OO;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lz2/rl;->OooO0oo(Lz2/rl$OooO0O0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    iput p1, p2, Lz2/rl$OooO0OO;->OooO0O0:I

    goto :goto_0

    :cond_1
    new-instance v1, Lz2/rl$OooO0OO;

    invoke-direct {v1, p1, p2}, Lz2/rl$OooO0OO;-><init>(ILz2/rl$OooO0O0;)V

    iput-object v1, p0, Lz2/rl;->OooO0Oo:Lz2/rl$OooO0OO;

    :goto_0
    iget-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lz2/rl;->OooO00o(Lz2/rl$OooO0OO;I)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lz2/rl;->OooO0OO:Lz2/rl$OooO0OO;

    invoke-direct {p0}, Lz2/rl;->OooOOOO()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
