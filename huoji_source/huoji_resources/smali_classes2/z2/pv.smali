.class public final Lz2/pv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/pv$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO0Oo:I = 0x12c


# instance fields
.field private final OooO00o:Ljava/util/concurrent/ScheduledExecutorService;

.field private final OooO0O0:Landroid/app/Activity;

.field private OooO0OO:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/pv$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/pv$OooO0O0;-><init>(Lz2/pv$OooO00o;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lz2/pv;->OooO00o:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lz2/pv;->OooO0OO:Ljava/util/concurrent/ScheduledFuture;

    iput-object p1, p0, Lz2/pv;->OooO0O0:Landroid/app/Activity;

    invoke-virtual {p0}, Lz2/pv;->OooO0O0()V

    return-void
.end method

.method private OooO00o()V
    .locals 2

    iget-object v0, p0, Lz2/pv;->OooO0OO:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/pv;->OooO0OO:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO0O0()V
    .locals 5

    invoke-direct {p0}, Lz2/pv;->OooO00o()V

    iget-object v0, p0, Lz2/pv;->OooO00o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lz2/ov;

    iget-object v2, p0, Lz2/pv;->OooO0O0:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lz2/ov;-><init>(Landroid/app/Activity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lz2/pv;->OooO0OO:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public OooO0OO()V
    .locals 1

    invoke-direct {p0}, Lz2/pv;->OooO00o()V

    iget-object v0, p0, Lz2/pv;->OooO00o:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
