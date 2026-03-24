.class public Lz2/qd0;
.super Lz2/rd0;
.source ""


# direct methods
.method public constructor <init>(Lz2/ed0;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/rd0;-><init>(Lz2/ed0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 7

    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v1, v0, Lz2/ed0;->OooooOo:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v0, v0, Lz2/ed0;->OooooOO:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoo0(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v4, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    iput-wide v5, v4, Lz2/ed0;->Ooooo00:J

    iget-object v4, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-boolean v4, v4, Lz2/ed0;->OoooOoo:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-boolean v5, v4, Lz2/ed0;->o0OoOo0:Z

    if-nez v5, :cond_0

    iget-object v4, v4, Lz2/ed0;->OoooOoO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v5, v4, Lz2/ed0;->OoooOoO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v4, Lz2/ed0;->o00Ooo:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v0, v0, Lz2/ed0;->Oooooo0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    invoke-virtual {v0}, Lz2/ed0;->OooO0oo()I

    move-result v0

    iget-object v1, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v1, v1, Lz2/ed0;->OooooOo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOO()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v1, v0, Lz2/ed0;->ooOO:Lz2/md0;

    invoke-virtual {v0}, Lz2/ed0;->OooO()I

    move-result v0

    iget-object v4, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-wide v4, v4, Lz2/ed0;->Ooooo00:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v0, Lz2/ed0;->Ooooo00:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz2/ed0;->OoooOoo:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v0, v0, Lz2/ed0;->ooOO:Lz2/md0;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lz2/rd0;->OoooOoO:Lz2/ed0;

    iget-object v0, v0, Lz2/ed0;->ooOO:Lz2/md0;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    return-void
.end method
